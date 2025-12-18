package com.kodewala.employee_birthday.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kodewala.employee_birthday.bean.UserBean;
import com.kodewala.employee_birthday.entity.UserEntity;
import com.kodewala.employee_birthday.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public void addUser(UserBean bean) {
		UserEntity entity = new UserEntity();
		entity.setName(bean.getName());
		entity.setDateOfBirth(bean.getDateOfBirth());
		entity.setBirthdayWishShown(false);
		userRepository.save(entity);
	}

	public List<UserEntity> getTodayBirthdayUsers() {
		LocalDate today = LocalDate.now();
		return userRepository.findTodayBirthdays(today.getMonthValue(), today.getDayOfMonth());
	}

	public void markWishSent(UserEntity user) {
		user.setBirthdayWishShown(true);
		userRepository.save(user);
	}

	public void resetFlags() {
		List<UserEntity> result = userRepository.findAll();

		result.forEach(user -> {
			user.setBirthdayWishShown(false);
		});
		userRepository.saveAll(result);
	}

}
