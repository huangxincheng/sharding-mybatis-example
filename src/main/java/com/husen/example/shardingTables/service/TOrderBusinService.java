package com.husen.example.shardingTables.service;

import com.husen.example.shardingTables.entity.TOrder;
import com.husen.example.shardingTables.entity.TOrderItem;
import com.husen.example.shardingTables.mapper.TOrderItemMapper;
import com.husen.example.shardingTables.mapper.TOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/***
 @Author:MrHuang
 @Date: 2019/5/8 16:58
 @DESC: TODO
 @VERSION: 1.0
 ***/
@Service
public class TOrderBusinService {

    @Autowired
    private TOrderMapper orderMapper;

    @Autowired
    private TOrderItemMapper orderItemMapper;

    @Transactional(rollbackFor = Exception.class)
    public void addOrder() {
        TOrder torder = new TOrder().setUserId(1).setStatus("OK");
        orderMapper.insert(torder);
        orderItemMapper.insert(new TOrderItem()
                .setOrderId(torder.getOrderId())
                .setUserId(1)
                .setStatus("OK")
        );
        System.out.println("ADD ORDER OK !!! torder = " + torder);
    }

}
