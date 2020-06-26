package action;

import PO.Student;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class StudentAction extends ActionSupport implements SessionAware {
    private Student stu;
    private Map<String, Object> session;
    List<Student> stuList;
    List<String> deptList;

    public Map<String, Object> getSession() {
        return session;
    }

    public List<String> getDeptList() {
        return deptList;
    }

    public void setDeptList(List<String> deptList) {
        this.deptList = deptList;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    public List<Student> getStuList() {
        return stuList;
    }

    public void setStuList(List<Student> stuList) {
        this.stuList = stuList;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }
//    查询所有学生信息
    public String findAll(){
        String hql = "from Student";
        System.out.println(hql);

        Session hbnSession = HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList = hbnSession.createQuery(hql).list();
        session.put("stuList", this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList != null){
            return "success";
        }else
            return "error";
    }

    //添加学生信息
    public String insert(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.save(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    //修改学生信息
    public String update(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.update(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    //删除学生信息
    public String delete(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println("delete id="+stu.getSid());
            hbnSession.delete(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    //根据姓名查询
    public String findByName(){
        String hql = "from Student where name like ?0";
//        System.out.println(hql);
        Session hbnSession = HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList = hbnSession.createQuery(hql).setParameter(0,"%" + stu.getName() + "%").list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList !=null){
            return "success";
        }else
            return "error";
    }

    //学生登录
    public String student_login1(){
        System.out.println("111111111111111111111111111111111");
        Session hbnSession = HbnUtils.getSession();
        System.out.println(stu.getSid());
        hbnSession.beginTransaction();
        String hql = "from Student where sid=?0 and password=?1";
        stu = (Student)hbnSession.createQuery(hql).setParameter(0, stu.getSid()).setParameter(1, stu.getPassword()).uniqueResult();
        System.out.println(stu);
        hbnSession.getTransaction().commit();
        if (stu != null){
            session.put("studentInfo",stu);
            System.out.println("student's name is:"+stu.getName());
            return "success";
        }else
            return "login";
    }

    //学生修改密码
    public String updatePwd(){
        try{
            Student tmp = (Student)session.get("studentInfo");
            System.out.println(tmp.toString());
            tmp.setPassword(stu.getPassword());
            stu = tmp;
            update();
            student_login1();
            return "success";
        }catch (Exception e){
            e.printStackTrace();
            return "login";
        }
    }
}
