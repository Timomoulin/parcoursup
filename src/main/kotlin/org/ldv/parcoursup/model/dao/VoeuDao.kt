package org.ldv.parcoursup.model.dao;

import org.ldv.parcoursup.model.entity.Voeu
import org.springframework.data.jpa.repository.JpaRepository

interface VoeuDao : JpaRepository<Voeu, Long> {


    fun findByUtilisateur_Id(id: Long): List<Voeu>

}