package org.ldv.parcoursup.service

import org.ldv.parcoursup.model.dao.RoleDao
import org.ldv.parcoursup.model.dao.UtilisateurDao
import org.ldv.parcoursup.model.entity.Utilisateur
import org.springframework.stereotype.Service

@Service
class EtudiantService (val utilisateurDao: UtilisateurDao,val roleDao: RoleDao) {

    fun getUser(numOuEmail:String): Utilisateur? {
        val utilisateurs=utilisateurDao.findAll()
        val utilisateur = utilisateurs.find { it.email==numOuEmail || it.numDossier==numOuEmail }

        return utilisateur
    }

    fun save(user:Utilisateur):Utilisateur{
        return this.utilisateurDao.save(user)
    }
}