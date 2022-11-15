package com.github.zima.sandbox.shell.bdd

import com.github.zima.sandbox.shell.config.CliAppRunner
import com.github.zima.sandbox.shell.config.PostgresConfig
import com.github.zima.sandbox.shell.SpringShellApplication
import io.cucumber.spring.CucumberContextConfiguration
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.context.TestPropertySource

@CucumberContextConfiguration
@TestPropertySource(properties = ["spring.shell.interactive.enabled=false"])
@SpringBootTest(classes = [PostgresConfig::class, CliAppRunner::class, SpringShellApplication::class])
class CucumberSpringContextConfiguration
