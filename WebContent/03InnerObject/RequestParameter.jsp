<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%
// 한글 깨짐 방지
request.setCharacterEncoding("UTF-8");

/*	* getParameter(String name)
		: 전송방식에 상관없이 getParameter()로 폼값을 받을 수 있다.
		: 만약 값이 입력되지 않았다면 길이기 0인 String객체를 반환하고
			파라미터명이 틀린 경우에는 null을 반환한다.*/
String id = request.getParameter("id");

String name = request.getParameter("name");
if(!(name==null || name.equals("")) ){
	out.println("이름 : " + name);
}
else{

	out.println("<script>");
	out.println("	alert('이름을 입력하세요');");
	out.println("history.back();");
	out.println("</script>");
}

// 위 else문을 다음과 같이 바꿀 수 있다.
// else{
// % >
// 	<script>
// 		alert('이름을 입력하세요');
// 		history.back();
// 	</script>
// < %
// }



/* 	* radio
		: 항목은 여러개이나, 선택가능한 항목이 1개이기 때문에
		getParameter()를 통해 폼값을 받을 수 있다. */
String sexStr = request.getParameter("sex");

/* 	* checkbox
		: 여러개 항목에 대해 선택이 가능하므로 getParameterValues()를 사용한다.
		항목 중 체크된 것만 서버로 전송되고, 파라미터명이 틀리거나 값이 전송되지 않으면 null을 반환한다. 
		: 단, 항목이 하나면 배열말고 String으로 getParmemter()를 통해 받을 수 있음.*/
String[] favo = request.getParameterValues("favorite");
String favStr = "";

if(favo != null){
	for(int i = 0; i < favo.length; i++){
		if(i==favo.length-1){
			favStr += favo[i];
		}
		else{
			favStr += favo[i] + ", ";
		}
	}
}

/* textarea를 통해 입력받은 엔터키(줄바꿈기호 \r\n)가 포함되어 있다.
이를 웹브라우저에 출력할 때는 특수기호를 <br>로 변환후 출력해야 한다. */
String self_intro = request.getParameter("self_intro").replace("\r\n", "<br>");
%>


<ul>
	<li>이름 : <%=name %></li>
	<li>아이디 : <%=id %></li>
	<li>성별 : <%=sexStr %></li>
	<li>관심사항 : <%=favStr %></li>
	<li>자기소개 : <%=self_intro %></li>
</ul>











<%
/*
getParameterNames() 
	: 폼값의 이름을 한꺼번에 받을 떄 사용하는 메소드로 반환타입은 Enumertaion형이다. 
hasMoreElements()
	: 객체에 남은 폼값이 있는지 검사한다.
nextElement()
	: 받은 폼값 중 다음 폼의 이름을 반환한다.
*/
Enumeration names = request.getParameterNames();
while(names.hasMoreElements()){
	// 폼의 name속성을 하나씩 읽어서 STring형으로 반환한다.
	String paramName = (String)names.nextElement();
	System.out.println("파라미터명 : " + paramName);
	
	if(paramName.equals("sex") || paramName.equals("favorite")){
		// checkbox와 radio는 "getParameterValues()"를 통해 읽어온다.
		System.out.println("getParameterValues()로 읽기");
		out.println("파라미터명을 getParameterValues()로 얻어서 값 출력함<br/>");
	}
	else{
		// 나머지 text와 textares는 "getParameter()"로 읽어온다.
		System.out.println("getParameter()로 읽기");
		out.println("파라미터명을 메소드로 얻어서 값 출력 : ");
		out.println(request.getParameter(paramName) + "<br/>");
	}
}
%>


</body>
</html>