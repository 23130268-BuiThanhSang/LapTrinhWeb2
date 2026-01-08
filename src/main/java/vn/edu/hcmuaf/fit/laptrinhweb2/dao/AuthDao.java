package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

public class AuthDao extends BaseDao{
    public Account getUserByUsername(String username) {
        return get().withHandle(h -> h.createQuery("select * from account where username = :username")
                .bind("username", username)
                .mapToBean(Account.class).stream().findFirst().orElse(null));
    }
}
