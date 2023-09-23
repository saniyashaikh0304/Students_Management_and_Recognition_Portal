<%@page import="java.sql.*" %>

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
		PreparedStatement ps = con.prepareStatement("insert into students values(?,?,?,?,?,?,?)");
        ps.setString(1, id);
        ps.setString(2, name);
        ps.setString(3, email);
        ps.setString(4, pass);
        ps.setString(5, num);
        ps.setString(6, addr);
        ps.setString(7, gender);
        int i=ps.executeUpdate();
        System.out.println(i+"record inserted");
		response.sendRedirect("adminhome.jsp");
	}
	catch(Exception e){
		out.println("Please Enter Another Id. This Id Is Already Exist");
	}
%>