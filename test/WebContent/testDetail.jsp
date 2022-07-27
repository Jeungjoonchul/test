<%@page import="dao.TestDAO"%>
<%@page import="dto.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		TestDAO tdao = new TestDAO();
		TestDTO test= tdao.select(1);
	%>
	<c:set var="varchar_str" value="${test.getVarchar_str()}"></c:set>
	<textarea rows="50" cols="50">${varchar_str }</textarea>
	<textarea rows="50" cols="50">${test.getVarchar_str()}</textarea>
</body>
</html>