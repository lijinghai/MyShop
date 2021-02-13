package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Desc1;
import priv.ljh.operate.mapper.Desc1Mapper;
import priv.ljh.operate.service.Desc1Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 获取详细介绍 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Service
public class Desc1ServiceImpl extends ServiceImpl<Desc1Mapper, Desc1> implements Desc1Service {

    @Override
    public MyPage searchDesc(int pageNo, int limit, String idSorted, List<Desc1> descs1) {
        MyPage page = null;
        List<Desc1> descsList = new ArrayList<>();
        descsList.addAll(descs1);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(descsList);
        }
        int total = descsList.size();
        int maxPageNo = descsList.size()%limit == 0? descsList.size()/limit:descsList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(descsList.subList(beginIndex, endIndex),total);

        return page;
    }

    @Override
    public MyPage searchDescById(int pageNo, int limit, String idSorted, Desc1 desc1, Integer id) {
        MyPage page = null;
        List<Desc1> descsList = new ArrayList<>();
        descsList.add(desc1);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(descsList);
        }
        int total = descsList.size();
        int maxPageNo = descsList.size()%limit == 0? descsList.size()/limit:descsList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(descsList.subList(beginIndex, endIndex),total);

        return page;
    }
}
