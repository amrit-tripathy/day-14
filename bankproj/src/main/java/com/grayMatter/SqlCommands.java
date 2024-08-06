package com.grayMatter;

public class SqlCommands {
	//create
	public static String createUser ="insert into bankUser values(?,?,?,?,?)";
	public static String retrieveUser = "select * from bankUser where username";
	//incomplete
	
	//pin
	public static String retrievePin = "select pin from accounts where username=?";
	public static String updatePinquery = "update accounts set pin=? where username=? ";
	
}
