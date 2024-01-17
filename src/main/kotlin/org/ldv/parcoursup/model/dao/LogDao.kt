package org.ldv.parcoursup.model.dao;

import org.ldv.parcoursup.model.entity.Log
import org.springframework.data.jpa.repository.JpaRepository

interface LogDao : JpaRepository<Log, Long> {
}