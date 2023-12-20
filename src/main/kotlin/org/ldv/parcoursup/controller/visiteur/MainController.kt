package org.ldv.parcoursup.controller.visiteur

import org.ldv.parcoursup.dto.PasswordDto
import org.ldv.parcoursup.model.dao.RoleDao
import org.ldv.parcoursup.model.dao.UtilisateurDao
import org.ldv.parcoursup.model.entity.Utilisateur
import org.ldv.parcoursup.service.EtudiantService
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.util.regex.Pattern

@Controller
class MainController(val utilisateurDao: UtilisateurDao, val roleDao: RoleDao, val encoder: PasswordEncoder, val etudiantService: EtudiantService) {
    /**
     * Méthode pour afficher la page de connexion.
     *
     * @param error Un paramètre indiquant s'il y a une erreur de connexion (true) ou non (null).
     * @param model Le modèle Spring utilisé pour passer des données à la vue Thymeleaf.
     * @return Le nom de la vue Thymeleaf à afficher pour la page de connexion.
     */
    @GetMapping("/login")
    fun login(@RequestParam error: Boolean?, model: Model): String {
        // Ajoute un attribut "error" au modèle si la requête contient une erreur
        model.addAttribute("error", error == true)
        return "/visiteur/login"
    }

    /**
     * Méthode pour afficher la page d'accueil.
     *
     * @param model Le modèle Spring utilisé pour passer des données à la vue Thymeleaf.
     * @return Le nom de la vue Thymeleaf à afficher pour la page d'accueil.
     */
    @GetMapping("/", "/accueil")
    fun home(model: Model): String {
        return "/visiteur/home"
    }

    /**
     * Méthode pour afficher la page d'inscription.
     *
     * @param model Le modèle Spring utilisé pour passer des données à la vue Thymeleaf.
     * @return Le nom de la vue Thymeleaf à afficher pour la page d'inscription.
     */
    /*@GetMapping("/inscription")
    fun inscription(model: Model): String {
        // Crée un nouvel utilisateur avec des valeurs par défaut et l'ajoute au modèle
        val utilisateur = Utilisateur(null, "", "")
        model.addAttribute("utilisateur", utilisateur)
        return "/visiteur/inscription"
    }


    /**
     * Méthode de traitement du formulaire d'inscription.
     *
     * @param utilisateur L'objet Utilisateur représentant les données du formulaire.
     * @param confirmationMdp La confirmation du mot de passe depuis le formulaire.
     * @param model Le modèle Spring utilisé pour passer des données à la vue Thymeleaf.
     * @param redirectAttributes Les attributs de redirection utilisés pour ajouter un message flash.
     * @return Le nom de la vue Thymeleaf à afficher après le traitement.
     */
    @PostMapping("/inscription")
    fun traitementInscription(
        @ModelAttribute utilisateur: Utilisateur,
        @RequestParam confirmationMdp: String,
        model: Model,
        redirectAttributes: RedirectAttributes
    ): String {
        // Liste pour stocker les messages d'erreur potentiels
        var erreurs: MutableList<String> = mutableListOf()

        // Vérification si le mot de passe et la confirmation correspondent
        if (utilisateur.mdp != confirmationMdp) {
            erreurs.add("Le mot de passe et la confirmation ne correspondent pas")
        }

        // Expression régulière pour valider la complexité du mot de passe
        val passwordREGEX = Pattern.compile(
            "^" +
                    "(?=.*[0-9])" +         // au moins 1 chiffre
                    "(?=.*[a-z])" +         // au moins 1 lettre minuscule
                    "(?=.*[A-Z])" +         // au moins 1 lettre majuscule
                    "(?=.*[a-zA-Z])" +      // n'importe quelle lettre
                    "(?=.*[@#$%^&+=])" +    // au moins 1 caractère spécial
                    "(?=\\S+$)" +           // pas d'espaces blancs
                    ".{8,}" +               // au moins 8 caractères
                    "$"
        )

        // Vérification de la complexité du mot de passe
        if (!passwordREGEX.matcher(utilisateur.mdp).matches()) {
            erreurs.add("Le mot de passe doit contenir un nombre, une lettre minuscule, une lettre majuscule, au moins un caractère spécial et une longueur d'au moins 8 caractères")
        }

        // Vérification si l'adresse email est déjà utilisée
        if (utilisateurDao.findByEmail(utilisateur.email) != null) {
            erreurs.add("Ce compte existe déjà")
        }

        // Si des erreurs sont détectées, les ajouter au modèle et retourner à la page d'inscription
        if (erreurs.size != 0) {
            model.addAttribute("erreurs", erreurs)
            model.addAttribute("utilisateur", utilisateur)
            return "/visiteur/inscription"
        } else {
            // Si aucune erreur, encoder le mot de passe, sauvegarder l'utilisateur,
            // et rediriger vers la page de connexion avec un message de succès
            utilisateur.mdp = this.encoder.encode(utilisateur.mdp)
            val nouvelleUtilisateur = utilisateurDao.save(utilisateur)
            redirectAttributes.addFlashAttribute("msgSuccess", "Inscription réussie")
            return "redirect:/login"
        }
    }
*/
    @GetMapping("/recupmdp")
    fun edit(model: Model):String{
        model.addAttribute("passwordForm", PasswordDto())
        return "/visiteur/password"
    }

    @PostMapping("/recupmdp")
    fun store(@ModelAttribute passwordForm: PasswordDto, passwordEncoder: BCryptPasswordEncoder, model: Model, redirectAttributes: RedirectAttributes):String{

        val utilisateur = this.etudiantService.getUser(passwordForm.numDossier)

        // Liste pour stocker les messages d'erreur potentiels
        var erreurs: MutableList<String> = mutableListOf()

        if(passwordForm.codeSecret!=utilisateur?.codeSecret){
            erreurs.add("Le code secret n'est pas bon")

        }

        // Vérification si le mot de passe et la confirmation correspondent
        if (passwordForm.confirmation != passwordForm.nouveauMpd) {
            erreurs.add("Le mot de passe et la confirmation ne correspondent pas")
        }

        // Expression régulière pour valider la complexité du mot de passe
        val passwordREGEX = Pattern.compile(
            "^" +
                    "(?=.*[0-9])" +         // au moins 1 chiffre
                    "(?=.*[a-z])" +         // au moins 1 lettre minuscule
                    "(?=.*[A-Z])" +         // au moins 1 lettre majuscule
                    "(?=.*[a-zA-Z])" +      // n'importe quelle lettre
                    "(?=.*[@#$%^&+=])" +    // au moins 1 caractère spécial
                    "(?=\\S+$)" +           // pas d'espaces blancs
                    ".{8,}" +               // au moins 8 caractères
                    "$"
        )

        // Vérification de la complexité du mot de passe
        if (!passwordREGEX.matcher(passwordForm.nouveauMpd).matches()) {
            erreurs.add("Le mot de passe doit contenir un nombre, une lettre minuscule, une lettre majuscule, au moins un caractère spécial (@#\\$%^&+=) et une longueur d'au moins 8 caractères")
        }

        // Vérification si l'adresse email est déjà utilisée
        if (utilisateur == null) {
            erreurs.add("Le num dossier n'est pas valide")
        }
        // Si des erreurs sont détectées, les ajouter au modèle et retourner à la page d'inscription
        if (erreurs.size != 0) {
            model.addAttribute("erreurs", erreurs)
            model.addAttribute("passwordForm", passwordForm)
            return "/visiteur/password"
        } else {
            // Si aucune erreur, encoder le mot de passe, sauvegarder l'utilisateur,
            // et rediriger vers la page de connexion avec un message de succès
            utilisateur!!.mdp = this.encoder.encode(passwordForm.nouveauMpd)
            val nouvelleUtilisateur = utilisateurDao.save(utilisateur!!)
            redirectAttributes.addFlashAttribute("msgSuccess", "Changement du mot de passe réussie")
            return "redirect:/login"
        }
        return  "redirect:/login"
    }
}