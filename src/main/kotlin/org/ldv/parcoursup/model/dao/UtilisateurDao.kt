package org.ldv.parcoursup.model.dao;


import org.ldv.parcoursup.model.entity.Utilisateur
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface UtilisateurDao : JpaRepository<Utilisateur, Long> {

    @Query("select u from Utilisateur u where upper(u.email) = upper(?1)")
    fun findByEmail(email: String): Utilisateur?

}