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
import priv.ljh.operate.entity.Imagesplus;
import priv.ljh.operate.mapper.ImagesplusMapper;
import priv.ljh.operate.service.ImagesplusService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 详情轮播图 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Api(tags = {"详情轮播图控制类"})
@Slf4j
@RestController
@RequestMapping("/imagesplus")
public class ImagesplusController {

    @Autowired
    private ImagesplusMapper imagesplusMapper;

    @Autowired
    private ImagesplusService imagesplusService;

    @ApiOperation("查询所有详情轮播图信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Imagesplus> imagespluses = imagesplusMapper.selectList(null);
        log.info("imagespluses====>"+imagespluses);
        MyPage page = this.imagesplusService.searchImgesPlus(pageNo, limit, idSort,imagespluses);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

    @ApiOperation("根据id查询数据")
    @GetMapping(value = "{id}")
    public ResultResponse selectById(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort,@RequestParam("id") Integer id){
        ResultResponse res = null;
        Imagesplus imagesplus = imagesplusMapper.selectById(id);
        log.info("imagesplus====>"+imagesplus);
        MyPage page = this.imagesplusService.searchImgesById(pageNo, limit, idSort,imagesplus,id);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

}

