package book.email;

/**
 * 邮件对象
 */
public class Mail {

    /**
     * 邮件标题
     */
    private String subject;
    /**
     * 邮件内容
     */
    private String content;

    public Mail(){

    }

    public Mail(String subject, String content) {
        this.subject = subject;
        this.content = content;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}