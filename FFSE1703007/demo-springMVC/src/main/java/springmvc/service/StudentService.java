package springmvc.service;

import java.util.List;

import springmvc.entity.Course;
import springmvc.entity.Student;

public interface StudentService {
	public List<Student> findAll();
	public Student findById(int id);
	public void delete(int id);
	public void update(Student student);
	public void create(Student student);
	public List<Course> loadAllCourse();
	public List<Student> findAllForPaging(int startPosition,int maxResult);
}
