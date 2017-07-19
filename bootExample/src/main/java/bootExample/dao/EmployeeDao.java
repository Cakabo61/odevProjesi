package bootExample.dao;

import org.springframework.data.repository.CrudRepository;

import bootExample.model.Employee;

public interface EmployeeDao extends CrudRepository<Employee, Integer>{

}
