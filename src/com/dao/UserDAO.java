package com.dao;

import java.util.List;

import com.model.User;

public interface UserDAO {
	
	public User getUserById(Integer userId);
	public String saveUser(User user);
    List<User> findAllUsers();
    public String deleteUserById(Integer userId);
    public String updateUserById(User user);
	
}
