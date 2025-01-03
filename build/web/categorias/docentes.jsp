<%-- 
    Document   : docentes
    Created on : 22 oct 2023, 22:16:19
    Author     : jhon cordova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Docentes</title>
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="../estilos/docentes.css" />
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
        
    
    <div class="container-coverdocentes">
        <div class="container-info-cover">
            <h1>¡Bienvenido a la sección de docentes!</h1>
            <p>Explora nuestra lista de docentes. Obtén información sobre sus perfiles académicos y conoce quiénes serán tus guías en el aprendizaje.</p>
        </div>
    </div>  
    <br>
    
     <div class="text-focus-in">
        <h1>Nuestros Docentes</h1>
      </div>
    
    <section>
      <div class="row">
        <!-- Column 1-->
        <div class="column">
          <div class="card">
            <div class="img-container">
              <img src="https://media.licdn.com/dms/image/C4D03AQFX6cJ9AoDGVg/profile-displayphoto-shrink_800_800/0/1602608088782?e=2147483647&v=beta&t=EmwxvdAdcriviMAAItd64Ppt2_e66sMjs3prpyXjZUg" />
            </div>
            <h3>Eduardo Raul Perez Zamora</h3>
            <p> Ingeniero Informático y Magíster en Administración Estratégica de Empresas, con
                Maestría en Liderazgo.</p>
            <div class="icons">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://pe.linkedin.com/in/eduardo-raul-perez-zamora-a906885b">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
              <a href="#">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
        </div>
        <!-- Column 2-->
        <div class="column">
          <div class="card">
            <div class="img-container">
              <img src="https://cdn.slidesharecdn.com/profile-photo-edygarciacordova-96x96.jpg?cb=1523280047" />
            </div>
            <h3>Edy Javier Garcia Cordova</h3>
            <p>Mgtr. Ing de Software, docente en Taller de programación Web.</p>
            <div class="icons">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
              <a href="#">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
        </div>
        <!-- Column 3-->
        <div class="column">
          <div class="card">
            <div class="img-container">
              <img src="https://media.licdn.com/dms/image/C4D03AQGN6aSy1iFrVA/profile-displayphoto-shrink_800_800/0/1595020522592?e=2147483647&v=beta&t=-WwJFhGkeW1zWqAMABnUaopt1FFo_8Ly20g1xJbCPWc" />
            </div>
            <h3>Teófilo Roberto Correa Calle</h3>
            <p>Ingeniero de Sistemas e Informática y docente en Redes y Comunicación de Datos</p>
            <div class="icons">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://pe.linkedin.com/in/te%C3%B3filo-roberto-correa-calle-69b98310a">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
              <a href="#">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- Column 4-->
        <div class="column">
          <div class="card">
            <div class="img-container">
              <img src="../img/docente1.jpg" />
            </div>
            <h3>Wendy Dominguez Oliva</h3>
            <p>Ingeniera Ambiental y Seguridad Industrial, Maestra en Tecnologias de la información para la Comunicación de 
                Ingenieria de Sistemas.</p>
            <div class="icons">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://www.linkedin.com/in/wendy-d-ba5152aa/">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
              <a href="#">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
        </div>
        <!-- Column 5-->
        <div class="column">
          <div class="card">
            <div class="img-container">
              <img src="https://media.licdn.com/dms/image/D4E03AQF_z7qWf6puVA/profile-displayphoto-shrink_800_800/0/1683063538516?e=2147483647&v=beta&t=yPgpDKA_bxcgXzbrH6JyFAnQQleFUFjD11xodkU7nSI" />
            </div>
            <h3>Javier Eduardo Jaramillo Atoche</h3>
            <p>Ingeniero de Sistemas en Informática.</p>
            <div class="icons">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://www.linkedin.com/in/javier-eduardo-jaramillo-atoche-06931a23a/?originalSubdomain=pe">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
              <a href="#">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
        </div>
        <!-- Column 6-->
        <div class="column">
          <div class="card">
            <div class="img-container">
              <img src="../img/docente2.jpg" />
            </div>
            <h3>Ivan Michell Castillo Jiménez</h3>
            <p>Ingeniero Informático con experiencia en docencia de Pregrado y Postgrado.</p>
            <div class="icons">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://www.linkedin.com/in/iv%C3%A1n-michell-castillo-jim%C3%A9nez-a0158156/">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
              <a href="#">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
        </div>
      </div>  
    </section>
    
     <!-- Pie de página-->
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
  </body>
</html>
