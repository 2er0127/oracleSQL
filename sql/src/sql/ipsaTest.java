package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ipsaTest {

	public static void main(String[] args) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "silsub","silsub");

		String sql="insert into ipsa(sabun, irum, addr, buseo, chulsin, jumsu) values(?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, "2016611"); // 사번을 db로 삽입 
		pstmt.setString(2, "추성훈");// 이름 
		pstmt.setString(3, "서울 강남구 도곡동 123"); // 주소 
		pstmt.setString(4, "연예부"); // 부서 
		pstmt.setString(5, "동경"); // 출신 
		pstmt.setInt(6, 70);// 점수 
		
		int cnt=pstmt.executeUpdate(); // 데이터에 대한 갱신을 실행 후, 1개의 cnt를 증가 
		
		System.out.println("레코드"+cnt+"개가 삽입되었습니다.");
		
	
		
		pstmt.close();
		conn.close();
				
		
	} //try closing
	
	catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		try {
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}catch(SQLException e) {
	}

}
}}

