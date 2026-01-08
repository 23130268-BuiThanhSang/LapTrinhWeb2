package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.AuthDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

public class AuthService {
    AuthDao authDao = new AuthDao();
    public Account login(String username, String pass) {
        Account acc= authDao.getUserByUsername(username);
        if(acc != null && acc.getPassword().equals(pass)) {
            acc.setPassword(null);
            return acc;
        } else  {
            return null;
        }
    }
}
