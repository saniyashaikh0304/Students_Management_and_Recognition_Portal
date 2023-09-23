<%@page import="java.sql.*"%>

<%
try {

	String id[] = request.getParameterValues("id");
	String date = request.getParameter("att_date");

	String status[] = request.getParameterValues("status");
	int stid[] = new int[id.length];

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1",
	"library", "securelib");
	if (status != null) {
		for (int i = 0; i < status.length; i++) {

	stid[i] = Integer.parseInt(status[i]);

	System.out.println("I M IN LOOP " + i);
	PreparedStatement ps = con.prepareStatement("insert into attend values(?,?,?)");
	ps.setInt(1, stid[i]);
	ps.setString(2, date);
	ps.setString(3, "P");
	int j = ps.executeUpdate();
	System.out.println(j + "record inserted");
		}
	}
	String sqltotal = "select id from Students where id not in (select id from attend where att_date='" + date + "')";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sqltotal);
	while (rs.next()) {
		PreparedStatement Ps1 = con.prepareStatement("insert into attend values(?,?,?)");
		Ps1.setInt(1, rs.getInt(1));
		Ps1.setString(2, date);
		Ps1.setString(3, "A");
		int j1 = Ps1.executeUpdate();
	}
	response.sendRedirect("attend.jsp");
} catch (Exception e) {
	out.println(e);
}
%>
