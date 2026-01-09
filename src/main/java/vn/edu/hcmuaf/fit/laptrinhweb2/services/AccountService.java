package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.AccountDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

import java.util.List;

public class AccountService {
    private AccountDao accountDao = new AccountDao();
    public List<Account> getAllAccounts() {
        return accountDao.getAll();
    }

    public Account getAccountByID(int id) {
        return accountDao.getByID(id);
    }

    public Account getAccountByUsername(String username) {
        return accountDao.getByUsername(username);
    }
}
