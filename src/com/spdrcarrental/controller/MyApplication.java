package com.spdrcarrental.controller;

import java.util.InputMismatchException;
import java.util.Scanner;
import com.spdrcarrental.bean.Customer;


public class MyApplication {
	public void homepage(){
		Scanner sc=new Scanner(System.in);
		AdminLogin m=new AdminLogin();
		CustomerReg cr1=new CustomerReg();
		CustLogin cl=new CustLogin();
		Customer cust=new Customer();
		//		Car car1=new Car();
		// TODO Auto-generated method stub
		int ch;


		System.out.println("***********************************Welcome To SPDR Car Rental System******************************************");


		do
		{

			System.out.println("\n1.user login");
			System.out.println("2.registration");
			System.out.println("3.admin login\n0.Exit");

			System.out.println("\nENter your choice");

			ch=sc.nextInt();
			switch(ch)
			{
			case 1:
				cl.custlogin(cust);
				break;

			case 2:

				String message=cr1.customerReg();
				System.out.println(message);
				break;

			case 3:

				m.adminOperation();
				break;

			case 0:
				System.exit(0);
				break;

			default:
				System.out.println("You have entered the wrong choice !!!!!!!");

			}//outer switch
		}while(ch!=0);
	}

	public static void main(String[] args)throws Exception {
		try {
			MyApplication myap=new MyApplication();
			try (Scanner sc = new Scanner(System.in)) {
				int ch;
				System.out.println("1.Enter to Car Rental System ");
				ch=sc.nextInt();
				switch(ch) {
				case 1:
					myap.homepage();
					break;
					//				case 2:
					//					System.exit(0);
					//					break;
				default:
					System.out.println("You have Entered the wrong Choice ");

				}
			}
		} catch (InputMismatchException e) {
			// TODO Auto-generated catch block
			System.out.println("Wrong Input...Please Enter The correct Input");
			//e.printStackTrace();
		}
		catch (Exception e1) {
			// TODO: handle exception
			System.out.println(e1.getMessage());
		}



		//int op=sc.nextInt();
	}//main
}//class end






