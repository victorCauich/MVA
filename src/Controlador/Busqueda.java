package Controlador;
import Modelo.Conexion;

import java.sql.CallableStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Busqueda extends Conexion {




    public Busqueda(){
        Conectar();
    }

    /*
    public  ResultSet Listado(String objetoAprendizaje){
        try {
            CallableStatement llamarProcedimiento = con.prepareCall("{call proc_obtenerODA (?)}");
            llamarProcedimiento.setString(1, objetoAprendizaje);
            llamarProcedimiento.execute();
            ResultSet res =llamarProcedimiento.getResultSet();
            return res;

        } catch (Exception ex){
            System.err.println("Error en la busqueda simple: " + ex.getMessage());
            ex.printStackTrace();

            return null;
        }
    }
    */

}
