package com.husen.example;

import com.husen.example.shardingTables.service.ErrorService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/***
 @Author:MrHuang
 @Date: 2019/5/13 13:54
 @DESC: TODO
 @VERSION: 1.0
 ***/
@RestController
@RequestMapping("/api/sharding")
public class ShardingApi {

    @RequestMapping
    public String index() {
        String result = "hello sharding";
        return result;
    }

    @RequestMapping("/stack")
    public String stack() {
        new ErrorService().stackError();
        return "stack";
    }

    @RequestMapping("/head")
    public String head() {
        new ErrorService().headError();
        return "head";
    }
}
