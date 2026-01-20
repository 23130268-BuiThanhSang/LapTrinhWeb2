package vn.edu.hcmuaf.fit.laptrinhweb2.Product;

import java.util.List;

public class ProductService {
    ProductDao productDao = new ProductDao();
    public List<Product> getAllProduct() {
        return productDao.getAllProduct();
    }

    public Product getProduct(int id) {
        return productDao.getProduct(id);
    }
}
