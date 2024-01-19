package org.ldv.parcoursup.controller.etudiant

import org.ldv.parcoursup.model.dao.FormationDao
import org.ldv.parcoursup.model.entity.Formation
import org.ldv.parcoursup.service.FormationService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@RestController
class FormationController (val formationDao: FormationDao) {

    @GetMapping("/api/formation")
    fun search(@RequestParam formation:String,@RequestParam lieu:String):List<Formation>{
        val decompositionFormation = formation.split(" ")
        val decompositionLieu = lieu.split(",")

        var rechercheFormation: MutableList<Formation> = mutableListOf()
        var rechercheLieu: MutableList<Formation> = mutableListOf()
        if(formation.isNotEmpty()) {


            for (uneFormation in decompositionFormation) {
                rechercheFormation.addAll(formationDao.findDistinctByFilliereContainsIgnoreCase(uneFormation))
            }
        }
        if (lieu.isNotEmpty()) {


            for (unLieu in decompositionLieu) {
                rechercheLieu.addAll(formationDao.findDistinctByEtablissement_NomContainsIgnoreCase(unLieu))
            }


        }
        if( rechercheFormation.size>0 && rechercheLieu.size>0)
        {
            // Fusionner les résultats des deux recherches
            rechercheFormation = rechercheFormation.intersect(rechercheLieu).toMutableList()
        }
        else if (rechercheLieu.size>0){
            rechercheFormation=rechercheLieu
        }
        val resultatsTries = rechercheFormation.sortedByDescending( {calculerPertinence(it,decompositionFormation,decompositionLieu)})
        return resultatsTries
}

    private fun calculerPertinence(formation: Formation, rechercheFormation:List<String>,rechercheLieu:List<String>): Int {
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