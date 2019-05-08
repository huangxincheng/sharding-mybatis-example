package com.husen.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.transaction.jta.JtaAutoConfiguration;

/***
 @Author:MrHuang
 @Date: 2019/5/8 12:57
 @DESC: TODO
 @VERSION: 1.0
 ***/
@SpringBootApplication(exclude = JtaAutoConfiguration.class)
@MapperScan("com.husen.example.**.mapper")
public class ShardingExampleApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShardingExampleApplication.class, args);
    }
}
