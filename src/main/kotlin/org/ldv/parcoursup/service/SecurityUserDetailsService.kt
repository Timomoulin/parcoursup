package org.ldv.parcoursup.service

import org.ldv.parcoursup.model.dao.UtilisateurDao
import org.ldv.parcoursup.model.entity.Utilisateur
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.User
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

/**
 * Service chargé de récupérer les détails de l'utilisateur pour l'authentification Spring Security.
 *
 * @param utilisateurDao Un objet DAO (Data Access Object) pour accéder aux données des utilisateurs.
 */
@Service
class SecurityUserDetailsService constructor(
    val utilisateurDao: UtilisateurDao,
    val infoLogService: InfoLogService
) : UserDetailsService {

    /***
     * Charge les détails de l'utilisateur par son nom d'utilisateur (pseudo ou email) lors de l'authentification.
     *
     * @param username Le pseudo ou email provenant du formulaire de login.
     * @return Un objet User (implémentant UserDetails) avec le nom d'utilisateur, le mot de passe (encodé),
     *         et une liste de permissions (rôles).
     * @throws UsernameNotFoundException Si l'utilisateur n'est pas trouvé.
     */
    @Transactional(readOnly = true)
    @Throws(UsernameNotFoundException::class)
    override fun loadUserByUsername(username: String): UserDetails {

        // Récupérer l'utilisateur depuis la base de données en utilisant le nom d'utilisateur (pseudo ou email)
        val utilisateurs= this.utilisateurDao.findAll()
        val utilisateur = utilisateurs.find { it.email==username || it.numDossier==username }
        if( utilisateur==null){
            throw UsernameNotFoundException("Utilisateur non trouvé $username")
        }
        // Créer une liste de permissions (rôles) pour l'utilisateur
        val permissions: MutableSet<GrantedAuthority> = HashSet()
        for (unRole in utilisateur.roles) {
            permissions.add(SimpleGrantedAuthority(unRole.nom))
        }

        // Retourner un objet User (implémentant UserDetails) avec les détails de l'utilisateur
        return User(utilisateur.numDossier ?: utilisateur.email, utilisateur.mdp, permissions)


    }


}
