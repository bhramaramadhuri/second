package com.dao;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;

import com.model.Account;
import com.model.User;

@Repository
public interface RegisterDao extends CrudRepository<User, Integer>{
	
	public User save(User user);
	public Account save(Account acc);
	public User findByUsernameAndPassword(String username, String password);
	}

