package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductGroup;

import java.util.List;

public class ProductGroupDao extends BaseDao {
    public void addGroup(
            GroupType type,
            String name,
            String thumbnailUrl,
            String imageUrl,
            int displayOrder
    ) {
        String sql = getInsertSql(type);

        get().useHandle(handle ->
                handle.createUpdate(sql)
                        .bind("name", name)
                        .bind("thumbnail_url", thumbnailUrl)
                        .bind("image_url", imageUrl)
                        .bind("display_order", displayOrder)
                        .execute()
        );
    }
    public List<ProductGroup> getGroups(GroupType type) {
        String sql = getSelectSql(type);

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .mapToBean(ProductGroup.class)
                        .list()
        );
    }

    private String getInsertSql(GroupType type) {
        switch (type) {
            case BRAND:
                return "INSERT INTO brands (brand_name, thumbnail_url, image_url, display_order) " +
                        "VALUES (:name, :thumbnail_url, :image_url, :display_order)";
            case COLLECTION:
                return "INSERT INTO collections (collection_name, thumbnail_url, image_url, display_order) " +
                        "VALUES (:name, :thumbnail_url, :image_url, :display_order)";
            case SPORT:
                return "INSERT INTO sports (sport_name, thumbnail_url, image_url, display_order) " +
                        "VALUES (:name, :thumbnail_url, :image_url, :display_order)";
            default:
                throw new IllegalArgumentException("Invalid group type");
        }
    }

    private String getSelectSql(GroupType type) {
        switch (type) {
            case BRAND:
                return "SELECT brand_id AS id, brand_name AS name, thumbnail_url, image_url, display_order " +
                        "FROM brands ORDER BY display_order";
            case COLLECTION:
                return "SELECT collection_id AS id, collection_name AS name, thumbnail_url, image_url, display_order " +
                        "FROM collections ORDER BY display_order";
            case SPORT:
                return "SELECT sport_id AS id, sport_name AS name, thumbnail_url, image_url, display_order " +
                        "FROM sports ORDER BY display_order";
            default:
                throw new IllegalArgumentException("Invalid group type");
        }
    }
}
