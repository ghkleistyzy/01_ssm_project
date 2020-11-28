package org.ssm.bean;

import java.sql.Date;

public class Product {
    private Integer pid;
    private String pname;
    private String pfirsttype;
    private String psecondtype;
    private Double pprice;
    private int pnum;
    private String pcontent;
    private String ppicloc;
    private int ppublisherid;
    private Date pdate;

    public Product() {
    }

    public Product(Integer pid, String pname, String pfirsttype, String psecondtype, Double pprice, int pnum, String pcontent, String ppicloc, int ppublisherid, Date pdate) {
        this.pid = pid;
        this.pname = pname;
        this.pfirsttype = pfirsttype;
        this.psecondtype = psecondtype;
        this.pprice = pprice;
        this.pnum = pnum;
        this.pcontent = pcontent;
        this.ppicloc = ppicloc;
        this.ppublisherid = ppublisherid;
        this.pdate = pdate;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPfirsttype() {
        return pfirsttype;
    }

    public void setPfirsttype(String pfirsttype) {
        this.pfirsttype = pfirsttype;
    }

    public String getPsecondtype() {
        return psecondtype;
    }

    public void setPsecondtype(String psecondtype) {
        this.psecondtype = psecondtype;
    }

    public Double getPprice() {
        return pprice;
    }

    public void setPprice(Double pprice) {
        this.pprice = pprice;
    }

    public int getPnum() {
        return pnum;
    }

    public void setPnum(int pnum) {
        this.pnum = pnum;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public String getPpicloc() {
        return ppicloc;
    }

    public void setPpicloc(String ppicloc) {
        this.ppicloc = ppicloc;
    }

    public int getPpublisherid() {
        return ppublisherid;
    }

    public void setPpublisherid(int ppublisherid) {
        this.ppublisherid = ppublisherid;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pfirsttype='" + pfirsttype + '\'' +
                ", psecondtype='" + psecondtype + '\'' +
                ", pprice=" + pprice +
                ", pnum=" + pnum +
                ", pcontent='" + pcontent + '\'' +
                ", ppicloc='" + ppicloc + '\'' +
                ", ppublisherid=" + ppublisherid +
                ", pdate=" + pdate +
                '}';
    }
}
