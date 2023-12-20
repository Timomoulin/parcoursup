package org.ldv.parcoursup.model.entity

import jakarta.persistence.*

@Entity
class Voeu (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
     var id: Long? = null,
    var numOrdre:Int,

    @ManyToOne
    @JoinColumn(name = "utilisateur_id")
     var utilisateur: Utilisateur? = null,
    @ManyToOne
    @JoinColumn(name = "formation_id")
     var formation: Formation? = null

) {



}