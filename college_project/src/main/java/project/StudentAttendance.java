package project;

import javax.servlet.annotation.WebServlet;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/StudentAttendance")
public class StudentAttendance extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			try {
				HttpSession session = request.getSession();
				int attendance_insert = 0;
				Connection con = DatabaseConnection.getConnection();
				Statement st = (Statement) con.createStatement();
					ResultSet rs = ((java.sql.Statement) st).executeQuery("select * from students where status=1");
					while (rs.next()) {
						Statement statement = (Statement) con.createStatement();
						attendance_insert = ((java.sql.Statement) statement).executeUpdate("insert into student_attendance values('"
								+ rs.getString(1) + "','" + request.getParameter(rs.getString(1)) + "',SYSDATE())");
						((Connection) statement).close();
					}
					if (attendance_insert > 0) {
						String message = "Attendance taken succesfully";
						session.setAttribute("attendance-taken", message);
						response.sendRedirect("attendance.jsp");
					} else {
						response.sendRedirect("employee-details.jsp");
					}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}
