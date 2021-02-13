package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Desc1;
import priv.ljh.operate.mapper.Desc1Mapper;
import priv.ljh.operate.service.Desc1Service;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 获取详细介绍 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Api(tags = {"获取详细介绍类控制类"})
@Slf4j
@RestController
@RequestMapping("/desc1")
public class Desc1Controller {

    @Autowired
    private Desc1Mapper desc1Mapper;

    @Autowired
    private Desc1Service desc1Service;

    @ApiOperation("查询所有二级图片列表信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Desc1> descs1 = desc1Mapper.selectList(null);
        log.info("descs1====>"+descs1);
        MyPage page = this.desc1Service.searchDesc(pageNo, limit, idSort,descs1);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

    @ApiOperation("根据id查询数据")
    @GetMapping(value = "{id}")
    public ResultResponse selectById(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort,@RequestParam("id") Integer id){
        ResultResponse res = null;
        Desc1 desc1 = desc1Mapper.selectById(id);
        log.info("desc1====>"+desc1);
        MyPage page = this.desc1Service.searchDescById(pageNo, limit, idSort,desc1,id);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }
}

