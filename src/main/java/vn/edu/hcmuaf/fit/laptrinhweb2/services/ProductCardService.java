package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.ProductCard;

import java.util.List;

public class ProductCardService {
    private final ProductDao productDao = new ProductDao();
    int pageSize = 12;
    public List<ProductCard> getProductCards(int page) {
        int offset = (page - 1) * pageSize;
        List<ProductCard> cards = productDao.getProductCardRaw(pageSize, offset);

        for (ProductCard card : cards) {
            applyDiscount(card);
        }

        return cards;
    }
    public List<ProductCard> getProductCardsByType(int productTypeId, int page) {
        int offset = (page - 1) * pageSize;
        List<ProductCard> cards = productDao.getProductCardByType(productTypeId, pageSize, offset);

        for (ProductCard card : cards) {
            applyDiscount(card);
        }
        return cards;
    }
    private void applyDiscount(ProductCard card) {
        double discount = card.getDiscountPercent();

        if (discount > 0) {
            double basePrice = card.getPrice();
            card.setOldPrice(basePrice);
            card.setPrice(basePrice * (100 - discount) / 100);
        } else {
            card.setOldPrice(null);
        }
    }
    public int getTotalPagesByType(int productTypeId) {
        int total = productDao.countProductByType(productTypeId);
        return (int) Math.ceil((double) total / pageSize);
    }
}
