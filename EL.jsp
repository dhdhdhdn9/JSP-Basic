<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL - expression language</title>
</head>
<body>
	<h1>EL - expression language</h1>
	
	<p>${1+3}</p>
	<p>${"Hello, world!"}</p>
	<p>${10 != 100}</p>
	<p>${10 gt 100}</p>
	<p>${(10 gt 100) or ("a" == "b")}</p>
	<p>${(10 lt 100) and ("a" != "b")}</p>
	

</body>
</html>
<%--
	EL
	자바빈의 속성값이나 JSP의 표현식 <%=%>, jsp 액션 태그 보다 쉽고 간결하게 사용할 수 있도록
	JSP2.0부터 지원하기 시작한 기술
	
	표기법
	${수식}
	
	EL 기본 객체
	request
	session
	response
	param
	
	산술연산자
	+ - * / div mod
	
	논리
	and not or 
	
	관계연산자
	eq ne(같지 않다) lt(작다) gt(크다) le(작거나 같다) ge(크거나 같다) empty
	
	변수scope
	pageScope
	requestScope
	sessionScope
--%>
