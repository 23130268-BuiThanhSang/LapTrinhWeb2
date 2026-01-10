package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

import java.util.List;

public class AccountDao extends BaseDao{
    public List<Account> getAll() {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM account")
                        .mapToBean(Account.class)
                        .list()
        );
    }
    public Account getByID(int id) {
        return get().withHandle(h -> h.createQuery("select * from account where id = :id")
                .bind("id", id)
                .mapToBean(Account.class).stream().findFirst().orElse(null));
    }
    public Account getByUsername(String username) {
        return get().withHandle(h -> h.createQuery("select * from account where username = :username")
                .bind("username", username)
                .mapToBean(Account.class).stream().findFirst().orElse(null));
    }

    public void update(Account acc) {
        get().useHandle(handle ->
                handle.createUpdate("""
            UPDATE account
            SET
                username = :username,
                account_status = :accountStatus,
                phone_number = :phoneNumber,
                account_email = :accountEmail,
                account_name = :accountName,
                last_login = :lastLogin
            WHERE id = :id
        """)
                        .bindBean(acc)
                        .execute()
        );
    }

}
