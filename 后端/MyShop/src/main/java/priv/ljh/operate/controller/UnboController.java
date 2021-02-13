package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.UnboMapper;
import priv.ljh.operate.service.UnboService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
@Api(tags = {"轮播图控制类"})
@Slf4j
@RestController
@RequestMapping("/unbo")
public class UnboController {

    @Autowired
    private UnboMapper unboMapper;

    @Autowired
    private UnboService unboService;

    @ApiOperation("查询所有轮播图信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Unbo> unbos = unboMapper.selectList(null);
        log.info("unbos====>"+unbos);
        MyPage page = this.unboService.searchUnbo(pageNo, limit, idSort,unbos);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

}

