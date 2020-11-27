package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SinsangPreparedSelect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","seona", "seona");
			String sql=("select * from sinsang order by sabun ASC");
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			System.out.println("사번 "+"\t"+"학과 "+"\t"+"국어 "+"\t"+"영어 "+"\t"+"수학 ");
			while(rs.next()) {
				String sabun=rs.getString("sabun");
				String hakkwa=rs.getString("hakkwa");
				int kor=rs.getInt(3);
				int eng=rs.getInt(4);
				int com=rs.getInt(5);
				System.out.println(sabun+"\t"+hakkwa+"\t"+kor+"\t"+eng+"\t"+com);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(SQLException e) {}
		}

	}

}
