package com.kgc.zufang.controller;

import com.kgc.zufang.beans.User;
import com.kgc.zufang.service.SendSms;
import com.kgc.zufang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;


@Controller
public class UserController {

    @Autowired
    private SendSms sendSms;

    @Autowired
    private UserService userService;

    //跳网登录页面
    @RequestMapping(value = "/toLogin")
    public String toLogin() {
        return "login";
    }

    //跳往注册页面
    @RequestMapping(value = "/toRegist")
    public String toRegist() {
        return "regist";
    }

    //发送短信功能
    @ResponseBody
    @RequestMapping(value = "/send")
    public String send(String phoneNum, String templateCode) {
        System.out.println(phoneNum + "：" + templateCode);
        // 把code传到前端页面，然后在jQuery里面先把code赋值
        String code = sendSms.send(phoneNum,templateCode);
        System.out.println("code是" + code);

        return code;
    }

    //用户注册  新增用户
    @ResponseBody
    @RequestMapping(value = "/register")
    public boolean register(User user) {

        boolean regFlag = userService.register(user);
        System.out.println("regFlag：" + regFlag);
        return regFlag;
    }


    //登录操作 查询有没有这个用户， 如果登录成功跳转首页
    @ResponseBody
    @RequestMapping("toHomePage")
    public boolean showLogin(Map<String,Object>map, HttpServletRequest request, HttpSession session) {

        //获取用户名和密码
        String userPhone = request.getParameter("userPhone");
        String userPassword = request.getParameter("pwd");

        //定义标识
        boolean flag = false;
        //将用户名密码带入数据库 查询有没有这个用户
        User user = userService.getPwdAndName(userPhone, userPassword);
        //获取用户session 放入作用域中
        session.setAttribute("user",user);

        if (user != null) {
            flag = true;

        }

        return flag;
    }

    //跳转首页
    @RequestMapping("HomePage")
    public String HomePage(){
        return "shouye";
    }

    //用户退出操作
    @RequestMapping("toOut")
    public  String toOut(HttpSession session){
        session.removeAttribute("user");

        return "login";
    }



}
