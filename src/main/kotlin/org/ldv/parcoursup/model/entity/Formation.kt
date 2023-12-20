package org.ldv.parcoursup.model.entity

import com.fasterxml.jackson.annotation.JsonIgnore
import jakarta.persistence.*

@Entity
class Formation (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
     var id: Long? = null,
    //tc
    var typeContrat:String,
    //tf
    var typeFormation: String,
    //nm
    @Column(length = 2000)
    var nm:String,
    //tf
    @Column(length = 2000)
    var filliere:String,
    //amg
    var typeEnseignement:String,
    @ManyToOne
    @JoinColumn(name = "etablisement_id")
     var etablissement: Etablissement? = null,
    @JsonIgnore
    @OneToMany(mappedBy = "formation", orphanRemoval = true)
     var voeus: MutableList<Voeu> = mutableListOf()

) {



}