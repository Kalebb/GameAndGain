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
		<title>Insert title here</title>
	</head>
	
	<body>
		<form:form id="answerForm" modelAttribute="answers" action="createAnswer" method="post">
	    	<table align="center">
	            <tr>
	                <td>
	                    <form:label path="answerId">Answer ID: </form:label>
	                </td>
	                <td>
	                    <form:input path="answerId" type="text" value="${it.answers.answerId}" name="answerId" id="answerId" />
	                </td>
	            </tr>
	            <tr>
	                <td>
	                    <form:label path="answer">Respuesta: </form:label>
	                </td>
	                <td>
	                    <form:input path="answer" type="text" value="${it.answers.answer}" name="answer" id="answer" />
	                </td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="answer_value">Valor respuesta: </form:label>
	            	</td>
	            	<td>
	            		<select name="answer_value" id="answer_value" value="${it.answers.answer_value}">
	            			<option disabled selected>Selecciona un tipo</option>
				  			<option value="0">Incorrecta</option>
				  			<option value="1">Correcta</option>
	            		</select>
	            	</td>
	            </tr>
	            <tr>
	            	<td>
	            		<form:label path="question">Question ID: </form:label>
	            	</td>
	            	<td>
	            		<form:input path="question" type="text" value="${it.answers.questions_QuestionId}" name="questions_QuestionId" id="question" />
	            	</td>
	            </tr>
	            <tr>
	                <td align="left">
	                    <form:button id="answerForm" name="answerForm">Create</form:button>
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