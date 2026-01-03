package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductGroupDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;

public class ProductGroupService {

    private final ProductGroupDao productGroupDao = new ProductGroupDao();

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
