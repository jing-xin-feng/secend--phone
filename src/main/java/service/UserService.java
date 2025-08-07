package service;

import model.User;

import javax.servlet.http.HttpSession;

//登录还是注册
public interface UserService {

    boolean login(String username, String password, HttpSession session);

    boolean register(User user);
}