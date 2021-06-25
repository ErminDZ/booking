package business.entities;

public class Equipments
{
    private int itemid;
    private String itemname;
    private String description;
    private int roomnumber;
    private String type;

    public Equipments(int itemid, String itemname, String description, int roomnumber, String type) {
        this.itemid = itemid;
        this.itemname = itemname;
        this.description = description;
        this.roomnumber = roomnumber;
        this.type = type;
    }

    public int getItemid() {
        return itemid;
    }

    public void setItemid(int itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRoomnumber() {
        return roomnumber;
    }

    public void setRoomnumber(int roomnumber) {
        this.roomnumber = roomnumber;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
