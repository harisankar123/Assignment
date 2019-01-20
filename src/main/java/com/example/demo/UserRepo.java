package com.example.demo;

import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User,Integer> {
   
	
	public User findById(int id);
	public User findByEmailAndPassword(String s1,String s2);
	public User findByEmail(String n);
}
