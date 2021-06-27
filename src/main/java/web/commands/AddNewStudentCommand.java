package web.commands;

import business.entities.Student;
import business.exceptions.UserException;
import business.services.AddNewStudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddNewStudentCommand extends CommandProtectedPage {
    AddNewStudentFacade addNewStudentFacade = new AddNewStudentFacade(database);


    public AddNewStudentCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {

        if (request.getParameter("email") != null)
        {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int phone = Integer.parseInt(request.getParameter("phone"));
            String role = request.getParameter("role");
            int points = Integer.parseInt(request.getParameter("points"));
            Student student = addNewStudentFacade.addStudent(email, password, role, phone, points);
            request.setAttribute("addStudent", student);
        }
        return pageToShow;
    }
}
