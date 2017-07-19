package bootExample;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.boot.SpringApplication;

@SpringBootApplication
public class Application  extends SpringBootServletInitializer{

private static Class applicationClass = Application.class;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		SpringApplication.run(Application.class, args);
	}

	 @Override protected SpringApplicationBuilder configure(SpringApplicationBuilder application){ 
		 return application.sources(applicationClass);
		 }
}
