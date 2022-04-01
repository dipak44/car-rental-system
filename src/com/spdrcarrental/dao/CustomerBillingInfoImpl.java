package com.spdrcarrental.dao;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import com.spdrcarrental.bean.Customer;
import com.spdrcarrental.factory.ConnectionFactory;

public class CustomerBillingInfoImpl implements CustomerBillingInfo {
	Scanner sc = new Scanner(System.in); 

	@Override
	public void showBilling(Customer cust) {
		int rid=0;
		try {
			Connection con=ConnectionFactory.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from rentdetails where custid="+cust.getCustId()+"");
			ResultSet rs2=ps.executeQuery();

			System.out.println("your order id's are :");
			while(rs2.next()!=false) {
				rid=rs2.getInt(1);
				System.out.println(rid);

			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			System.out.println("Your latest order id :"+rid);
		}
		try {

			Connection con=ConnectionFactory.getConnection();
			PreparedStatement ps1=con.prepareStatement("select b.billno,c.custid,c.cname,c.phoneno,cc.carid,cc.carmodel,r.rday,r.amount from customer c inner join rentdetails r on c.custid=r.custid inner join cardetails cc on cc.carid=r.carid inner join billinginfo b on cc.carid=b.carid where r.rid=?;");
			System.out.println("Enter id of which billing u want to see : ");
			ps1.setInt(1, sc.nextInt());

			ResultSet rs1=ps1.executeQuery();
			System.out.println("BillNo\t\tCustomerId\tYourName\t  PhoneNo\t\tCarId\t\tCarModel\t   BookingDay's\t\tAmount");
			while(rs1.next())
			{
				System.out.println(rs1.getInt(1)+"\t\t"+rs1.getInt(2)+"\t\t"+rs1.getString(3)+"\t\t"+rs1.getString(4)+"\t\t"+rs1.getInt(5)+"\t\t"+rs1.getString(6)+"\t\t\t  "+rs1.getInt(7)+"\t\t  "+rs1.getDouble(8)+"\t");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
}


