package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.HotDeal;

import java.util.List;

public class HotDealDao extends BaseDao {
    /**
     * thực hiện phương thức lấy HotDeal có display_order cao nhất nhằm phục vụ main Hotdeal ơn trang chủ
     * phương thức quan trọng
     * @return
     */
    public HotDeal getHotDealWithHighestDisplayOrder() {
        String query = "SELECT id, name, thumbnail_image_url, main_image_url, display_order, discount_per " +
                "FROM hot_deal " +
                "ORDER BY display_order DESC LIMIT 1";

        return get().withHandle(handle -> {
            return handle.createQuery(query)
                    .map((rs, ctx) -> {
                        return new HotDeal(
                                rs.getInt("id"),
                                rs.getString("name"),
                                rs.getString("thumbnail_image_url"),
                                rs.getString("main_image_url"),
                                rs.getInt("display_order"),
                                rs.getDouble("discount_per")
                        );
                    })
                    .findFirst()
                    .orElse(null);
        });
    }

    /**
     * thực hiện phương thức lấy về 2 hotdeal phụ có display_order cao thứ 2 và 3 nhằm phục vụ cho trang chủ
     * phương thức quan trọng
     * @return
     */
    public List<HotDeal> getSubHotDeal() {
        String query = "SELECT id, name, thumbnail_image_url, main_image_url, display_order, discount_per " +
                "FROM hot_deal " +
                "ORDER BY display_order DESC LIMIT 2 OFFSET 1";

        return get().withHandle(handle -> {
            return handle.createQuery(query)
                    .map((rs, ctx) -> {
                        return new HotDeal(
                                rs.getInt("id"),
                                rs.getString("name"),
                                rs.getString("thumbnail_image_url"),
                                rs.getString("main_image_url"),
                                rs.getInt("display_order"),
                                rs.getDouble("discount_per")
                        );
                    })
                    .list();
        });
    }




}
