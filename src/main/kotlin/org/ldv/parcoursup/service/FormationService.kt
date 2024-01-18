package org.ldv.parcoursup.service

import org.ldv.parcoursup.model.dao.FormationDao
import org.ldv.parcoursup.model.entity.Formation
import org.springframework.data.domain.Page
import org.springframework.data.domain.PageImpl
import org.springframework.data.domain.PageRequest
import org.springframework.stereotype.Service
import org.springframework.web.bind.annotation.RequestParam
import java.text.Collator
import java.text.Normalizer
import java.util.Locale

@Service
class FormationService(val formationDao: FormationDao) {
    fun search(formation: String, lieu: String, pageRequest: PageRequest): Page<Formation> {
        var decompositionFormation = formation.split(" ")
        var decompositionLieu = lieu.split(",")


        decompositionFormation = decompositionFormation.filter { it.trim().isNotBlank() }
        decompositionLieu = decompositionLieu.filter { it.trim().isNotBlank() }

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
        val scores: MutableMap<String, Int> = mutableMapOf()
        rechercheFormation.forEach {
            scores.put(
                it.filliere + " | " + it.etablissement!!.nom,
                calculerPertinence(it, decompositionFormation, decompositionLieu)
            )
        }

        val resultatsTries =
            rechercheFormation.sortedByDescending { calculerPertinence(it, decompositionFormation, decompositionLieu) }

        val start = pageRequest.pageNumber * pageRequest.pageSize
        val end = (start + pageRequest.pageSize).coerceAtMost(resultatsTries.size)

        return PageImpl(resultatsTries.subList(start, end), pageRequest, resultatsTries.size.toLong())
    }

    private fun calculerPertinence(
        formation: Formation,
        rechercheFormation: List<String>,
        rechercheLieu: List<String>
    ): Int {
        // Implémentez votre logique de calcul de pertinence ici
        val collator = Collator.getInstance(Locale.FRENCH)
        collator.strength = Collator.PRIMARY // Ignore la casse et les accents

        var scoreFormation = 0
        var scoreLieu = 0
        var scoreFinal = 0

        if (removeAccents(formation.filliere).contains(rechercheFormation.joinToString(" "),false)) {
            scoreFormation += 20
        }

        if (removeAccents(formation.nm).contains( rechercheFormation.joinToString(" "),false)) {
            scoreFormation += 20
        }

        for (forma in rechercheFormation) {
         if (removeAccents(formation.filliere).contains(removeAccents(forma), false)) {
                scoreFormation += 1
            }
         if (removeAccents(formation.nm).contains(removeAccents(forma), false)) {
                scoreFormation += 1
            }

        }

        for (lieu in rechercheLieu) {
            val etablissementNom = formation.etablissement?.nom
            val etablissementCommune = formation.etablissement?.commune
            if (removeAccents(formation.etablissement!!.nom).contains(removeAccents(lieu), ignoreCase = true) ||
                removeAccents(formation.etablissement!!.commune).contains(removeAccents(lieu), ignoreCase = true)
            ) {
                scoreLieu += 2
            } else {
                scoreLieu--
            }

        }

        scoreFinal = if (scoreFormation > 0 && scoreLieu > 0) {
            (scoreLieu + scoreFormation) * 2
        } else {
            scoreLieu + scoreFormation
        }

        return scoreFinal
    }

    fun removeAccents(input: String): String {
        val normalizedString = Normalizer.normalize(input, Normalizer.Form.NFD)
        val pattern = Regex("\\p{InCombiningDiacriticalMarks}+")
        return pattern.replace(normalizedString, "")
    }
}