package com.waterbill.pl.configuration;

import javax.servlet.ServletContext;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { com.waterbill.pl.configuration.ApplicactionConfiguration.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
	
	@Override
	protected void registerContextLoaderListener(ServletContext context){
		super.registerContextLoaderListener(context);
	}
	
/*	@Override
     protected Filter[] getServletFilters() {
	        return new Filter[]{new SessionAndURLFilter()};
	  }
*/}
