package equ.cjc.main.service;

import java.util.List;

import equ.cjc.main.model.Student;

public interface StudentService {

	public void saveStudentDetails(Student s);
	public List<Student> getAllStudents();
	public List<Student> getBatchesStudent(String batchNumber);
	public Student getStudent(int id);
	public List<Student> updateStudentFees(int id, float amt);
}
