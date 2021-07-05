package com.bs23.travelagency.service;

import com.bs23.travelagency.entity.User;

public interface UserService {
    void save(User user);
    User findByEmail(String email);
}
