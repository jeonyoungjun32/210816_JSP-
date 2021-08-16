<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- HttpSession session = request.getSession(); 생략되고 자동생성된다 -->
<!-- JSP에서 세션 객체를 자동 생성 -->
<%
String id = (String)session.getAttribute("id");
%>
<!-- 서블릿에서 로그인이 성공해서 세션 영역에 id값이 저장되어 있다면 저장되어 있는 id가 반환되어   ???님 환영합니다.출력됌 -->
<!-- 섹션에 아이디가 저장되어 있지 않으면 (즉,로그인이 되어 있지 않는 상태라면) null값이 반환되어 
login.jsp로 이동 하여 아이디비번을 입력하라고 한다  -->
</body>
<%
	if(id == null){
%>		
		<a href="★login.jsp">로그인</a>
<% 	
	}else{
%>
		<%=id %>님 환영합니다.
<% 	
	}
%>
</html>