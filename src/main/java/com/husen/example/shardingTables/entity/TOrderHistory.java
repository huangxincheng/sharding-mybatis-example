package com.husen.example.shardingTables.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author huangxincheng
 * @since 2019-05-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class TOrderHistory implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "order_history_id", type = IdType.AUTO)
    private Long orderHistoryId;

    private Integer userId;

    private String status;


}