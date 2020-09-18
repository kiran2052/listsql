import java.sql.*;



public class connectionTest {
    public static void main(String[] args) {

        try {


            String connectionURL = "jdbc:mysql://localhost:3306/Employee?useSSL=false";
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }


            Connection myConn = DriverManager.getConnection(connectionURL, "root", "Kiran2052");

            Statement myStat = myConn.createStatement();
            ResultSet myRs = myStat.executeQuery("SELECT * from new_table");
            while (myRs.next()) {

                System.out.println(myRs.getInt(1) + "," + myRs.getString("name") + "," + myRs.getString("address"));
            }

        } catch (
                SQLException e) {
            e.printStackTrace();
        }


    }
}
