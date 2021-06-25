package business.entities;

public class AddStudent
{
    private String email;
    private String password;
    private String role;
    private int phone;


    public AddStudent(String email, String password, String role, int phone) {
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role = role;

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
