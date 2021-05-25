<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request 내장객체 처리 결과</title>
	</head>
	<body>
		<h1>request 내장객체 처리 결과</h1>
		<%
			/* 한글 처리 */
			request.setCharacterEncoding("UTF-8");
			
			/* 폼요소를 개별적으로 가져옴 */
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String hobby[] = request.getParameterValues("hobby");
			/* 여러개를 가져오고 싶을 때는 Values를 활용하며 배열([])을 적는다. */
		%>
		<p><%=userid %></p>
		<p><%=passwd %></p>
		<p><%=name %></p>
		<p><%=email %></p>
		<p><%=hobby[0] %>
		<%=hobby[1] %></p>
		
		<hr>
		
		<%
			/* 폼요소를 통채로 가져옴 */
			Enumeration<String> frmlist = request.getParameterNames();
			while (frmlist.hasMoreElements()) {
				String key = frmlist.nextElement();
				String[] vals = request.getParameterValues(key);
				for (String val : vals) {
					out.print("<p>" + key + ":" + val + "</p>");
				}
			}
		%>
		
		<hr>
		
		<h2>HTTP 요청 정보</h2>
		<%
			Enumeration<String> header = request.getHeaderNames();
			while (header.hasMoreElements()) {
				String key = header.nextElement();
				String val = request.getHeader(key);
				out.print("<p>" + key + ": " + val + "</p>");
			}
		%>
		
		<hr>
		
		<h2>브라우저 및 서버 정보</h2>
		<p><%=request.getRemoteAddr() %></p>
		<p><%=request.getContentLength() %></p>
		<p><%=request.getCharacterEncoding() %></p>
		<p><%=request.getContentType() %></p>
		<p><%=request.getRequestURI() %></p>
		<p><%=request.getContextPath() %></p>
		<p><%=request.getQueryString() %></p>
	</body>
</html>