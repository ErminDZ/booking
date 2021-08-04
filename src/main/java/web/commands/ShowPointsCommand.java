package web.commands;

import business.entities.User;
import business.exceptions.UserException;
import business.services.PointsFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ShowPointsCommand extends CommandProtectedPage
{
    private PointsFacade pointsFacade = new PointsFacade(database);

    public ShowPointsCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        List<User> showPoints = pointsFacade.showAllPoints();
        request.setAttribute("showPoints", showPoints);

        return pageToShow;
    }
}
