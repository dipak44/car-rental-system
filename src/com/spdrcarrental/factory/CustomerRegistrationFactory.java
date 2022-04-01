package com.spdrcarrental.factory;

import com.spdrcarrental.service.CarRentalServiceImpl;

public class CustomerRegistrationFactory {

	private static CarRentalServiceImpl crs;

	static {
		crs=new CarRentalServiceImpl();
	}

	public static CarRentalServiceImpl getRegistration() {
		return crs;	
	}

}
