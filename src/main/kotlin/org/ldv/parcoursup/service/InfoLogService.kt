package org.ldv.parcoursup.service

import jakarta.servlet.http.HttpServletRequest
import org.ldv.parcoursup.model.dao.LogDao
import org.ldv.parcoursup.model.entity.Log
import org.ldv.parcoursup.model.entity.Utilisateur
import org.springframework.stereotype.Service
import java.time.LocalDateTime

@Service
class InfoLogService (val logDao: LogDao,val request: HttpServletRequest) {
     fun getLogByUser(id:Long):List<Log>{
         return  this.logDao.findByUtilisateur_IdOrderByLogDateTimeAsc(id)
     }

    fun saveLog(utilisateur: Utilisateur, action:String,detail:String=""){
        val ip=getClientIP()
        this.logDao.save(Log(logDateTime = LocalDateTime.now(), action = action, ip = ip, utilisateur = utilisateur, detail =detail ))
    }

    private fun getClientIP(): String {
        val xForwardedForHeader = request.getHeader("X-Forwarded-For")
        return if (xForwardedForHeader == null) {
            request.remoteAddr
        } else {
            xForwardedForHeader.split(",").first().trim()
        }
    }
}