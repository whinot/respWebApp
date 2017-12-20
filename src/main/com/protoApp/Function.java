package com.protoApp;

public class Function {
	
	public  String managerFunction = "hasAnyRole('MANAGER','ADMIN')";
	public  String userFunction    = "hasAnyRole('USER','ADMIN')";
	
	public Function(){
		System.out.println(userFunction);
	}
	
	public  String getManagerFunction() {
		return managerFunction;
	}

	public  String getUserFunction() {
		return userFunction;
	}



}
