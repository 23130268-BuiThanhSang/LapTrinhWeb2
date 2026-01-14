package vn.edu.hcmuaf.fit.laptrinhweb2.Auth;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.BaseDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

public class AuthDao extends BaseDao {

    // dùng cho đăng nhập
    public Account getUserByUsername(String username) {
        return get().withHandle(h ->
                h.createQuery("select * from account where username = :username")
                        .bind("username", username)
                        .mapToBean(Account.class)
                        .stream()
                        .findFirst()
                        .orElse(null)
        );
    }

    // dùng cho đăng ký: kiểm tra username đã tồn tại chưa
    public boolean existsByUsername(String username) {
        Integer count = get().withHandle(h ->
                h.createQuery("select count(*) from account where username = :username")
                        .bind("username", username)
                        .mapTo(Integer.class)
                        .one()
        );
        return count != null && count > 0;
    }

    // dùng cho đăng ký: thêm account mới
    public void insert(Account acc) {
        get().withHandle(h ->
                h.createUpdate("insert into account " +
                                "(username, password, account_status, phone_number, account_email) " +
                                "values (:username, :password, :status, :phone, :email)")
                        .bind("username", acc.getUsername())
                        .bind("password", acc.getPassword())
                        .bind("status", acc.getAccountStatus())
                        .bind("phone", acc.getPhoneNumber())
                        .bind("email", acc.getAccountEmail())
                        .execute()
        );
    }

    public Account getUserByUsernameAndEmail(String username, String email) {
        return get().withHandle(h ->
                h.createQuery("select * from account where username = :username and account_email = :email")
                        .bind("username", username)
                        .bind("email", email)
                        .mapToBean(Account.class)
                        .stream().findFirst().orElse(null)
        );
    }

    public void updatePasswordByUsernameAndEmail(String username, String email, String newHashedPassword) {
        get().withHandle(h ->
                h.createUpdate("update account set password = :password where username = :username and account_email = :email")
                        .bind("password", newHashedPassword)
                        .bind("username", username)
                        .bind("email", email)
                        .execute()
        );
    }
}
