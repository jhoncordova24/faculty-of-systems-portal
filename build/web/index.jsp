<%-- 
    Document   : index
    Created on : 10 oct 2023, 10:27:27
    Author     : jhon cordova
--%>
<%@page import="java.sql.*"%>
<%@page import="conexion.AccesoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Facultad de Ingeniería de Sistemas</title>

        <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="estilos/index.css">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    </head>
    <body>
        
        <header>
            <div class="header-content">

                <div class="logo">
                    <img src="img/logo.png" alt="logo">
                    <h4>Facultad de Ingeniería de
                    <br>
                    Sistemas e Informática</h4>
                </div>

                <div class="menu" id="show-menu">

                    <nav>
                        <ul>
                            <li><a href="index.jsp"><i class="fa-solid fa-newspaper"></i>Noticias</a></li>
                            <li><a href="categorias/campus.jsp"><i class="fa-solid fa-building-columns"></i>Campus</a></li>
                            <li class="menu-selected"><a href="#" class="text-menu-selected"> 
                                <a href="categorias/docentes.jsp"><i class="fa-solid fa-newspaper"></i>Docentes</a></li>
                                 <li><a href="categorias/malla.jsp"><i class="fa-solid fa-book"></i>Malla</a></li>
                            <li><a href="categorias/eventos.jsp"><i class="fa-solid fa-calendar-days"></i>Eventos</a></li>
                            <li><a href="categorias/servicios.jsp"><i class="fa-solid fa-wrench"></i></i>Servicios</a></li>

                                  <% if(session.getAttribute("name")!=null){ %>
                                  <li><a href="categorias/perfil.jsp"><i class="fa-solid fa-circle-check"></i></i></i>Hola, <%=session.getAttribute("name")%></a></li>
                                  <li><a href="SvCerrar"><i class="fa-solid fa-right-from-bracket"></i>Salir</a></li>
                                    <%
                                    }
                                    else{%>
                                    <li><a href="categorias/login.jsp"><i class="fa-solid fa-user"></i>Iniciar Sesión</a></li>
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


        <div class="container-cover">
            <div class="container-info-cover">
                <h1>¡Todo es posible!</h1>
                <p>Universidad Tecnológica del Perú - Sede Piura</p>
            </div>
        </div>
        
     <!--Noticias-->    
    <div class="container-content">
        <article id="noticias">
            <h1>Noticias más importantes</h1>
            <% 
         
            Connection con = AccesoBD.getConnection();
            PreparedStatement ps= con.prepareStatement("SELECT * FROM noticias");
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            %>
            <h2><%=rs.getString(2)%></h2>
                <p><%=rs.getString(3)%>
                </p>
                <img src="<%=rs.getString(4)%>">
           <% 
             }
         %>  
        </article>
        
         <!--Aside que contiene información-->
        <div class="container-aside">	

                <aside>
                    <center><img src="img/u6.jpeg"></center>
                    <h2>Conoce nuestras instalaciones</h2>
                    <p>Nuestras instalaciones están diseñadas para inspirar, motivar y fomentar la excelencia académica.</p>
                    <a href="categorias/campus.jsp"><button>Ver más</button></a>
                </aside>
                <aside>
                    <center><img src="https://examendeadmision.vip/wp-content/uploads/2023/02/Examen-de-admision-UTP-2023.webp"></center>
                    <h2>¿Buscas potenciar tu perfil profesional?</h2>
                    <p>Matricúlate en la UTP y empieza tu camino hoy.</p>
                    <a href="https://utp.edu.pe/inscribete-pregrado"><button>Ver más</button></a>
                </aside>
                <aside>
                    <center><img src="https://www.utp.edu.pe/blog/sites/default/files/styles/articulos_banner/public/blog/que-es-ingenieria-de-sistemas.jpg.webp?itok=hq_s0o1S"></center>
                    <h2>Ingeniería de Sistemas:¿Qué es?</h2>
                    <p>Ingeniería de Sistemas (Ing. Sistemas) es una rama de la Ingeniería que combina tecnología y creatividad para diseñar y 
                        gestionar las soluciones más optimas en esta era digital.</p>
                </aside>
                 <aside>
                    <center><img src="img/docentes.jpeg"></center>
                    <h2>Descubre a nuestros docentes</h2>
                    <p>Conoce más sobre nuestros especialistas que te acompañarán a lo largo de tu carrera.</p>
                    <a href="categorias/docentes.jsp"><button>Ver más</button></a>
                </aside>
                <aside>
                    <center><img src="https://img.freepik.com/foto-gratis/joven-reparador-caucasico-sentado-usando-computadora-interiores-generada-ia_188544-37756.jpg?w=1060&t=st=1699098475~exp=1699099075~hmac=6187f06051c7214a4e8c7a20e9775305a730d1c0ecc6808dee845f514fb52d02"></center>
                    <h2>Grados que obtendrás</h2>
                    <p>Grado Académico de Bachiller en Ingeniería de Sistemas e Informática, Título Profesional de Ingeniero de Sistemas e Informática.</p>
                </aside>
                <aside>
                    <center><img src="https://www.utp.edu.pe/noticias/sites/default/files/noticias/1.%20Equipo%20de%20Innovaci%C3%B3n%201.jpeg"></center>
                    <h2>No te pierdas los ultimos eventos</h2>
                    <p>En nuestro campus, la excelencia académica se combina con la riqueza de experiencias fuera del aula. 
                       Queremos compartir contigo un aspecto especial de nuestra comunidad: nuestros eventos universitarios.</p>
                    <a href="https://utp.edu.pe/inscribete-pregrado"><button>Ver más</button></a>
                </aside>
                <aside>
                    <center><img src="https://img.freepik.com/foto-gratis/joven-empresario-adulto-trabajando-tarde-noche-tecnologia-informatica-generada-inteligencia-artificial_24640-131133.jpg?w=1060&t=st=1699098637~exp=1699099237~hmac=4acc82f0f6d13d0f33df9c29827da85ac1a12c59ea0d82e0cfdb38d4439965c2"></center>
                    <h2>¿Donde voy a trabajar?</h2>
                    <p>Al egresar podrás trabajar en:
                       Empresas e instituciones generadoras, de servicios y consumidoras de tecnología de la información, empresas de 
                       consultoría de tecnología de la información, empresas industriales y de servicios, empresas que brindan servicios de Internet.</p>
                </aside>
                <aside>
                    <center><img src="https://notibomba.com/wp-content/uploads/2019/11/Captura-de-pantalla-2019-11-09-a-las-10.31.26.png"></center>
                    <h2>¿Cuántos años dura la carrera?</h2>
                    <p>La carrera de Ingeniería de Sistemas tiene una duración de 10 semestres académicos que equivalen a 5 años de estudio.
                    </p>
                </aside>
            </div>
       </div>
        
     <!--Botón para ir arriba-->    
    <div id="button-up">
     <i class="fa-solid fa-angle-up fa-2xl"></i>
    </div>
        
   
     
     <!--Pie de página-->    
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
     
    <script src="js/script.js"></script>
</body>
</html>
