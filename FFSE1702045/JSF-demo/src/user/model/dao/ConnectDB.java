package user.model.dao;
import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectDB {
    public static void main(String[] args) throws Exception{
    	ConnectDB obj_DB_connection=new ConnectDB();
        System.out.println(obj_DB_connection.get_connection());
    }
    public Connection get_connection() throws Exception{
        Connection connection=null;
        try {
        Class.forName("com.mysql.jdbc.Driver");
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","admin","123123");
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("thiss");
        }
        return connection;
    }
}