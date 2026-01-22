package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;

import java.util.List;

public class ProductService {
    ProductDao productDao = new ProductDao();

    public Product getProduct(int id) {
        return productDao.getProduct(id);
    }
}
