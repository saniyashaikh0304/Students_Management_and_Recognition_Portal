<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email_id");
	String pass = request.getParameter("password");
	String num = request.getParameter("num");
	String addr = request.getParameter("address");
	String gender = request.getParameter("gender");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library", "securelib");
		PreparedStatement ps = con.prepareStatement("update students set name=?, email_id=?, password=?, num=?, address=?, gender=? where id=?");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        ps.setString(4, num);
        ps.setString(5, addr);
        ps.setString(6, gender);
        ps.setString(7, id);
        int i=ps.executeUpdate();
        System.out.println(i+"record inserted");
		response.sendRedirect("view.jsp");
	}
	catch(Exception e){
		out.println(e);
	}
%>