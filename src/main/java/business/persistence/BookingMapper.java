package business.persistence;

import business.entities.Booking;
import business.exceptions.UserException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingMapper {
    Database database;

    public BookingMapper(Database database) {
        this.database = database;
    }

    public Booking addNewBooking(Booking booking) throws UserException {
        try (Connection connection = database.connect()) {
            String sql = "INSERT INTO booking SET days = ?, booking_date = ?, booking_status = ?, fk_user_id =?, fk_item_id = ?";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                ps.setInt(1, booking.getDays());
                ps.setString(2, booking.getBooking_date());
                ps.setBoolean(3, booking.isBooking_status());
                ps.setInt(4, booking.getUser_id());
                ps.setInt(5, booking.getItem_id());


                ps.executeUpdate();
                ResultSet booking_id = ps.getGeneratedKeys();
                booking_id.next();

            }

        } catch (SQLException ex) {
            throw new UserException(ex.getMessage());
        }
        return booking;
    }

    public List<Booking> getAllBookings() throws UserException {
        List<Booking> bookingList = new ArrayList<>();

        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM booking";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int days = rs.getInt("days");
                    String booking_date = rs.getString("booking_date");
                    boolean booking_status = rs.getBoolean("booking_status");
                    int booking_id = rs.getInt("booking_id");
                    Booking booking = new Booking(days, booking_date, booking_status, booking_id);
                    booking.setBooking_id(booking_id);
                    bookingList.add(booking);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return bookingList;
    }

    public void updateBookings() throws UserException {

        try (Connection connection = database.connect()) {
            String sql = "update booking SET booking_status = ?";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ps.setBoolean(1, true);
                ps.executeUpdate();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

