package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Goods;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.UnboMapper;
import priv.ljh.operate.service.UnboService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
@Service
public class UnboServiceImpl extends ServiceImpl<UnboMapper, Unbo> implements UnboService {

    @Override
    public MyPage searchUnbo(int pageNo, int limit, String idSorted, List<Unbo> Unbo) {
        MyPage page = null;
        List<Unbo> UnboList = new ArrayList<>();
        UnboList.addAll(Unbo);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(UnboList);
        }
        int total = UnboList.size();
        int maxPageNo = UnboList.size()%limit == 0? UnboList.size()/limit:UnboList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(UnboList.subList(beginIndex, endIndex),total);

        return page;
    }
}
