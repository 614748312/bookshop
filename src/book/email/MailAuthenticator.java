package book.email;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 * 服务器邮箱
 */
public class MailAuthenticator extends Authenticator{

    /**
     * 用户名
     */
    private String username;
    /**
     * 登录密码
     */
    private String password;
    /**
     * 继承Authenticator类需重写此方法
     */
    @Override
    protected PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(username,password);
    }

    public MailAuthenticator(){

    }
    public MailAuthenticator(String username, String password){
        this.username = username;
        this.password = password;
    }
    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }
}

