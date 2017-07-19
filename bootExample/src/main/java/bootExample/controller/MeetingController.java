package bootExample.controller;

import bootExample.service.DepartmentService;
import bootExample.service.MeetingService;
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

import bootExample.model.Meeting;


@Controller
public class MeetingController {

	private MeetingService meetingService;
	private DepartmentService departmentService;
		
	@Autowired
	public void setMeetingService(MeetingService meetingService){
		this.meetingService = meetingService;
	}
	
	@Autowired
	public void setDepartmentService(DepartmentService departmentService){
		this.departmentService = departmentService;
	}
	
	@RequestMapping("/meetings")
	public String getAllMeeting(Model model) {
		
		model.addAttribute("meetings", meetingService.findAll());
		model.addAttribute("departments", departmentService.findAll());
		
		return "meetings";
	}
	
	@RequestMapping(value = "/meetings/{id}", method = RequestMethod.GET)
	public @ResponseBody Meeting getMeetingById(@PathVariable int id){
		Meeting meeting = meetingService.getMeeting(id);
		return meeting;
	}
	
	@RequestMapping(value = "/createMeetings", method = RequestMethod.POST)
	public String createMeeting(@RequestParam String action, @Valid Meeting meeting,
			BindingResult result) {
		if (result.hasErrors()) {
			return "meetings";
		}

		if (action.equals("create") || action.equals("edit")) {	
			
			meetingService.save(meeting);		
			
		} else if (action.equals("delete")) {
			
			meetingService.delete(meeting.getMeetingsId());
			
		}
		
		return "redirect:/meetings";
	}
	
}
