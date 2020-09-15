package com.kgc.zufang.service;


import com.kgc.zufang.beans.User;



public interface UserService {


    boolean register(User user);

    //将用户名密码带入数据库 查询有没有这个用户
    User getPwdAndName(String userPhone, String userPassword);



}
