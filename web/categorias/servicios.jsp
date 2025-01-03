<%-- 
    Document   : servicios
    Created on : 22 oct 2023, 22:17:36
    Author     : jhon cordova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Servicios</title>

    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../estilos/services.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

</head>
<body>

    <!--Header - menu-->
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
        
    
    <div class="container-cover">
        <div class="container-info-cover">
            <h1></h1>
            <p></p>
        </div>
    </div>
    
    <h1 class="text-focus-in">Nuestros Servicios Universitarios</h1>
    
    
    <!--Servicios-->
    <section>
      <div class="container">
        <div class="card">
          <div class="front">
            <div class="content">
              <img src="../img/desarrollo.png"/>
              <h3>Acompañamiento y desarrollo estudiantil</h3>
            </div>
          </div>
          <div class="back">
            <div class="content">
              <p>
                La UTP te ofrece servicios académicos y administrativos desde el inicio de tu vida universitaria.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="card">
          <div class="front">
            <div class="content">
              <img src="../img/orientacion.png"/>
              <h3>Si necesitas orientación y apoyo</h3>
            </div>
          </div>
          <div class="back">
            <div class="content">
              <p>
                Apoyo psicológico y emocional, Consejería estudiantil para reforzar tu desempeño académico, Talleres y dinámicas grupales,
                Orientación vocacional, Becas y descuentos, Asistenta social.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="card">
          <div class="front">
            <div class="content">
              <img src="../img/tutorias.png"/>
              <h3>Si necesitas refuerzo académico</h3>
            </div>
          </div>
          <div class="back">
            <div class="content">
              <p>
                Redacción e investigación
                Matemática, física y química.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="card">
          <div class="front">
            <div class="content">
              <img src="../img/laboral.png"/>
              <h3>Oportunidades laborales</h3>
            </div>
          </div>
          <div class="back">
            <div class="content">
              <p>
                Programa de empleabilidad (talleres y asesorías personalizadas), Portal de empleabilidad, 
                Charlas de empresas, Feria de empleabilidad.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="card">
          <div class="front">
            <div class="content">
              <img src="../img/extraacademico.png"/>
              <h3>Actividades extra académicas</h3>
            </div>
          </div>
          <div class="back">
            <div class="content">
              <p>
                Eventos culturales, Elencos de arte, Disciplinas deportivas, Talleres de arte.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="card">
          <div class="front">
            <div class="content">
              <img src="../img/cultural.png"/>
              <h3>Talleres Culturales</h3>
            </div>
          </div>
          <div class="back">
            <div class="content">
              <p>
                Espacios de creación artística que buscan acoger, promover y difundir la cultural y 
                así fomentar la reflexión a través del arte. Este programa ofrece talleres como: canto, baile, danza, guitarra, 
                improvisación teatral, entre otros.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
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
    <script src="../js/script.js"></script>
  </body>
</html>
