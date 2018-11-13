package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDAO;
import com.dao.UserDAOImpl;
import com.model.User;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAOImpl userDAOImpl;

	public UserDAOImpl getUserDAOImpl() {
		return userDAOImpl;
	}

	public void setUserDAOImpl(UserDAOImpl userDAOImpl) {
		this.userDAOImpl = userDAOImpl;
	}

	@Override
	public User getUserById(Integer userId) {
		User user = userDAOImpl.getUserById(userId);
		return null;
	}

	@Override
	public String saveUser(User user) {
		// TODO Auto-generated method stub
		userDAOImpl.saveUser(user);
		return "Success";
	}

	@Override
	public List<User> findAllUsers() {
		List<User> users = userDAOImpl.findAllUsers();
		return null;
	}

	@Override
	public String deleteUserById(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateUserById(User user) {
		// TODO Auto-generated method stub
		return null;
	}

}
