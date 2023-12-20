package org.ldv.parcoursup.service

import com.opencsv.CSVParserBuilder
import com.opencsv.CSVReaderBuilder
import org.ldv.parcoursup.model.dao.EtablisementDao
import org.ldv.parcoursup.model.dao.FormationDao
import org.ldv.parcoursup.model.entity.Etablissement
import org.ldv.parcoursup.model.entity.Formation
import org.springframework.stereotype.Service
import java.io.FileReader
import java.io.IOException


@Service
class ImportFormationService (
    private val etablissementRepository: EtablisementDao,
    private val formationRepository: FormationDao
){
    fun importDataFromCsv(filePath: String) {
        try {
            val reader = FileReader(filePath)
            val parser = CSVParserBuilder()
                .withSeparator(';')
                .build()
            val csvReader = CSVReaderBuilder(reader)
                .withSkipLines(1) // Ignore the header line
                .withCSVParser(parser)
                .build()


            csvReader.use { csvReader ->
                var record: Array<String>?

                while (csvReader.readNext().also { record = it } != null) {
                    record?.let { saveRecord(it) }
                }
            }
        } catch (e: IOException) {
            e.printStackTrace()
            // Gérer les erreurs d'importation
        }
    }

    private fun saveRecord(record: Array<String>) {
        val annnee=record[0]
        if(annnee=="2023") {
            val etabUai = record[1]
            var etablissement: Etablissement? = etablissementRepository.findByEtabUai(etabUai).orElse(null)
            if (etablissement == null) {
                val etabNom = record[2]
                val region = record[11]
                val departement = record[12]
                val commune = record[13]

                etablissement = Etablissement(
                    etabUai = etabUai,
                    nom = etabNom,
                    region = region,
                    departement = departement,
                    commune = commune
                )
                etablissementRepository.save(etablissement!!)
            }


            val typeContrat = record[3]
            val typeFormation = record[4]
            val nm = record[5]
            val filliere = record[6]
            val typeEnseignement = record[7]

            val formation = Formation(
                typeContrat = typeContrat,
                typeFormation = typeFormation,
                nm = nm,
                filliere = filliere,
                typeEnseignement = typeEnseignement,
                etablissement = etablissement
            )
            formationRepository.save(formation)
        }
        }
    }
