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
		<title>Preguntas</title>
	</head>
	
	<body>
		<form:form id="questionForm" modelAttribute="questions" action="createQuestion" method="post">
	    	<table align="center">
	            <tr>
	                <td>
	                    <form:label path="questionId">Question ID: </form:label>
	                </td>
	                <td>
	                    <form:input path="questionId" type="text" value="${it.questions.questionId}" name="questionId" id="questionId" />
	                </td>
	            </tr>
	            <tr>
	                <td>
	                    <form:label path="question">Pregunta: </form:label>
	                </td>
	                <td>
	                    <form:input path="question" type="text" value="${it.questions.question}" name="question" id="question" />
	                </td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="score">Puntaje: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="score" type="text" value="${it.questions.score}" name="score" id="score" />
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="mission">Mission ID: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="mission" type="text" value="${it.questions.missions_MissionsId}" name="missions_MissionsId" id="mission" />
	            	</td>
	            </tr>
	            <tr>
	                <td align="left">
	                    <form:button id="questionForm" name="questionForm">Create</form:button>
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