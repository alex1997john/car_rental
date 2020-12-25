package carrental;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
    static Connection conn;
    static String errorMessage = null;

    public static Connection getConnection() {
        // Connect to database
        try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            try {
                /* Get database connection object
                        first parameter - connection URL
                        second parameter - username
                        third parameter - password
                   All these variables are define in Provider.java
                 */
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental", "root", "");
            } catch (SQLException ex) {
                // If there is SQL exception, store this message and set isError to true
                errorMessage = "Error connecting to SQL Server";
            }
        } catch (ClassNotFoundException ex) {
            // If driver class not found, store this message and set isError to true
            errorMessage = "JDBC Driver not found";
        }
        System.out.println("success");
        return conn; // Return database connection object
    }
}

