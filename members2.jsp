<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="url">jdbc:mariadb://bigdata.chasrr6acj7c.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<sql:setDataSource var="mariadb"
	url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />
	
<sql:query dataSource="${mariadb}" var="rs">
	select mbno, userid, name, regdate from NMember order by mbno asc</sql:query>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<h1>회원 목록</h1>
	
	<c:forEach var="row" items="${rs.rows}">
		<p>${row.mbno} ${row.userid} ${row.name} 
			${fn:substring(row.regdate,0,10)}</p>
		<hr>
	</c:forEach>
	<!-- 년월일까지만 출력 -->

</body>
</html>