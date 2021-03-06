package business.services;

import business.entities.User;
import business.persistence.Database;
import business.persistence.UserMapper;
import business.exceptions.UserException;

import java.util.List;

public class UserFacade
{
    private UserMapper userMapper;

    public UserFacade(Database database)
    {
        this.userMapper = new UserMapper(database);
    }

    public User login(String email, String password) throws UserException
    {
        return userMapper.login(email, password);
    }

    public User createUser(String email, String password) throws UserException
    {
        User user = new User(email, password, "customer");
        userMapper.createUser(user);
        return user;
    }
    public void subtractsPoints(int points, int userId)throws UserException
    {
        userMapper.subtractsPoints(points, userId);
    }
}
