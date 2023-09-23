<%@page import="java.sql.*" %>

<%
	String id = request.getParameter("id");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
		PreparedStatement ps = con.prepareStatement("delete from students where id=?");
        ps.setString(1, id);
        int i=ps.executeUpdate();
        System.out.println(i+"record deleted");
		response.sendRedirect("view.jsp");
	}
	catch(Exception e){
		out.println(e);
	}
%>