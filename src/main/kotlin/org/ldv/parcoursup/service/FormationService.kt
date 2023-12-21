package org.ldv.parcoursup.service

import org.ldv.parcoursup.model.dao.FormationDao
import org.ldv.parcoursup.model.entity.Formation
import org.springframework.data.domain.Page
import org.springframework.data.domain.PageImpl
import org.springframework.data.domain.PageRequest
import org.springframework.web.bind.annotation.RequestParam

class FormationService (val formationDao: FormationDao) {
    fun search(@RequestParam formation: String, @RequestParam lieu: String, pageRequest: PageRequest): Page<Formation> {
        val decompositionFormation = formation.split(" ")
        val decompositionLieu = lieu.split(",")

        var rechercheFormation: MutableList<Formation> = mutableListOf()
        var rechercheLieu: MutableList<Formation> = mutableListOf()

        if (formation.isNotEmpty()) {
            for (uneFormation in decompositionFormation) {
                rechercheFormation.addAll(formationDao.findDistinctByFilliereContainsIgnoreCase(uneFormation))
            }
        }

        if (lieu.isNotEmpty()) {
            for (unLieu in decompositionLieu) {
                rechercheLieu.addAll(formationDao.findDistinctByEtablissement_NomContainsIgnoreCase(unLieu))
            }
        }

        if (rechercheFormation.isNotEmpty() && rechercheLieu.isNotEmpty()) {
            rechercheFormation = rechercheFormation.intersect(rechercheLieu).toMutableList()
        } else if (rechercheLieu.isNotEmpty()) {
            rechercheFormation = rechercheLieu
        }

        val resultatsTries = rechercheFormation.sortedByDescending { calculerPertinence(it, decompositionFormation, decompositionLieu) }

        val start = pageRequest.pageNumber * pageRequest.pageSize
        val end = (start + pageRequest.pageSize).coerceAtMost(resultatsTries.size)

        return PageImpl(resultatsTries.subList(start, end), pageRequest, resultatsTries.size.toLong())
    }

    private fun calculerPertinence(formation: Formation, rechercheFormation:List<String>, rechercheLieu:List<String>): Int {
        // Implémentez votre logique de calcul de pertinence ici
        var score=0
        for (forma in rechercheFormation){
            if(formation.nm.contains(forma,true)){
                score++
            }
            else if(formation.filliere.contains(forma,true)){
                score++
            }
//            val initials = formation.nm.split(" ").map { it.first() }.joinToString("")
//            if(initials.contains(forma,true)){
//                score++
//            }
        }
        for (lieu in rechercheLieu){
            if(formation.etablissement?.nom!!.contains(lieu,true)){
                score++
            }
            else if(formation.etablissement?.commune!!.contains(lieu,true)){
                score++
            }
        }
        // Par exemple, vous pouvez attribuer un score en fonction de la correspondance de termeRecherche avec différentes propriétés de formation
        // Plus la correspondance est forte, plus le score est élevé
        return score
    }
}