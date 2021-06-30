package business.persistence;

import business.entities.Booking;
import business.exceptions.UserException;

import java.sql.*;
import java.time.LocalDate;

public class BookingMapper {
    Database database;



    public BookingMapper(Database database){this.database = database;}


    public Booking addNewBooking(Booking booking) throws UserException {
        try (Connection connection = database.connect()) {
            String sql = "INSERT INTO booking SET days = ?, booking_date = ?";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                ps.setInt(1, booking.getDays());
                ps.setString(2, booking.setBooking_date(LocalDate.now()));
                ps.executeUpdate();
                ResultSet ids = ps.getGeneratedKeys();
                ids.next();
            }

        } catch (SQLException ex) {
            throw new UserException(ex.getMessage());
        }
        return booking;
    }
}
