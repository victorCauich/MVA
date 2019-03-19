package Controlador;

import Modelo.Conexion;
import org.omg.CORBA.Request;
import sun.security.krb5.internal.crypto.Des;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ResultadoBusqueda", urlPatterns = "/ResultadoBusqueda")
public class ResultadoBusqueda extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try{

            String busquedaSimple = request.getParameter("busquedaSimple");


            Conexion con = new Conexion();
            ArrayList<String> objetosAprendizaje = new ArrayList<>();
            ArrayList<String> DescripcionObjetosAprendizaje = new ArrayList<>();
            ArrayList<String> EnlaceObjetosAprendizaje = new ArrayList<>();

            objetosAprendizaje = con.obtenerODA(busquedaSimple);
            DescripcionObjetosAprendizaje = con.obtenerDescripcionODA(busquedaSimple);
            EnlaceObjetosAprendizaje = con.obtenerEnlaceODA(busquedaSimple);



            if (busquedaSimple.equals("")) {
                response.sendRedirect("index.jsp");
            }

            out.println("<html> <head>");
            out.println("<title>Listado de Objetos de Aprendizaje</title>");
            out.println("<meta charset=utf-8><meta name=\"viewport\" content=\"width=device-width,user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0\">");
            out.println("<meta http-equiv=\"x-ua-compatible\" content=\"ie-edge\">");
            out.println(" <link rel=stylesheet type=text/css href=css/bootstrap.css>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/ODA.css\">\n");
            out.println("</head>");
            out.println("<body>");

            out.println("<div class=\"container col-11\">\n");
            out.println("<div class=\"row\">\n");
            out.println("<div class=\"col-1\">");
            out.println("<br><img src=\"img/logo.png\" style=\"width: 180px;\"></a>");
            out.println("</div>");
            out.println("<div class=\"col-4\"></div>");
            out.println("<div class=\"col-7\">");
            out.println("<br><br><p><h3 class=\"right\">Sistema de Consulta de Objetos de Aprendizaje</h3></p>");
            out.println("</div></div><br><br>");
            out.println("<div class=\"table-responsive\">\n");
            out.println("<table class=\"table table-bordered table-striped table-hover table-light \">");
            out.println("<thead class=\"table-success\">");
            out.println("<th colspan=\"3\" align=\"center\">LISTADO DE OBJETOS DE APRENDIZAJE</th>");
            out.println("<tbody>");
            out.println("<tr><td>NOMBRE</td><td>DESCRIPCION</td><td>ENLACE AL MATERIAL</td></tr>");

            for(int i=0; i<objetosAprendizaje.size();i++){
                out.println("<tr><td>"+objetosAprendizaje.get(i)+"</td><td>"+DescripcionObjetosAprendizaje.get(i)+ "</td><td><a href ="+EnlaceObjetosAprendizaje.get(i)+">"+EnlaceObjetosAprendizaje.get(i)+"</a></td></tr>");
            }



            out.println("</tbody>");
            out.println("</table></div>");
            out.println("</div>");
            out.println("<div class=\"container col-11\"><br>");
            out.println("<a href=\"index.jsp\" class=\"btn btn-success\">Regresar a la pagina principal</a>");
            out.println("<br><br></div>");
            out.println("<script src= js/jquery-3.2.1.slim.min.js></script><script src=js/popper.min.js></script><script src=js/bootstrap.min.js></script>");
            out.println("</body>");
            out.println("</html>");
            out.close();

        } catch (Exception ex) {
            Logger.getLogger(ResultadoBusqueda.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
    }
}
