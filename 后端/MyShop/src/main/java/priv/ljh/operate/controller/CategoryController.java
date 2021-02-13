package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.CacheManager;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Category;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.CategoryMapper;
import priv.ljh.operate.service.CategoryService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 图片分类 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Api(tags = {"图片类控制类"})
@Slf4j
@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private CategoryService categoryService;

    @ApiOperation("查询所有图片类信息")
    @GetMapping
    public ResultResponse queryCategory(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Category> categories = categoryMapper.selectList(null);
        log.info("categories====>"+categories);
        MyPage page = this.categoryService.searchCategory(pageNo, limit, idSort,categories);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

}

