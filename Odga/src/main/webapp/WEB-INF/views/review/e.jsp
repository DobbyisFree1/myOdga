<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<style>
	table, th, td {
	   border: 1px solid black;
	   border-collapse: collapse;
	}
	th, td {
	   padding: 5px;
	}
	a { text-decoration:none }
</style>
<meta charset="utf-8">
<center>
	<font color='gray' size='4' face='휴먼편지체'>
	<hr width='600' size='2' color='gray' noshade>
	<h3>Spring Board ( Spring5 + MyBatis )</h3>
	<font color='gray' size='4' face='휴먼편지체'>
	<a href='write.do'>글쓰기</a>
	</font>
	<hr width='600' size='2' color='gray' noshade>
	</font>
	
	<!-- 
	<c:forEach items="${list}" var="review">
		<td align='center'>${ review.B_ID }</td>
		<td>${ review.B_Writer }</td>
		<td>${ review.B_Subject }</td>
		<td>${ review.B_Content }</td>
		<td>${ review.B_Rdate }</td>
		<td>${ review.B_Catgo }</td>
		<td>${ review.B_Like }</td>
		<td>${ review.M_Id }</td>
		<td>${ review.A_Id }</td>
	</c:forEach>  --> 	 	
	<table border='2' width='600' align='center' noshade>
	<tr>
	<td width='20%' align='center'>No</td>
	<td>${review.b_id}</td>
	</tr>
	<tr>
	<td width='20%' align='center'>Writer</td>
	<td>${review.b_writer}</td>
	</tr>
	<tr>
	<td align='center'>E-mail</td>
	<td>${review.b_subject}</td>
	</tr>
	<tr>
	<td align='center'>Subject</td>
	<td>${review.b_content}</td>
	</tr>
	<tr>
	<td align='center'>Contents</td>
	<td>${review.b_rdate}</td>
	</tr>
	<tr>
	<td align='center'>Contents</td>
	<td>${review.b_catgo}</td>
	</tr>
	<tr>
	<td align='center'>Contents</td>
	<td>${review.b_like}</td>
	</tr>
	<tr>
	<td align='center'>Contents</td>
	<td>${review.m_id}</td>
	</tr>
	<tr>
	<td align='center'>Contents</td>
	<td>${review.a_id}</td>
	</tr>
	</table>
	
	<hr width='600' size='2' color='gray' noshade>
	<font color='gray' size='4' face='휴먼편지체'>
	<a href='update.do?seq=${review.b_id}'>수정</a>
	 &nbsp;&nbsp;| 
	<a href='del.do?seq=${review.b_id}'>삭제</a>
	 &nbsp;&nbsp;| 
	<a href='list.do'>목록</a>
	</font>
	<hr width='600' size='2' color='gray' noshade>
</center>
