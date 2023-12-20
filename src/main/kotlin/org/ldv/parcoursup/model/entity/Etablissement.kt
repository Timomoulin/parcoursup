package org.ldv.parcoursup.model.entity

import com.fasterxml.jackson.annotation.JsonIgnore
import jakarta.persistence.*

@Entity
class Etablissement (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    open var id: Long? = null,
    var etabUai:String,
    var nom:String,
    var region:String,
    var departement:String,
    var commune:String,
    @JsonIgnore
    @OneToMany(mappedBy = "etablissement", orphanRemoval = true)
    var formations: MutableList<Formation> = mutableListOf()

) {


}