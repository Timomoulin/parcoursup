package org.ldv.parcoursup.config

import jakarta.servlet.http.HttpServletRequest
import org.ldv.parcoursup.model.dao.UtilisateurDao
import org.ldv.parcoursup.model.entity.Utilisateur
import org.ldv.parcoursup.service.EtudiantService
import org.ldv.parcoursup.service.InfoLogService
import org.springframework.context.event.EventListener
import org.springframework.security.authentication.event.AbstractAuthenticationFailureEvent
import org.springframework.security.authentication.event.AuthenticationSuccessEvent
import org.springframework.stereotype.Component

@Component
class AuthenticationEvents (val infoLogService: InfoLogService,val etudiantService: EtudiantService) {
    @EventListener
    fun onSuccess(success: AuthenticationSuccessEvent?) {
      val utilisateur=etudiantService.getUser(success!!.authentication.name)!!

      infoLogService.saveLog(utilisateur=utilisateur, action = "authentification réussie")
    }

    @EventListener
    fun onFailure(failures: AbstractAuthenticationFailureEvent?) {
        val utilisateur=etudiantService.getUser(failures!!.authentication.name)!!

        infoLogService.saveLog(utilisateur=utilisateur, action = "authentification échec")
    }

}