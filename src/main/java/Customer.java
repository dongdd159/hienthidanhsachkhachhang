import java.util.Date;

public class Customer {
    String name;
    Date dateofbirth;
    String address;
    String picture;
    public Customer(String name, Date dateofbirth, String address, String picture) {
        this.name = name;
        this.dateofbirth = dateofbirth;
        this.address = address;
        this.picture = picture;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Date getDateofbirth() {
        return dateofbirth;
    }
    public void setDateofbirth(Date dateofbirth) {
        this.dateofbirth = dateofbirth;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
