package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductGroupDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductGroup;

import java.util.List;

public class ProductGroupService {

    private final ProductGroupDao productGroupDao = new ProductGroupDao();
    public List<ProductGroup> getGroups(GroupType type) {
        if (type == null) {
            throw new IllegalArgumentException("GroupType cannot be null");
        }
        return productGroupDao.getGroups(type);
    }
    public ProductGroup getGroup(GroupType type, int id) {
        return productGroupDao.getProductGroup(type,id);
    }
    public void addGroup(
            GroupType groupType,
            String groupName,
            String thumbnailUrl,
            String imageUrl,
            Integer displayOrder
    ) {

        if (groupType == null) {
            throw new IllegalArgumentException("Invalid group type");
        }

        if (groupName == null || groupName.trim().isEmpty()) {
            throw new IllegalArgumentException("Group name is required");
        }

        int finalDisplayOrder = (displayOrder == null || displayOrder < 0)
                ? 1
                : displayOrder;

        productGroupDao.addGroup(
                groupType,
                groupName.trim(),
                thumbnailUrl,
                imageUrl,
                finalDisplayOrder
        );
    }
}
