package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.New;
import priv.ljh.operate.mapper.NewMapper;
import priv.ljh.operate.mapper.NewslistMapper;
import priv.ljh.operate.service.NewService;
import priv.ljh.operate.service.NewslistService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 资讯详情 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Api(tags = {"资讯详情控制类"})
@Slf4j
@RestController
@RequestMapping("/new")
public class NewController {

    @Autowired
    private NewMapper newMapper;

    @Autowired
    private NewService newService;

    @ApiOperation("查询所有资讯详情信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<New> news = newMapper.selectList(null);
        log.info("news====>"+news);
        MyPage page = this.newService.searchNews(pageNo, limit, idSort,news);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

    @ApiOperation("根据id查询数据")
    @GetMapping(value = "{id}")
    public ResultResponse selectById(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort,@RequestParam("id") Long id){
        ResultResponse res = null;
        New news = newMapper.selectById(id);
        log.info("news====>"+news);
        MyPage page = this.newService.searchNewsById(pageNo, limit, idSort,news,id);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

}

