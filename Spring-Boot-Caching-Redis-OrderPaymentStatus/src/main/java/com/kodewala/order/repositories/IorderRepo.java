package com.kodewala.order.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kodewala.order.entity.OrderEntity;

@Repository
public interface IorderRepo extends JpaRepository<OrderEntity, Integer> {

}
