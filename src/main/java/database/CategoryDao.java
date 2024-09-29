package database;

import context.DBConntext;
import entity.Category;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements DAO<Category> {


    @Override
    public List<Category> getAll() {
        List<Category> list = new ArrayList<Category>();
        String query = "select * from category ";

        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);

            System.out.println(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)
                ));
            }

            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


}
