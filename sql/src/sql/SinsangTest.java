package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SinsangTest {

	public static void main(String[] args) {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","seona", "seona");
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select * from sinsang");
			
			System.out.println("사번 "+"\t"+"학과 "+"\t"+"국어 "+"\t"+"영어 "+"\t"+"수학 "+"\t"+"평균 "+"\t"+"판정 ");
			
			while(rs.next()) {
				int sum=0;
				double avg=0.0;
				String bigo="";
				String bunho=rs.getString(1);
				String dept=rs.getString(2);
				int ekor=rs.getInt(3);
				int eeng=rs.getInt(4);
				int ecom=rs.getInt(5);
				sum=ekor+eeng+ecom;
				avg=sum/3.0;
				
				if(avg>=90.0)
					bigo="pass";
				System.out.println(bunho+"\t"+dept.toUpperCase()+"\t"+ekor+"\t"+eeng+"\t"+ecom+"\t"+Math.floor(avg)+"\t"+bigo);
			}
			rs.close();
			stmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(SQLException e) {}
		}
	}

}
