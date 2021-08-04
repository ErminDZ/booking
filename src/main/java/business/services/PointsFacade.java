package business.services;

import business.entities.User;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.PointsMapper;
import business.persistence.UserMapper;

import java.util.List;

public class PointsFacade
{
    private PointsMapper pointsMapper;

    public PointsFacade(Database database)
    {
        this.pointsMapper = new PointsMapper(database);
    }

    public List<User> showAllPoints() throws UserException
    {
        return pointsMapper.showAllPoints();
    }
}
