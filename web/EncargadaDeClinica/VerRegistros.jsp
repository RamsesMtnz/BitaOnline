<%-- 
    Document   : VerRegistros
    Created on : 7/06/2017, 08:19:10 AM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Modelo.Metodos"%>
<%@page import="DTO.AlumnosBitacoraDTO"%>
<%@page import="DTO.NombreMaestroDTO"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ConsultasMySQL"%>
<%@page import="Modelo.ConsultasMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Ver Maestros</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="../dist/css/skins/skin-blue_FDO.css">


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="PrincipalCoordinadora.jsp" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Odontlogia</b> FO</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          
<li class="dropdown user user-menu">
            <li class="dropdown">
                   <%  HttpSession sesion = request.getSession();
                                String usuario="";
                usuario = sesion.getAttribute("user").toString();%>
                                
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><%= usuario%>
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                         <%
                              

                                if (sesion.getAttribute("user") != null) {
                                    usuario = sesion.getAttribute("user").toString();
                            %>
                            
                        <li><a href="#"><i class="fa fa-user fa-fw" ></i><%= usuario%></a></li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Configuarcion</a></li>
                        <%
                                    //out.print("<a href='../Login.jsp?cerrar=true'><h5>Cerrar Sesion </h5></a>");
                                } else {
                                    out.print("<script> location.replace('../Login.jsp');</script>");
                                }

                                //<li><a href="login.jsp"></i> Iniciar Sesion</a>
                            %>

                        <li class="divider"></li>
                        <li><a href="../Login.jsp?cerrar=true"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                        
                    </ul>
                </li>







          </li>
<li><img src="../img/uac_web_logo.png" height="50" width="50"></li>
<li><img src="../img/spam.png" height="50" width="50"></li>

         

        </ul>

      </div>












    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../img/fo_web_logo.png"  alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Coordinadora</p>
          <!-- Status -->
          
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="buscar...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">INICIO</li>
        <!-- Optionally, you can add icons to the links -->
    <li class="treeview active">
          <a href="mtro.htm"><i class="glyphicon glyphicon-user"></i> <span>Registro de Tratamientos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
    
        </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="../cargarFormulario">Tratamientos Realizados</a></li>
          <li><a href="VerRegistros.jsp">Registro de Tratamientos</a></li>
                
          </ul>
        </li>
      

      


        <li><a href="#"><i class="fa fa-link"></i> <span>Acerca de</span></a></li>





      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
      
      <section class="content">
<div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Formulario Bitacora</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
               <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                       
                        <div class="panel-body">
                            <form action="" method="post">
                            <div class="row">
                                
                                
                                <div class="col-md-3">                    
                                
                                 <div class="form-group">
                                   <label for="id_empleado">Maestro</label>
                                      <select class="form-control" name="maestro" id="sel1">
                                       
                                        
                                                             <%

		
		
		List<NombreMaestroDTO> detalles = ConsultasMySQL.MostrarNombreMaestros();
		for(int i=0; i<detalles.size();i++){
		%>
                <option><%=detalles.get(i).getNombre()%></option>
                                      
                                       
                                        

                                   
                                    <% 
	
}	

		%>
                                  </select>

                                </div>  
                                    
                                
                            
                                </div> 

                                 <div class="col-md-3">                    
                                
                                 <div class="form-group">
                                    <label for="usuario">Materia</label>
                                     <select class="form-control" name="materia" id="sel1">
                                        <option>Exodoncia</option>
                                        <option>Operatoria Dental</option>
                                        <option>Endodoncia</option>
                                       
                                  </select>
                                </div>  
                                
                            
                                </div>   

                            
 <div class="col-md-2">                    
                                
                                 <div class="form-group">
                                    <label for="contraseña">Grado:</label>
                                     <select class="form-control" name="grado" id="sel1">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        
                                  </select>
                                </div>  
                                
                            
                                </div> 

                                 <div class="col-md-2">                    
                                
                                 <div class="form-group">
                                    <label for="correo">Grupo</label>
                                         <select class="form-control" name="grupo" id="sel1">
                                        <option>A</option>
                                        <option>B</option>
                                        <option>C</option>
                                        
                                        
                                  </select>
                                </div>  
                                     
                                    
                                
                            
                                </div> 
                                
                                <div class="col-md-2">                    
                                
                                 <div class="form-group">
                                   <br>
                                    <button type="submit" class="btn btn-primary">Buscar</button>

                                </div>  
                                
                            
                                </div> 
                                

                               

                                

                       
                                <!-- /.col-lg-6 (nested) -->
                               
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                                
                            
                            
                            <!-- /.row (nested) -->
                        </div>
                        
                        <!-- /.panel-body -->
                    </div>
                    
                    <!-- /.panel -->
                </div>
                   
                   
                <!-- /.col-lg-12 -->
            </div>

            </div>
            
            <!-- /.box-body -->
          </div>

    </section>
    <!-- Content Header (Page header) -->
   

    <!-- Main content -->
    <section class="content">
<section class="content">
      <div class="row">
        <div class="col-xs-12">
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Registro de Alumnos</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table class="table">
                <thead>
                <tr>
                  <th>Folio</th>
                  <th>Matricula</th>
                  <th>Nombre Completo</th>
                  <th>Tratamiento</th>
                  <th>Cantidad</th>
                  <th>Fecha</th>
                  
               
                </tr>
                </thead>
                  <tbody>
                                    <%

		
		String maestro=request.getParameter("maestro");
                String materia=request.getParameter("materia");
                String grado=request.getParameter("grado");
                String grupo=request.getParameter("grupo");



		List<AlumnosBitacoraDTO> detalles2 = ConsultasMySQL.MostrarRegistroAlumnos(maestro, materia, grado, grupo);
		for(int i=0; i<detalles2.size();i++){
                                         Metodos metodo = new Metodos();

		%>
                                    <tr class="odd gradeX">
                                       <td><%=detalles2.get(i).getFolio()%></td>
                                        <td><%=detalles2.get(i).getMatricula()%></td>
                                         <td><%=detalles2.get(i).getNombre()%></td>
                                         <td><%=metodo.obtenerTratamiento(Integer.parseInt(detalles2.get(i).getTratamiento()))%></td>
                                        <td><%=detalles2.get(i).getCantidada()%></td>
                                      
                                        <td><%=detalles2.get(i).getFecha()%></td>

                                    </tr>
                                    <% 
	
}	

		%>
                                </tbody>
                             
                
              </table>
                                 
            </div>
                                 <div class="col-md-2">                    
                                
                                 <div class="form-group">
                                   <br>
                                    <button type="submit" class="btn btn-primary">Reporte en PDF</button>

                                </div>  
                                
                            
                                </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
                                    </form>

      <!-- /.row -->
    </section>



      <!-- Your Page Content Here -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2017 <a href="#">Facultad de Ingenieria</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->

  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->

<!-- SlimScroll -->
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- page script -->

</body>
</html>
