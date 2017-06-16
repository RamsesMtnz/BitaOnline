<%-- 
    Document   : numeroClinica
    Created on : 27-abr-2017, 10:05:22
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
 // String fec1=request.getParameter("date1");
  //String fec2=request.getParameter("date2");
  
  String Clinica=request.getParameter("clinica");
  String numeroClinica = null;
  if(Clinica.equals("Clinica 1")){
      numeroClinica ="1";
  }else if (Clinica.equals("Clinica 2")){
      numeroClinica ="2";
  }else if (Clinica.equals("Clinica 3")){
      numeroClinica ="3";
  }
      Connection conexion;
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conexion=DriverManager.getConnection("jdbc:mysql://localhost/facultad_odontologia","root","root");
      File reporte=new File(application.getRealPath("PDF/soloClinica.jasper"));
      Map parametro=new HashMap();
      parametro.put("clinica", numeroClinica);
      byte [] bit=JasperRunManager.runReportToPdf(reporte.getPath(),parametro,conexion);
      response.setContentType("application/pdf");
      response.setContentLength(bit.length);
      ServletOutputStream output=response.getOutputStream();
      output.write(bit, 0, bit.length);
      output.flush();
      output.close();
%>