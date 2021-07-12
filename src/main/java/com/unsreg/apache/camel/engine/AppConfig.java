package com.unsreg.apache.camel.engine;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource({
        "classpath:application.properties"
})
@ImportResource({
        "classpath:application-context.xml"
})
public class AppConfig {
}
