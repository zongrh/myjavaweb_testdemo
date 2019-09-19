package cn.hibernate.model1;

import javax.persistence.*;

/**
 * FileName: TbEmployeeEntity
 * Author: nanzong
 * Date: 2019/8/22
 * Description:
 * History:
 */
@Entity
@Table(name = "tb_employee", schema = "db_database16", catalog = "demo")
public class TbEmployeeEntity {
    private int id;
    private String name;
    private String sex;
    private String business;
    private String address;
    private String remark;

    public TbEmployeeEntity() {
    }

    public TbEmployeeEntity(int id, String name, String sex, String business, String address, String remark) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.business = business;
        this.address = address;
        this.remark = remark;
    }

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "business")
    public String getBusiness() {
        return business;
    }

    public void setBusiness(String business) {
        this.business = business;
    }

    @Basic
    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "remark")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TbEmployeeEntity that = (TbEmployeeEntity) o;

        if (id != that.id) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;
        if (business != null ? !business.equals(that.business) : that.business != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (business != null ? business.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
