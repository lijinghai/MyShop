package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Newslist;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.NewslistMapper;
import priv.ljh.operate.service.NewslistService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 资讯列表 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Service
public class NewslistServiceImpl extends ServiceImpl<NewslistMapper, Newslist> implements NewslistService {

    @Override
    public MyPage searchNewslist(int pageNo, int limit, String idSorted, List<Newslist> newslists) {
        MyPage page = null;
        List<Newslist> newslist = new ArrayList<>();
        newslist.addAll(newslists);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(newslist);
        }
        int total = newslist.size();
        int maxPageNo = newslist.size()%limit == 0? newslist.size()/limit:newslist.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(newslist.subList(beginIndex, endIndex),total);

        return page;
    }
}
