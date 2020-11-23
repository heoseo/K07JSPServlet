<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>지시자 부분의 불필요한 공백 제거</h2>
	브라우저에서 ctrl+u(페이지 소스 보기)하면 코드 맨위에 공백이 몇줄 생기는걸 볼 수 있다. <br /><br />
	
	<p2><strong>* trimDirectiveWhitespaces="true"</strong><br />
		페이지 지시자 상단의 불필요한 공백을 제거한다. <br />
		비동기 통신에서 주로 사용하는 JSON을 통해 통신할 떄 상단의 <br />
		공백이 오류를 발생시키는데 이때 이를 처리 하기 위해 사용된다. <br />		
	</p2>
</body>
</html>