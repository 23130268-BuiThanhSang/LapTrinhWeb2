package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MainMenu;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.SubMenu;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MenuItem;
import java.util.ArrayList;
import java.util.List;

public class MenuDAO {
    public List<MainMenu> getAllMenusInMenuDao() {
        List<MainMenu> mainMenus = new ArrayList<>();

        // Menu "Sản Phẩm Mới"
        SubMenu spm_theThao = new SubMenu("Đồ thể thao", List.of(
                new MenuItem("Đồ chạy bộ", "#"),
                new MenuItem("Đồ bơi", "#")
        ));
        SubMenu spm_tpboSung = new SubMenu("Thực phẩm bổ sung", List.of(
                new MenuItem("Thanh protein & đồ ăn nhẹ", "#"),
                new MenuItem("Bột protein thuần chay", "#"),
                new MenuItem("Kẽm bổ sung", "#")
        ));
        SubMenu spm_dungCu = new SubMenu("Dụng cụ tập gym", List.of(
                new MenuItem("Bánh xe tập cơ bụng", "#"),
                new MenuItem("Dây kháng lực", "#")
        ));
        MainMenu sanPhamMoi = new MainMenu("Sản Phẩm Mới", "#", List.of(
                spm_theThao, spm_tpboSung, spm_dungCu
        ));
        mainMenus.add(sanPhamMoi);

        // Menu "Danh Mục"
        SubMenu danhMucSP = new SubMenu("Danh Mục Sản Phẩm", List.of(
                new MenuItem("Dụng Cụ Tập Gym", "#"),
                new MenuItem("Đồ Thể Thao", "#"),
                new MenuItem("Thực Phẩm Bổ Sung", "#"),
                new MenuItem("Phụ Kiện", "#")
        ));
        MainMenu danhMuc = new MainMenu("Danh Mục", "#", List.of(danhMucSP));
        mainMenus.add(danhMuc);

        // Menu "Nhãn Hàng"
        SubMenu nh_dothethao = new SubMenu("Đồ thể thao", List.of(
                new MenuItem("ADIDAS", "#"),
                new MenuItem("NIKE", "#"),
                new MenuItem("HOKA", "#"),
                new MenuItem("PUMA", "#"),
                new MenuItem("CROCS", "#")
        ));
        SubMenu nh_dungcu = new SubMenu("Dụng cụ tập gym", List.of(
                new MenuItem("Eleiko", "#"),
                new MenuItem("NordicTrack", "#"),
                new MenuItem("BowFlex", "#"),
                new MenuItem("Precor", "#")
        ));
        MainMenu nhanHang = new MainMenu("Nhãn Hàng", "#", List.of(
                nh_dothethao, nh_dungcu
        ));
        mainMenus.add(nhanHang);

        // Menu "Ưu Đãi"
        SubMenu ud_dothethao = new SubMenu("Đồ thể thao", List.of(
                new MenuItem("Đồ leo núi", "#"),
                new MenuItem("Đồ bơi", "#"),
                new MenuItem("Đồ chạy bộ", "#")
        ));
        SubMenu ud_tpboSung = new SubMenu("Thực phẩm bổ sung", List.of(
                new MenuItem("Whey", "#"),
                new MenuItem("Bột protein thuần chay", "#"),
                new MenuItem("Kẽm bổ sung", "#")
        ));
        SubMenu ud_dungcu = new SubMenu("Dụng cụ tập gym", List.of(
                new MenuItem("Suspension Trainer", "#"),
                new MenuItem("Barbell + đĩa tạ", "#"),
                new MenuItem("Kettlebell", "#")
        ));
        MainMenu uuDai = new MainMenu("Ưu Đãi", "#", List.of(
                ud_dothethao, ud_tpboSung, ud_dungcu
        ));
        mainMenus.add(uuDai);

        // Bạn có thể thêm các MainMenu khác nếu cần, ví dụ:
        // mainMenus.add(new MainMenu("Liên hệ", "#", new ArrayList<>()));

        return mainMenus;
    }
}