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

    public Booking addNewBooking(int user_id, String booking_date, boolean booking_status, int item_id, int days, String comment) throws UserException
    {
        Booking booking = new Booking(user_id, booking_date, booking_status, item_id, days, comment);
        booking = bookingMapper.addNewBooking(booking);
        return booking;
    }

}
