<%-- 
    Document   : campus
    Created on : 22 oct 2023, 22:09:48
    Author     : jhon cordova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Vida en el campus</title>

        <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../estilos/campus.css">
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
                            <li><a href="servicios.jsp"><i class="fa-solid fa-wrench"></i></i>Servicios</a></li>

                            <% if (session.getAttribute("name") != null) {%>
                            <li><a href="perfil.jsp"><i class="fa-solid fa-circle-check"></i>Hola, <%=session.getAttribute("name")%></a></li>
                            <li><a href="../SvCerrar"><i class="fa-solid fa-right-from-bracket"></i>Salir</a></li>
                                <%
                                } else {%>
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

            <div class="container-content">
                <article>
                    <h1>Vida en el campus</h1>
                    <h2>Campus Tecnológico UTP - Piura</h2>
                    <p> La Facultad de Ingeniería de Sistemas e Informática de nuestra universidad no solo ofrece una educación de calidad en un 
                        entorno inspirador, sino que también promueve la innovación, la creatividad y el crecimiento personal y profesional.
                        Te invitamos a que vengas a conocer nuestros campus tecnológico UTP Piura.
                        En este video, ¡Conoce de cerca nuestro campus Piura!</p><br>
                    <video autoplay muted width="850" height="500" controls>
                        <source src="../img/UtpPiura.mp4" type="video/mp4">
                    </video>

                    <h2>Estamos emocionados de mostrarles nuestras instalaciones y todo lo que tienen para ofrecer en la formación de 
                        la próxima generación de líderes en tecnología y sistemas informáticos.</h2>
                    <p>¡Bienvenidos a la Facultad de Ingeniería de Sistemas e Informática de nuestra prestigiosa universidad! En el corazón de nuestro campus, se encuentra un espacio dedicado a la innovación, el aprendizaje y el desarrollo tecnológico. Nuestra facultad se enorgullece de ofrecer a nuestros estudiantes un entorno de vanguardia que impulsa la excelencia académica y la investigación puntera en el campo de la informática y la ingeniería de sistemas.
                        Nuestras instalaciones han sido diseñadas pensando en la interacción, la colaboración y el crecimiento profesional de nuestros estudiantes. 
                        A medida que recorramos nuestras modernas aulas, laboratorios y espacios de estudio, descubrirán un ambiente que fomenta la creatividad y la 
                        experimentación en la resolución de problemas tecnológicos.</p>

                    <div class="slider">
                        <ul>
                            <li>
                                <img src="../img/u8.jpeg">
                            </li>
                            <li>
                                <img src="../img/u2.jpeg">
                            </li>
                            <li>
                                <img src="../img/u7.jpeg">
                            </li>
                            <li>
                                <img src="../img/u9.jpeg">
                            </li>
                        </ul>
                    </div>    
                </article>


                <div class="container-aside">	

                    <aside>
                        <center><img src="https://utp.edu.pe/web/sites/default/files/styles/noticias_resumen/public/noticias/HomeNot2.webp?itok=Nj5Ed2gZ"></center>
                        <h2>Egresados crean sistema de reconocimiento de placas vehiculares</h2>
                        <p>Conoce más sobre esta noticia.</p>
                        <a href="../index.jsp"><button>Ver más</button></a>
                    </aside>
                    <aside>
                        <center><img src="https://www.utp.edu.pe/sites/default/files/styles/transformar_webp/public/beneficios-carreras/Ingenier%C3%ADa-de-Sistemas-e-Inform%C3%A1tica.jpg.webp?itok=iETJtmDh"></center>
                        <h2>¿Por qué estudiar Ingeniería de Sistemas e Informática en la UTP?</h2>
                        <p>Laboratorios especializados en circuitos digitales de primer nivel, redes y comunicaciones CISCO. 
                            Además Aprende metodologías de programación de vanguardia.</p>
                        <a href="https://www.utp.edu.pe/pregrado/facultad-de-ingenieria/ingenieria-de-sistemas-e-informatica"><button>Ver más</button></a>
                    </aside>
                    <aside>
                        <center><img src="../img/u1.jpeg"></center>
                        <h2>¿Que laboratorios tendré a mi disposición</h2>
                        <p>Laboratorio de Seguridad y Auditoría Informática, laboratorio de Arquitectura de Computadoras, Laboratorio de Cómputo - PC, 
                            laboratorio de desarrollo de Software, laboratorio de Física y el laboratorio de Química.</p>
                        <a href="#"><button>Ver más</button></a>
                    </aside>

                </div>
            </div>


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


