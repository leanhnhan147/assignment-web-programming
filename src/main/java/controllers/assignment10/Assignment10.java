package controllers.assignment10;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Assignment10", value = "/assignment/10")
public class Assignment10 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/products10.txt");
        ArrayList<Product10> products = new ArrayList<>();
        Product10 p1 = new Product10();
        p1.setCode("8601");
        p1.setDescription("86 (the band) - True Life Songs and Pictures");
        p1.setPrice(14.95);
        Product10 p2 = new Product10();
        p2.setCode("pf01");
        p2.setDescription("Paddlefoot - The first CD");
        p2.setPrice(12.95);
        Product10 p3 = new Product10();
        p3.setCode("pf02");
        p3.setDescription("Paddlefoot - The second CD");
        p3.setPrice(14.95);
        Product10 p4 = new Product10();
        p4.setCode("jr01");
        p4.setDescription("Joe Rut - Genuine Wood Grained Finish");
        p4.setPrice(14.95);
        ProductIO10.addRecord(p1,path);
        ProductIO10.addRecord(p2,path);
        ProductIO10.addRecord(p3,path);
        ProductIO10.addRecord(p4,path);
        request.getRequestDispatcher("/views/assignment_10/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
