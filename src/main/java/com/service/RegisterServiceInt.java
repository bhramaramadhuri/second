package com.service;



import com.model.Account;
import com.model.User;

public interface RegisterServiceInt {
	
	public User save(User user);
	public Account save(Account acc);
	public User findByUserNameAndPassword(User user);

}
