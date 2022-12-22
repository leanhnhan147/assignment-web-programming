package controllers.assignment2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EmailListServlet", value = "/assignment/2/EmailList")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        String url = "/index.jsp";

        // get current action
        String action = request.getParameter("action");

        // print action value to console AND log file
        System.out.println("EmailListServlet action: " + action);
        log("action=" + action);

        // set default action
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");


            // store data in User6 object
            User user = new User(firstName, lastName, email);

            // validate the parameters
            String message;
            if (firstName == null || lastName == null || email == null ||
                    firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Please fill out all three text boxes.";
                url = "/index.jsp";
            }
            else {
                message = "";
                url = "/thanks.jsp";
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }

        getServletContext()
                .getRequestDispatcher("/views/assignment_2" + url)
                .forward(request, response);
    }
}
