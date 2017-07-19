package bootExample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bootExample.dao.EmployeeDao;
import bootExample.model.Employee;

@Service
@Transactional
public class EmployeeService {
	
private EmployeeDao employeeDao;
	
	
	@Autowired
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}
	
	public List<Employee> findAll(){
		List<Employee> employees = new ArrayList<>();
		for (Employee mployee : employeeDao.findAll()) {
			employees.add(mployee);
		}
		return employees;
	}
	
	public Employee getEmployee(int id){
		
		Employee employee = new Employee();
		employee = employeeDao.findOne(id);
		
		return employee;
	}
	
	public void save(Employee employee){
		employeeDao.save(employee);
	}
	
	public void delete(int id){
		employeeDao.delete(id);
	}
	

}
