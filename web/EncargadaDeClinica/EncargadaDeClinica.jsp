<%-- 
    Document   : EncargadaDeClinica
    Created on : 9/05/2017, 03:51:15 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Encargada de Clinica</title>
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

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="Maestro.jsp.jsp" class="logo">
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
                    <!-- /.dropdown-user -->
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
          <p>Encargada de Clinica</p>
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
          <a href="mtro.htm"><i class="glyphicon glyphicon-user"></i> <span>Registro de Tratamientos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
    
        </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="../cargarFormulario">Tratamientos Realizados</a></li>
          <li><a href="VerRegistros.jsp">Registro de tratamientos</a></li>
          </ul>
        </li>
       
        


        <li><a href="#"><i class="fa fa-link"></i> <span>Acerca de</span></a></li>

        <!--<li class="active"><a href="#"><i class="fa fa-link"></i> <span>Acerca de</span></a></li> -->





      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        BIENVENIDO
        <small>Encargada de Clinica</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

    <!-- Main content <img src="odo.jpg"> -->
    <section class="content">
<div id="contenedor">
    <div id="myCarousel" class="carousel slide">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="myCarousel" data-slide-to="3"></li>
        <li data-target="myCarousel" data-slide-to="4"></li>
      </ol>
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="active item"><img  src="../img/4.jpg" alt="banner1" /></div>
        <div class="item"><img  src="../img/odo.jpg" alt="banner2" /></div>
        <div class="item"><img  src="../img/3.jpg" alt="banner3" /></div>
        <div class="item"><img  src="../img/4.jpg" alt="banner4" /></div>
        <div class="item"><img  src="../img/2.jpg" alt="banner5" /></div>
      </div>
      <!-- Carousel nav -->
      <a class="carousel-control left" href="../#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="carousel-control right" href="../#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
</div>
 

<script>
    $(document).ready(function(){
        $('.myCarousel').carousel({
            interval: 3000
        });
    });
</script>

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
