/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.sql.*;
import conexion.AccesoBD;
import controller.UsuarioController;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import modelo.Usuario;

/**
 *
 * @author jhon cordova
 */

@WebServlet(name = "SvPerfil", urlPatterns = {"/SvPerfil"})
@MultipartConfig(maxFileSize = 16177215)
public class SvPerfil extends HttpServlet {
    
    String perfil ="categorias/perfil.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvPerfil</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvPerfil at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        if (request.getParameter("enviar")!=null){
            
        String correo, celu, bio, links; 
        
        correo=request.getParameter("txtcorreo");
        celu=request.getParameter("txtcelu");
        bio=request.getParameter("txtbio");
        links=request.getParameter("txtlinks");
        int id = Integer.parseInt(request.getParameter("txtid"));
        Part filePart = request.getPart("file-5");
        String fileName = filePart.getSubmittedFileName();
        
        if (fileName.isEmpty()) {
            // La cadena está vacía
            Usuario u = UsuarioController.buscarUsuarioImg(id);
            fileName = u.getImg();
        }
        
            try {
                 Connection con = AccesoBD.getConnection();
            PreparedStatement ps= con.prepareStatement("UPDATE usuarios SET correo = ?, celular = ?, bio = ?, links = ?, img = ? WHERE id = ?");
            
            ps.setString(1, correo);
            ps.setString(2, celu);
            ps.setString(3, bio);
            ps.setString(4, links);
            ps.setString(5, fileName);
            ps.setInt(6, id);
           
            
            
            int rowsUpdated = ps.executeUpdate(); // Obtenemos la cantidad de filas actualizadas
    
            if (rowsUpdated > 0) {
                response.sendRedirect(perfil);  
            }
            
            } catch (Exception e) {
            }
            
    }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
