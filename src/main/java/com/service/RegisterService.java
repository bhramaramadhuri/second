package com.service;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RegisterDao;
import com.model.Account;
import com.model.User;

@Service
@Transactional
public class RegisterService implements RegisterServiceInt{
	@Autowired
	RegisterDao dao;
	
	
	public User save(User user)
	{
		return dao.save(user);
	}
	public User findByUserNameAndPassword(User user) {
		return dao.findByUsernameAndPassword(user.getUsername(),user.getPassword());
		
	}
	public Account save(Account acc)
	{
		return dao.save(acc);
	}
	 

		}


