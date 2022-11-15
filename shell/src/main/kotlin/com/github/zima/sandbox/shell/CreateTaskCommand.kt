package com.github.zima.sandbox.shell

import org.springframework.shell.standard.ShellComponent
import org.springframework.shell.standard.ShellMethod
import javax.validation.constraints.NotBlank

@ShellComponent
class CreateTaskCommand {
    @ShellMethod(key = ["new"], value = "create new task")
    fun createTask(@NotBlank name: String) {
        println(name)
    }
}
