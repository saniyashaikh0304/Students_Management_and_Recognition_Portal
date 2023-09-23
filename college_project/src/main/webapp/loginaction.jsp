<%
	String user = request.getParameter("username");
	String pass = request.getParameter("password");
	
	if(user.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin10")){
		response.sendRedirect("adminhome.jsp");
	}
	else{
		response.sendRedirect("loginerror.html");
	}
%>