package com.spdrcarrental.dao;

import com.spdrcarrental.bean.Car;

public interface AdminOperationDao {
	public String addCar(Car car);
	public String deleteCar(int Carid);
	public String updateCar(int id,int price);
	public String deleteCustomer(int custid);
	public void viewCustomer();
	

}
