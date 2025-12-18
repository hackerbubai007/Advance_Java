package com.kodewala.employee_birthday.entity;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "users")
@NamedQuery(name = "UserEntity.findTodayBirthdays", query = """
		    SELECT u FROM UserEntity u
		    WHERE MONTH(u.dateOfBirth) = :month
		    AND DAY(u.dateOfBirth) = :day
		    AND u.birthdayWishShown = false
		""")
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name;
	private LocalDate dateOfBirth;
	private boolean birthdayWishShown;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public boolean isBirthdayWishShown() {
		return birthdayWishShown;
	}

	public void setBirthdayWishShown(boolean birthdayWishShown) {
		this.birthdayWishShown = birthdayWishShown;
	}

}
