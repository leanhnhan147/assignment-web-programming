package controllers.assignment11;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "SqlGatewayServlet", value = "/assignment/11/sqlGateway")
public class SqlGatewayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get a connection
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();

        String sqlStatement = request.getParameter("sqlStatement");
        String sqlResult = "";
        try {
            // create a statement
            Statement statement = connection.createStatement();

            // parse the SQL string
            sqlStatement = sqlStatement.trim();
            if (sqlStatement.length() >= 6) {
                String sqlType = sqlStatement.substring(0, 6);
                if (sqlType.equalsIgnoreCase("select")) {
                    // create the HTML for the result set
                    ResultSet resultSet
                            = statement.executeQuery(sqlStatement);
                    sqlResult = SQLUtil.getHtmlTable(resultSet);
                    resultSet.close();
                } else {
                    int i = statement.executeUpdate(sqlStatement);
                    if (i == 0) { // a DDL statement
                        sqlResult =
                                "<p>The statement executed successfully.</p>";
                    } else { // an INSERT, UPDATE, or DELETE statement
                        sqlResult =
                                "<p>The statement executed successfully.<br>"
                                        + i + " row(s) affected.</p>";
                    }
                }
            }
            statement.close();
            connection.close();
        } catch (SQLException e) {
            sqlResult = "<p>Error executing the SQL statement: <br>"
                    + e.getMessage() + "</p>";
        } finally {
            pool.freeConnection(connection);
        }

        HttpSession session = request.getSession();
        session.setAttribute("sqlResult", sqlResult);
        session.setAttribute("sqlStatement", sqlStatement);


        getServletContext()
                .getRequestDispatcher("/views/assignment_11/index.jsp")
                .forward(request, response);
    }
}
