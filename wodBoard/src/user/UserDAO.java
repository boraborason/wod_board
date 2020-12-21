package user;
//데이터 베이스 접근객체(실제적으로 db에서 정보를 불러오거나 넣을때 사용)

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public UserDAO () {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/wod?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "qhfkths0446";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID , dbPassword );
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("user접속오류");
		}
	}
	
	
	public int login(String userID, String userPW) {
		String SQL = "SELECT userPW FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPW)) {
					return 1;  
				} else {
					return 0;  
				}
			}
			return -1;  
	
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("login시 db 접속안됨");
		}
		return -2;  
	}
	
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPW());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserEmail());
			return pstmt.executeUpdate();  
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("join메서드 확인");
		}
		return -1; 
	}
}
