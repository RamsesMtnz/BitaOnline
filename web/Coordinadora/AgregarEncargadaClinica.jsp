<%-- 
    Document   : AgregarEncargadaClinica
    Created on : 8/05/2017, 04:04:19 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Nueva Encargada de Clinica</title>
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

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!--
--------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
     
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="PrincipalCoordinadora.jsp" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>OD</b>FO</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Odontología</b> FO</span>
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
        <li class="treeview">
          <a href="#"><i class="glyphicon glyphicon-user"></i> <span>Docentes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="VerMaestros.jsp">Ver Docentes</a></li>
            <li><a href="AgregarMaestro.jsp">Agregar Docente</a></li>
            <li><a href="EliminarMaestro.jsp">Quitar Docente</a></li>
          </ul>
        </li>

        <li class="treeview active">
          <a href="#"><i class="fa fa-fw fa-user-md"></i> <span>Encargados de clinica</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="VerEncargado.jsp">Ver Encargados</a></li>
            <li><a href="AgregarEncargadaClinica.jsp">Agregar Encargado</a></li>
            <li><a href="EliminarEncargada.jsp">Quitar Encargado</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#"><i class="fa fa-fw fa-stethoscope"></i><span>Materias</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <li><a href="Materia.jsp">Asignar Materia a Docente</a></li>>
          </ul>
        </li>
         <li class="treeview">
          <a href="#"><i class="fa fa-fw fa-file-text-o"></i> <span>Reportes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="ReporteGeneral.jsp">Reporte General</a></li>
            <li><a href="ReporteClinica.jsp">Reporte por Clinica</a></li>
            <li><a href="ReporteFecha.jsp">Reporte por Fecha</a></li>
            <li><a href="ReporteFechaClinica.jsp">Reporte por Clinica y Fecha</a></li>
          </ul>
        </li>


        <li><a href="#"><i class="fa fa-link"></i> <span>Acerca de</span></a></li>





      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Encargado(a) de Clínica
        <small>Coordinación</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
<div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Nueva Encargada(o) de Clínica</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
          <div class="row">
                
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                       
                        <div class="panel-body">
                            <form action="../ServletEncargado" method="post">
                            <div class="row">
                                <div class="col-md-4">                    
                                
                                <div class="form-group">
                                    <label for="id_empleado">Id Empleado:</label>
                                    <input type="text" name="id_empleado" maxlength="30" id="idEmpleado" class="form-control" >
                                </div>
                                
                            
                                </div>  

                                 <div class="col-md-4">                    
                                
                                 <div class="form-group">
                                    <label for="nombre">Nombre:</label>
                                    <input type="text" name="nombre" maxlength="30" id="idEmpleado" class="form-control" >
                                </div>  
                                
                            
                                </div> 

                                <div class="col-md-4">                    
                                
                                 <div class="form-group">
                                    <label for="apelldioP">Apellido Paterno:</label>
                                    <input type="text" name="apellido_paterno" maxlength="30" id="apellidoP" class="form-control" >
                                </div>  
                                
                            
                                </div> 

                                 <div class="col-md-4">                    
                                
                               
                                     <div class="form-group">
                                    <label for="apelldioM">Apellido Materno:</label>
                                    <input type="text" name="apellido_materno" maxlength="30" id="apellidoM" class="form-control" >
                                </div> 
                                
                                
                            
                                </div> 

                                <div class="col-md-4">                    
                                
                                 <div class="form-group">
                                    <label for="usuario">Usuario:</label>
                                    <input type="text" name="usuario" maxlength="30" id="usuario" class="form-control" >
                                </div>  
                                
                            
                                </div>   

                                  <div class="col-md-4">                    
                                
                                 <div class="form-group">
                                    <label for="contraseña">Contraseña:</label>
                                    <input type="text" name="contrasena" maxlength="30" id="contraseña" class="form-control" >
                                </div>  
                                
                            
                                </div> 

                                <div class="col-md-4">                    
                                
                                 <div class="form-group">
                                    <label for="clinica">Clínica:</label>
                                   <select class="form-control" name="clinica" id="sel1">
                                        <option>Clínica 1</option>
                                        <option>Clínica 2</option>
                                        <option>Clínica 3</option>
                                       
                                  </select>

                                </div>  
                                    
                                
                            
                                </div> 
                                
                                 <div class="col-md-4">                    
                                
                                 <div class="form-group">
                                    <label for="turno">Turno</label>
                                   <select class="form-control" name="turno" id="sel1">
                                        <option>Matutino</option>
                                        <option>Vespertino</option>
                                      
                                       
                                  </select>

                                </div>  
                                    
                                
                            
                                </div> 
                                
                                
                                
                                

                                 <div class="col-md-2">                    
                                
                                 <div class="form-group">
                                   <br>
                                    <button type="submit" class="btn btn-primary">Guardar</button>

                                </div>  
                                
                            
                                </div> 

                       
                                <!-- /.col-lg-6 (nested) -->
                               
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                                
                                </form>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
<%String validar=(String)session.getAttribute("validar");%>
 
                                        <%
                                
                               
                                if(validar!=null && validar.equals("Registro Exitoso")){
                                     %>
                                     <div class="alert alert-success alert-dismissable fade in">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                         <strong>
                                             <%=validar%>
                                         </strong>
                                     </div>
                                  <%
                                }
                               %>
                                <%
                                
                               
                                if(validar!=null && validar.equals("Error")){
                                    
                                     %>
                                     <div class="alert alert-danger alert-dismissable fade in">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                         <strong>
                                             <%=validar%>
                                         </strong>
                                     </div>
                                  <%
                                }
                               %>
            </div>
            
            <!-- /.box-body -->
          </div>




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

<!-- jQuery 2.2.3 -->
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/app.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
