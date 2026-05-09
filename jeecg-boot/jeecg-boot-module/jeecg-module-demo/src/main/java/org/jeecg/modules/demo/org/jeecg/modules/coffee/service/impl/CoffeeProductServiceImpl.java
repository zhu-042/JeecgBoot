package org.jeecg.modules.demo.org.jeecg.modules.coffee.service.impl;

import org.jeecg.modules.demo.org.jeecg.modules.coffee.entity.CoffeeProduct;
import org.jeecg.modules.demo.org.jeecg.modules.coffee.mapper.CoffeeProductMapper;
import org.jeecg.modules.demo.org.jeecg.modules.coffee.service.ICoffeeProductService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 咖啡产品表
 * @Author: jeecg-boot
 * @Date:   2026-05-09
 * @Version: V1.0
 */
@Service
public class CoffeeProductServiceImpl extends ServiceImpl<CoffeeProductMapper, CoffeeProduct> implements ICoffeeProductService {

}
