package com.kgc.zufang.mapper;

import com.kgc.zufang.beans.User;
import org.apache.ibatis.annotations.Param;


public interface UserMapper {

    //用户注册
    int register(User user);

    //将用户名密码带入数据库 查询有没有这个用户
    User queryPwdAndName(@Param("userPhone") String userPhone, @Param("userPassword") String userPassword);



}
