<%-- 
    Document   : MetodoEliminarE
    Created on : 8/05/2017, 08:40:16 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Modelo.Metodos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            if(Integer.parseInt(request.getParameter("id_empleado"))!=0){
                int id_empleado=Integer.parseInt(request.getParameter("id_empleado"));
                
                Metodos metodos = new Metodos();
                boolean respuesta=metodos.EliminarEncargada(id_empleado);
                
                if(respuesta!=false){
                    %>
                        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=EliminarEncargada.jsp"> 
                   <%
                }
else{
   out.print( "no eliminados :(");
}
            }
        %>
    </head>
    <body>
        
    </body>
</html>
