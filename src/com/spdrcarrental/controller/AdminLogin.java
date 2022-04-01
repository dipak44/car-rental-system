package com.spdrcarrental.controller;

import java.util.InputMismatchException;
import java.util.Scanner;


import com.spdrcarrental.bean.Car;
import com.spdrcarrental.bean.Customer;
import com.spdrcarrental.dao.CarDAOImpl;
import com.spdrcarrental.factory.CarDAOFactory;
import com.spdrcarrental.factory.CustomerRegistrationFactory;
import com.spdrcarrental.service.CarRentalService;



public class AdminLogin {
	MyApplication m1=new MyApplication(); //object for MyApplication to perform circular operation
	Scanner sc = new Scanner(System.in);
	int choice;
	public void adminOperation() {
		{
			CarDAOImpl myCarDao=CarDAOFactory.getCarDAOImpl();
			CarRentalService mycar1=CustomerRegistrationFactory.getRegistration();
			Car car=new Car();

			System.out.println("****************Welcome to Admin Page*******************");
			
			System.out.print("Enter username : ");
			String username=sc.nextLine();

			System.out.print("Enter Password : ");
			String pass=sc.nextLine();

			try {
				if(username.equals("admin")&&pass.equals("admin123"))
				{

					do {
						System.out.println("********************************** Admin login Successful **************************************");

						System.out.println("1.View cardetails\n2.Add new car\n3.Update car Details\n4.Delete car\n5.Delete Customer \n6.View Customer Details\n7.Go to homePage\n0.Exit");
						System.out.println("\nEnter your choice : ");
						choice=sc.nextInt();

						switch(choice)
						{
						case 1:
							System.out.println("*********** Availble Cars**********************************");
							myCarDao.showCarDetails(car);
							break;

						case 2:
							System.out.println("add newcar");
							System.out.println("Enter CarId");
							car.setCarid(sc.nextInt());
							System.out.println("Enter Car model");
							car.setCarmodel(sc.next());
							System.out.println("Enter No plate");
							car.setNo_plate(sc.next());
							System.out.println("Enter Capacity ");
							car.setCapacity(sc.nextInt());
							System.out.println("Enter milegae");
							car.setMileage(sc.nextInt());
							System.out.println("Enter price per day");
							car.setPrice_per_day(sc.nextInt());

							String msg1=mycar1.addCarService(car);
							System.out.println(msg1);
							break;

						case 3:
							System.out.println("\n******** Welcome To Car Update Page *************************");
							System.out.println("You can only update the Price Perday of Car.. ");
							System.out.println("Enter the carid");

							car.setCarid(sc.nextInt());
							int id=car.getCarid();
							System.out.println("Enter the New Price per day For Car");

							car.setPrice_per_day(sc.nextInt());
							int price=car.getPrice_per_day();

							String status1=mycar1.updateCar(id,price);
							System.out.println(status1);			
							break;

						case 4:
							System.out.println("\n********************Welcome to delete car Page******************");
							Car car1=new Car();
							System.out.println("Enter the Carid You Want to Delete");
							int id1=sc.nextInt();
							car1.setCarid(id1);
							int p=car1.getCarid();
							String status2=mycar1.deleteCar(p);
							System.out.println(status2);
							break;

						case 5:
							System.out.println("*********** Welcome to delete customer service **********************");
							Customer cust1=new Customer();
							System.out.println("Enter the Customer Id you Want to Delete.. :");
							cust1.setCustId(sc.nextInt());
							//					int id2=sc.nextInt();
							//					cust1.setCustId(id2);
							System.out.println("if you delete the customer id then all the record related to same id will also deleted.!!");
							System.out.println("press 1 to procedd !!!");
							int p2=sc.nextInt();
							if(p2==1)
							{
								String status3=mycar1.deleteCustomer(cust1.getCustId());
								System.out.println(status3);
							}
							else {
								break;
							}
						case 6:
							System.out.println();
							mycar1.viewCustomer();
							break;



						case 7:
							m1.homepage();
							break;
						case 0:
							System.exit(1);

						default:
							System.out.println("Wrong choice !!!!! Please enter the correct Choice  :");
						}//switch
					}while(choice!=0);//do-while
				}//if
				else 
				{
					System.out.println("Wrong Username Or password !!! please Enter the correct Username and Password  ");
				}
			}
			catch (InputMismatchException im) {
				System.out.println("Your Input are Not Correct .....Please Enter the valid Input");
				// TODO: handle exception
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
				// TODO: handle exception
			}
			finally {
				m1.homepage();
			}

		}

	}
}
