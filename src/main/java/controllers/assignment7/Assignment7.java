package controllers.assignment7;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Assignment7", value = "/assignment/7")
public class Assignment7 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/products7.txt");
        ArrayList<Product> products = new ArrayList<>();
        Product p1 = new Product();
        p1.setCode("8601");
        p1.setDescription("86 (the band) - True Life Songs and Pictures");
        p1.setPrice(14.95);
        Product p2 = new Product();
        p2.setCode("pf01");
        p2.setDescription("Paddlefoot - The first CD");
        p2.setPrice(12.95);
        Product p3 = new Product();
        p3.setCode("pf02");
        p3.setDescription("Paddlefoot - The second CD");
        p3.setPrice(14.95);
        Product p4 = new Product();
        p4.setCode("jr01");
        p4.setDescription("Joe Rut - Genuine Wood Grained Finish");
        p4.setPrice(14.95);
        ProductIO.addRecord(p1,path);
        ProductIO.addRecord(p2,path);
        ProductIO.addRecord(p3,path);
        ProductIO.addRecord(p4,path);

        request.getRequestDispatcher("/assignment/7/product").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
