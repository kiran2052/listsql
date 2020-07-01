<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 6/17/20
  Time: 12:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ItSutra</title>
</head>
<body>

<h1>Welcome to MySql</h1>
<%

    try {




        String connectionURL = "jdbc:mysql://localhost:3306/Employee";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }





        Connection myConn = DriverManager.getConnection(connectionURL, "admin", "Houston123");
        Statement myStat=myConn.createStatement();
        ResultSet myRs =myStat.executeQuery("SELECT * from new_table");
        while (myRs.next()){

            System.out.println(myRs.getInt(1)  +  ","+myRs.getString("name") + "," +myRs.getString("address"));
        }

    }catch (SQLException e){
        e.printStackTrace();
    }




%>




</body>
</html>
