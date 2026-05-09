package org.jeecg.modules.demo.org.jeecg.modules.smartwatch.controller;

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
import org.jeecg.modules.demo.org.jeecg.modules.smartwatch.entity.SmartWatchProduct;
import org.jeecg.modules.demo.org.jeecg.modules.smartwatch.service.ISmartWatchProductService;

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
 * @Description: 智能手表产品信息表
 * @Author: jeecg-boot
 * @Date:   2026-05-09
 * @Version: V1.0
 */
@Tag(name="智能手表产品信息表")
@RestController
@RequestMapping("/org/jeecg/modules/smartwatch/smartWatchProduct")
@Slf4j
public class SmartWatchProductController extends JeecgController<SmartWatchProduct, ISmartWatchProductService> {
	@Autowired
	private ISmartWatchProductService smartWatchProductService;
	
	/**
	 * 分页列表查询
	 *
	 * @param smartWatchProduct
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	//@AutoLog(value = "智能手表产品信息表-分页列表查询")
	@Operation(summary="智能手表产品信息表-分页列表查询")
	@GetMapping(value = "/list")
	public Result<IPage<SmartWatchProduct>> queryPageList(SmartWatchProduct smartWatchProduct,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {


        QueryWrapper<SmartWatchProduct> queryWrapper = QueryGenerator.initQueryWrapper(smartWatchProduct, req.getParameterMap());
		Page<SmartWatchProduct> page = new Page<SmartWatchProduct>(pageNo, pageSize);
		IPage<SmartWatchProduct> pageList = smartWatchProductService.page(page, queryWrapper);
		return Result.OK(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param smartWatchProduct
	 * @return
	 */
	@AutoLog(value = "智能手表产品信息表-添加")
	@Operation(summary="智能手表产品信息表-添加")
	@RequiresPermissions("org.jeecg.modules.smartwatch:smart_watch_product:add")
	@PostMapping(value = "/add")
	public Result<String> add(@RequestBody SmartWatchProduct smartWatchProduct) {
		smartWatchProductService.save(smartWatchProduct);

		return Result.OK("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param smartWatchProduct
	 * @return
	 */
	@AutoLog(value = "智能手表产品信息表-编辑")
	@Operation(summary="智能手表产品信息表-编辑")
	@RequiresPermissions("org.jeecg.modules.smartwatch:smart_watch_product:edit")
	@RequestMapping(value = "/edit", method = {RequestMethod.PUT,RequestMethod.POST})
	public Result<String> edit(@RequestBody SmartWatchProduct smartWatchProduct) {
		smartWatchProductService.updateById(smartWatchProduct);
		return Result.OK("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "智能手表产品信息表-通过id删除")
	@Operation(summary="智能手表产品信息表-通过id删除")
	@RequiresPermissions("org.jeecg.modules.smartwatch:smart_watch_product:delete")
	@DeleteMapping(value = "/delete")
	public Result<String> delete(@RequestParam(name="id",required=true) String id) {
		smartWatchProductService.removeById(id);
		return Result.OK("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "智能手表产品信息表-批量删除")
	@Operation(summary="智能手表产品信息表-批量删除")
	@RequiresPermissions("org.jeecg.modules.smartwatch:smart_watch_product:deleteBatch")
	@DeleteMapping(value = "/deleteBatch")
	public Result<String> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.smartWatchProductService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.OK("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	//@AutoLog(value = "智能手表产品信息表-通过id查询")
	@Operation(summary="智能手表产品信息表-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<SmartWatchProduct> queryById(@RequestParam(name="id",required=true) String id) {
		SmartWatchProduct smartWatchProduct = smartWatchProductService.getById(id);
		if(smartWatchProduct==null) {
			return Result.error("未找到对应数据");
		}
		return Result.OK(smartWatchProduct);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param smartWatchProduct
    */
    @RequiresPermissions("org.jeecg.modules.smartwatch:smart_watch_product:exportXls")
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, SmartWatchProduct smartWatchProduct) {
        return super.exportXls(request, smartWatchProduct, SmartWatchProduct.class, "智能手表产品信息表");
    }

    /**
      * 通过excel导入数据
    *
    * @param request
    * @param response
    * @return
    */
    @RequiresPermissions("org.jeecg.modules.smartwatch:smart_watch_product:importExcel")
    @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
    public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
        return super.importExcel(request, response, SmartWatchProduct.class);
    }

}
