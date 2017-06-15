<%-- 
    Document   : HistoriaClinica
    Created on : 03-may-2017, 18:06:16
    Author     : RamsesMtnz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Historia Clínica</title>
        
        <!-- Bootstrap Core CSS -->
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.css">
        
    </head>
    <body>
        <div id="wrapper">
            
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Agregar Maestro</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Coordinadora.jsp">Coordinadora</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                <!-- /.dropdown -->
               
                <!-- /.dropdown -->
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                   <ul class="dropdown-menu dropdown-user">

                            



                            <li class="divider"></li>
                            <li><a href="../Login.jsp?cerrar=true"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                            </li>
                        </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="Coordinadora.jsp"><i class="fa fa-dashboard fa-fw"></i> Estadisticas</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-user-md"></i> Maestros<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="AgregarMaestro.jsp"><i class="fa fa-user-plus"></i> Agregar Maestro</a>
                                </li>
                                <li>
                                    <a href="EliminarMaestro.jsp"><i class="fa fa-user-times"></i> Eliminar Maestro</a>
                                </li>
                                <li>
                                    <a href="VerMaestro.jsp"><i class="fa fa-search"></i> Ver Maestros</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                         <li>
                            <a href="#"><i class="fa fa-female"></i> Encargada de Clinica<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="AgregarEncargadaDeClinica.jsp"><i class="fa fa-user-plus"></i> Agregar Encargada</a>
                                </li>
                                <li>
                                    <a href="EliminarEncargada.jsp"><i class="fa fa-user-times"></i> Eliminar Encargada</a>
                                </li>
                                <li>
                                    <a href="VerEncargada.jsp"><i class="fa fa-search"></i> Ver Encargada</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-male"></i> Alumnos<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                
                                
                                <li>
                                    <a href="VerAlumnos.jsp"><i class="fa fa-search"></i> Ver Alumnos</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                           <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i> Reportes<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                
                                
                                <li>
                                    <a href="ReporteGeneral.jsp"><i class="fa fa-file-pdf-o"></i> Reporte General</a>
                                </li>
                                 <li>
                                    <a href="ReporteClinica.jsp"><i class="fa fa-file-pdf-o"></i> Reporte por Clinica</a>
                                </li>
                                  <li>
                                    <a href="ReporteFecha.jsp"><i class="fa fa-file-pdf-o"></i> Reporte por Fecha</a>
                                </li>
                                <li>
                                    <a href="ReporteFechaClinica.jsp"><i class="fa fa-file-pdf-o"></i> Reporte por Clinica y Fecha</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Acerca de:</a>
                        </li>
                        
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
            
        </div>
        
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Crear Historia Clinica De Nuevo Paciente</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Historial Cínico:
                        </div>
                        <div class="panel-body">
                            <form action="../ServletMaestro" method="post">
                            
                            <div class="row">
                                
                                <div class="col-md-4">                    
                                    <div class="form-group">
                                        <label for="folio">Folio:</label>
                                        <input type="text" name="folio" maxlength="30" id="folio" class="form-control" >
                                    </div>
                                </div>  

                                <div class="col-md-4">                    
                                    <div class="form-group">
                                        <label for="nombre">Nombre completo:</label>
                                        <input type="text" name="nombre" maxlength="30" id="nombre" class="form-control" >
                                    </div>  
                                </div> 

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="edad">Edad</label>
                                        <input type="text" name="edad" maxlength="30" id="edad" class="form-control" >
                                    </div>  
                                </div> 
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="clinica">Sexo:</label>
                                        <select class="form-control" name="sexo" id="sel1">
                                            <option>Masculino</option>
                                            <option>Femenino</option>
                                        </select>
                                </div> 

                                <div class="col-md-4"> 
                                    <div class="form-group">
                                        <label for="fechanacimiento">Fecha de nacimiento</label>
                                        <input type="date" name="fechanacimiento" maxlength="30" id="fechanacimiento" class="form-control" >
                                    </div>  
                                </div>   

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="direccion">Dirección</label>
                                        <input type="text" name="direccion" maxlength="30" id="direccion" class="form-control" >
                                    </div>  
                                </div> 
                            </div>
                            
                            <div class="row">
                                <div class="col-md-4">                    
                                    <div class="form-group">
                                        <label for="telefono">Teléfono</label>
                                        <input type="text" name="telefono" maxlength="30" id="telefono" class="form-control" >
                                    </div>  
                                </div> 

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="ciudad">Ciudad</label>
                                        <input type="text" name="ciudad" maxlength="30" id="ciudad" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="estado">Estado</label>
                                        <input type="text" name="estado" maxlength="30" id="estado" class="form-control" >
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="pais">Pais</label>
                                        <input type="text" name="pais" maxlength="30" id="pais" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="ocupacion">Ocupación</label>
                                        <input type="text" name="ocupacion" maxlength="30" id="ocupacion" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="trabajo">Lugar de trabajo</label>
                                        <input type="text" name="trabajo" maxlength="30" id="trabajo" class="form-control" >
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="teloficina">Tel. de Oficina</label>
                                        <input type="text" name="teloficina" maxlength="30" id="teloficina" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="estatura">Estatura</label>
                                        <input type="text" name="estatura" maxlength="30" id="estatura" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="peso">Peso</label>
                                        <input type="text" name="peso" maxlength="30" id="peso" class="form-control" >
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="edocivil">Estado Civil</label>
                                        <select class="form-control" name="edocivil" id="sel1">
                                            <option>Soltero/a</option>
                                            <option>Casado/a</option>
                                            <option>Divorciado/a</option>
                                        </select>
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="estudios">Ultimo grado de estudios</label>
                                        <input type="text" name="estado" maxlength="30" id="estado" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="medico">Médico de cabecera</label>
                                        <input type="text" name="medico" maxlength="30" id="medico" class="form-control" >
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="telmedico">Tel. del médico</label>
                                        <input type="text" name="telmedico" maxlength="30" id="telmedico" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="direccionmedico">Dirección del médico</label>
                                        <input type="text" name="direccionmedico" maxlength="30" id="direccionmedico" class="form-control" >
                                    </div>  
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="edosalud">Usted cree que su estado de salud es</label>
                                        <select class="form-control" name="edosalud" id="sel1">
                                            <option>Bueno</option>
                                            <option>Malo</option>
                                            <option>Regular</option>
                                        </select>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">      
                                    <div class="form-group">
                                        <label for="info">¿Por qué solicita Ud. un tratamiento dental?</label>
                                        <input type="text" name="info" maxlength="30" id="info" class="form-control" >
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h1 align="center">DATOS GENERALES</h1>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg1">¿Piensa que sus dientes afectan su salud gral.?</label>
                                    <div class="radio">
                                      <label><input type="radio" name="button1" value="1">Si</label>
                                      <label><input type="radio" name="button1" value="0">No</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg2">¿Está satisfecho con el aspecto de sus dientes?</label>
                                    <div class="radio">
                                      <label><input type="radio" name="button2" value="1">Si</label>
                                      <label><input type="radio" name="button2" value="0">No</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg3">¿Se interesa en recibir un tratamiento dental integral?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button3" value="1">Si</label>
                                          <label><input type="radio" name="button3" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="preg4">¿Le resulta dificil masticar los alimentos?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button4" value="1">Si</label>
                                          <label><input type="radio" name="button4" value="0">No</label>
                                        </div>
                                    <label for="preg4observacion">Observaciones</label>
                                    <input type="text" name="preg4observacion" maxlength="30" id="preg4observacion" class="form-control" >
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg5">¿Le sangran las encías?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button5" value="1">Si</label>
                                          <label><input type="radio" name="button5" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg6">¿Ha sido examinado por un médico en el último año?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button6" value="1">Si</label>
                                          <label><input type="radio" name="button6" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg7">¿Le resulta dificil masticar los alimentos?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button7" value="1">Si</label>
                                          <label><input type="radio" name="button7" value="0">No</label>
                                        </div>
                                    <label for="preg7observacion">Observaciones</label>
                                    <input type="text" name="preg7observacion" maxlength="30" id="preg7observacion" class="form-control" >
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg8">¿Ha estado hospitalizado alguna vez?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button8" value="1">Si</label>
                                          <label><input type="radio" name="button8" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg9">¿Ha recibido alguna transfusión de sangre alguna vez?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button9" value="1">Si</label>
                                          <label><input type="radio" name="button9" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg10">¿Se siente enfermo con frecuencia?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button10" value="1">Si</label>
                                          <label><input type="radio" name="button10" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg11">¿Se siente cansado o fatigado con frecuencia?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button11" value="1">Si</label>
                                          <label><input type="radio" name="button11" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg12">¿Ha padecido alguna lesión en la cara o maxiliares?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button12" value="1">Si</label>
                                          <label><input type="radio" name="button12" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg13">¿Padece algún problema del corazón?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button13" value="1">Si</label>
                                          <label><input type="radio" name="button13" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg14">¿Tiene ud. alterada la presión arterial?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button14" value="1">Si</label>
                                      <label><input type="radio" name="button14" value="0">No</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg15">¿Sangra mucho tiempo cuando se hace un herida?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button15" value="1">Si</label>
                                          <label><input type="radio" name="button15" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg16">¿Se le hacen moretones fácilmenten?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button16" value="1">Si</label>
                                          <label><input type="radio" name="button16" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg17">¿Padece algún transtorno sanguíneo?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button17" value="1">Si</label>
                                          <label><input type="radio" name="button17" value="0">No</label>
                                        </div>
                                        <label for="preg17observacion">Observaciones</label>
                                        <input type="text" name="preg17observacion" maxlength="30" id="preg17observacion" class="form-control" >
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg18">¿Padece dolor en el pecho al hacer algún esfuerzo?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button18" value="1">Si</label>
                                          <label><input type="radio" name="button18" value="0">No</label>
                                        </div>
                                </div>
                            </div>    
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg19">¿Le falta la respiración cuando hace esfuerzo leve?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button19" value="1">Si</label>
                                          <label><input type="radio" name="button19" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg20">¿Se le hinchan los tobillos?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button20" value="1">Si</label>
                                          <label><input type="radio" name="button20" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg21">¿Tiene tos persistente?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button21" value="1">Si</label>
                                          <label><input type="radio" name="button21" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg22">¿Ha experimentado alguna reacción alarmante a algún anastésico dental?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button22" value="1">Si</label>
                                          <label><input type="radio" name="button22" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg23">¿Orina más de 6 veces al día?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button23" value="1">Si</label>
                                          <label><input type="radio" name="button23" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg24">¿Padece algún problema renal?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button24" value="1">Si</label>
                                          <label><input type="radio" name="button24" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg25">¿Padece alguna enfermedad del hígado?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button25" value="1">Si</label>
                                          <label><input type="radio" name="button25" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg26">¿Padece alteraciones del sistema nervioso?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button26" value="1">Si</label>
                                          <label><input type="radio" name="button26" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg27">¿Tiende a desmayarse con frecuencia?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button27" value="1">Si</label>
                                          <label><input type="radio" name="button27" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg28">¿Padece dolores de cabeza, frecuentes e intensos?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button28" value="1">Si</label>
                                          <label><input type="radio" name="button28" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg29">¿Se considera una persona nerviosa?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button29" value="1">Si</label>
                                          <label><input type="radio" name="button29" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg30">¿Llora con frecuencia?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button30" value="1">Si</label>
                                          <label><input type="radio" name="button30" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-4">                    
                                    <label for="preg31">¿Se irrita o molesa con facilidad?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button31" value="1">Si</label>
                                          <label><input type="radio" name="button31" value="0">No</label>
                                        </div>
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg32">¿Se encuentra embarazada actualmente?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button32" value="1">Si</label>
                                          <label><input type="radio" name="button32" value="0">No</label>
                                        </div>
                                        <label for="pre32observacion">Observaciones</label>
                                        <input type="text" name="preg32observacion" maxlength="30" id="preg32observacion" class="form-control" >
                                </div>
                                
                                <div class="col-md-4">                    
                                    <label for="preg33">¿Tiene problemas con su periodo menstrual?</label>
                                        <div class="radio">
                                          <label><input type="radio" name="button33" value="1">Si</label>
                                          <label><input type="radio" name="button33" value="0">No</label>
                                        </div>
                                        <label for="pre33observacion">Observaciones</label>
                                        <input type="text" name="preg33observacion" maxlength="30" id="preg33observacion" class="form-control" >
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h1 align="center">Elija alguna de las siguientes opciones si ha padecido el paciente</h1>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="1" name="hepatitis">Hepatitis</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="2" name="EnfVenéreas">Enfermedades Venéreas</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="3" name="Embolia">Embolia</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="4"name="Varicela">Varicela</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="5" name="Asma">Asma</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="6" name="Icteria">Icteria</label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">    
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="7" accept="Infarto">Infarto al miocardio</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="8" name="Epilepsia">Epilepsia</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="9" name="Fiebre">Fiebre reumática</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                         <label><input type="checkbox" value="10" name="Hipertension">Hipertensión arterial</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="11" accept="Tuberculosis">Tuberculosis</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="12" name="Angina">Angina de pecho</label>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">     
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="13" name="Diabetes">Diabetes</label>
                                    </div>
                                </div>
                                <div class="col-md-4">     
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="14" name="Sarampion">Sarampión</label>
                                    </div>
                                </div>
                                <div class="col-md-4">     
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="15" name="Cancer">Cáncer</label>
                                    </div>
                                </div>
                            </div>
                               
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h1 align="center">¿Es alérgico a alguno de los sig. medicamentos?</h1>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">    
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="1" accept="penicilina">Penicilina</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="2" name="barbituricos">Barbituricos</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="3" name="Aspirina">Aspirina</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="4" name="sulfas">Sulfas</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="checkbox" align="center">
                                        <label><input type="checkbox" value="5" name="cortisona">Cortisona</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <label for="otros">Algún medicamento en especifico</label>
                                    <input type="text" name="otros" maxlength="30" id="otros" class="form-control" >
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h3 align="center">Cara</h3>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="otros">1)Forma:</label>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button34" value="Ovoide">Ovoide</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button34" value="cuadrada">Cuadrada</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button34" value="alargada">Alargada</label>
                                    </div>
                                </div>
                            </div> 
                                
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="otros">2)Labios:</label>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button35" value="activos">Activos</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button35" value="largos">Largos</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button35" value="medianos">Medianos</label>
                                    </div>
                                </div>
                                <div class="col-md-2">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button35" value="cortos">Cortos</label>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">3)Bordes bermellon visibles:</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button36" value="visibles">Visibles</label>
                                    </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="center">
                                      <label><input type="radio" name="button36" value="no visibles">No visibles</label>
                                    </div>
                                </div>
                            </div>
                             
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h3 align="center">Sistema estomatognático</h3>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h4 align="left">a) ATM</h4>
                                    </div>  
                                </div>
                            </div>
                             
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">-Crepitación y/o crujido</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button37" value="1">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button37" value="0">No</label>
                                        </div>
                                </div>
                            </div>    
                              
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">-Sensibilidad del área</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button38" value="1">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button38" value="0">No</label>
                                        </div>
                                </div>
                            </div>  
                            
                                <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">-Dolor</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button39" value="1">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button39" value="0">No</label>
                                        </div>
                                </div>
                            </div>  
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">-Subluxación</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button40" value="1">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button40" value="0">No</label>
                                        </div>
                                </div>
                            </div>  
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">-Desviación</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button41" value="1">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button41" value="0">No</label>
                                        </div>
                                </div>
                            </div>  
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="otros">-Hábitos de tensión</label>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button42" value="1">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio">
                                          <label><input type="radio" name="button42" value="0">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">                    
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="bruxismo">Bruxismo</label>
                                    </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="2" name="unicofagia">Unicofagia</label>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">                    
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="succion">Succión labial</label>
                                    </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="2" name="succionlingual">Succión lingual</label>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">                    
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="resiradorBucal">Respirador bucal</label>
                                    </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="2" name="objetos">Objetos extraños</label>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <label for="otros">-Forma del proceso residual</label>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="otros">a) Maxilar:</label>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button43" value="U">"U"</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button43" value="V">"V"</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button43" value="Afilado">Afilado</label>
                                        </div>
                                </div>
                            </div> 
                                
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="otros">b) Mandibular:</label>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button44" value="U">"U"</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button44" value="V">"V"</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button44" value="Afilado">Afilado</label>
                                        </div>
                                </div>
                            </div> 
                                
                            <div class="row">
                                <div class="col-md-3">                    
                                    <label for="otros">-Tamaño de la lengua</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button45" value="normal">Normal</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button45" value="mediana">Mediana</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button45" value="grande">Grande</label>
                                        </div>
                                </div>
                            </div> 
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <label for="otros">-Torus</label>
                                    </div>  
                                </div>
                            </div>  
                                
                            <div class="row">
                                <div class="col-md-3">                    
                                    <label for="otros">a) Maxilar</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button46" value="ninguno">Ninguno</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button46" value="ligero">Ligero</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button46" value="requiere remocion">Requiere remoción</label>
                                        </div>
                                </div>
                            </div>     
                                
                            <div class="row">
                                <div class="col-md-3">
                                        <label for="otros">b) Mandibula</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button47" value="ninguno">Ninguno</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button47" value="ligero">Ligero</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button47" value="requiere remocion">Requiere remoción</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h4 align="left">B) Analisis de la oclusión</h4>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">                    
                                    <label for="clasificacion">Clasificación</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button48" value="clasificacion I">I</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button48" value="clasificacion II">II</label>
                                        </div>
                                </div>
                                <div class="col-md-3">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button48" value="clasificacion III">III</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="proteccionCanina">Protección canina</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button49" value="proteccion Izquierda">Izquierda</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button49" value="proteccion derecha">Derecha</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="proteccionAnterior">Protección Anterior</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button50" value="proteccion si">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button50" value="proteccion no">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="funcionGrupo">Función de grupo</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button51" value="funcion izquierda">Izquierda</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button51" value="funcion derecha">Derecha</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="proteccionMutua">Protección mutua</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button52" value="proteccion mutua si">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button52" value="proteccion mutua no">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="mordidaCruzada">Mordida cruzada</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button53" value="mordida izquierda">Izquierda</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button53" value="mordida derecha">Derecha</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="mordidaAbierta">Mordida abierta</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button54" value="mordida si">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button54" value="mordida no">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="sobremordida">Sobremordida</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button55" value="sobremordida si">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">                    
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button55" value="sobremordida no">No</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="relacionincisal">Relación Incisal</label>
                                </div>
                                <div class="col-md-4">
                                        <label for="traslapeHor">Traslape horizontal</label>
                                        <input type="text" name="traslapeHor" maxlength="30" id="traslapeHor" class="form-control" >
                                        <label for="mm">mm</label>
                                </div>
                                <div class="col-md-4">                    
                                        <label for="traslapeVer">Traslape vertical</label>
                                        <input type="text" name="traslapeVer" maxlength="30" id="traslapeVer" class="form-control" >
                                        <label for="mm">mm</label>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">                    
                                    <label for="relacionincisal">Contacto dentario anterior en oclusión céntrica</label>
                                </div>
                                <div class="col-md-8">
                                        <input type="text" name="contactoDentario" maxlength="30" id="contactoDentario" class="form-control" >
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="otros">-Movimiento mandibular(evaluar como normal, excesivo o limitado):</label>
                                    </div>  
                                </div>
                            </div>  
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button56" value="protusivo">a) Protusivo</label>
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button56" value="lateral derecho">b) Lateral derecho</label>
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button56" value="lateral izquierdo">c) Lateral izquierdo</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h4 align="left">C) Examen oral</h4>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">                    
                                    <label for="Dolor">-Dolor</label>
                                </div>
                            </div>
                                
                            <div class="row"> 
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button57" value="dolor si">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button57" value="dolor si">Si</label>
                                        </div>
                                </div>
                                <div class="col-md-4"> 
                                    <div class="form-group">
                                        <label for="Organo">Organo dentario</label>
                                        <input type="text" name="organoDentario" maxlength="30" id="organoDentario" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="ubicacion">a) Ubicación</label>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button58" value="difuso">Difuso</label>
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button58" value="localizado">Localizado</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row"> 
                                <div class="col-md-4"> 
                                        <label for="duracion">b) Duración</label>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input type="text" name="Duracion" maxlength="30" id="Duracion" class="form-control" >
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="duracion">c) Estímulo</label>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-1">
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button59" value="frio">Frio</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button59" value="calor">Calor</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button59" value="ácido">Ácido</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button59" value="dulce">Dulce</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button59" value="masticación">Masticación</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="duracion">-Lesión pulpar</label>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button60" value="física">Física</label>
                                        </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button60" value="quimica">Química</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button60" value="bacteriana">Bacteriana</label>
                                        </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group" align="left">
                                        <label for="duracion">Otra</label>
                                        <input type="text" name="otraLesion" maxlength="30" id="otraLesion" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="exposicionPulpar">-Exposición pulpar por:</label>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button61" value="caries">Caries</label>
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button61" value="fractura">Fractura</label>
                                        </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="duracion">Otra</label>
                                        <input type="text" name="otraLesion2" maxlength="30" id="otraLesion2" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="inflamacion">-Inflamación:</label>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button62" value="extraoral">Extraoral</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button62" value="intraoral">Intraoral</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button62" value="endurecida">Endurecida</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button62" value="blanda">Blanda</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button62" value="nodulos linfáticos">Nódulos linfáticos</label>
                                        </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="radio" align="center">
                                          <label><input type="radio" name="button62" value="fístola">Fístola</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="pruebas">-Pruebas de sensibilidad térmica:</label><br><br>
                                    <label for="frio">a)Frio:</label>
                                </div>
                            </div>
                           <div class="row">
                               <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioNormal">Normal</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioFugaz">Fugaz</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="duracion">Órgano dentario testigo</label>
                                        <input type="text" name="organoDentarioFrio" maxlength="30" id="organoDentarioFrio" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioNinguno">Ninguno</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioPersistente">Persistente</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioIncremento">Incremento</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioIrradiado">Irradiado</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioIncremento">Incremento</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="frioIrradiado">Irradiado</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="FrioDecremento">Decremento</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div><br> 
                                
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="frio">b) Calor:</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorNormal">Normal</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorFugaz">Fugaz</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="duracion">Órgano dentario testigo</label>
                                        <input type="text" name="organoDentarioCalor" maxlength="30" id="organoDentarioCalor" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorNinguno">Ninguno</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorPersistente">Persistente</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorIncremento">Incremento</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorIrradiado">Irradiado</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorIncremento">Incremento</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorIrradiado">Irradiado</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="checkbox" align="left">
                                        <label><input type="checkbox" value="1" name="calorDecremento">Decremento</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div><br><br>
                                
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="pruebas">-Pruebas de sensibilidad periodontal</label><br>
                                    <label for="frio">a)Percusión:</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="vertical">Vetical +</label>
                                        <input type="text" name="verticalMas" maxlength="30" id="verticalMas" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="vertical">Vetical -</label>
                                        <input type="text" name="verticalMenos" maxlength="30" id="verticalMenos" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="duracion">Órgano dentario testigo</label>
                                        <input type="text" name="organoDentarioPeriodontal" maxlength="30" id="organoDentarioPeriodontal" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="vertical">Horizontal +</label>
                                        <input type="text" name="horizontalMas" maxlength="30" id="horizontalMas" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="vertical">Horizontal -</label>
                                        <input type="text" name="horizontalMenos" maxlength="30" id="horizontalMenos" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="vertical">Palpación +</label>
                                        <input type="text" name="palpacionMas" maxlength="30" id="palpacionMas" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="vertical">Palpación -</label>
                                        <input type="text" name="palpacionMenos" maxlength="30" id="palpacionMenos" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h5 align="center">Nota: Consignar en el odontograma con los códigos alfanuméricos normados para
                                            tal fin, la presencia de:</h5><br>
                                        <h5 align="left">a) Aparatología protésica y/o ortodóntica</h5>
                                        <h5 align="left">b) Lesiones, alteraciones, condiciones y/o anomalías ó de tejidos blandos</h5>
                                        <h5 align="left">c) Restauraciones y/ tratamientos pulpares</h5>
                                    </div>  
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">      
                                    <div class="form-group">
                                        <h4 align="left">D) Hallazgos radiográficos</h4>
                                    </div>  
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="frio">Tipo de RX:</label>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button63" value="periapical">Periapical</label>
                                        </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button63" value="oclusal">Oclusal</label>
                                        </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio" align="left">
                                          <label><input type="radio" name="button63" value="panorámica">Panorámica</label>
                                        </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="vertical">Soporte óseo</label>
                                        <input type="text" name="soporteoseo" maxlength="30" id="soporteoseo" class="form-control" >
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="vertical">Relacion corona-raíz</label>
                                        <input type="text" name="coronaRaiz" maxlength="30" id="coronaRaiz" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="vertical">Altura del reborde</label>
                                        <input type="text" name="alturaRebolde" maxlength="30" id="alturaRebolde" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="ligamento">Engrosamiento del ligamento periodontal</label>
                                        <input type="text" name="ligamento" maxlength="30" id="ligamento" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="vertical">Interpretación radiográfica</label>
                                        <input type="text" name="interpretacion" maxlength="30" id="interpretacion" class="form-control" >
                                    </div>
                                </div>
                            </div>
                                
                                
                           <div class="row"> 
                                <div class="col-md-12">                                                   
                                    <div class="form-group">
                                        <br>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>  
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
            <!-- /.row -->
        </div>
    
    </body>
</html>
