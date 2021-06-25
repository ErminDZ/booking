package web.commands;

import business.entities.AddStudent;
import business.exceptions.UserException;
import business.services.AddNewStudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
            AddStudent addStudent = addNewStudentFacade.addStudent(email, password, role, phone);
            request.setAttribute("addStudent", addStudent);
        }
        return pageToShow;
    }
}
