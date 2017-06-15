<%-- 
    Document   : reporteClinicas
    Created on : 24-abr-2017, 12:26:18
    Author     : RamsesMtnz
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="Text/html" pageEncoding="UTF-8" %>
<%@page import="net.sf.jasperreports.engine.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartFrame"%>
<%@page import="org.jfree.chart.plot.CategoryPlot"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.data.category.DefaultIntervalCategoryDataset"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.chart.ChartUtilities" %>
<%@page import="org.jfree.chart.JFreeChart" %>
<%@page import="org.jfree.chart.labels.StandardCategoryToolTipGenerator" %>
<%@page import="org.jfree.chart.plot.SpiderWebPlot" %>
<%@page import="org.jfree.chart.title.TextTitle" %>
<%@page import="org.jfree.data.*" %>

<%
  String Maestro=request.getParameter("maestro");
  String Materia=request.getParameter("materia");
  String Grado=request.getParameter("grado");
  String Grupo=request.getParameter("grupo");
  
  Connection conexion;
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conexion=DriverManager.getConnection("jdbc:mysql://localhost/facultad_odontologia","root","root");
  File reporte=new File(application.getRealPath("PDF/ClinicaEncargada.jasper"));
  Map parametro=new HashMap();
  parametro.put("grado", Grado);
  parametro.put("grupo", Grupo);
  parametro.put("materia", Materia);
  parametro.put("maeastro", Maestro);
  byte [] bit=JasperRunManager.runReportToPdf(reporte.getPath(),parametro,conexion);
  response.setContentType("application/pdf");
  response.setContentLength(bit.length);
  ServletOutputStream output=response.getOutputStream();
  output.write(bit, 0, bit.length);
  output.flush();
  output.close();
%>
