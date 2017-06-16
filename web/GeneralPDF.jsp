<%-- 
    Document   : ReporteGeneral
    Created on : 26/04/2017, 05:35:01 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="Text/html" pageEncoding="UTF-8" %>
<%@page import="net.sf.jasperreports.engine.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

<%
  //String Autor=request.getParameter("autor");
  //String Fecha=request.getParameter("date");
  //String Clinica=request.getParameter("clinica");
  //int numeroClinica=Integer.parseInt(Clinica);
  Connection conexion;
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conexion=DriverManager.getConnection("jdbc:mysql://localhost/facultad_odontologia","root","root");
  File reporte=new File(application.getRealPath("PDF/general.jasper"));
  //Map parametro=new HashMap();
  //parametro.put("clinica", Clinica);
  //parametro.put("elabora", Autor);
  //parametro.put("fecha", Fecha);
  byte [] bit=JasperRunManager.runReportToPdf(reporte.getPath(),null,conexion);
  response.setContentType("application/pdf");
  response.setContentLength(bit.length);
  ServletOutputStream output=response.getOutputStream();
  output.write(bit, 0, bit.length);
  output.flush();
  output.close();
%>