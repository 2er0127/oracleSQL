package sql;

import java.sql.*;

public class test01 {

	public static void main(String[] args) {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "2019100991","seona");
			
		stmt=conn.createStatement();
		String str="select * from elec_code";
		rs=stmt.executeQuery(str);
		
		System.out.println("CUSTCODE\tIRUM\t\tELEC_CODE\tQTY");
		
		while(rs.next()) {
			int custcode=rs.getInt(1);
			String irum=rs.getString(2);
			int eleccode=rs.getInt(3);
			int qty=rs.getInt(4);
			
			System.out.println(custcode+"\t\t"+irum+eleccode+"\t"+qty);
		}
		rs.close();
		stmt.close();
		conn.close();

	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(conn!=null)
				conn.close();
			if(stmt!=null)
				stmt.close();
		} catch(SQLException e) {}
	}
	}

}
