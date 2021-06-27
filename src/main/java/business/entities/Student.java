package business.entities;

public class Student
{
    private String email;
    private String password;
    private String role;
    private int phone;
    private int points;



    public Student(String email, String password, String role, int phone, int points) {
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role = role;
        this.points = points;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String setRole(String role) {
        this.role = role;
        return role;

    }
}
