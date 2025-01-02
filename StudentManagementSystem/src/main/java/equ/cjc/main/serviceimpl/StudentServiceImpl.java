package equ.cjc.main.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import equ.cjc.main.model.Student;
import equ.cjc.main.repository.StudentRepository;
import equ.cjc.main.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	StudentRepository sr;
	
	@Override
	public void saveStudentDetails(Student s) {
		
		sr.save(s);
		
	}
	
	@Override
	public List<Student> getAllStudents() {
		
		return sr.findAll();
	}

	@Override
	public List<Student> getBatchesStudent(String batchNumber) {
		
		return sr.findAllByBatchNumber(batchNumber);
	}

}
