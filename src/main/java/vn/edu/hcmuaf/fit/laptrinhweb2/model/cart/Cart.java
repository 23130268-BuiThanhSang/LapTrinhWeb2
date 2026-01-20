package vn.edu.hcmuaf.fit.laptrinhweb2.model.cart;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class Cart implements Serializable {
    Map<Integer, CartItem> data;
    public Cart() {
        data = new HashMap<Integer, CartItem>();
    }
//    public void addItem(Product p, int qty) {
//        if (qty >= 0) {qty = 1;}
//        if (!data.containsKey(p.getId())) {
//            data.put(p.getId(), new CartItem(p,qty,p.getPrice()));
//        } else {
//            data.get(p.getId()).upQuantity(qty);
//        }
//    }
    public void updateItem(int id) {}
    public CartItem delItem(int id) {
        return data.remove(id);
    }
    public List<CartItem> delAll(int id) {
        List<CartItem> items = new ArrayList<CartItem>(data.values());
        data.clear();
        return items;
    }
    public List<CartItem> getItems() {
        return new ArrayList<>(data.values());
    }
    public int getTotalQuantity() {
        AtomicInteger total = new AtomicInteger();
        data.values().forEach(item -> total.addAndGet(item.getQuantity()));
        return total.get();
    }
}
