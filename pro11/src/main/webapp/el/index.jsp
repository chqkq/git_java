<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// request에 저장
request.setAttribute("name","홍길동");
session.setAttribute("name","hong@gmail.com");

//MemberVO객체를 세션에 저장
member.MemberVO vo = new member.MemberVO();
vo.setName("김길동");
session.setAttribute("loginSession", vo);

//Map객체를 리퀘스트에 저장
java.util.Map map = new java.util.HashMap();
map.put("id", "hong");
request.setAttribute("data",map);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name : ${name}<br>
	name2 : ${sessionScope.name} <br>
	로그인 세션에 있는 이름 : ${sessionScope.loginSession.name}<br>
	로그인 세션에 있는 이름2 : ${sessionScope.loginSession.nickname}<br>
	맵에 있는 아이디 : ${requestScope.data.id}<br>
	id 비교 : ${data.id == 'hong'}<br>
	id 비교 : ${data.id eq 'hong'}<br>
	로그인세션이 존재하는지 여부 : ${not empty loginSession}<br> 
	파라미터(el) : ${param.age}<br>
	-> http://localhost:8090/pro11/el/index.jsp?age=30 로 넘겨줘서 30이 나옴 <br>
	파라미터(java) : <%=request.getParameter("age") == null ? "" : request.getParameter("age")%>
</body>
</html>