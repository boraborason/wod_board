 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB Connection Test</title>
</head>
<body>
<%
String dbURL = "jdbc:mysql://localhost:3306/wod?characterEncoding=UTF-8&serverTimezone=UTC";
String dbID = "root";
String dbPassword = "qhfkths0446";

Connection conn;
Statement stmt;

try {
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
 stmt = conn.createStatement();
 conn.close();
 out.println("MySql jdbc test: connect ok!!");
} catch(Exception e) {
 out.println(e.getMessage());
}
%>
</body>
</html>
