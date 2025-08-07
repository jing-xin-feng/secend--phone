package service.impl;

import dao.UserDao;
import model.User;
import org.springframework.dao.DataIntegrityViolationException;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import javax.servlet.http.HttpSession;

@Service // 确保注解在类定义正上方
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    // 删除setUserDao方法

    // 删除不匹配的login方法，只保留接口中定义的带session参数的方法
    @Override
    public boolean login(String username, String password, HttpSession session) {
        // 根据用户名查询用户
        User user = userDao.findByUsername(username);
        if (user == null) {
            return false; // 用户不存在
        }
        
        // 密码加密验证
        String encryptedPassword = DigestUtils.md5DigestAsHex(password.getBytes());
        if (!encryptedPassword.equals(user.getPassword())) {
            return false; // 密码错误
        }
        
        // 登录成功，存储用户信息到session
        session.setAttribute("user", user);
        return true;
    }

    @Override
    public boolean register(User user) {
        try {
            // 检查用户名是否已存在
            if (userDao.findByUsername(user.getUsername()) != null) {
                return false; // 用户名已存在
            }
            
            // 检查邮箱是否已存在
            if (userDao.findByEmail(user.getEmail()) != null) {
                return false; // 邮箱已存在
            }
            
            // 检查手机号是否已存在
            if (userDao.findByPhone(user.getPhone()) != null) {
                return false; // 手机号已存在
            }
            
            // 密码加密处理
            String encryptedPassword = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
            user.setPassword(encryptedPassword);
            // 保存用户
            userDao.save(user);
            return true;
        } catch (DataIntegrityViolationException e) {
            throw new DataIntegrityViolationException("用户名/邮箱/手机号已存在", e);
        } catch (Exception e) {
            // 保留原始异常信息
            throw new RuntimeException("注册失败: " + e.getMessage(), e);
        }
    }
}