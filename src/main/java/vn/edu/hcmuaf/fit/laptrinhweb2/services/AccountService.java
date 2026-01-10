package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.AccountDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

import java.util.List;

public class AccountService {
    private AccountDao accountDao = new AccountDao();

    public void update(Account acc) {
        Account baseAcc = accountDao.getByID(acc.getId());
        if (baseAcc == null) {
            throw new IllegalArgumentException("aaaaaa");
        }

        // allowed updates
        baseAcc.setUsername(acc.getUsername());
        baseAcc.setAccountName(acc.getAccountName());
        baseAcc.setPhoneNumber(acc.getPhoneNumber());
        baseAcc.setAccountEmail(acc.getAccountEmail());
        baseAcc.setAccountStatus(acc.getAccountStatus());

        accountDao.update(baseAcc);
    }

    public List<Account> getAllAccounts() {
        return accountDao.getAll();
    }

    public Account getAccountByID(int id) {
        return accountDao.getByID(id);
    }

    public Account getAccountByUsername(String username) {
        return accountDao.getByUsername(username);
    }

    public void add(Account acc) {
        accountDao.add(acc);
    }
}
