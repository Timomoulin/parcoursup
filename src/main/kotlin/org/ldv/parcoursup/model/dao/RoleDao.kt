package org.ldv.parcoursup.model.dao;


import org.ldv.parcoursup.model.entity.Role
import org.springframework.data.jpa.repository.JpaRepository

interface RoleDao : JpaRepository<Role, Long> {
}