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

import bootExample.model.Employee;
import bootExample.service.DepartmentService;
import bootExample.service.EmployeeService;
import bootExample.service.MeetingService;


@Controller
public class EmployeeController {
	
	private EmployeeService employeeService;


	
	@Autowired
	public void setEmployeeService(EmployeeService employeeService){
		this.employeeService = employeeService;
	}



	@RequestMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	@RequestMapping("/employee")
	public String getAllEmployee(Model model) {
		
		model.addAttribute("employees", employeeService.findAll());
		
		return "employee";
	}
	
	@RequestMapping(value = "/employee/{id}", method = RequestMethod.GET)
	public @ResponseBody Employee getEmployeeById(@PathVariable int id){
		Employee employee = employeeService.getEmployee(id);
		return employee;
	}
	
	@RequestMapping(value = "/createEmployee", method = RequestMethod.POST)
	public String createEmployee(@RequestParam String action, @Valid Employee employee,
			BindingResult result) {
		if (result.hasErrors()) {
			return "employee";
		}

		if (action.equals("create") || action.equals("edit")) {
			
		
			
			 employeeService.save(employee);		
			
		} else if (action.equals("delete")) {
			
			employeeService.delete(employee.getEmployeeId());
			
		}
		
		return "redirect:/employee";
	}
	

}
