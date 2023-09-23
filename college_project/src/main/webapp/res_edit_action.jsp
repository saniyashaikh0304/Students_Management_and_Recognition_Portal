<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String sub1 = request.getParameter("s1");
	String sub2 = request.getParameter("s2");
	String sub3 = request.getParameter("s3");
	String sub4 = request.getParameter("s4");
	String sub5 = request.getParameter("s5");
	String sub6 = request.getParameter("s6");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1",
	"library", "securelib");
	PreparedStatement ps = con.prepareStatement("update result set s1=?, s2=?, s3=?, s4=?, s5=?, s6=? where id=?");
	ps.setString(1, sub1);
	ps.setString(2, sub2);
	ps.setString(3, sub3);
	ps.setString(4, sub4);
	ps.setString(5, sub5);
	ps.setString(6, sub6);
	ps.setString(7, id);
	int i = ps.executeUpdate();
	System.out.println(i + "record updated");
	response.sendRedirect("resultall.jsp");
} catch (Exception e) {
	out.println(e);
}
%>