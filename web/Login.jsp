<%-- 
    Document   : login2
    Created on : 25/04/2017, 05:13:50 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximun=1.0,minimum-scale=1.0">
         <link href="vendor/bootstrap/css/bootstrapq.min.css" rel="stylesheet">
        
        <link rel="stylesheet" href="style.css">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <br>
        <div class="container">
            <center>
                                              <%
                                
                                Object mensaje=request.getAttribute("unEntero");
                                if(mensaje!=null){
                                     %>
                                     <div class="alert alert-danger">
                                         <strong>
                                             <%=mensaje%>
                                         </strong>
                                     </div>
                                  <%
                                }
                               %>
                <div class="login-panel">

                    <img src="imagen1.png">
                    <h5>Bienvenido</h5>
                    <br>
                    <form action="ServletSesion" method="post">


                        <input class="form-control" id="nombre" name="user" type="text" placeholder="Usuario">
                        <br>
                        <input class="form-control" type="password" name="pass" placeholder="Contraseña">

                        <br>

                        <button class="btn btn-primary">Entrar</button>
                        <br>
                        <br>
                        <img src="fdo.png" width="100" alt="100" > 
                        <span style="width:48%; text-align:center;  display: block;"><a class="small-text" href="#">Forgot
                                password?</a></span>

                    </form>
                </div>
            </center>	
        </div>
        
        <%
            HttpSession sesion = request.getSession();

            if (request.getParameter("cerrar") != null) {
                sesion.invalidate();

            }
        %>

    </body>
</html>
