<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
	<%! 
	String name; //필드
	String get(){
		return "getFunc";
	}
	%>
	<%
	String name = "홍길동"; //지역변수
	
	String pageName = "/include/header.jsp";
	%>
	<%--@ include file="/include/header.jsp" --%>
	<jsp:include page="<%=pageName %>">
		<jsp:param value="hong@gmail.com" name="email"/>
	</jsp:include>
		<div id="container">
			????
		</div>
	</div>
</body>
</html>