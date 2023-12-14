package org.ldv.parcoursup.model.entity

import jakarta.persistence.*
import org.ldv.parcoursup.model.entity.Role

/**
 * Classe représentant un utilisateur du système.
 *
 * @property id Identifiant unique de l'utilisateur.
 * @property email Adresse e-mail de l'utilisateur (unique).
 * @property mdp Mot de passe de l'utilisateur.
 * @property roles Liste des rôles associés à l'utilisateur.
 * @property campagnes Liste des campagnes associées à l'utilisateur.
 * @property personnages Liste des personnages associés à l'utilisateur.
 */
@Entity
class Utilisateur constructor(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    // Adresse e-mail de l'utilisateur (unique)
    @Column(unique = true)
    var email:String,

    // Mot de passe de l'utilisateur
    var mdp:String,
    var numDossier:String,
    var nom:String,
    var prenom:String,
    var codeSecret:String,
    var estVictime:Boolean,
    // Liste des rôles associés à l'utilisateur
    @ManyToMany
    @JoinTable(
        name = "Utilisateur_roles",
        joinColumns = [JoinColumn(name = "utilisateur_id")],
        inverseJoinColumns = [JoinColumn(name = "roles_id")]
    )
    var roles: MutableList<Role> = mutableListOf()
) {


    // Vous pouvez ajouter d'autres méthodes ou propriétés au besoin
}
