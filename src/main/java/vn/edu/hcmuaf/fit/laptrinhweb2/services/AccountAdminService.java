package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.AccountDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.OrderDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.AccountAdminView;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;

import java.util.ArrayList;
import java.util.List;

public class AccountAdminService {

    private final AccountDao accountDao = new AccountDao();
    private final OrderDao orderDao = new OrderDao();

    public List<AccountAdminView> getAll() {
        List<Account> accounts = accountDao.getAll();
        List<AccountAdminView> result = new ArrayList<>();
        for (Account acc : accounts) {
            List<Order> orders = orderDao.getByUserId(acc.getId());
            double totalSpent = 0;
            for (Order o : orders) {
                totalSpent += o.calculateTotal();
            }
            result.add(new AccountAdminView(acc, totalSpent));
        }
        return result;
    }

    public AccountAdminView getById(int id) {
        Account acc = accountDao.getByID(id);
        if (acc == null) {
            return null;
        }

        List<Order> orders = orderDao.getByUserId(acc.getId());

        double totalSpent = 0;
        for (Order o : orders) {
            totalSpent += o.calculateTotal();
        }

        return new AccountAdminView(acc, totalSpent);
    }

    public AccountAdminView getByUsername(String username) {
        Account acc = accountDao.getByUsername(username);
        if (acc == null) {
            return null;
        }

        List<Order> orders = orderDao.getByUserId(acc.getId());

        double totalSpent = 0;
        for (Order o : orders) {
            totalSpent += o.calculateTotal();
        }

        return new AccountAdminView(acc, totalSpent);
    }

}