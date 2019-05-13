package com.husen.example.shardingTables.service;

import java.util.ArrayList;

/***
 @Author:MrHuang
 @Date: 2019/5/13 21:33
 @DESC: TODO
 @VERSION: 1.0
 ***/
public class ErrorService {

    /**
     * 模拟栈溢出
     * java.lang.StackOverflowError
     */
    public void stackError() {
        new ErrorService().stackError();
    }

    /**
     * 模拟堆溢出
     * java.lang.OutOfMemoryError: Java heap space
     */
    public void headError() {
        ArrayList list = new ArrayList();
        while (true) {
            list.add(new ErrorService());
        }
    }
}
