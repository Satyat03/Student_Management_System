package equ.cjc.main.service;

import java.util.List;

import equ.cjc.main.model.Student;

public interface StudentService {

	public void saveStudentDetails(Student s);
	public List<Student> getAllStudents();
	public List<Student> getBatchesStudent(String batchNumber);
	public Student getStudent(int id);
	public List<Student> updateStudentFees(int id, float amt);
	public List<Student> removeStudent(int id);
	public List<Student> paging(int pageNo, int i);
	public List<Student> updateStudentBatch(int id, String batchNumber,String batchMode);
}
