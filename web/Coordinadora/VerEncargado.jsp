<%-- 
    Document   : VerEncargado
    Created on : 8/05/2017, 08:22:05 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="DTO.EncargadaDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ConsultasMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Ver Encargado de Clinica</title>
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
<li class="treeview">
          <a href="mtro.htm"><i class="glyphicon glyphicon-user"></i> <span>Maestros</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="VerMaestros.jsp">Ver Maestros</a></li>
            <li><a href="AgregarMaestro.jsp">Aegregar maestro</a></li>
            <li><a href="EliminarMaestro.jsp">Quitar maestro</a></li>
          </ul>
        </li>

        <li class="treeview active">
          <a href="#"><i class="fa fa-fw fa-user-md"></i> <span>Encargados de clinica</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="VerEncargado.jsp" >Ver Encargados</a></li>
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
           <li><a href="Materia.jsp">Asignar Materia a Maestro</a></li>
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
        Maestros
        <small>Cordinación</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
<section class="content">
      <div class="row">
        <div class="col-xs-12">
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Maestros</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                   <th>Id empleado</th>
                                            <th>Nombre</th>
                                            <th>Apellido Paterno</th>
                                            <th>Apellido Materno</th>
                                            <th>Clinica</th>
                                            <th>Turno</th>
               
                </tr>
                </thead>
                 <tbody>
                                    <%

                                            List<EncargadaDTO> detalles = ConsultasMySQL.MostrarEncargada();
                                            for (int i = 0; i < detalles.size(); i++) {
                                        %>
                                        <tr class="odd gradeX">
                                            <td><%=detalles.get(i).getId_empleado()%></td>
                                            <td><%=detalles.get(i).getNombre()%></td>
                                            <td><%=detalles.get(i).getApellido_materno()%></td>
                                            <td><%=detalles.get(i).getApellido_paterno()%></td>
                                            <td><%=detalles.get(i).getClinica()%></td>
                                            <td><%=detalles.get(i).getTurno()%></td>

                                        </tr>
                                        <%

                                            }

                                        %>
                                </tbody>
                
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
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
