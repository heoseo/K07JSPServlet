<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 한글 깨짐 방지
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestInfo.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>사용자 요청과 관련된 정보들 출력하기</h2>
	<ul>
		<li>데이터전송방식 : <%=request.getMethod() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 요청방식(GET, POST, PUT)을 반환</li>
		<li>전체URL : <%=request.getRequestURL() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 요청한 URL(전체 URL)을 반환</li>
		<li>도메인을 제외한 URL : <%=request.getRequestURI() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 요청한 URI(도메인 부분을 제외)를 반환</li>
		<li>프로토콜 : <%=request.getProtocol() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 요청에 사용된 프로토콜을 반환</li>
		<li>서버명 : <%=request.getServerName() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 요청을 받은 서버의 이름(도메인명)을 반환</li>
		<li>서버포트 : <%=request.getServerPort() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 서버의 포트번호를 반환</li>
		<!-- 로컬 웹서버의 주소는 localhost혹은 127.0.0.1 과 같은 루프백을 사용하나
		request객체를 통해 출력하면 0:0:0:0:0:0:0:1 이와 같이 출력된다. -->
		<li>사용자IP주소 : <%=request.getRemoteAddr() %>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;=> 사용자 컴퓨터의 IP Address를 반환</li>
		<li>QueryString : <%=request.getQueryString() %></li>
		<li>전송된값확인 : <%=request.getParameter("paramHan") %></li>
	</ul>
	
	
	
	
	
</body>
</html>