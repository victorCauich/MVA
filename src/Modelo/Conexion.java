package Modelo;
import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;

public class Conexion {

    protected static Connection con;
    protected static Statement stmt;
    private static String dataBaseName = "ODA";
    private static String url = "jdbc:mysql://localhost:3306/"+ dataBaseName;
    //private String userName = "aprendizaje_user";
    private static String userName = "root";
    private static String password = "saqohLWa";
    private String errString;

    public Conexion () {
    }
    public Connection Conectar (){
        con= null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            stmt = con.createStatement();
            System.err.println("Conectado");
        }catch (Exception e){
            errString = "Error mientras se conectaba a la Base de Datos";
            System.err.println(errString);
            return null;
        }
        return con;
    }

    /**
     * Retorno del nombre del objeto de aprendizaje
     * */
    public ArrayList<String> obtenerODA (String objetoAprendizaje){
        ArrayList<String> nombreObjetosAprendizaje = new ArrayList<>();
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,userName,password);
            if (con!=null){
                CallableStatement llamarProcedimiento = con.prepareCall("{call proc_obtenerODA(?)}");
                llamarProcedimiento.setString(1, objetoAprendizaje);
                llamarProcedimiento.executeUpdate();
                ResultSet rs= llamarProcedimiento.getResultSet();
                while(rs.next()){
                    nombreObjetosAprendizaje.add(rs.getString("nombre_objetoaprendizaje"));
                }
                con.close();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (nombreObjetosAprendizaje);
    }

    /**
     *Retorno de la descripcion del objeto de aprendizaje
     **/
    public ArrayList<String> obtenerDescripcionODA (String objetoAprendizaje){
        ArrayList<String> DescripcionObjetosAprendizaje = new ArrayList<>();
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,userName,password);
            if (con!=null){
                CallableStatement llamarProcedimiento = con.prepareCall("{call proc_obtenerODA(?)}");
                llamarProcedimiento.setString(1, objetoAprendizaje);
                llamarProcedimiento.executeUpdate();
                ResultSet rs= llamarProcedimiento.getResultSet();
                while(rs.next()){
                    DescripcionObjetosAprendizaje.add(rs.getString("descripcion_objetoaprendizaje"));
                }
                con.close();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return DescripcionObjetosAprendizaje;
    }

    /**
     * Link del objeto de aprendizaje
     * */

    public ArrayList<String> obtenerEnlaceODA (String objetoAprendizaje){
        ArrayList<String> EnlaceObjetosAprendizaje = new ArrayList<>();
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,userName,password);
            if (con!=null){
                CallableStatement llamarProcedimiento = con.prepareCall("{call proc_obtenerODA(?)}");
                llamarProcedimiento.setString(1, objetoAprendizaje);
                llamarProcedimiento.executeUpdate();
                ResultSet rs= llamarProcedimiento.getResultSet();
                while(rs.next()){
                    EnlaceObjetosAprendizaje.add(rs.getString("enlace_objetoaprendizaje"));
                }
                con.close();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return EnlaceObjetosAprendizaje;
    }
}