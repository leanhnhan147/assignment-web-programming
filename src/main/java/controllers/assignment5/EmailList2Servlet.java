package controllers.assignment5;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "EmailList2Servlet", value = "/assignment/5/EmailList")
public class EmailList2Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String path = getServletContext().getRealPath("/WEB-INF/EmailList5.txt");
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/views/assignment_5/index.jsp";
        if (action.equals("join")) {
            url = "/views/assignment_5/index.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User6 object and save User6 object in database
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            UserIO.addRecord(user, path);

            // set User6 object in request object and set URL
            session.setAttribute("user5", user);
            url = "/views/assignment_5/thanks.jsp";   // the "thanks" page
        }

        // create the Date object and store it in the request
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        // create users list and store it in the session
        ArrayList<User> users = UserIO.getUsers(path);
        session.setAttribute("users5", users);

        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
