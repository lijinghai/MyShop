package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Imagesplus;
import priv.ljh.operate.entity.Info;
import priv.ljh.operate.mapper.InfoMapper;
import priv.ljh.operate.service.InfoService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 获取详情参数 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Api(tags = {"获取详情参数控制类"})
@Slf4j
@RestController
@RequestMapping("/info")
public class InfoController {

    @Autowired
    private InfoMapper infoMapper;

    @Autowired
    private InfoService infoService;

    @ApiOperation("查询所有获取详情参数信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Info> infos = infoMapper.selectList(null);
        log.info("infos====>"+infos);
        MyPage page = this.infoService.searchInfo(pageNo, limit, idSort,infos);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

    @ApiOperation("根据id查询数据")
    @GetMapping(value = "{id}")
    public ResultResponse selectById(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort,@RequestParam("id") Integer id){
        ResultResponse res = null;
        Info info = infoMapper.selectById(id);
        log.info("info====>"+info);
        MyPage page = this.infoService.searchInfoById(pageNo, limit, idSort,info,id);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

}

