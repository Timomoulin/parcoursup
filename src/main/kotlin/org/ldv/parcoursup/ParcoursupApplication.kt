package org.ldv.parcoursup

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class ParcoursupApplication

fun main(args: Array<String>) {
    runApplication<ParcoursupApplication>(*args)
}
