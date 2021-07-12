package com.unsreg.apache.camel.engine;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import java.util.Arrays;

@SpringBootApplication()
public class ApacheCamelEngineApplication {
    public static void main(String[] args) {
        final ConfigurableApplicationContext applicationContext =
                SpringApplication.run(ApacheCamelEngineApplication.class, args);

        System.out.println("////////////////////////////////");
        System.out.println("BEAN_DEFINITION_NAMES");
        System.out.println("////////////////////////////////");

        final String[] beanDefinitionNames = applicationContext.getBeanDefinitionNames();
        Arrays.sort(beanDefinitionNames);

        for (String name : beanDefinitionNames) {
            System.out.println("-" + name);
        }

        System.out.println("////////////////////////////////");
    }
}
