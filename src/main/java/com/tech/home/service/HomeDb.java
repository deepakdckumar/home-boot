package com.tech.home.service;

import org.springframework.data.repository.CrudRepository;

public interface HomeDb extends CrudRepository<Home, Integer> {
    boolean deleteByAddress(String address);
}
