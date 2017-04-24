package com.waterbill.pl.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
@ComponentScan("com.waterbill.aspect")
@EnableAspectJAutoProxy
public class AspectConfiguration {

}