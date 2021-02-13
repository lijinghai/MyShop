package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Newslist;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.NewslistMapper;
import priv.ljh.operate.service.NewslistService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 资讯列表 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Api(tags = {"资讯列表控制类"})
@Slf4j
@RestController
@RequestMapping("/newslist")
public class NewslistController {

    @Autowired
    private NewslistMapper newslistMapper;

    @Autowired
    private NewslistService newslistService;

    @ApiOperation("查询所有轮播图信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Newslist> newslists = newslistMapper.selectList(null);
        log.info("newslists====>"+newslists);
        MyPage page = this.newslistService.searchNewslist(pageNo, limit, idSort,newslists);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

}

