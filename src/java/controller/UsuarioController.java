
package controller;

import conexion.AccesoBD;
import java.sql.*;
import modelo.Usuario;
public class UsuarioController {
    
    public static int registrarUsuario(Usuario u) {

    int estatus = 0;

    try {

        Connection con = AccesoBD.getConnection();
        String query = "insert into usuarios (nombre, apellidos, correo, clave, celular, bio, links, img) values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, u.getNombre());
        ps.setString(2, u.getApellido());
        ps.setString(3, u.getCorreo());
        ps.setString(4, u.getClave());
        ps.setString(5, u.getCelu());
        ps.setString(6, u.getBio());
        ps.setString(7, u.getLinks());
        ps.setString(8, u.getImg());
        
        estatus = ps.executeUpdate();
        
    } catch (Exception e){

    }

    return estatus;

    }
    
    
    public static Usuario login(String correo, String clave){
        Usuario us = null;
        
        try {
            Connection con =
                    AccesoBD.getConnection();
            PreparedStatement ps= con.prepareStatement("SELECT * FROM usuarios WHERE correo =? AND clave =?");
            ps.setString(1, correo);
            ps.setString(2, clave);
            ResultSet rs =
                    ps.executeQuery();
            if(rs.next()){
                us=new Usuario();
                us.setId(rs.getInt(1));
                us.setNombre(rs.getString(2));
                us.setApellido(rs.getString(3));
                us.setCorreo(rs.getString(4));
                us.setClave(rs.getString(5));
                us.setCelu(rs.getString(6));
                us.setBio(rs.getString(7));
                us.setLinks(rs.getString(8));
            }
        } catch (Exception e) {
        }
        return us;
        
}
    
    public static Usuario buscarUsuarioId(int id){
        
       Usuario us = null;
        
        try {
                 Connection con = AccesoBD.getConnection();
            PreparedStatement ps= con.prepareStatement("SELECT * FROM usuarios WHERE id = ?");
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                us=new Usuario();
                us.setId(rs.getInt(1));
                us.setNombre(rs.getString(2));
                us.setApellido(rs.getString(3));
                us.setCorreo(rs.getString(4));
                us.setClave(rs.getString(5));
                us.setCelu(rs.getString(6));
                us.setBio(rs.getString(7));
                us.setLinks(rs.getString(8));
                us.setImg(rs.getString(9));
            }
            
    
            } catch (Exception e) {
            }
        return us;
    }
    
    
    public static Usuario buscarUsuarioImg(int id){
        
       Usuario us = null;
        
        try {
                 Connection con = AccesoBD.getConnection();
            PreparedStatement ps= con.prepareStatement("SELECT * FROM usuarios WHERE id = ?");
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                us=new Usuario();
                us.setId(rs.getInt(1));
                us.setNombre(rs.getString(2));
                us.setApellido(rs.getString(3));
                us.setCorreo(rs.getString(4));
                us.setClave(rs.getString(5));
                us.setCelu(rs.getString(6));
                us.setBio(rs.getString(7));
                us.setLinks(rs.getString(8));
                us.setImg(rs.getString(9));
            }
            
    
            } catch (Exception e) {
            }
        return us;
    }
    
}
    
    
    
    
    

