<%-- 
    Document   : perfil.jsp
    Created on : 2 nov 2023, 19:54:07
    Author     : jhon cordova
--%>

<%@page import="controller.UsuarioController"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta charset="UTF-8">
        <title>Perfil del Usuario</title>
        <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../estilos/perfil.css">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
                            <li><a href="servicios.jsp"><i class="fa-solid fa-wrench"></i></i>Servicios</a></li>
                                  <% if(session.getAttribute("name")!=null){ %>
                                  <li><a href="perfil.jsp"><i class="fa-solid fa-circle-check"></i></i></i>Hola, <%=session.getAttribute("name")%></a></li>
                                  <li><a href="../SvCerrar"><i class="fa-solid fa-right-from-bracket"></i>Salir</a></li>
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
        <div class="container-all" id="move-content">


        <div class="container-cover">
            <div class="container-info-cover">
                <h1>¡Bienvenido a tu perfil!</h1>
                <p>Tu perfil es tu tarjeta de presentación, y estamos aquí para ayudarte a hacerlo único y relevante para tus intereses.</p>
            </div>
        </div>                
         
            <h1 class="nombreusuario">Perfil de <%= session.getAttribute("name") %> <%= session.getAttribute("apellidos") %></h1>
            <% int id = (int) session.getAttribute("id");
               Usuario u = UsuarioController.buscarUsuarioId(id); %>
               <br>
               <div style="width: 100%; text-align: center;">
                <div style="display: inline-block; width: 190px; height: 190px; border-radius: 50%; overflow: hidden;border: none; box-shadow: 0 0 3px 1px black;">
                    <img src="../img/<%= u.getImg()%>" style="width: 100%; height: 100%; object-fit: cover; border-radius: 50%;" alt="Perfil">
                </div>
               </div>  
        
               
        <div class="form-container">
            <form id="profile-form" action="../SvPerfil" method="post" enctype="multipart/form-data">
                <h2>Edita tus <span></span></h2>
                <br><br>
                <div class="form-row">
                    <label for="email">Editar foto de perfil:</label>
                    <input type="file" id="email" name="file-5">
                </div>    
                <div class="form-row">
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="txtcorreo" value="<%= u.getCorreo()%>">
                </div>
                <div class="form-row">
                    <label for="phone">Número de Teléfono:</label>
                    <input type="tel" id="phone" name="txtcelu" value="<%= u.getCelu()%>">
                </div>
                <div class="form-row">
                    <label for="bio">Bibliografía:</label>
                    <textarea id="bibliografia" name="txtbio"><%= u.getBio()%></textarea>
                </div>
                <div class="form-row">
                    <label for="links">Enlaces:</label>
                    <textarea id="enlace" name="txtlinks"><%= u.getLinks()%></textarea>
                </div>
                <div class="form-row">
                    <input hidden="true" type="text" name="txtid" value="<%= u.getId()%>">
                    <br><br>       
                </div>
                <div class="button">
                    <button type="submit" name="enviar" id="edit-button">Guardar</button>
                </div>
            </form>
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
        const dynamicText = document.querySelector("h2 span");
        const words = ["datos"];

        // Variables to track the position and deletion status of the word
        let wordIndex = 0;
        let charIndex = 0;
        let isDeleting = false;

        const typeEffect = () => {
            const currentWord = words[wordIndex];
            const currentChar = currentWord.substring(0, charIndex);
            dynamicText.textContent = currentChar;
            dynamicText.classList.add("stop-blinking");

            if (!isDeleting && charIndex < currentWord.length) {
                // If condition is true, type the next character
                charIndex++;
                setTimeout(typeEffect, 200);
            } else if (isDeleting && charIndex > 0) {
                // If condition is true, remove the previous character
                charIndex--;
                setTimeout(typeEffect, 100);
            } else {
                // If word is deleted then switch to the next word
                isDeleting = !isDeleting;
                dynamicText.classList.remove("stop-blinking");
                wordIndex = !isDeleting ? (wordIndex + 1) % words.length : wordIndex;
                setTimeout(typeEffect, 1200);
           }
       }
       typeEffect();   
    </script>   
     <script src="../js/script.js"></script>                                   
    </body>
</html>
