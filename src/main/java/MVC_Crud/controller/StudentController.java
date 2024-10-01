package MVC_Crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import MVC_Crud.dao.StudentDAO;
import MVC_Crud.dto.Student;
import net.bytebuddy.matcher.ModifierMatcher.Mode;


@Controller
public class StudentController
{
	@Autowired
	StudentDAO dao;
	
	@GetMapping("/")
	public String loadHome() 
	{
		return "home.jsp";
	}
	
	@GetMapping("/add-student")
	public String loadaddStudent()
	{
		return "add-student.jsp";
	}
	
	@PostMapping("/add-student")
	public String addstudent(@ModelAttribute Student student,ModelMap map)
	{
		dao.save(student);
		map.put("sucess", "Data Saved Sucessfully");
		return "home.jsp";
	}
	
	@RequestMapping("/fetch-students")
	public String fetchstudent(ModelMap map) {
		map.put("students", dao.fetchAll());
		return "fetch.jsp";
	}
	
	@GetMapping("/delete")
	public String deletestudent(@RequestParam int id, ModelMap map) {
	    dao.delete(id);  
	    map.put("sucess", "Student Deleted SucessFully");
	    return "fetch-students";
	}
	
	@GetMapping("/edit")
	public String editStudent(@RequestParam int id, ModelMap map)
	{
		map.put("student", dao.find(id));
		return "edit.jsp";
	}
	
	
	@PostMapping("/update-student")
	public String updatestudent(@ModelAttribute Student student, ModelMap map) {
	    dao.update(student);  
	    map.put("sucess", "Data Updated SucessFully");
	    return "fetch-students";
	}
}
