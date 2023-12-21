package org.ldv.parcoursup.controller.etudiant


import org.ldv.parcoursup.model.dao.VoeuDao
import org.ldv.parcoursup.model.entity.Utilisateur
import org.ldv.parcoursup.model.entity.Voeu
import org.ldv.parcoursup.service.EtudiantService
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.mvc.support.RedirectAttributes

@Controller
class VoeuController (val voeuDao: VoeuDao,val etudiantService: EtudiantService) {
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
    fun create(model: Model): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)
        val voeus = this.voeuDao.findByUtilisateur_Id(user?.id!!)

        val nouvelleVoeu = Voeu(null, voeus.size+1, user!!, null)
        model.addAttribute("nouvelleVoeu", nouvelleVoeu)
        return "etudiant/voeu/create"
    }

    @PostMapping("/etudiant/voeu")
    fun store(@ModelAttribute nouvelleVoeu: Voeu, redirectAttributes: RedirectAttributes): String {
        val savedVoeu = this.voeuDao.save(nouvelleVoeu)
        redirectAttributes.addFlashAttribute("msgSuccess", "Enregistrement du voeu N°${savedVoeu.numOrdre} réussi")
        return "redirect:/etudiant/voeu"
    }

    @GetMapping("/etudiant/voeu/{id}/edit")
    fun edit(@PathVariable id: Long, model: Model): String {
        val voeu = this.voeuDao.findById(id).orElseThrow()
        model.addAttribute("id", id)
        return "etudiant/voeu/edit"
    }

    @PostMapping("/etudiant/voeu/update")
    fun update(@ModelAttribute voeu: Voeu, redirectAttributes: RedirectAttributes): String {
        val voeuModifier = this.voeuDao.findById(voeu.id ?: 0).orElseThrow()
        voeuModifier.numOrdre = voeu.numOrdre
        voeuModifier.formation=voeu.formation

        val savedVoeu = this.voeuDao.save(voeuModifier)
        redirectAttributes.addFlashAttribute("msgSuccess", "Modification du voeu N°${savedVoeu.numOrdre}TypeRessource$.nom réussie")
        return "redirect:/etudiant/voeu"
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