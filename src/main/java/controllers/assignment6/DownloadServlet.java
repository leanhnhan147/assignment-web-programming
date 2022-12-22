package controllers.assignment6;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DownloadServlet", value = "/assignment/6/download")
public class DownloadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("viewAlbums")) {
            url = "/index.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        } else if (action.equals("viewCookies")) {
            url = "/view_cookies.jsp";
        } else if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        }
        url = "/views/assignment_6" + url;

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }
        url = "/views/assignment_6" + url;
        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    private String checkUser(HttpServletRequest request,
                             HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode6", productCode);
        User6 user6 = (User6) session.getAttribute("user6");

        String url;
        // if User6 object doesn't exist, check email cookie
        if (user6 == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    CookieUtils.getCookieValue(cookies, "emailCookie6");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/register.jsp";
            }
            // if cookie exists, create User6 object and go to Downloads page
            else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user6 = UserIO.getUser(emailAddress, path);
                session.setAttribute("user6", user6);
                url = "/" + productCode + "_download.jsp";
            }
        }
        // if User6 object exists, go to Downloads page
        else {
            url = "/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response) {

        // get the user6 data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User6 object
        User6 user6 = new User6();
        user6.setEmail(email);
        user6.setFirstName(firstName);
        user6.setLastName(lastName);

        // write the User6 object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/EmailList6.txt");
        UserIO.add(user6, path);

        // store the User6 object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user6", user6);

        // add a cookie that stores the user6's email as a cookie
        Cookie c1 = new Cookie("emailCookie6", email);
        c1.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c1.setPath("/");                      // allow entire app to access it
        response.addCookie(c1);

        // add a cookie that stores the user6's as a cookie
        Cookie c2 = new Cookie("firstNameCookie6", firstName);
        c2.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c2.setPath("/");                      // allow entire app to access it
        response.addCookie(c2);

        // create and return a URL for the appropriate Download page
        String productCode = (String) session.getAttribute("productCode6");
        String url = "/" + productCode + "_download.jsp";
        return url;
    }

    private String deleteCookies(HttpServletRequest request,
                                 HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/delete_cookies.jsp";
        return url;
    }
}
