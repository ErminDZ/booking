package business.services;

import business.entities.AddStudent;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.StudentMapper;

public class AddNewStudentFacade
{
    private StudentMapper studentMapper;


    public AddNewStudentFacade(Database database){ this.studentMapper = new StudentMapper(database);}

    public AddStudent addStudent(String email, String password, String role, int phone) throws UserException
    {
        AddStudent student = new AddStudent(email, password, role, phone);
        student = studentMapper.addNewStudent(student);
        return student;
    }
}
