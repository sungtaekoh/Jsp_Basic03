<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<hr>
<!-- 
	session : 서버에서 관리하는 값
	cookie : 클라이언트가 관리하는 값
 -->
	<h1>CARE_LAB</h1>
	<H3>어서오세요~!</H3>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr){
			out.print("name : "+c.getName()+" : ");
			out.print("value : "+c.getValue()+"<br>");
			if(c.getName().equals("testCookie")){
				bool = true;
			}
		}
		/*
		int[] arr = {1,2,3,4,5};
		for(int a : arr){
			out.print(a+"<br>");
		}
		*/
		/*
		for(int i=0; i<cookieArr.length ; ++i){
			out.print("name : "+cookieArr[i].getName()+" : ");
			out.print("value : "+cookieArr[i].getValue()+"<br>");
		}
		*/
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie);
	%>
	<%if(bool == false){ %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300,height=200,top=500,left=500")
	</script>
	<%} %>
</body>
</html>








