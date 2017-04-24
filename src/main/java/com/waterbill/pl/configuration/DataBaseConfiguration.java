package com.waterbill.pl.configuration;

import java.sql.Timestamp;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class DataBaseConfiguration {

	/*
	 *  Adding DB configuation
	 */
	
	@Autowired
	Environment environment;
	
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
    	// instead of using 3rd api, we can use jndi
    	
    	BasicDataSource dataSource = new BasicDataSource();
    	 dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
         dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
         dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
         dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
         return dataSource;	    	
    }

    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
        properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
        return properties;
    }
    
/*
 *  @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.scanPackages("com.iexp.sl.domain.*");
    	markHibernateClass(sessionBuilder);
    	return sessionBuilder.buildSessionFactory();
    }
*/
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(LocalSessionFactoryBuilder sessionFactoryBuilder) {
    	markHibernateClass(sessionFactoryBuilder);
    	return sessionFactoryBuilder.buildSessionFactory();
    }
    
    
    @Autowired
    @Bean(name = "sessionFactoryBuilder")    
    public LocalSessionFactoryBuilder getLocalSessionFactoryBuilder(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	return sessionBuilder;
    }
    
    private void markHibernateClass(LocalSessionFactoryBuilder sessionBuilder){
    	//all classes should be registered
//   	 	sessionBuilder.addAnnotatedClasses(Test.class);
//    	sessionBuilder.addAnnotatedClass(Testing.class);
    	

    }
    
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);
		return transactionManager;
	}

}
