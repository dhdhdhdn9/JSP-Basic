<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<c:set var="url">jdbc:mariadb://bigdata.chasrr6acj7c.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<sql:setDataSource var="mariadb"
	url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />
	
<sql:query dataSource="${mariadb}" var="rs">
	select * from books 
	order by bookid asc</sql:query>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 책 목록</title>
</head>
<body>
	<h1>등록된 책 목록</h1>
	
	<c:forEach var="row" items="${rs.rows}">
		<p>${row.bookid} ${row.bookname} ${row.publish} ${row.price}</p>
		<hr>
	</c:forEach>

</body>
</html>