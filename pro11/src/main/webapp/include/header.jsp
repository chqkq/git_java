<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 String email = request.getParameter("email");
 %>
<div>Header <%=email + "이메일" %></div>