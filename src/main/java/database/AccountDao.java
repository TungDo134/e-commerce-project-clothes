package database;

import context.DBConntext;
import entity.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class AccountDao implements DAO<Account> {
    @Override
    public List<Account> getAll() {
        return null;
    }

    public Account getAccountByUser_Pass(String user, String pass) {
        String query = "select * from account where [user]=? and [pass]=?";
        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);

            System.out.println(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void main(String[] args) {
        AccountDao accountDao = new AccountDao();
        Account acc=accountDao.getAccountByUser_Pass("Adam","123456");
        System.out.println(acc);
    }

}
