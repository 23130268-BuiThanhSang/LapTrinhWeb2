package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.ProductCard;

import java.util.List;

public class ProductCardService {

    private final ProductDao productDao = new ProductDao();
    int pageSize = 12;

    /**
     * đây là phương thức thực hiện láy danh sách sản phẩm dưới dạng productCard
     * @param page
     * @return
     */
    public List<ProductCard> getProductCards(int page) {
        int offset = (page - 1) * pageSize;
        List<ProductCard> cards = productDao.getProductCardRaw(pageSize, offset);

        for (ProductCard card : cards) {
            applyDiscount(card);
        }

        return cards;
    }

    /**
     *  đây là phương thức thực hiện láy danh sách sản phẩm dưới dạng productCard theo loại sản phẩm
     * @param productTypeId
     * @param page
     * @return
     */
    public List<ProductCard> getProductCardsByType(int productTypeId, int page) {
        int offset = (page - 1) * pageSize;
        List<ProductCard> cards = productDao.getProductCardByType(productTypeId, pageSize, offset);

        for (ProductCard card : cards) {
            applyDiscount(card);
        }
        return cards;
    }

    /**
     * đây là phương thức thực hiện áp dụng giảm giá cho sản phẩm
     * @param card
     */
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
    /**
     * đây là phương thức thực hiện tính tổng số trang sản phẩm theo loại sản phẩm
     * @param productTypeId
     * @return
     */
    public int getTotalPagesByType(int productTypeId) {
        int total = productDao.countProductByType(productTypeId);
        return (int) Math.ceil((double) total / pageSize);
    }

    /**
     * đây là phương thức thực hiện láy danh sách sản phẩm dưới dạng productCard theo loại sản phẩm và bộ lọc
     * @param productTypeId
     * @param page
     * @param color
     * @param gender
     * @param brandId
     * @param size
     * @return
     */
    public List<ProductCard> getProductCardsByTypeAndFilter(int productTypeId, int page, String color, String gender, Integer brandId, Integer size) {
        int offset = (page - 1) * pageSize;
        return productDao.getProductCardByTypeAndFilter(productTypeId, pageSize, offset, color, gender, brandId, size);
    }

    /**
     * đây là phương thức thực hiện tính tổng số trang sản phẩm theo loại sản phẩm và bộ lọc
     * @param productTypeId
     * @param color
     * @param gender
     * @param brandId
     * @param size
     * @return
     */
    public int getTotalPagesByTypeAndFilter(int productTypeId, String color, String gender, Integer brandId, Integer size) {
        int total = productDao.countProductByTypeAndFilter(productTypeId, color, gender, brandId, size);
        return (int) Math.ceil((double) total / pageSize);
    }
}
