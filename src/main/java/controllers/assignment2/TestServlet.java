package controllers.assignment2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TestServlet", value = "/assignment/2/test")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("description","TestServlet Get");
        request.getRequestDispatcher("/views/assignment_2/test.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("description","TestServlet Post");
        request.getRequestDispatcher("/views/assignment_2/test.jsp").forward(request,response);
    }
}
