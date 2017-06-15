<%-- 
    Document   : reporteAlumno
    Created on : 24-abr-2017, 21:25:02
    Author     : RamsesMtnz
--%>
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
  String fec1=request.getParameter("date1");
  String fec2=request.getParameter("date2");
  //String Clinica=request.getParameter("clinica");
  //int numeroClinica=Integer.parseInt(Clinica);
  Connection conexion;
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conexion=DriverManager.getConnection("jdbc:mysql://localhost/facultad_odontologia","root","root");
  File reporte=new File(application.getRealPath("reportePDF/alumno.jasper"));
  Map parametro=new HashMap();
  parametro.put("fecha1", fec1);
  parametro.put("fecha2", fec2);
  //parametro.put("fecha", Fecha);
  byte [] bit=JasperRunManager.runReportToPdf(reporte.getPath(),parametro,conexion);
  response.setContentType("application/pdf");
  response.setContentLength(bit.length);
  ServletOutputStream output=response.getOutputStream();
  output.write(bit, 0, bit.length);
  output.flush();
  output.close();
%>