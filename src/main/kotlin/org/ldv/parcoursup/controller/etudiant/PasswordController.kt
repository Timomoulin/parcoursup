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

}