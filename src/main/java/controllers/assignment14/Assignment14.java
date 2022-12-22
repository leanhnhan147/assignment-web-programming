package controllers.assignment14;


import controllers.assignment13.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Assignment14", value = "/assignment/14")
public class Assignment14 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = UserDB14.selectUsers();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/views/assignment_14/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
