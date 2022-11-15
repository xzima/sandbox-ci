package com.github.zima.sandbox.shell.config

import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource
import org.springframework.boot.test.context.TestConfiguration
import org.springframework.context.annotation.Bean
import org.testcontainers.containers.JdbcDatabaseContainer
import org.testcontainers.containers.PostgreSQLContainer
import org.testcontainers.containers.wait.strategy.Wait
import javax.sql.DataSource


@TestConfiguration
class PostgresConfig {
    @Bean(initMethod = "start", destroyMethod = "stop")
    fun jdbcDatabaseContainer(): JdbcDatabaseContainer<*> {
        return PostgreSQLContainer("postgres:15")
//            .withInitScript("db.sql")
            .waitingFor(Wait.forListeningPort()) // ожидание доступности порта
    }

    @Bean
    fun dataSource(jdbcDatabaseContainer: JdbcDatabaseContainer<*>): DataSource {
        val hikariConfig = HikariConfig().apply {
            jdbcUrl = jdbcDatabaseContainer.jdbcUrl
            username = jdbcDatabaseContainer.username
            password = jdbcDatabaseContainer.password
        }

        return HikariDataSource(hikariConfig)
    }
}
