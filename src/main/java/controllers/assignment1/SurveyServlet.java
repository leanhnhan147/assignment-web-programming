package controllers.assignment1;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
@WebServlet(name = "SurveyServlet", value = "/assignment/1/survey")
public class SurveyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/views/assignment_1/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String d = request.getParameter("dob");
        Date dob = new Date();
        try {
            dob = new SimpleDateFormat("yyyy-MM-dd").parse(d);
        }
        catch (Exception e){

        }
        User user = new User(firstName, lastName, email, dob);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/views/assignment_1/thanks.jsp").forward(request, response);
    }
}
