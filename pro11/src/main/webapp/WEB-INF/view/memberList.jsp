<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="member.*" %>
  <%@ page import="java.util.*" %>
 <%
 //MemberDAO dao = new MemberDAO();
 List<MemberVO> list = (List<MemberVO>)request.getAttribute("list");
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="lightgreen">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>가입일</td>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
			MemberVO vo = list.get(i);	
		%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getPwd() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getEmail() %></td>
			<td><%=vo.getJoindate() %></td>
		</tr>
		<%}%>
	</table>
</body>
</html>