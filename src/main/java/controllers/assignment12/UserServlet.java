package controllers.assignment12;

import controllers.assignment13.UserDB13;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserServlet", value = "/assignment/12/userAdmin")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String url = "/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }

        // perform action and set URL to appropriate page
        if(action.equals("create_user")){
            User user = new User();
            user.setFirstName(request.getParameter("firstName"));
            user.setLastName(request.getParameter("lastName"));
            user.setEmail(request.getParameter("email"));
            if (UserDB.emailExists(user.getEmail())) {
                request.setAttribute("message", "This email address already exists.<br>" +
                        "Please enter another email address.");
                url = "/user-add.jsp";
            }else {
                UserDB.insert(user);
                ArrayList<User> users = UserDB.selectUsers();
                request.setAttribute("users", users);
            }
        }
        else if (action.equals("display_users")) {
            // get list of users
            ArrayList<User> users = UserDB.selectUsers();
            request.setAttribute("users", users);
        }
        else if (action.equals("display_user")) {
            String emailAddress = request.getParameter("email");
            User user = UserDB.selectUser(emailAddress);
            session.setAttribute("user", user);
            url = "/user.jsp";
        }
        else if (action.equals("update_user")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

            // get and update user
            User user = (User) session.getAttribute("user");
            user.setFirstName(firstName);
            user.setLastName(lastName);
            UserDB.update(user);

            // get and set updated users
            ArrayList<User> users = UserDB.selectUsers();
            request.setAttribute("users", users);
        }
        else if (action.equals("delete_user")) {
            // get the user
            String email = request.getParameter("email");
            User user = UserDB.selectUser(email);

            // delete the user
            UserDB.delete(user);

            // get and set updated users
            ArrayList<User> users = UserDB.selectUsers();
            request.setAttribute("users", users);
        }
        url = "/views/assignment_12" + url;
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
