<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="header.jsp" %>
<p><a href="../newproject/newprojectModify1">seller 정보 수정</a></p>
<c:forEach items="${item}" var="item">
<td><a href="../newproject/newprojectModify2/${item.item_code}">${item.item_code}</a></td>
<td>${item.title}</td>
</c:forEach>
