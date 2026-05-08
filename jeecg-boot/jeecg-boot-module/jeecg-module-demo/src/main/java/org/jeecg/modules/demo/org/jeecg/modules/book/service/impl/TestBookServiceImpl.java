package org.jeecg.modules.demo.org.jeecg.modules.book.service.impl;

import org.jeecg.modules.demo.org.jeecg.modules.book.entity.TestBook;
import org.jeecg.modules.demo.org.jeecg.modules.book.mapper.TestBookMapper;
import org.jeecg.modules.demo.org.jeecg.modules.book.service.ITestBookService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 图书管理
 * @Author: jeecg-boot
 * @Date:   2026-05-08
 * @Version: V1.0
 */
@Service
public class TestBookServiceImpl extends ServiceImpl<TestBookMapper, TestBook> implements ITestBookService {

}
