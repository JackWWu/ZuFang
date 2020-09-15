package com.kgc.zufang.service;


public interface SendSms {

    String send(String phoneNum, String templateCode);
}
