package bootExample.dao;

import org.springframework.data.repository.CrudRepository;

import bootExample.model.Department;

public interface DepartmentDao extends CrudRepository<Department, Integer>{

}
