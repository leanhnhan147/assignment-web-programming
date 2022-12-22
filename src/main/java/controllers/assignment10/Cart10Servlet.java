package controllers.assignment10;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Cart10Servlet", value = "/assignment/10/cart")
public class Cart10Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        request.setCharacterEncoding("UTF-8");
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("shop")) {
            url = "/index.jsp";    // the "index" page
        }
        else if (action.equals("cart")) {
            String productCode = request.getParameter("productCode");
            String quantityString = request.getParameter("quantity");

            HttpSession session = request.getSession();
            Cart10 cart = (Cart10) session.getAttribute("cart10");
            if (cart == null) {
                cart = new Cart10();
            }

            //if the user enters a negative or invalid quantity,
            //the quantity is automatically reset to 1.
            int quantity;
            try {
                quantity = Integer.parseInt(quantityString);

            } catch (NumberFormatException nfe) {
                quantity = -1;
            }

            String path = sc.getRealPath("/WEB-INF/products10.txt");
            Product10 product = ProductIO10.getProduct(productCode, path);

            LineItem10 lineItem = new LineItem10();
            lineItem.setProduct(product);
            lineItem.setQuantity(quantity == -1 ? 1 :quantity);
            if (quantity == -1) {
                cart.addItem(lineItem);
            }
            else if (quantity > 0){
                cart.updateItem(lineItem);
            }
            else if (quantity == 0) {
                cart.removeItem(lineItem);
            }

            session.setAttribute("cart10", cart);
            url = "/cart.jsp";
        }
        else if (action.equals("checkout")) {
            url = "/checkout.jsp";
        }
        url = "/views/assignment_10" + url;
        sc.getRequestDispatcher(url)
                .forward(request, response);
    }
}
