package com.plancon.plancon.service;

import java.util.List;

import com.plancon.plancon.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
