package business.services;

import business.entities.Booking;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.persistence.Database;
import web.commands.CommandProtectedPage;

import java.util.List;

public class BookingFacade
{
    BookingMapper bookingMapper;

    public BookingFacade(Database database){this.bookingMapper = new BookingMapper(database);}

    public List<Booking> getAllBookings() throws UserException
    {
        return bookingMapper.getAllBookings();
    }
}
