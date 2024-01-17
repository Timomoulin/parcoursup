package org.ldv.parcoursup.model.entity

import jakarta.persistence.*
import java.time.LocalDateTime

@Entity
class Log(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,
    var logDateTime: LocalDateTime,
    var action: String,
    var ip:String,

    @ManyToOne
    @JoinColumn(name = "utilisateur_id")
    var utilisateur: Utilisateur? = null
) {


}