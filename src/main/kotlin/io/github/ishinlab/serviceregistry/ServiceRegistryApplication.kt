package io.github.ishinlab.serviceregistry

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer
import org.springframework.context.annotation.Bean
import org.springframework.security.config.Customizer
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.web.SecurityFilterChain

@SpringBootApplication
@EnableEurekaServer
class ServiceRegistryApplication {
    @Bean
    fun securityFilterChain(http: HttpSecurity): SecurityFilterChain {
        return http.authorizeHttpRequests {
            it.requestMatchers("/actuator/**").permitAll()
                .anyRequest().authenticated()
        }
            .httpBasic(Customizer.withDefaults())
            .csrf { it.ignoringRequestMatchers("/eureka/**") }
            .build()
    }
}

fun main(args: Array<String>) {
    runApplication<ServiceRegistryApplication>(*args)
}
