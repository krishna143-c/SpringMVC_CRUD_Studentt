package MVC_Crud.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("MVC_Crud")
public class MyConfiguration
{
	@Bean
	EntityManager manager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}
}
