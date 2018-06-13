package book.email.util;

import java.util.List;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import book.email.Mail;
import book.email.MailAuthenticator;

/**
 * 邮件发送器：可单发，可群发
 */
public class MailSender {
    /**
     * 发送邮件的Properties文件
     */
    private final transient Properties props = System.getProperties();
    /**
     * 服务器邮箱登录验证
     */
    private transient MailAuthenticator mailAuthenticator;
    /**
     * 邮箱Session
     */
    private transient Session session;
    /**
     * 初始化邮箱发送器
     * 
     * @param mailServiceUrl
     *          服务器邮箱地址
     * @param username
     *          服务器邮箱用户名
     * @param password
     *          服务器邮箱登录密码
     */
    public MailSender(final String mailServiceUrl,final String username, final String password){
        init(mailServiceUrl, username, password);
    }
    /**
     * 初始化邮箱发送器
     * 
     * @param username
     *          服务器邮箱用户名
     * @param password
     *          服务器邮箱登录密码
     */
    public MailSender(final String username, final String password){
        //通过邮箱地址解析smtp服务器，对大多数邮箱都管用
        final String mailServiceUrl = "smtp." + username.split("@")[1]; 
        init(mailServiceUrl, username, password);
    }
    /**
     * 初始化操作
     * 
     * @param mailServiceUrl
     *          服务器邮箱地址
     * @param username
     *          服务器邮箱用户名
     * @param password
     *          服务器邮箱登录密码
     */
    public void init(String mailServiceUrl, String username, String password){
        //初始化props
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", mailServiceUrl);
        props.put("mail.smtp.starttls.enable", "true");
        //服务器邮箱验证
        mailAuthenticator = new MailAuthenticator(username, password);
        //创建session，想当于邮箱登录
        session = Session.getInstance(props, mailAuthenticator);
    }
    /**
     * 发送邮件
     * 
     * @param recipient
     *          收信人邮箱地址
     * @param subject
     *          邮件标题
     * @param content
     *          邮件内容
     * @throws AddressException
     * @throws MessagingException
     */
    public void send(String recipient, String subject, String content) throws AddressException, MessagingException{
        //创建mime类型邮件
        final MimeMessage msg = new MimeMessage(session);
        //设置发信人
        msg.setFrom(new InternetAddress(mailAuthenticator.getUsername()));
        //设置收信人
        msg.setRecipient(RecipientType.TO, new InternetAddress(recipient));
        //设置邮件标题
        msg.setSubject(subject);
        //设置邮件内容
        msg.setContent(content, "text/html;charset=utf-8");
        //发送邮件
        Transport.send(msg);
    }
    /**
     * 群发邮件
     * 
     * @param recipients
     *          收信人们的邮箱地址
     * @param subject
     *          邮件标题
     * @param content
     *          邮件内容
     * @throws AddressException
     * @throws MessagingException
     */
    public void send(List<String> recipients, String subject, String content) throws AddressException, MessagingException{
        //创建mime类型邮件
        final MimeMessage msg = new MimeMessage(session);
        //设置发信人
        msg.setFrom(new InternetAddress(mailAuthenticator.getUsername()));
        //设置收信人们
        int num = recipients.size();
        InternetAddress[] addresses = new InternetAddress[num];
        for (int i = 0; i < num; i++) {
            addresses[i] = new InternetAddress(recipients.get(i));
        }
        msg.setRecipients(RecipientType.TO, addresses);
        //设置邮件标题
        msg.setSubject(subject);
        //设置邮件内容
        msg.setContent(content, "text/html;charset=utf-8");
        Transport.send(msg);
    }
    /**
     * 发送邮件
     * 
     * @param recipient
     *          收信人邮箱地址
     * @param mail
     *          邮件对象
     * @throws AddressException
     * @throws MessagingException
     * @throws
     */
    public void send(String recipient, Mail mail) throws AddressException, MessagingException{
        this.send(recipient, mail.getSubject(), mail.getContent());
    }
    /**
     * 群发邮件
     * 
     * @param recipients
     *          收信人们的邮箱地址
     * @param mail
     *          邮件对象
     * @throws AddressException
     * @throws MessagingException
     * @throws
     */
    public void send(List<String> recipients, Mail mail) throws AddressException, MessagingException{
        this.send(recipients, mail.getSubject(), mail.getContent());
    }
}
