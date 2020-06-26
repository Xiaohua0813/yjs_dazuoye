package action;

import PO.admin;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class AdminAction extends ActionSupport implements SessionAware {
    private String username;
    private String password;
    private  Map<String, Object> session;
    private Session hbnSession;
//    private List<admin> list;


    public Map<String, Object> getSession() {
        return session;
    }

    public Session getHbnSession() {
        return hbnSession;
    }

    public void setHbnSession(Session hbnSession) {
        this.hbnSession = hbnSession;
    }

//    public List<admin> getList() {
//        return list;
//    }
//
//    public void setList(List<admin> list) {
//        this.list = list;
//    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    @Override
    public String execute() throws Exception{
        String hql = "from admin where username=?0 and password=?1";
        System.out.println(hql);
        //HQL查询验证身份
        hbnSession = HbnUtils.getSession();
        System.out.println(this.username);

        hbnSession.beginTransaction();
        admin ad = (admin)hbnSession.createQuery(hql).setParameter(0, this.getUsername()).setParameter(1, this.getPassword()).uniqueResult();
        System.out.println(ad);
        hbnSession.getTransaction().commit();
        if (ad != null){
            session.put("adminUsername",ad.getUsername());
            System.out.println("adminUsername is :"+ad.getUsername());
            return "success";
        } else
            return "login";
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
