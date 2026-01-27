package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.HotDealDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.HotDeal;

import java.util.List;

public class HotDealService {
    private HotDealDao hotDealDao= new HotDealDao();

    /**
     * Lấy HotDeal có displayOrder cao nhất phục vụ main hotdeal trên trang chủ
     * @return
     */
    public HotDeal getHotDealTheMostDisplayOrder(){
        return hotDealDao.getHotDealWithHighestDisplayOrder();
    }

    /**
     * Lấy 2 HotDeal phụ có displayOrder cao thứ 2 và 3 phục vụ cho trang chủ
     * @return
     */
    public List<HotDeal> getSubHotdeal(){
        return hotDealDao.getSubHotDeal();
    }
}
