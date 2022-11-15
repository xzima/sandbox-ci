package com.github.zima.sandbox.shell

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SpringShellApplication

fun main(args: Array<String>) {
    runApplication<SpringShellApplication>(*args)
}
