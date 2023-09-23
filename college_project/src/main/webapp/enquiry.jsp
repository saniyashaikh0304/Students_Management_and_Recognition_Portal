<%@page import="java.sql.*" %>

<%
	String name = request.getParameter("name1");
	String num = request.getParameter("num");
	String email = request.getParameter("email");
	String place = request.getParameter("place");
	String enq = request.getParameter("enq");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
		PreparedStatement ps = con.prepareStatement("insert into enquiry values(?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, num);
        ps.setString(3, email);
        ps.setString(4, place);
        ps.setString(5, enq);
        int i=ps.executeUpdate();
        System.out.println(i+"record inserted");
		response.sendRedirect("contact.html");
	}
	catch(Exception e){
		out.println(e);
	}
%>