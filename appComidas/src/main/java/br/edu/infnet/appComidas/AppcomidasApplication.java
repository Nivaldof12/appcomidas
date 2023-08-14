package br.edu.infnet.appComidas;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class AppcomidasApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppcomidasApplication.class, args);
	}

}
