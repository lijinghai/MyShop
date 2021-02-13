package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Goods;
import priv.ljh.operate.mapper.GoodsMapper;
import priv.ljh.operate.service.GoodsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 物品列表 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
@Service
public class GoodsServiceImpl extends ServiceImpl<GoodsMapper, Goods> implements GoodsService {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param goods
     * @return
     */
    @Override
    public MyPage searchGoods(int pageNo, int limit, String idSorted, List<Goods> goods) {
        MyPage page = null;
        List<Goods> goodsList = new ArrayList<>();
        goodsList.addAll(goods);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(goodsList);
        }
        int total = goodsList.size();
        int maxPageNo = goodsList.size()%limit == 0? goodsList.size()/limit:goodsList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(goodsList.subList(beginIndex, endIndex),total);

        return page;
    }
}
