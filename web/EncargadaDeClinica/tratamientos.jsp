<%-- 
    Document   : tratamientos
    Created on : 3/04/2017, 08:48:18 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.util.List"%>
<%@page import="DTO.MenuTratamientoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

        
<% 
	List<MenuTratamientoDTO> listaTratamiento = (List<MenuTratamientoDTO>)
					request.getAttribute("listaTratamientos");

	for(MenuTratamientoDTO tratamientodto : listaTratamiento){
		out.print("<option value="+
			tratamientodto.getId_menu()+">"+tratamientodto.getMenu_tratamientos());
		
	}
%>
