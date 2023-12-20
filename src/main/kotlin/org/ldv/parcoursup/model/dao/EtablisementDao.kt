package org.ldv.parcoursup.model.dao;

import org.ldv.parcoursup.model.entity.Etablissement
import org.springframework.data.jpa.repository.JpaRepository
import java.util.*

interface EtablisementDao : JpaRepository<Etablissement, Long> {


    fun findByEtabUai(etabUai: String): Optional<Etablissement>


}