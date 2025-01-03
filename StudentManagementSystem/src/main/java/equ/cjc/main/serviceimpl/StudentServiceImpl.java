package equ.cjc.main.serviceimpl;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
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

	@Override
	public Student getStudent(int id) {
		
		return sr.findById(id).get();
	}

	@Override
	public List<Student> updateStudentFees(int id, float amt) {
		
		Optional<Student> op=sr.findById(id);
		if(op.isPresent())
		{
			Student s=op.get();
			s.setFeesPaid(s.getFeesPaid()+amt);
			sr.save(s);
		}
		return sr.findAll();
	}

	@Override
	public List<Student> removeStudent(int id) {
		sr.deleteById(id);
		return sr.findAll();
		
	}

	@Override
	public List<Student> paging(int pageNo, int pageSize) {

		Pageable pageable = (Pageable) PageRequest.of(pageNo, pageSize, Sort.by("studentFullName").ascending());
		List<Student> list = sr.findAll;(pageable).getContent();

		return list;
	}


}
