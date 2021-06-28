package business.entities;

import java.util.Date;

public class Booking
{
    private int booking_id;
    private int user_id;
    private String booking_date;
    private boolean booking_status;
    private int item_id;
    private int days;
    private String comment;

    public Booking(String booking_date,boolean booking_status, int days)
    {
        this.booking_date = booking_date;
        this.days = days;
        this.booking_status = booking_status;
    }


    public int getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getBooking_date() {
        return booking_date;
    }

    public void setBooking_date(String booking_date) {
        this.booking_date = booking_date;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean setBooking_status() {
        return false;
    }

    public boolean isBooking_status() {
        return booking_status;
    }
}
