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
                        .bind("thumbnail_image_url", thumbnailUrl)
                        .bind("main_image_url", imageUrl)
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
                return "INSERT INTO brand (name, thumbnail_image_url, main_image_url, display_order) " +
                        "VALUES (:name, :thumbnail_image_url, :main_image_url, :display_order)";
            case COLLECTION:
                return "INSERT INTO collection (name, thumbnail_image_url, main_image_url, display_order) " +
                        "VALUES (:name, :thumbnail_image_url, :main_image_url, :display_order)";
            case SPORT:
                return "INSERT INTO sport (name, thumbnail_image_url, main_image_url, display_order) " +
                        "VALUES (:name, :thumbnail_image_url, :main_image_url, :display_order)";
            default:
                throw new IllegalArgumentException("Invalid group type");
        }
    }

    private String getSelectSql(GroupType type) {
        switch (type) {
            case BRAND:
                return "SELECT id, name, thumbnail_image_url, main_image_url, display_order " +
                        "FROM brand ORDER BY display_order";
            case COLLECTION:
                return "SELECT id, name, thumbnail_image_url, main_image_url, display_order " +
                        "FROM collection ORDER BY display_order";
            case SPORT:
                return "SELECT id, name, thumbnail_image_url, main_image_url, display_order " +
                        "FROM sport ORDER BY display_order";
            default:
                throw new IllegalArgumentException("Invalid group type");
        }
    }

    public ProductGroup getProductGroup(GroupType type, int id) {
        switch (type) {
            case BRAND:
                return get().withHandle(h ->
                        h.createQuery("SELECT id, name, thumbnail_image_url, main_image_url, display_order FROM brand WHERE id = :id")
                                .bind("id", id)
                                .mapToBean(ProductGroup.class)
                                .findOne()
                                .orElse(null)
                );
            case COLLECTION:
                return get().withHandle(h ->
                        h.createQuery("SELECT id, name, thumbnail_image_url, main_image_url, display_order FROM collection WHERE id = :id")
                                .bind("id", id)
                                .mapToBean(ProductGroup.class)
                                .findOne()
                                .orElse(null)
                );
            case SPORT:
                return get().withHandle(h ->
                        h.createQuery("SELECT id, name, thumbnail_image_url, main_image_url, display_order FROM sport WHERE id = :id")
                                .bind("id", id)
                                .mapToBean(ProductGroup.class)
                                .findOne()
                                .orElse(null)
                );
            default:
                throw new IllegalArgumentException("Invalid group type");
        }
    }
}
