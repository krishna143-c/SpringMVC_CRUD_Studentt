package MVC_Crud.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import MVC_Crud.dto.Student;


@Component
public class StudentDAO {

	@Autowired
	EntityManager manager;

	public void save(Student student) {
		manager.getTransaction().begin();
		manager.persist(student);
		manager.getTransaction().commit();
	}

	public List<Student> fetchAll() {
		return manager.createQuery("select x from Student x").getResultList();
	}
	
	public Student find(int id)
	{
		return manager.find(Student.class, id);
	}

	public void delete(int id)
	{  
        if (find(id) != null)
        {
        	manager.getTransaction().begin();
            manager.remove(find(id)); 
    		manager.getTransaction().commit();
        }
    }

	public void update(Student student1) 
	{
		manager.getTransaction().begin();
        Student student = manager.merge(student1); 
		manager.getTransaction().commit();
	}

}
