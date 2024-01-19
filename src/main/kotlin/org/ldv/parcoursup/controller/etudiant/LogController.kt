package org.ldv.parcoursup.controller.etudiant


import org.ldv.parcoursup.service.EtudiantService
import org.ldv.parcoursup.service.InfoLogService
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping

@Controller
class LogController(val infoLogService: InfoLogService,val etudiantService: EtudiantService) {
    @GetMapping("/etudiant/log")
    fun index(model: Model): String {
        // Récupérer l'objet Principal
        val authentication: Authentication = SecurityContextHolder.getContext().authentication
        // Récupérer le nom d'utilisateur à partir de l'objet Principal
        val identifiant: String = authentication.getName()
        val user = etudiantService.getUser(identifiant)!!
        val logs = infoLogService.getLogByUser(user.id!!)
        model.addAttribute("logs", logs)
        return "etudiant/logs/index"
    }
}