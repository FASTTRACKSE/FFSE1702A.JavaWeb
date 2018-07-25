package springmvc.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;

import springmvc.entity.Course;
import springmvc.entity.Student;

public interface StudentDAO {
	public List<Student> findAll();

	public Student findById(int id);

	public void delete(int id);

	public void update(Student student);

	public void create(Student student);

	public List<Course> loadAllCourse();
	
	public List<Student> findAllForPaging(int startPosition,int maxResult);
}
