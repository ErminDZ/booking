package business.services;

import business.entities.Student;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.StudentMapper;

public class AddNewStudentFacade
{
    private StudentMapper studentMapper;


    public AddNewStudentFacade(Database database){ this.studentMapper = new StudentMapper(database);}

    public Student addStudent(String email, String password, String role, int phone,int points) throws UserException
    {
        Student student = new Student(email, password, role, phone, points);
        student = studentMapper.addNewStudent(student);
        return student;
    }
}
