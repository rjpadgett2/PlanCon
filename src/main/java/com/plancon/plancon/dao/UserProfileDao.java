package com.plancon.plancon.dao;

import java.util.List;

import com.plancon.plancon.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
