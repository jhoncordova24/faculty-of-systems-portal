<%-- 
    Document   : eventos
    Created on : 10 oct 2023, 10:26:00
    Author     : jhon cordova
--%>
<%@page import="java.sql.*"%>
<%@page import="conexion.AccesoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Eventos</title>
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../estilos/eventos.css" />
    <link rel="stylesheet" href="../estilos/index.css" />
  </head>
  <body>
      
     <header>
        <div class="header-content">
            <div class="logo">
                <img src="../img/logo.png" alt="logo">
                <h4>Facultad de Ingeniería de
                <br>
                Sistemas e Informática</h4>
            </div>

            <div class="menu" id="show-menu">
                <nav>
                    <ul>
                        <li><a href="../index.jsp"><i class="fa-solid fa-newspaper"></i>Noticias</a></li>
                        <li><a href="campus.jsp"><i class="fa-solid fa-building-columns"></i>Campus</a></li>
                        <li class="menu-selected"><a href="#" class="text-menu-selected"> 
                            <a href="docentes.jsp"><i class="fa-solid fa-newspaper"></i>Docentes</a></li>
                             <li><a href="malla.jsp"><i class="fa-solid fa-book"></i>Malla</a></li>
                        <li><a href="eventos.jsp"><i class="fa-solid fa-calendar-days"></i>Eventos</a></li>
                        <li><a href="servicios.jsp"><i class="fa-solid fa-wrench"></i>Servicios</a></li>
       
                              <% if(session.getAttribute("name")!=null){ %>
                              <li><a href="perfil.jsp"><i class="fa-solid fa-circle-check"></i>Hola, <%=session.getAttribute("name")%></a></li>
                              <li><a href="../SvCerrar"><i class="fa-solid fa-right-from-bracket"></i>Salir</a></li>
                                <%
                                }
                                else{%>
                                <li><a href="login.jsp"><i class="fa-solid fa-user"></i>Iniciar Sesión</a></li>
                                <%}
                                %>
                    </ul>
                </nav>
            </div>

        </div>
         <div id="icon-menu">
            <i class="fas fa-bars"></i>
        </div>
    </header>
      
                    
    <!--Portada-->
    <div class="container-all" id="move-content">
        
    <div class="container-covereventos">
        <div class="container-info-cover">
            <h1>¡Conoce los principales eventos!</h1>
            <p>Descubre un mundo de oportunidades y experiencias inigualables en nuestra universidad</p>
        </div>
    </div>  
    <br>
    
    
    
     <div class="posts">
         <% 
         
            Connection con = AccesoBD.getConnection();
            PreparedStatement ps= con.prepareStatement("SELECT * FROM eventos");
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            %>
            <div class="post" data-category="CSS">

                <div class="ctn-img">
                    <img src="<%=rs.getString(2)%>">
                </div>
                <h2><%=rs.getString(3)%></h2>
                <span><%=rs.getString(4)%></span>
                <ul class="ctn-tag">
                    <li><%=rs.getString(5)%></li>
                    <li><%=rs.getString(6)%></li>
                </ul>
                <a href="https://portal.utp.edu.pe/servicios/eventos/13743"><button>Ver más</button></a>
            </div>
            <% 
             }
         %>
     </div>
    
     
     <!--Pie de pagina-->
    <div class="container-footer">	
        <footer>
            <div class="logo-footer">
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/50/Utplogonuevo.svg" alt="">
            </div>

            <div class="redes-footer">
                <a href="https://www.facebook.com/UTP.Peru?mibextid=ZbWKwL"><i class="fa-brands fa-square-facebook icon-redes-footer"></i></a>
                    <a href="https://www.instagram.com/universidadutp/"><i class="fa-brands fa-square-instagram icon-redes-footer"></i></a>
                    <a href="https://api.whatsapp.com/send?phone=51946416620&text=%20%C2%A1Hola!%20Vengo%20de%20la%20WEB%20y%20deseo%20m%C3%A1s%20informaci%C3%B3n%20sobre%20la%20UTP"><i class="fa-brands fa-square-whatsapp icon-redes-footer"></i></a>
                    <a href="https://www.tiktok.com/@universidadutp"><i class="fa-brands fa-tiktok icon-redes-footer"></i></a>
                    <a href="https://pe.linkedin.com/school/utp-universidad-tecnologica-del-peru/?trk=public_post_feed-actor-name"><i class="fa-brands fa-linkedin icon-redes-footer"></i></a>
            </div>
            <hr>
            <h4>Copyright © 2023 Facultad de Ingeniería de Sistemas – Todos los derechos reservados</h4><br>
            <h4>Piura - Perú</h4>
        </footer>
    </div>
     
     <script src="../js/script.js"></script>
     <script src="../js/script2.js"></script>
  </body>
</html>
