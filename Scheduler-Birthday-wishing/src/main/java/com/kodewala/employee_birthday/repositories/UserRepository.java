package com.kodewala.employee_birthday.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kodewala.employee_birthday.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
	
	
	List<UserEntity> findTodayBirthdays(int month, int day);
	

}
