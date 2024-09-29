package database;

import context.DBConntext;
import entity.Category;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements DAO<Product> {


    @Override
    public List<Product> getAll() {
        List<Product> list = new ArrayList<Product>();
        String query = "select * from Product";

        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }

            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getProductByCateID(String cid) {
        List<Product> list = new ArrayList<Product>();
        String query = "select * from Product where cateID=?";

        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, cid);

            System.out.println(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }

            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> searchProductByName(String name) {
        List<Product> list = new ArrayList<Product>();
        String query = "select * from product where name like ?";

        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");

            System.out.println(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }

            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> get3NewestProduct() {
        List<Product> list = new ArrayList<Product>();
        String query = "select TOP 3 * from product order by id desc";

        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);

            System.out.println(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }

            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Product getProductByID(String pid) {
        String query = "select * from Product where id=?";

        try {
            Connection conn = DBConntext.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, pid);

            System.out.println(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
            }
            DBConntext.closeConnection(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ProductDao productDao = new ProductDao();
        List<Product> product = productDao.get3NewestProduct();
        System.out.println(product.get(0));
    }

}
