package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.New;
import priv.ljh.operate.mapper.NewMapper;
import priv.ljh.operate.service.NewService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 资讯详情 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Service
public class NewServiceImpl extends ServiceImpl<NewMapper, New> implements NewService {

    @Override
    public MyPage searchNews(int pageNo, int limit, String idSorted, List<New> news) {
        MyPage page = null;
        List<New> newsList = new ArrayList<>();
        newsList.addAll(news);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(newsList);
        }
        int total = newsList.size();
        int maxPageNo = newsList.size()%limit == 0? newsList.size()/limit:newsList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(newsList.subList(beginIndex, endIndex),total);

        return page;
    }

    @Override
    public MyPage searchNewsById(int pageNo, int limit, String idSorted, New news, Long id) {
        MyPage page = null;
        List<New> newsList = new ArrayList<>();
        newsList.add(news);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(newsList);
        }
        int total = newsList.size();
        int maxPageNo = newsList.size()%limit == 0? newsList.size()/limit:newsList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(newsList.subList(beginIndex, endIndex),total);

        return page;
    }
}
