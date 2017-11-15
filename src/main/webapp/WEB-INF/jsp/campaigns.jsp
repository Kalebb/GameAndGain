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
		<title>Campañas</title>
	</head>
	
	<body>
		<form:form id="campaignForm" modelAttribute="campaigns" action="createCampaign" method="post">
	    	<table align="center">
	            <tr>
	                <td>
	                    <form:label path="campaignsId">Campaign ID: </form:label>
	                </td>
	                <td>
	                    <form:input path="campaignsId" type="text" value="${it.campaigns.campaignsId}" name="campaignsId" id="campaignsId" />
	                </td>
	            </tr>
	            <tr>
	                <td>
	                    <form:label path="name">Nombre: </form:label>
	                </td>
	                <td>
	                    <form:input path="name" type="text" value="${it.campaigns.name}" name="name" id="name" />
	                </td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="maxScore">Puntaje total: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="maxScore" type="text" value="${it.campaigns.maxScore}" name="maxScore" id="maxScore" />
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="description">Descripcion: </form:label>
	            	</td>
	            	<td>
	            		<form:textarea path="description" name="description" id ="description" value="${it.campaigns.description} 
	            		style="width: 300px; height: 100px;"/>
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="startDate">Fecha Inicio: </form:label>
	            	</td>
	            	<td>
	            		<div data-date-format="mm/dd/yyyy" data-date-viewmode="years">
							<c:set var="myDate">
								<fmt:formatDate pattern="MM/dd/yyyy" value="${it.campaings.startDate}" />
							</c:set>
							<input type="text" name="endDate" id="startDate" placeholder="09/11/2001" value="${myDate}" />
						</div>
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="endDate">Fecha fin: </form:label>
	            	</td>
	            	<td>
	            		<div data-date-format="mm/dd/yyyy" data-date-viewmode="years">
							<c:set var="myDate">
								<fmt:formatDate pattern="MM/dd/yyyy" value="${it.campaings.endDate}" />
							</c:set>
							<input type="text" name="endDate" id="endDate" placeholder="09/11/2001" value="${myDate}" />
						</div>
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="campaignType">Tipo Campaña: </form:label>
	            	</td>
	            	<td>
	            		<select name="campaign_Types_Campaign_TypeId" id="campaignType" value="${it.campaigns.campaign_Types_Campaign_TypeId}">
	            			<option disabled selected>Selecciona un tipo</option>
				  			<option value="1">Solidario</option>
				  			<option value="2">No solidario</option>
				  			<option value="3">Mixtos</option>
	            		</select>
	            	</td>
	            </tr>
	            <tr>
	                <td>
	                    <form:label path="users">User ID: </form:label>
	                </td>
	                <td>
	                    <form:input path="users" type="text" value="${it.campaigns.users_userId}" name="users_userId" id="users" />
	                </td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="interests">Interés: </form:label>
	            	</td>
	            	<td>
	            		<select name="interests_InterestId" id="interests" value="${it.campaigns.interests_InterestId}">
	            			<option disabled selected>Selecciona un Interes</option>
				  			<option value="1">Educativo</option>
				  			<option value="2">Cultural</option>
				  			<option value="3">Ambiental</option>
	            		</select>
	            	</td>
	            </tr>
	            <tr>
	                <td align="left">
	                    <form:button id="campaignForm" name="campaignForm">Create</form:button>
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