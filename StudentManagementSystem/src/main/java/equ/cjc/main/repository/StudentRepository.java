package equ.cjc.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import equ.cjc.main.model.Student;


public interface StudentRepository extends JpaRepository<Student, Integer> {

}
