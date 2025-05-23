<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 이 안에 java 코드 작성
String name = "홍길동";
System.out.println(name); // 콘솔에 출력됨
out.println(name); // 응답 -> 화면에 출력됨
Date date = new Date();
out.println(date);
%>
<%="<h3>" +date+ "</h3>" %>
<%for(int i=0; i<10; i++){%>
	<h2>hello</h2>
<%}%>
<%=name /*표현식 .. ()=out.println)*/ %>
</body>
</html>