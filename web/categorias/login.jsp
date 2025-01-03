<%-- 
    Document   : login
    Created on : 15 oct 2023, 16:13:36
    Author     : jhon cordova
--%>

<%@page import="conexion.AccesoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>  
        *{
         padding: 0;
         margin: 0;
         }
         svg {
         position: absolute;
         top: 0;
         left: 0;
         width: 100%;
         height: 100%;
         box-sizing: border-box;
         display: block;
         background-color:  blue;
         background-image: linear-gradient(to bottom, rgba(14, 65, 102, 0.86), #146ADF);
         }
         .container{
             color: white;
             margin-top: 70px;
             background: rgba(255, 255, 255, .3);
             -webkit-backdrop-filter: blur(5px);
             border: 1.5px solid rgba(209, 213, 219, 0.3);
             padding: 30px;
             border-radius: 10px;
         }
         .centered-image {
             display: flex;
             justify-content: center;
             align-items: center;
             flex-direction: column;
             margin-bottom: 10px;
         }
    </style>
    </head>        
    <body>
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
		xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="100%" height="100%" viewBox="0 0 1600 900" preserveAspectRatio="xMidYMax slice">
		<defs>
                    <linearGradient id="bg">
                        <stop offset="0%" style="stop-color:rgba(130, 158, 249, 0.06)"></stop>
			<stop offset="50%" style="stop-color:rgba(76, 190, 255, 0.6)"></stop>
			<stop offset="100%" style="stop-color:rgba(115, 209, 72, 0.2)"></stop>
                    </linearGradient>
                        <path id="wave" fill="url(#bg)" d="M-363.852,502.589c0,0,236.988-41.997,505.475,0
                            s371.981,38.998,575.971,0s293.985-39.278,505.474,5.859s493.475,48.368,716.963-4.995v560.106H-363.852V502.589z"/>
		</defs>
		<g>
                    <use xlink:href='#wave' opacity=".3">
			<animateTransform
                            attributeName="transform"
                            attributeType="XML"
                            type="translate"
                            dur="10s"
                            calcMode="spline"
                            values="270 230; -334 180; 270 230"
                            keyTimes="0; .5; 1"
                            keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
                            repeatCount="indefinite" />
                    </use>
                    <use xlink:href='#wave' opacity=".6">
                        <animateTransform
                            attributeName="transform"
                            attributeType="XML"
                            type="translate"
                            dur="8s"
                            calcMode="spline"
                            values="-270 230;243 220;-270 230"
                            keyTimes="0; .6; 1"
                            keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
                            repeatCount="indefinite" />
                    </use>
                    <use xlink:href='#wave' opacty=".9">
                        <animateTransform
                            attributeName="transform"
                            attributeType="XML"
                            type="translate"
                            dur="6s"
                            calcMode="spline"
                            values="0 230;-140 200;0 230"
                            keyTimes="0; .4; 1"
                            keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
                            repeatCount="indefinite" />
                    </use>
		</g>
	</svg>
        <br>
        
        <div class="container col-md-6">
            <div class="centered-image">
                <!-- Etiqueta de enlace alrededor de la imagen -->
                <a href="../index.jsp">
                    <img src="../img/logo.png" height="122" width="120">
                </a>
            </div>
            
        <!-- Título del formulario de inicio de sesión -->
        <h2 class="text-center" style="margin-bottom: 25px;">Iniciar Sesión</h2>

   
        
        <% if(session.getAttribute("mensaje")!=null){ %>
            <div id="miAlerta" class="alert alert-danger mx-auto col-md-6" role="alert">
                <%=session.getAttribute("mensaje")%>
            </div>
            <%
            }
            %>
         <!-- Formulario de inicio de sesión con ancho ajustado -->
        <form action="../SvLogin" method="post" class="mx-auto col-md-6">
            <div class="form-group">
                <label for="email">Ingrese su correo electrónico:</label>
                <input type="email" class="form-control" id="email" name="txtcorreo" required>
            </div>
            <div class="form-group">
                <label for="password">Ingrese su contraseña:</label>
                <input type="password" class="form-control" id="password" name="txtclave" required>
            </div>
            <button type="submit" name="enviar" class="btn btn-primary"  style="width: 100%; margin-bottom: 17px;">Ingresar</button>
            <p class="text-center">¿No tienes una cuenta? <a href="register.jsp" style="color: whitesmoke; font-weight: bold; font-size: 16px">Regístrate</a></p>
        </form>
    </div>

   
        <script>
            // Obten el elemento de alerta por su ID
            var alerta = document.getElementById('miAlerta');
            // Espera un cierto período de tiempo antes de ocultar el alerta (opcional)
            setTimeout(function() {
              alerta.style.display = 'none'; // Establece el estilo 'display' en 'none' para ocultar el alerta
            }, 3000);
          </script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    </body>
</html>

