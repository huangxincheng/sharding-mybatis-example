package com.husen.example.shardingTables;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.husen.example.shardingTables.entity.TOrder;
import com.husen.example.shardingTables.mapper.TOrderMapper;
import com.husen.example.shardingTables.service.TOrderBusinService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;

/***
 @Author:MrHuang
 @Date: 2019/5/8 14:55
 @DESC: TODO
 @VERSION: 1.0
 ***/
@RunWith(SpringRunner.class)
@SpringBootTest
public class ShardingTablesTest {

    @Autowired
    private TOrderMapper tOrderMapper;

    @Autowired
    private TOrderBusinService tOrderBusinService;

    /**
     * 简单测试分表
     */
    @Test
    public void simpleTest() {
        TOrder ok = new TOrder().setUserId(1).setStatus("OK");
        int insert = tOrderMapper.insert(ok);
        System.out.println(ok.toString() + " row = " + insert);
    }


    /**
     * 事务测试分表
     */
    @Test
    public void transactionalTest() {
        tOrderBusinService.addOrder();
        System.out.println("transactionalTest OK");
    }

    /**
     * 并发测试是否分表
     */
    @Test
    public void contextTest() {
        final CountDownLatch countDownLatch = new CountDownLatch(10);
        for (int i = 0; i < 10; i++) {
            Executors.newCachedThreadPool().execute(new Runnable() {
                public void run() {
                    TOrder tOrder = new TOrder().setUserId(1).setStatus("OK");
                    int ok = tOrderMapper.insert(tOrder);
                    System.out.println("ok = " + ok + " | tOrder = " + tOrder);
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("1111");
    }

    /**
     * 并发测试事务分表
     */
    @Test
    public void contextTransTest() {
        final CountDownLatch countDownLatch = new CountDownLatch(10);
        for (int i = 0; i < 10; i++) {
            Executors.newCachedThreadPool().execute(new Runnable() {
                public void run() {
                    tOrderBusinService.addOrder();
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("1111");
    }

    @Test
    public void queryAllTest() {
        while (true) {
            List<TOrder> tOrders = tOrderMapper.selectList(new QueryWrapper<TOrder>());
            System.out.println(tOrders);
        }
    }

    @Test
    public void queryOneTest() {
        while (true) {
            TOrder tOrder = tOrderMapper.selectOne(new QueryWrapper<TOrder>()
                    .lambda()
                    .and(q -> q.eq(TOrder::getOrderId, 0L))
                    .and(q -> q.eq(TOrder::getUserId, 1L))
            );
            System.out.println(tOrder);
            if (tOrder.getStatus().equals("M1S1")) {
                break;
            }
        }

    }

    @Test
    public void deleteOneTest() {
        int i = tOrderMapper.deleteById(332930946938437640L);
        System.out.println("row  = " + i);
    }
}
