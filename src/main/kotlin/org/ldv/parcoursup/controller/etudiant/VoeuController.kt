package org.ldv.parcoursup.controller.etudiant


import org.ldv.parcoursup.model.dao.VoeuDao
import org.ldv.parcoursup.model.entity.Utilisateur
import org.ldv.parcoursup.model.entity.Voeu
import org.ldv.parcoursup.service.EtudiantService
import org.ldv.parcoursup.service.FormationService
import org.springframework.data.domain.PageRequest
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.awt.print.Pageable

@Controller
class VoeuController (val formationService: FormationService,val voeuDao: VoeuDao,val voeuService: EtudiantService,val etudiantService: EtudiantService) {
    @GetMapping("/etudiant/voeu")
    fun index(model: Model): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)

        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)
        model.addAttribute("user",user)
        model.addAttribute("voeux", voeus)
        return "etudiant/voeu/index"
    }

    @GetMapping("/etudiant/voeu/modif")
    fun postModif(model: Model): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)

        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)
        model.addAttribute("user",user)
        model.addAttribute("voeux", voeus)
        return "etudiant/voeu/postUpdate"
    }

    @GetMapping("/etudiant/voeu/{id}")
    fun show(@PathVariable id: Long, model: Model): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)

        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)

        val voeu = voeus.find { it.id==id }

        model.addAttribute("voeu", voeu)
        return "etudiant/voeu/show"
    }

    @GetMapping("/etudiant/voeu/create")
    fun create(
        @RequestParam formation: String = " ",
        @RequestParam lieu: String = " ",
        @RequestParam(defaultValue = "0") page: Int = 0,
        @RequestParam(defaultValue = "10") size: Int = 20,
        model: Model
    ): String {
        var laFormation = formation ?: ""
        var leLieu = lieu ?: ""
        laFormation= laFormation.trim()
        leLieu=leLieu.trim()
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)
        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)

        val pageRequest = PageRequest.of(page, size)
        val resultatRecherche = this.formationService.search(laFormation, leLieu, pageRequest)
        model.addAttribute("formation",laFormation)
        model.addAttribute("lieu",leLieu)
        model.addAttribute("pageFormation", resultatRecherche)

        return "etudiant/voeu/create"
    }

    @PostMapping("/etudiant/voeu")
    fun store(@RequestParam idFormation:Long, redirectAttributes: RedirectAttributes): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)
        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)
        val formation = formationService.formationDao.findById(idFormation).orElseThrow()
        val nouvelleVoeu = Voeu(null, voeus.size+1, user!!, formation)
        val savedVoeu = this.voeuDao.save(nouvelleVoeu)

        redirectAttributes.addFlashAttribute("msgSuccess", "Enregistrement du voeu N°${savedVoeu.numOrdre} réussi")
        return "redirect:/etudiant/voeu"
    }

    @GetMapping("/etudiant/voeu/edit")
    fun edit(@RequestParam id:Long ,
             @RequestParam formation: String = " ",
             @RequestParam lieu: String = " ",
             @RequestParam(defaultValue = "0") page: Int = 0,
             @RequestParam(defaultValue = "10") size: Int = 20,
             model: Model): String {
        val voeu = this.voeuDao.findById(id).orElseThrow()

        var laFormation = formation ?: ""
        var leLieu = lieu ?: ""
        laFormation= laFormation.trim()
        leLieu=leLieu.trim()
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)
        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)

        val pageRequest = PageRequest.of(page, size)
        val resultatRecherche = this.formationService.search(laFormation, leLieu, pageRequest)
        model.addAttribute("formation",laFormation)
        model.addAttribute("lieu",leLieu)
        model.addAttribute("pageFormation", resultatRecherche)

        model.addAttribute("id", id)
        return "etudiant/voeu/edit"
    }

    @PostMapping("/etudiant/voeu/update")
    fun update(@RequestParam idVoeu:Long,@RequestParam idFormation: Long, redirectAttributes: RedirectAttributes): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)
        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)

        val formation = formationService.formationDao.findById(idFormation).orElseThrow()
        val voeu = voeus.find { it.id==idVoeu  }
        voeu!!.formation = formation

        val savedVoeu = this.voeuDao.save(voeu)
        redirectAttributes.addFlashAttribute("msgSuccess", "Modification du voeu N°${savedVoeu.numOrdre} réussie")
        return "redirect:/etudiant/voeu/modif"
    }

    @PostMapping("/etudiant/voeu/delete")
    fun delete(@RequestParam id: Long, redirectAttributes: RedirectAttributes): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)

        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)

        val voeu = voeus.find { it.id==id }
        this.voeuDao.delete(voeu!!)
        redirectAttributes.addFlashAttribute("msgSuccess", "Suppression du voeu N°${voeu.numOrdre} réussie")
        return "redirect:/etudiant/voeu"
    }

}