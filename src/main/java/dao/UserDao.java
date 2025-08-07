package dao;

import model.User;

public interface UserDao {
    // 根据用户名查询用户
    User findByUsername(String username);
    // 根据邮箱查询用户
    User findByEmail(String email);
    // 根据手机号查询用户
    User findByPhone(String phone);
    // 保存用户
    void save(User user);
}