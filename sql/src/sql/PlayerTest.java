package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class PlayerTest {

	public static void main(String[] args) {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "seona", "seona");
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select * from player");
			
			System.out.println("Player_ID"+"\t"+"이름 "+"\t"+"POSITION"+"\t"+"HEIGHT"+"\t"+"WEIGHT"); // 프린터할 문장 넣기
			System.out.println("===============================================================");
			
			int cnt=0;
			float hsum=0, wsum=0;
			
			while(rs.next()) {
				// 채우기
				
				int player_id=rs.getInt(1);
				String player_name=rs.getString(2);
				String position=rs.getString(7);
				int height=rs.getInt(12);
				int weight=rs.getInt(13);
				
				if(height>=190&&weight>=85) {
					cnt+=1;
					System.out.println(player_id+"\t"+player_name+"\t"+position+"\t"+height+"\t"+weight);
					hsum+=height;
					wsum+=weight;;
				}
				
			}
			hsum=hsum/cnt;
			wsum=wsum/cnt;
			System.out.println("===============================================================");
			System.out.println("\t"+"\t"+"\t"+"190cm이상 인원수 : "+cnt+"명");
			System.out.println("\t"+"\t"+"\t"+"190cm이상 평균 신장 : "+String.format("%.2f", hsum)+"cm");
			System.out.println("\t"+"\t"+"\t"+"85kg이상 평균 몸무게 : "+String.format("%.2f", wsum)+"kg");
			
			rs.close();
			stmt.close();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			}catch(SQLException e) {}
		}
		

	}

}