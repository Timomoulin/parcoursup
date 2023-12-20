package org.ldv.parcoursup.controller.admin

import org.ldv.parcoursup.service.ImportFormationService
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.multipart.MultipartFile
import java.io.File
import kotlin.io.path.Path

@Controller
class Formation(
    val formationService: ImportFormationService
) {
    @GetMapping("/import-form")
    fun showImportForm(): String {
        return "/admin/import"
    }

    @PostMapping("/import")
    fun importCsvData( model: Model): String {

        val filePath = "import/formations.csv" // Spécifiez le chemin du fichier directement
        if (File(filePath).exists()) {
            formationService.importDataFromCsv(filePath)
            model.addAttribute("message", "Importation réussie.")
        } else {
            model.addAttribute("message", "Le fichier n'a pas été trouvé.")
        }
        return "/admin/import"


    }
}