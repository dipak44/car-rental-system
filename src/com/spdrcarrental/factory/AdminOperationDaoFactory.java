package com.spdrcarrental.factory;

import com.spdrcarrental.dao.AdminOperationDaoImpl;
public class AdminOperationDaoFactory {
	private static AdminOperationDaoImpl admindo;

	static {
		admindo=new AdminOperationDaoImpl();
	}

	public static AdminOperationDaoImpl getAdminDaoImp() {
		return admindo;	
	}

}
