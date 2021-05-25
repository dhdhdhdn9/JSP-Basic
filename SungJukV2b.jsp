<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- SungJukV2b.html => SungJukV2b.jsp --%>

<jsp:useBean id="sj" class="soonj.SungJuk"/>
<!-- SungJuk sj = new SungJuk(); 위의 식과 왼쪽의 식은 같음 -->
<!-- useBean은 특정한 패키지의 자바빈 파일을 사용한다고 명시할 때 사용 -->
<!-- 여기서 자바빈은, 메서드와 프로퍼티(필드)로 구성된 JAVA의 클래스 -->
<!-- 자바빈의 메서드는 getter, setter 메서드로 구성된다. -->
<!-- page: 현재 페이지에서만 사용 가능(1장) -->
<!-- request: 다음 페이지에서도 사용 가능(2장) -->
<!-- session: 브라우저 닫을 때까지 사용 가능-->
<!-- application: 서버 닫을 때까지 사용 가능-->

<jsp:setProperty name="sj" property="*" />
	<!-- setProperty 액션태그는 setter 메서드와 같은 의미를 가짐. -->
	<!-- useBean 액션태그로 생성한 자바빈 객체에 대해서 
	     프로퍼티(필드)에 값을 설정하는 역할을 함. -->
	<!-- 밑의 4줄은 위의 한줄로 줄일 수 있음 -->
	<!-- String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat")); -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 프로그램v2b</title>
</head>
<body>
	<h1>성적처리 프로그램</h1>
	<p>이름: <jsp:getProperty name="sj" property="name" /></p>
	<p>국어: <jsp:getProperty name="sj" property="kor" /></p>
	<p>영어: <jsp:getProperty name="sj" property="eng" /></p>
	<p>수학: <jsp:getProperty name="sj" property="mat" /></p>
	<p>총점: <jsp:getProperty name="sj" property="tot" /></p>
	<p>평균: <jsp:getProperty name="sj" property="avg" /></p>
	<p>학점: <jsp:getProperty name="sj" property="grd" /></p>
</body>
</html>