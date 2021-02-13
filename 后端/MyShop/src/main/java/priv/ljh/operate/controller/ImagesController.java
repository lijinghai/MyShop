package priv.ljh.operate.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.ImagesMapper;
import priv.ljh.operate.service.ImagesService;
import priv.ljh.utils.Constants;
import priv.ljh.utils.MyPage;
import priv.ljh.utils.ResultResponse;

import java.util.List;

/**
 * <p>
 * 二级图片列表 前端控制器
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Api(tags = {"二级图片列表控制类"})
@Slf4j
@RestController
@RequestMapping("/images")
public class ImagesController {

    @Autowired
    private ImagesMapper imagesMapper;

    @Autowired
    private ImagesService imagesService;

    @ApiOperation("查询所有二级图片列表信息")
    @GetMapping
    public ResultResponse queryUnbo(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort){
        ResultResponse res = null;
        List<Images> images = imagesMapper.selectList(null);
        log.info("images====>"+images);
        MyPage page = this.imagesService.searchImges(pageNo, limit, idSort,images);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }

    @ApiOperation("根据id查询数据")
    @GetMapping(value = "{id}")
    public ResultResponse selectById(@RequestParam("page") int pageNo, @RequestParam("limit") int limit, @RequestParam("sort") String idSort,@RequestParam("id") Integer id){
        ResultResponse res = null;
        Images images = imagesMapper.selectById(id);
        log.info("images====>"+images);
        MyPage page = this.imagesService.searchImgesById(pageNo, limit, idSort,images,id);
        res = new ResultResponse(Constants.STATUS_OK, Constants.MESSAGE_OK,page);
        return res;
    }


}

