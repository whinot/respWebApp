package com.protoApp.main.config;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


public class Dispatcherservletinitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	@Override
	protected Class <?>[] getRootConfigClasses(){
		//to do
		return null;
	}
	
	@Override
	protected Class <?>[] getServletConfigClasses(){
		return new Class[] {AppConfig.class};
	}
	
	@Override
	protected String [] getServletMappings(){
		return new String[] {"/"};
	}

}
