package com.gl.StudentFest.dao;

import java.util.List;

import com.gl.StudentFest.model.Student;

public interface StudentDao {
	
	public void SaveorUpdate(Student student);
	public void delete(int id);
	public Student getStudent(int id);
	public List<Student> findAll();
}