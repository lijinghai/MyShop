package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import priv.ljh.operate.entity.Goods;
import priv.ljh.operate.mapper.GoodsMapper;
import priv.ljh.operate.service.GoodsService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 物品列表 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
@Api(tags = {"首页商品控制类"})
@Slf4j
@RestController
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private GoodsService goodsService;

    @ApiOperation("查询所有首页物品信息")
    @GetMapping
    public ResultResponse queryGoods(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Goods> goods = goodsMapper.selectList(null);
        log.info("goods===>"+goods);
        MyPage page = this.goodsService.searchGoods(pageNo, limit, idSort,goods);
        res = new ResultResponse(Constants.STATUS_OK,Constants.MESSAGE_OK,page);
        return res;
    }

}

