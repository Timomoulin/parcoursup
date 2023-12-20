package org.ldv.parcoursup.model.dao;

import org.ldv.parcoursup.model.entity.Formation
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface FormationDao : JpaRepository<Formation, Long> {


    @Query("select distinct f from Formation f where upper(f.filliere) like upper(concat('%', ?1, '%')) or upper(f.nm) like upper(concat('%', ?1, '%'))")
    fun findDistinctByFilliereContainsIgnoreCase(filliere: String): List<Formation>


    @Query("select distinct f from Formation f where upper(f.etablissement.nom) like upper(concat('%', ?1, '%')) or upper(f.etablissement.commune) like upper(concat('%', ?1, '%'))")
    fun findDistinctByEtablissement_NomContainsIgnoreCase(nom: String): List<Formation>


}