<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Title</title>
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
	</head>

	<body style="text-align:center">
		<center>
			<h1>
				l.jsp
			</h1>
			<a href='write.do'>입력</a><br/>
			<table border='1' cellpadding='7' cellspacing='2' width='50%'>
			<tr>
			<th>b_id</th>
			<th>b_writer</th>
			<th>b_subject</th>
			<th>b_content</th>
			<th>b_rdate</th>
			<th>b_catgo</th>
			<th>b_like</th>
			<th>m_id</th>
			<th>a_id</th>
			</tr>
			<c:if test="${empty review}">
			    <tr>
				   <td align='center' colspan="5">데이터가 하나도 없음</td>
				</tr>
			</c:if>
			<c:forEach items="${review}" var="review">
			    <tr>
				<td align='center'>${review.b_id}</td>
				<td>${review.b_writer}</td>
				<td>
					<a href="e.do?b_id=${review.b_id}">${review.b_subject}</a>
				</td>
				<td>${review.b_content}</td>
				<td>${review.b_rdate}</td>
				<td>${review.b_catgo}</td>
				<td>${review.b_like}</td>
				<td>${review.m_id}</td>
				<td>${review.a_id}</td>
				<td align='center'><a href='delete.do?seq=${review.b_id}'>삭제</a></td>
				</tr>
			</c:forEach>
			
			</table>
		</center>
	</body>
</html>