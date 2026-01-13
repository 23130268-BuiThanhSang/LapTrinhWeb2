package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.PasswordUtils;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.AuthDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

public class AuthService {
    AuthDao authDao = new AuthDao();

    public Account login(String username, String pass) {
        // mã hóa mật khẩu người dùng nhập vào
        String hashedInput = PasswordUtils.md5(pass);

        Account acc = authDao.getUserByUsername(username);
        if (acc != null && acc.getPassword().equals(hashedInput)) {
            acc.setPassword(null); // không cho lộ password trong session
            return acc;
        } else  {
            return null;
        }
    }
}
