
<!--  1. Directive tag (지시자) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫번째</title>
</head>
<body>

	<%-- 2. Comment tag (jsp주석) --%>
	
	<%-- 3. Declaration tag(선언부) --%>
	<%! private static final String DEFAULT_NAME = "Guest";  %>
	
	<%-- 4. 스크립틀릿 tag --%>
	<%
		// 자바코드를 그대로 작성 할 수 있다.
		String name = request.getParameter("name");
		if(name == null){
			name = DEFAULT_NAME;
			
			
		}
		// 복잡함 //out.println("<h1>Hello, " + name + "</h1>">
	%>
	<%-- 5. Expression tag(표현식) --%>

	<h1>Hello, <%=name %></h1>	
	
</body>
</html>