package business.services;

import business.entities.Booking;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.persistence.Database;

import java.time.LocalDate;
import java.util.Date;

public class AddNewBookingFacade
{
    private BookingMapper bookingMapper;

    public AddNewBookingFacade(Database database){this.bookingMapper = new BookingMapper(database);}

    public Booking addNewBooking(int days, String booking_date) throws UserException
    {
        Booking booking = new Booking(days, booking_date);
        booking = bookingMapper.addNewBooking(booking);
        return booking;
    }
}
