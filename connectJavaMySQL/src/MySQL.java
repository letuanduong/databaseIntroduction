import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.mysql.jdbc.Statement;

public class MySQL {

    private Connection connection = null;

    public MySQL(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }
        String url = "jdbc:mysql://127.0.0.1:3306/test";
        try {
            connection = DriverManager.getConnection(url, "root", "khoaninh");
            System.out.print("Kết nối thành công");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet view(String table, String [] cols){
        ResultSet resultSet = null;
        try {
            Statement statement = (Statement) connection.createStatement();
            String sql = "SELECT ";
            if(cols == null || cols.length == 0){
                sql += "* FROM";
            }else{
                for(int i = 0 ; i < cols.length; i++){
                    sql += "`" + cols[i] + "`, ";
                }
                sql += ";";
                sql = sql.replace("`, ;", "` FROM");
            }
            sql += " " + table;
            resultSet = statement.executeQuery(sql);
        } catch (SQLException e) {
            return null;
        }
        return resultSet;
    }

    public boolean insert(String table, Vector vecto){
        try {
            Statement statement =  (Statement) connection.createStatement();

            String sql = "insert into " + table + " values(";
            for(int i = 0; i < vecto.size(); i++){
                sql += "'" + vecto.elementAt(i).toString() + "',";
            }
            sql += ")";
            sql = sql.replace("',)", "')");

            if(statement.executeUpdate(sql) >= 1){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean update(String table, String[] cols, Vector value, String[] colsWhere, Vector valueWhere){
        try {
            Statement statement = (Statement) connection.createStatement();
            String sql = "update " + table + " set ";
            for(int i = 0 ; i < cols.length; i++){
                sql += "`" + cols[i] + "` = '" + value.elementAt(i) + "', ";
            }
            sql += ";";
            sql = sql.replace("', ;", "' WHERE ");

            for(int i = 0 ; i < colsWhere.length; i++){
                sql += "`" + colsWhere[i] + "` = '" + valueWhere.elementAt(i) + "' and ";
            }
            sql += ";";
            sql = sql.replace("' and ;", "'");
            System.out.print(sql);
            statement.executeUpdate(sql);

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(String table, String[] colsWhere, Vector valueWhere){
        try {
            Statement statement = (Statement) connection.createStatement();
            String sql = "DELETE FROM" + table;

            if( colsWhere.length > 0){
                sql += " WHERE ";
                for(int i = 0 ; i < colsWhere.length; i++){
                    sql += "`" + colsWhere[i] + "` = '" + valueWhere.elementAt(i) + "' and ";
                }
                sql += ";";
                sql = sql.replace("' and ;", "'");
            }

            statement.executeUpdate(sql);

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

}