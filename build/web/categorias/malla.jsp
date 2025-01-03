<%-- 
    Document   : malla
    Created on : 10 oct 2023, 10:25:51
    Author     : jhon cordova
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <title>Malla Curricular</title>

    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../estilos/malla.css">
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
            <h1>¡Descubre lo que aprenderás!</h1>
            <p>¡Te invitamos a explorar nuestra malla curricular y descubrir todo lo que podemos ofrecerte!</p>
        </div>
    </div>
        
    <!--Carrousel para la Malla-->    
    <br>
    <div class="text-focus-in">
    <h1>Conoce nuestra malla</h1>
    </div>
    <div class="wrapper">
      <i id="left" class="fa-solid fa-angle-left"></i>
      <div class="carousel">
        <img src="../img/Ciclo1.png" alt="img" draggable="false">
        <img src="../img/Ciclo2.png" alt="img" draggable="false">
        <img src="../img/Ciclo3.png" alt="img" draggable="false">
        <img src="../img/Ciclo4.png" alt="img" draggable="false">
        <img src="../img/Ciclo5.png" alt="img" draggable="false">
        <img src="../img/Ciclo6.png" alt="img" draggable="false">
        <img src="../img/Ciclo7.png" alt="img" draggable="false">
        <img src="../img/Ciclo8.png" alt="img" draggable="false">
        <img src="../img/Ciclo9.png" alt="img" draggable="false">
         <img src="../img/Ciclo10.png" alt="img" draggable="false">
      </div>
      <i id="right" class="fa-solid fa-angle-right"></i>
    </div>
    
    <br><br>    
    <!-- Sección donde se encuentran los botones -->
    <div id="botones-section" style="text-align: center;">
      <a href="https://www.utp.edu.pe/sites/default/files/malla-curricular/CGT_Ing-Sistemas-e-Informatica-2023-Malla.pdf" target="_blank">
        <button class="download-pdf-button">Descargar malla curricular</button>
      </a>
      <button id="openBrochureBtn" class="open-brochure-button">Ver brochure en línea</button>
    </div>

    <div id="brochureDialog" class="brochure-dialog" style="display: none;">
        <button id="closeBrochureBtn"><i>Cerrar</i></button>
      <iframe src="https://e.issuu.com/embed.html?d=sistemas_e_inform_tica-web-2019&u=sorprendeteutp" width="1000" height="600" z-index="2000"></iframe>
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
    
    
    
    <script>
        function toggleBrochure() {
          var brochureDiv = document.getElementById("brochureDialog");
          var openBrochureBtn = document.getElementById("openBrochureBtn");
          var closeBrochureBtn = document.getElementById("closeBrochureBtn");

          openBrochureBtn.addEventListener("click", function() {
            brochureDiv.style.display = "block";
          });

          closeBrochureBtn.addEventListener("click", function() {
            brochureDiv.style.display = "none";
          });
        }

        // Llamar a la función para abrir/cerrar el brochure
        toggleBrochure();
</script>
              
    <script src="../js/script.js"></script>
    <script src="../js/script2.js"></script>
</body>
</html>

        
        
        