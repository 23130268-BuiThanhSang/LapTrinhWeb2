package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.PreparedBatch;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao extends BaseDao{
    static Map<Integer,Product> productMap = new HashMap<Integer,Product>();
//    static {
//        productMap.put(1,new Product(1,"Áo Thun Nam Venum Ufc Pro Line Black Jersey - Black - Đen",300000,"https://supersports.com.vn/cdn/shop/files/VNMUFC-00059-001-1.jpg?v=1704354123&width=1600"));
//        productMap.put(2,new Product(2,"Áo Thun Nam Venum Ufc Pro Line Black Jersey - White - Trắng",300000,"https://supersports.com.vn/cdn/shop/files/VNMUFC-00059-100-1.jpg?v=1704354123&width=1600"));
//        productMap.put(3,new Product(3,"Áo Thun Nam Venum Ufc Pro Line Black Jersey - Grey - Xám",300000,"https://supersports.com.vn/cdn/shop/files/VNMUFC-00059-030-1.jpg?v=1704354123&width=1600"));
//        productMap.put(4,new Product(4,"Áo Thun Nam Venum Ufc Pro Line Black Jersey - Blue - Xanh Dương",300000,"https://supersports.com.vn/cdn/shop/files/VNMUFC-00059-400-1.jpg?v=1704354123&width=1600"));
//    }
    public List<Product> getAllProduct() {
        return get().withHandle(h -> h.createQuery("select * from product").mapToBean(Product.class).list());
    }

    public Product getProduct(int id) {
        return get().withHandle(handle -> {
            return handle.createQuery("select * from product where id = :id").bind("id", id).mapToBean(Product.class).stream().findFirst().orElse(null);
        });
    }

    public void insertProduct(List<Product> products) {
        Jdbi jdbi= get();
        jdbi.useHandle(h-> {
//                                  createUpdate neu luu 1 product
            PreparedBatch batch = h.prepareBatch("insert into product values (:id,:name,:price,:img)");
            products.forEach(product -> {
                batch.bindBean(product).add();
            });
            batch.execute();
        });
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        dao.getAllProduct().forEach(System.out::println);
    }

}
