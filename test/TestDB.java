import java.sql.Connection;
import java.sql.DriverManager;

public class TestDB {
    public static void main(String[] args) {
        try {
            // MySQL 8.0+ JDBC URL
            String url = "jdbc:mysql://localhost:3306/Voyage?useSSL=false&serverTimezone=UTC";
            String username = "root";
            String password = "root"; // 替换为您的实际密码

            // 注册 JDBC 驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // 获取连接
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("Database connected!");
            
            // 关闭连接
            conn.close();
            System.out.println("Connection closed successfully!");
        } catch (Exception e) {
            System.out.println("Connection error!");
            e.printStackTrace();
        }
    }
}
