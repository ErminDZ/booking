package web.commands;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.UserMapper;
import business.services.AddNewBookingFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.Date;

public class AddNewBookingCommand extends CommandProtectedPage {
    UserFacade userFacade;
    UserMapper userMapper;

    AddNewBookingFacade addNewBookingFacade = new AddNewBookingFacade(database);


    public AddNewBookingCommand(String pageToShow, String role) {
        super(pageToShow, role);
        userFacade = new UserFacade(database);
        userMapper = new UserMapper(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        int userId = user.getId();
        int itemId = Integer.parseInt(request.getParameter("item"));
        int days = 0;

        try {
            days = Integer.parseInt(request.getParameter("days" + itemId));
        }
        catch (NumberFormatException e){
            throw new UserException("Husk at indtaste et antal dage!!!");
        }
        LocalDate booking_date = LocalDate.now();
        boolean booking_status = false;

        String comment = request.getParameter("comment");
        Booking booking = addNewBookingFacade.addNewBooking(userId, String.valueOf(booking_date), booking_status, itemId, days, comment);
        // call a method in the UserMapper by name: subtractPoints(int points)
        userFacade.subtractsPoints(days,userId);
        request.setAttribute("booking", booking);
        return pageToShow;
    }
}
