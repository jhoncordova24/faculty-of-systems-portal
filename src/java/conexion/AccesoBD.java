package conexion;

import java.sql.*;

public class AccesoBD {

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "");
            if (con != null) {
                /* JOptionPane.showMessageDialog(null, "CONEXION A LA BD CORRECTO");*/
            }

        } catch (ClassNotFoundException | SQLException ex) {

            /*JOptionPane.showMessageDialog(null, "Error" + ex.getMessage());*/
        }
        return con;
    }
}
