package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.Info;
import priv.ljh.operate.mapper.InfoMapper;
import priv.ljh.operate.service.InfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 获取详情参数 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Service
public class InfoServiceImpl extends ServiceImpl<InfoMapper, Info> implements InfoService {

    @Override
    public MyPage searchInfo(int pageNo, int limit, String idSorted, List<Info> infos) {
        MyPage page = null;
        List<Info> infosList = new ArrayList<>();
        infosList.addAll(infos);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(infosList);
        }
        int total = infosList.size();
        int maxPageNo = infosList.size()%limit == 0? infosList.size()/limit:infosList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(infosList.subList(beginIndex, endIndex),total);

        return page;
    }

    @Override
    public MyPage searchInfoById(int pageNo, int limit, String idSorted, Info info, Integer id) {
        MyPage page = null;
        List<Info> infosList = new ArrayList<>();
        infosList.add(info);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(infosList);
        }
        int total = infosList.size();
        int maxPageNo = infosList.size()%limit == 0? infosList.size()/limit:infosList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(infosList.subList(beginIndex, endIndex),total);

        return page;
    }
}
