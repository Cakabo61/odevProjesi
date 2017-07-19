package bootExample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bootExample.dao.DepartmentDao;
import bootExample.model.Department;

@Service
@Transactional
public class DepartmentService {
	
private DepartmentDao departmentDao;
	
	
	@Autowired
	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}
	
	public List<Department> findAll(){
		List<Department> departments = new ArrayList<>();
		for (Department department : departmentDao.findAll()) {
			departments.add(department);
		}
		return departments;
	}
	
	public Department getDepartment(int id){
		
		Department department = new Department();
		department = departmentDao.findOne(id);
		
		return department;
	}
	
	public void save(Department department){
		departmentDao.save(department);
	}
	
	public void delete(int id){
		departmentDao.delete(id);
	}
}
