package business.persistence;

import business.entities.User;
import business.exceptions.UserException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PointsMapper {

    Database database;

    public PointsMapper(Database database) {
        this.database = database;
    }


    public List<User> showAllPoints() throws UserException
    {

        List<User> pointsList = new ArrayList<>();

        try (Connection connection = database.connect())
        {

            String sql = "select points from user where user_id = ?;";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                     int user_id = rs.getInt("user_id");
                    int points = rs.getInt("points");
                    pointsList.add(new User(points,user_id));
                }
            }
        } catch (SQLException ex) {
            throw new UserException(ex.getMessage());
        }
        return pointsList;
    }
}
