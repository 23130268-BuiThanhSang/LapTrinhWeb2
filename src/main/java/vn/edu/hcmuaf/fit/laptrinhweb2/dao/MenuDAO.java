package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MainMenu;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.SubMenu;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MenuItem;
import java.util.ArrayList;
import java.util.List;

public class MenuDAO {
    public List<MainMenu> getAllMenus() {
        List<MainMenu> mainMenus = new ArrayList<>();

        // Ví dụ cứng hóa dữ liệu (có thể thay thế bằng truy vấn DB)
        SubMenu sub1 = new SubMenu("Đồ thể thao", List.of(
                new MenuItem("Đồ chạy bộ", "#"),
                new MenuItem("Đồ bơi", "#")
        ));

        SubMenu sub2 = new SubMenu("Thực phẩm bổ sung", List.of(
                new MenuItem("Thanh protein", "#"),
                new MenuItem("Bột protein", "#")
        ));

        MainMenu menu = new MainMenu("Sản Phẩm Mới", "#", List.of(sub1, sub2));
        mainMenus.add(menu);

        // Thêm các menu khác ...

        return mainMenus;
    }
}