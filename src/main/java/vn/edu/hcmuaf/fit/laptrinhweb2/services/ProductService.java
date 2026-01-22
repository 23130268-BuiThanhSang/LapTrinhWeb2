package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductVariantDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductVariantImageDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    ProductDao productDao = new ProductDao();

    public Product getProduct(int id) {
        return productDao.getProduct(id);
    }

    public boolean addProduct(Product product) {
        ProductVariantDao productVariantDao = new ProductVariantDao();
        ProductVariantImageDao productVariantImageDao = new ProductVariantImageDao();

            int product_id = productDao.insertProduct(product);
            List<ProductVariant> variants = product.getVariants();
            for (ProductVariant variant : variants) {
                System.out.println("insert variant trigger");
                variant.setProduct_id(product_id);
                int variant_id = productVariantDao.addProductVariant(variant);
                System.out.println(variant_id);

                List<ProductVariantImage> images = variant.getImages();
                for (ProductVariantImage productVariantImage : images) {
                    System.out.println("insert image trigger");
                    productVariantImage.setVariantId(variant_id);
                    productVariantImageDao.insert(productVariantImage);
                }
            }
        return true;
    }
}
