package com.github.zima.sandbox.shell.bdd

import io.cucumber.java8.Ru
import org.assertj.core.api.Assertions
import org.springframework.shell.Shell

@Steps
class ShellSteps(
    private val shell: Shell,
) : Ru {

    private var result: Any? = null

    init {
        Когда("запускается команда {string}") { command: String ->
            result = shell.evaluate { command }
        }
        Тогда("возникает ошибка с сообщением {string}") { exceptionMessage: String ->
            Assertions.assertThat(result).isInstanceOfSatisfying(RuntimeException::class.java) {
                Assertions.assertThat(it.message).isEqualTo(exceptionMessage)
            }
        }
        Тогда("ответ содержит строку {string}") { expectedLine: String ->
            val commandList = (result as CharSequence)
                .split("\n")
                .filter { Regex("(.*): (.*)").matches(it) }

            Assertions.assertThat(commandList).contains(expectedLine)
        }
    }
}
