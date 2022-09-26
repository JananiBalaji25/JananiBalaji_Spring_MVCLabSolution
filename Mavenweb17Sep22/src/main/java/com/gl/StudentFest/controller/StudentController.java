package com.gl.StudentFest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.StudentFest.dao.StudentDao;
import com.gl.StudentFest.model.Student;
@Controller
@RequestMapping("students")
public class StudentController {
	@Autowired
	StudentDao studentDao;
    @GetMapping("list")
	public String listStudents(Model model) {
    	List<Student>students = studentDao.findAll();
    	model.addAttribute("students",students);
		return "student-list";
	}
    
    @GetMapping("showStudentForm")
	public String showStudents(Model model) {
    	Student student = new Student();
    	model.addAttribute("student", student);
		return "student-form";
	}
    
    @PostMapping("save")
   	public String saveStudents(Model model, @ModelAttribute("student")Student student) {
       	model.addAttribute("student", student);
       	studentDao.SaveorUpdate(student);
   		return "redirect:/students/list";
   	}
    
    @GetMapping("update")
   	public String updateStudents(Model model, @RequestParam("id")int id) {
       	Student student = studentDao.getStudent(id);
       	model.addAttribute("student", student);
   		return "student-form";
   	}
    
    @GetMapping("delete")
   	public String deleteStudents(Model model, @RequestParam("id")int id) {
       	Student student = studentDao.getStudent(id);
       	studentDao.delete(id);
       	return "redirect:/students/list";
       	
   	}
    
    
}