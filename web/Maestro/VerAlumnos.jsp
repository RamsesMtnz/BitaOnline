<%-- 
    Document   : VerAlumnos
    Created on : 9/05/2017, 03:12:54 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="DTO.MateriasDTO"%>
<%@page import="DTO.SemestreDTO"%>
<%@page import="DTO.AlumnoMateriasDTO"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ConsultasMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Ver Alumnos</title>
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
  <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
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
    <a href="Maestro.jsp" class="logo">
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
          <p>Maestro</p>
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
          <a href="mtro.htm"><i class="glyphicon glyphicon-user"></i> <span>Alumnos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="VerAlumnos.jsp">Ver Alumnos</a></li>
            <li><a href="AgregarAlumnos.jsp">Agregar Alumnos</a></li>
            <li><a href="#"> Tratamientos Realizados</a></li>
          </ul>
        </li>
        <li>
            <a href="mtro.htm"><i class="fa fa-fw fa-file-text-o"></i> <span>Lista</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
              <li><a href="#">Generar Listas</a></li>
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
        Alumnos
        <small>Maestro</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
<section class="content">
      <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Lista de Alumnos</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                
                                Materia
                            </div>
                            <div class="panel-body">
                                 <form action="VerAlumnos.jsp" method="post">
                                   

                                       
                                                    
                                                   
                                                    <div class="col-md-3">                    
                                
                                 <div class="form-group">
                                    <label for="nombre">Materias</label>
                                   <select class="form-control" name="materias" id="sel1">
                                                  
                                       <%  
                                                       
                                                        String user;
                                                        user = sesion.getAttribute("user").toString();
                                                        List<MateriasDTO> detalles = ConsultasMySQL.MostrarMaterias(user);
                                                        for (int i = 0; i < detalles.size(); i++) {
                                                    %>
                                                    <option><%=detalles.get(i).getMateria()%></option>

                                                    <%

                                                        }

                                                    %>
                                                       
                                                      </select>
                                </div>  
                                
                            
                                </div> 
                                                    
                                                     <div class="col-md-2">                    

                                            <div class="form-group">
                                                <label for="correo">Semestre</label>
                                                <select class="form-control" name="semestre" id="sel1">
                                                 
                                                  <%  
                                                      
                                                        String user2;
                                                        user2 = sesion.getAttribute("user").toString();
                                                        List<SemestreDTO> detalles1 = ConsultasMySQL.MostrarSemestre(user2);
                                                        for (int i = 0; i < detalles.size(); i++) {
                                                    %>
                                                    <option><%=detalles1.get(i).getSemestre()%></option>

                                                    <%

                                                        }

                                                    %>

                                                 
                                                       
                                                      </select>
                                            </div>  

    
                                       <%%>    
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
                                    <button type="submit" class="btn btn-default">Buscar</button>

                                </div>  
                                
                            
                                </div> 
                                            
                                         

                                        <!-- /.col-lg-6 (nested) -->

                                        <!-- /.col-lg-6 (nested) -->
                                       
                                   
                                 </form>
                                                    
                                     <table class="table">
                <thead>
                    <tr>
                        <th>Matricula</th>
                        <th>Nombre</th>
                        <th>Materia</th>
                        <th>Semestre</th>
                         <th>Grupo</th>
                        <th>Correo</th>
                    </tr>
                </thead>
                
                <tbody>
                    
                    <%
                         
                         String materia=request.getParameter("materias");
                         String grupo=request.getParameter("grupo");
                         String semestre=request.getParameter("semestre");
                           
                        
                            List<AlumnoMateriasDTO> detalless = ConsultasMySQL.MostrarAlumnos(materia,semestre,grupo);
		for(int i=0; i<detalless.size();i++){  
                    %>
                    <tr class="warning">
                        <td><%=detalless.get(i).getMatricula()%></td>
                        <td><%=detalless.get(i).getNombre()%></td>
                        <td><%=detalless.get(i).getMateria()%></td>
                         <td><%=detalless.get(i).getSemestre()%></td>
                        <td><%=detalless.get(i).getGrupo()%></td>
                        <td><%=detalless.get(i).getCorreo()%></td>
                    </tr>
                    
                    <%}%>
                </tbody>
                
            </table>        
                             
                               
                                <!-- /.row (nested) -->
                            </div>
                                                    
                            <!-- /.panel-body -->
                        </div>
                                                    
                                                    
                        <!-- /.panel -->
                    </div>
                                                    
                                                    
                    <!-- /.col-lg-12 -->
                </div>
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
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
</body>
</html>
