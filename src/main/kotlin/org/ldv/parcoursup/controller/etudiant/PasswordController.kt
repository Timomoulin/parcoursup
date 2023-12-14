package org.ldv.parcoursup.controller.etudiant

import org.ldv.parcoursup.dto.PasswordDto
import org.ldv.parcoursup.service.EtudiantService
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.PostMapping

@Controller
class PasswordController(val etudiantService: EtudiantService) {
    @GetMapping("/etudiant/mdp")
    fun edit(model: Model):String{
        model.addAttribute("passwordForm",PasswordDto())
        return "/etudiant/mdp/edit"
    }

    @PostMapping("/etudiant/mdp")
    fun store(@ModelAttribute passwordForm:PasswordDto,passwordEncoder: PasswordEncoder):String{
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val numDossier: String = authentication.getName()
        val utilisateur = this.etudiantService.getUser(numDossier)
        if(passwordForm.codeSecret==utilisateur.codeSecret){
            //TODO verif mdp
            utilisateur.mdp=passwordEncoder.encode(passwordForm.nouveauMpd)
            this.etudiantService.save(utilisateur)
        }
        return ""
    }
}