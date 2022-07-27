<%@page import="dao.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="test" class="dto.TestDTO" />
<jsp:setProperty property="*" name="test" />
<%
	TestDAO tdao = new TestDAO();
	System.out.println(test.getText_str());
	System.out.println(test.getVarchar_str());
	tdao.insert(test);
	response.sendRedirect("test.jsp");
%>