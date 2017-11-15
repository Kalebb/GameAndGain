<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
	 <head>
	  	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Misiones</title>
	</head>
			
	<body>
		<form:form id="missionForm" modelAttribute="missions" action="createMission" method="post">
	    	<table align="center">
	            <tr>
	                <td>
	                    <form:label path="missionId">Mission ID: </form:label>
	                </td>
	                <td>
	                    <form:input path="missionId" type="text" value="${it.missions.missionId}" name="missionId" id="missionId" />
	                </td>
	            </tr>
	            <tr>
	                <td>
	                    <form:label path="name">Nombre: </form:label>
	                </td>
	                <td>
	                    <form:input path="name" type="text" value="${it.missions.name}" name="name" id="name" />
	                </td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="score">Puntaje: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="score" type="text" value="${it.missions.score}" name="score" id="score" />
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="description">Descripcion: </form:label>
	            	</td>
	            	<td>
	            		<form:textarea path="description" name="description" id ="description" value="${it.missions.description} 
	            		style="width: 300px; height: 100px;"/>
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="campaign">Campaign ID: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="campaign" type="text" value="${it.missions.campaigns_CampaignsId}" name="campaigns_CampaignsId" id="campaign" />
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="difficulty">Dificultad: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="difficulty" type="text" value="${it.missions.difficulties_DifficultyId}" name="difficulties_DifficultyId" id="difficulty" />
	            	</td>
	            </tr>
	            <tr>
	                <td align="left">
	                    <form:button id="missionForm" name="missionForm">Create</form:button>
	                </td>
	            </tr>
	            <tr>
	                <td>
	                	<a href="index.jsp">Home</a>
	                </td>
	            </tr>
	    	</table>
		</form:form>
	</body>
</html>