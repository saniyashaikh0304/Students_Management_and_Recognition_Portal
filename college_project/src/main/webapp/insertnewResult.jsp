<%@page import="java.sql.*" %>

<%
	String id = request.getParameter("id");
	String sub1 = request.getParameter("s1");
	String sub2 = request.getParameter("s2");
	String sub3 = request.getParameter("s3");
	String sub4 = request.getParameter("s4");
	String sub5 = request.getParameter("s5");
	String sub6 = request.getParameter("s6");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
		Statement st = con.createStatement();
		st.executeUpdate("insert into result values('"+id+"','"+sub1+"','"+sub2+"','"+sub3+"','"+sub4+"','"+sub5+"','"+sub6+"')");
		response.sendRedirect("result.jsp");
	}
	catch(Exception e){
		out.println("Please Enter Another Id. This Id Is Already Exist");
	}
%>