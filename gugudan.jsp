<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 - 24단</title>
</head>
<body>
	<h1>구구단</h1>


<%
	for (int i = 1; i<=24; ++i) {
		out.print("21 x " + i + "= " + (24*i) + "<br>");
	}
%>

<%-- 이것은 JSP 주석입니다 눈 아프다 --%>
</body>
</html>