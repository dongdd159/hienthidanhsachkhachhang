<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 5/24/2021
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   class Customer {
    String name;
    String dateofbirth;
    String address;
    String picture;
    public Customer(String name, String dateofbirth, String address, String picture) {
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
    public String getDateofbirth() {
      return dateofbirth;
    }
    public void setDateofbirth(String dateofbirth) {
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
    @Override
    public String toString() {
      return "Customer{" +
              "name='" + name + '\'' +
              ", dateofbirth=" + dateofbirth +
              ", address='" + address + '\'' +
              ", picture='" + picture + '\'' +
              '}';
    }
  }
    Customer customer1 = new Customer("Mai Văn Hoàn","1983/08/20","Hà Nội","photo-1444703686981-a3abbc4d4fe3.jpg");
    Customer customer2 = new Customer("Nguyễn Văn Nam","1983/08/21","Bắc Giang","photo-1444703686981-a3abbc4d4fe3.jpg");
    Customer customer3 = new Customer("Nguyễn Thái Hòa","1983/08/22","Nam Định","photo-1444703686981-a3abbc4d4fe3.jpg");
    Customer customer4 = new Customer("Trần Đăng Khoa","1983/08/17","Hà Tây","photo-1444703686981-a3abbc4d4fe3.jpg");
    Customer customer5 = new Customer("Nguyễn Đình Thi","1983/08/19","Hà Nội","photo-1444703686981-a3abbc4d4fe3.jpg");
    List<Customer> customerList = new ArrayList<>();
    customerList.add(customer1);
    customerList.add(customer2);
    customerList.add(customer3);
    customerList.add(customer4);
    customerList.add(customer5);
%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Danh sách khách hàng</h1>
  <table>
      <th>
      <td>Tên</td>
      <td>Ngày sinh</td>
      <td>Địa chỉ</td>
      <td>Ảnh</td>
      </th>
          <%
              for (Customer customer: customerList) {
                  out.println("<tr>");
                  out.println("<td>"+customer.getName()+"</td>");
                  out.println("<td>"+customer.getDateofbirth()+"</td>");
                  out.println("<td>"+customer.getAddress()+"</td>");
                  out.println("<td><img src="+customer.getPicture()+ "/></td>");
                  out.println("/<tr>");
              }
          %>
  </table>
  </body>
</html>
