package controllers.assignment14;

import controllers.assignment13.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "User14Servlet", value = "/assignment/14/userAdmin")
public class User14Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();

        String url = "/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }
        if(action.equals("create_user")){
            User user = new User();
            user.setFirstName(request.getParameter("firstName"));
            user.setLastName(request.getParameter("lastName"));
            user.setEmail(request.getParameter("email"));
            UserDB14.insert(user);
            List<User> users = UserDB14.selectUsers();
            request.setAttribute("users", users);
        }
        // perform action and set URL to appropriate page
        else if (action.equals("display_users")) {
            // get list of users
            List<User> users = UserDB14.selectUsers();
            request.setAttribute("users", users);
        }
        else if (action.equals("display_user")) {
            String userId = request.getParameter("userId");
            User user = UserDB14.selectUser(userId);
            session.setAttribute("user", user);
            url = "/user.jsp";
        }
        else if (action.equals("update_user")) {
            // get parameters from the request
            String email = request.getParameter("email");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

            // get and update user
            User user = (User) session.getAttribute("user");
            user.setEmail(email);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            UserDB14.update(user);

            // get and set updated users
            List<User> users = UserDB14.selectUsers();
            request.setAttribute("users", users);
        }
        else if (action.equals("delete_user")) {
            // get the user
            String userId = request.getParameter("userId");
            User user = UserDB14.selectUser(userId);

            // delte the user
            UserDB14.delete(user);

            // get and set updated users
            List<User> users = UserDB14.selectUsers();
            request.setAttribute("users", users);
        }
        url = "/views/assignment_14" + url;
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
