package model;

public class User {
    private Integer id;
    private String username;
    private String email;
    private String phone;
    private String password;
    // 删除confirmPassword字段

    // 全参构造方法
    public User(Integer id, String username, String email, String phone, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    // 无参构造方法
    public User() {}

    // Getter和Setter
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    // 删除confirmPassword的getter和setter
    // public String getConfirmPassword() { return confirmPassword; }
    // public void setConfirmPassword(String confirmPassword) { this.confirmPassword = confirmPassword; }
}