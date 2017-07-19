package bootExample.tests;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import bootExample.service.EmployeeService;

import bootExample.model.*;

//@ContextConfiguration(locations = "classpath:application-context-test.xml")
@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {

	private EmployeeService employeeService;

	@Autowired
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}


	@Test
	@Transactional
	@Rollback(true)
	public void testEmployee() {
		int firstSize = employeeService.findAll().size();
		Employee employee = new Employee("testName", 1000, "testSurname");
	
		employeeService.save(employee);
		
		Assert.assertEquals(firstSize + 1, employeeService.findAll().size());
		
	}
	

	
	
}
