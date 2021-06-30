package business.persistence;

import business.entities.Equipments;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EquipmentMapper
{
    Database database;
    public EquipmentMapper(Database database){this.database = database;}

    public List<Equipments> getAllequipments() throws UserException
    {
        List<Equipments> equipmentsList = new ArrayList<>();

        try (Connection connection = database.connect())
        {
            String sql = "SELECT * FROM items";

            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    int itemid = rs.getInt("item_id");
                    String itemname = rs.getString("item_name");
                    String description= rs.getString("description");
                    int roomnumber= rs.getInt("fk_room_number");
                    String type= rs.getString("type");
                    Equipments equipments = new Equipments(itemid,itemname,description,roomnumber,type);
                    equipments.setItemid(itemid);
                    equipmentsList.add(equipments);
                }

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return equipmentsList;
    }
}
