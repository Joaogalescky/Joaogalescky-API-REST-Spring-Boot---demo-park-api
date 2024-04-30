package com.jgalescky.demoparkapi.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringDocOpenApiConfig {

    @Bean
    public OpenAPI openAPI() {
        return new OpenAPI().info(new Info().title("REST API - Spring Park")
                .description("API para gestão de estacionamento de veículos - realizado no curso da trilha de Springboot Back-End AWS 2024 - material de ensino do prof. Marcio Ballem")
                .version("v1").license(new License().name("Apache 2.0").url("https://www.apache.org/licenses/LICENSE-2.0"))
                .contact(new Contact().name("João Vitor Campõe Galescky").email("joaocvgalescky@gmail.com"))
        );
    }
}
