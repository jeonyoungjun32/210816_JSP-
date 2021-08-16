<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업공정등록</title>
</head>
<body>
<%

%>




	<%@ include file="header.jsp" %>
	<form action="update.jsp"name="" value=""	style="border: 1" size="800">
	<tr>
	<th>작업지시번호</th>
		<td><input type="text" name="" value="" size="" maxlength=""/></td>
	</tr>
	
	<tr>
	<th>재료준비</th>
		<td><input type="text" name="" value="" size="" maxlength=""/></td>
	</tr>
	
	<tr>
	<th>인쇄공정</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th>코딩공정</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th>합지공정</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th>접합공정</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th>포장적재</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th>최종작업일자</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th>최종작업시간</th>
		<input type="text" name="" value="" size="" maxlength=""/>
	</tr>
	
	<tr>
	<th colspan="2">
		<input type="submit" name="" value="공정등록" size="" maxlength=""/>
		<input type="submit" name="" value="공정수정" size="" maxlength=""/>
		<input type="submit" name="" value="다시쓰기" size="" maxlength=""/>
	</th>
	</tr>
	
	</form>
</body>
</html>