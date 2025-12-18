package com.kodewala.employee_birthday.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.kodewala.employee_birthday.entity.UserEntity;
import com.kodewala.employee_birthday.service.UserService;
@Component
public class BirthdayScheduler {
	@Autowired
    private UserService userService;

    @Scheduled(cron = "0 23 17 * * ?")
    public void showBirthdayMessages() {

        List<UserEntity> users = userService.getTodayBirthdayUsers();

        for (UserEntity user : users) {
            System.out.println("Happy Birthday, " + user.getName() );
           // userService.markWishSent(user);
        }

        System.out.println("Birthday wishes printed: " + users.size());
    }

    @Scheduled(cron = "0 0 0 * * ?")
    public void resetFlags() {
        userService.resetFlags();
        System.out.println("Birthday flags reset");
    }

}
