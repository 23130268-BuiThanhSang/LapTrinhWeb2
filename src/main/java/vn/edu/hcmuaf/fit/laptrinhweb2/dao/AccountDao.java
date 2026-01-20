package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

import java.util.List;

public class AccountDao extends BaseDao{
    public List<Account> getAll() {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM accounts")
                        .mapToBean(Account.class)
                        .list()
        );
    }
    public Account getByID(int id) {
        return get().withHandle(h -> h.createQuery("select * from accounts where id = :id")
                .bind("id", id)
                .mapToBean(Account.class).stream().findFirst().orElse(null));
    }
    public Account getByUsername(String username) {
        return get().withHandle(h -> h.createQuery("select * from accounts where user_name = :username")
                .bind("username", username)
                .mapToBean(Account.class).stream().findFirst().orElse(null));
    }

    public void update(Account acc) {
        get().useHandle(handle ->
                handle.createUpdate("""
            UPDATE accounts
            SET
                user_name = :username,
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

    public void add(Account acc) {
        get().useHandle(handle ->
                handle.createUpdate("""
        INSERT INTO account (
            user_name,
            account_status,
            phone_number,
            account_email,
            account_name,
            last_login,
            role
        )
        VALUES (
            :username,
            :accountStatus,
            :phoneNumber,
            :accountEmail,
            :accountName,
            :lastLogin,
            :role
        )
    """)
                        .bindBean(acc)
                        .execute()
        );
    }

}
