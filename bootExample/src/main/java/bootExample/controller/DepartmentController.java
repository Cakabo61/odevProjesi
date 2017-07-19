package bootExample.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bootExample.model.Department;
import bootExample.service.DepartmentService;
import bootExample.service.EmployeeService;



@Controller
public class DepartmentController {

	private DepartmentService departmentService;
	private EmployeeService employeeService;


	
	@Autowired
	public void setEmployeeService(EmployeeService employeeService){
		this.employeeService = employeeService;
	}
	
	@Autowired
	public void setDepartmentService(DepartmentService departmentService){
		this.departmentService = departmentService;
	}
	
	
	@RequestMapping("/department")
	public String getAllDepartment(Model model) {
		
		model.addAttribute("departments", departmentService.findAll());
		model.addAttribute("employees", employeeService.findAll());
		
		return "department";
	}
	
	@RequestMapping(value = "/department/{id}", method = RequestMethod.GET)
	public @ResponseBody Department getDepartmentById(@PathVariable int id){
		Department department = departmentService.getDepartment(id);
		return department;
	}
	
	@RequestMapping(value = "/createDepartment", method = RequestMethod.POST)
	public String createDepartment(@RequestParam String action, @Valid Department department,
			BindingResult result) {
		if (result.hasErrors()) {
			return "department";
		}

		if (action.equals("create") || action.equals("edit")) {
			
		
			
			departmentService.save(department);		
			
		} else if (action.equals("delete")) {
			
			departmentService.delete(department.getDepartmentId());
			
		}
		
		return "redirect:/department";
	}
}
