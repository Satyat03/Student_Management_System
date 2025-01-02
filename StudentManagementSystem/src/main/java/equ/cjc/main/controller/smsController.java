package equ.cjc.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import equ.cjc.main.model.Student;
import equ.cjc.main.service.StudentService;

@Controller
public class smsController {
		
	@Autowired
	StudentService ssi;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam String username,@RequestParam String password,Model m)
	{
		if(username.equals("admin") && password.equals("admin"))
		{
			return "adminscreen";
		}
		else {
			m.addAttribute("login_fail","Enter valid login details");
			return "login";
		}
		
	}
	
	@RequestMapping("/enroll_student")
	public String saveStudent(@ModelAttribute Student s)
	{
		ssi.saveStudentDetails(s);
		return "adminscreen";
	}
	
	@RequestMapping("/viewpage")
	public String allstudent(Model m)
	{
		List<Student> list=ssi.getAllStudents();
		m.addAttribute("data",list);
		return "view";
		
	}
	@RequestMapping("/search")
	public String searchStudent(@RequestParam("batchNumber") String batchNumber,Model m)
	{
		List<Student> list=ssi.getBatchesStudent(batchNumber);
		if(list.size()>0)
		{
			m.addAttribute("data",list);
			return "view";
		}
		else {
			List<Student> l=ssi.getAllStudents();
			m.addAttribute("data",l);
			m.addAttribute("message","No record found for the batch  "+batchNumber);
			return "view";
		}
		
		
	}
	
	@RequestMapping("/fees")
	public String onFees(@RequestParam("id") int id,Model m)
	{
		Student s=ssi.getStudent(id);
		m.addAttribute("st",s);
		return "fees";
	}
	
	@RequestMapping("/payfees")
	public String payFees(@RequestParam("studentid") int id,@RequestParam("amount") float amt,Model m)
	{
		List<Student> list=ssi.updateStudentFees(id,amt);
		
		
		m.addAttribute("data",list);
		return "view";
	}
	
	@RequestMapping("/remove")
	public String removedelete(@RequestParam("id") int id,Model m)
	{
		List<Student> list=ssi.removeStudent(id);
		m.addAttribute("data",list);
		return "view";
	}
}
