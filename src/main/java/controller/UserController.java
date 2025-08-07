package controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.dao.DataIntegrityViolationException; // 添加缺失的导入语句

@Controller
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserService userService;

    @RequestMapping("/toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/toRegister")
    public String toRegister() {
        return "register";
    }

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session) {
        boolean loginSuccess = userService.login(username, password, session);
        User user = loginSuccess ? (User) session.getAttribute("user") : null;
        if (user != null) {
         
            return "redirect:/jsp/index.jsp";
        } else {
            return "redirect:/login.jsp?error=1";
        }
    }

    @RequestMapping("/register")
    public String register(User user, String confirmPassword, Model model) {
        // 添加参数验证
        // 邮箱格式验证
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        if (user.getEmail() == null || !user.getEmail().matches(emailRegex)) {
            model.addAttribute("errorMsg", "邮箱格式不正确");
            return "register";
        }
        
        // 手机号格式验证
        String phoneRegex = "^1[3-9]\\d{9}$";
        if (user.getPhone() == null || !user.getPhone().matches(phoneRegex)) {
            model.addAttribute("errorMsg", "手机号格式不正确");
            return "register";
        }
        // 添加密码一致性验证
        if (!user.getPassword().equals(confirmPassword)) {
            model.addAttribute("errorMsg", "两次密码输入不一致");
            return "register";
        }
        // 添加参数验证
        // 移除对confirmPassword的引用
        if (user.getPassword() == null || user.getPassword().trim().isEmpty()) {
            model.addAttribute("errorMsg", "密码不能为空");
            return "register";
        }
        if (user.getUsername() == null || user.getUsername().length() < 4 || user.getUsername().length() > 20) {
            model.addAttribute("errorMsg", "用户名长度必须在4-20之间");
            return "register";
        }
        try {
            if (userService.register(user)) {
                model.addAttribute("successMsg", "注册成功，请登录");
                // 修复：添加/jsp前缀
                return "redirect:/jsp/login.jsp?success=1";
            }
            model.addAttribute("errorMsg", "注册失败，请重试");
        } catch (DataIntegrityViolationException e) {
            logger.error("数据库约束异常", e);
            model.addAttribute("errorMsg", "用户名/邮箱/手机号已存在");
        } catch (Exception e) {
            logger.error("注册发生异常", e);
            // 显示具体异常信息以便调试
            model.addAttribute("errorMsg", "系统错误: " + e.getMessage());
        }
        return "register";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // 清除整个会话
        // 修复：添加/jsp前缀
        return "redirect:/jsp/index.jsp";
    }

    @RequestMapping("/user/center")
    public String userCenter(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login.jsp?redirect=user/center";
        }
        return "user/center";
    }
}