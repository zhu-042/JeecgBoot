package org.jeecg.modules.demo.org.jeecg.modules.book.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.query.QueryRuleEnum;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.demo.org.jeecg.modules.book.entity.TestBook;
import org.jeecg.modules.demo.org.jeecg.modules.book.service.ITestBookService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.jeecg.common.system.base.controller.JeecgController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.apache.shiro.authz.annotation.RequiresPermissions;
 /**
 * @Description: 图书管理
 * @Author: jeecg-boot
 * @Date:   2026-05-08
 * @Version: V1.0
 */
@Tag(name="图书管理")
@RestController
@RequestMapping("/org/jeecg/modules/book/testBook")
@Slf4j
public class TestBookController extends JeecgController<TestBook, ITestBookService> {
	@Autowired
	private ITestBookService testBookService;
	
	/**
	 * 分页列表查询
	 *
	 * @param testBook
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	//@AutoLog(value = "图书管理-分页列表查询")
	@Operation(summary="图书管理-分页列表查询")
	@GetMapping(value = "/list")
	public Result<IPage<TestBook>> queryPageList(TestBook testBook,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {


        QueryWrapper<TestBook> queryWrapper = QueryGenerator.initQueryWrapper(testBook, req.getParameterMap());
		Page<TestBook> page = new Page<TestBook>(pageNo, pageSize);
		IPage<TestBook> pageList = testBookService.page(page, queryWrapper);
		return Result.OK(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param testBook
	 * @return
	 */
	@AutoLog(value = "图书管理-添加")
	@Operation(summary="图书管理-添加")
	@RequiresPermissions("org.jeecg.modules.book:test_book:add")
	@PostMapping(value = "/add")
	public Result<String> add(@RequestBody TestBook testBook) {
		testBookService.save(testBook);

		return Result.OK("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param testBook
	 * @return
	 */
	@AutoLog(value = "图书管理-编辑")
	@Operation(summary="图书管理-编辑")
	@RequiresPermissions("org.jeecg.modules.book:test_book:edit")
	@RequestMapping(value = "/edit", method = {RequestMethod.PUT,RequestMethod.POST})
	public Result<String> edit(@RequestBody TestBook testBook) {
		testBookService.updateById(testBook);
		return Result.OK("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "图书管理-通过id删除")
	@Operation(summary="图书管理-通过id删除")
	@RequiresPermissions("org.jeecg.modules.book:test_book:delete")
	@DeleteMapping(value = "/delete")
	public Result<String> delete(@RequestParam(name="id",required=true) String id) {
		testBookService.removeById(id);
		return Result.OK("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "图书管理-批量删除")
	@Operation(summary="图书管理-批量删除")
	@RequiresPermissions("org.jeecg.modules.book:test_book:deleteBatch")
	@DeleteMapping(value = "/deleteBatch")
	public Result<String> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.testBookService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.OK("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	//@AutoLog(value = "图书管理-通过id查询")
	@Operation(summary="图书管理-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<TestBook> queryById(@RequestParam(name="id",required=true) String id) {
		TestBook testBook = testBookService.getById(id);
		if(testBook==null) {
			return Result.error("未找到对应数据");
		}
		return Result.OK(testBook);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param testBook
    */
    @RequiresPermissions("org.jeecg.modules.book:test_book:exportXls")
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TestBook testBook) {
        return super.exportXls(request, testBook, TestBook.class, "图书管理");
    }

    /**
      * 通过excel导入数据
    *
    * @param request
    * @param response
    * @return
    */
    @RequiresPermissions("org.jeecg.modules.book:test_book:importExcel")
    @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
    public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
        return super.importExcel(request, response, TestBook.class);
    }

}
