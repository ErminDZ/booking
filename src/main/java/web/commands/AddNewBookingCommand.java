package web.commands;

import business.entities.Booking;
import business.exceptions.UserException;
import business.persistence.Database;
import business.services.AddNewBookingFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.Date;

public class AddNewBookingCommand extends CommandProtectedPage {
    AddNewBookingFacade addNewBookingFacade = new AddNewBookingFacade(database);


    public AddNewBookingCommand(String pageToShow, String role) {super(pageToShow, role);}

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        int days = Integer.parseInt(request.getParameter("days"));
        String booking_date = (request.getParameter("booking_date"));
        Booking booking = addNewBookingFacade.addNewBooking(days, LocalDate.now());
        request.setAttribute("booking", booking);
        return pageToShow;
    }
}
