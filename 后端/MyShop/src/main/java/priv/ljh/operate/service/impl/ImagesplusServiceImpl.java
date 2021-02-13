package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.Imagesplus;
import priv.ljh.operate.mapper.ImagesplusMapper;
import priv.ljh.operate.service.ImagesplusService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 详情轮播图 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Service
public class ImagesplusServiceImpl extends ServiceImpl<ImagesplusMapper, Imagesplus> implements ImagesplusService {

    @Override
    public MyPage searchImgesPlus(int pageNo, int limit, String idSorted, List<Imagesplus> imagespluses) {
        MyPage page = null;
        List<Imagesplus> imagesplusesList = new ArrayList<>();
        imagesplusesList.addAll(imagespluses);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(imagesplusesList);
        }
        int total = imagesplusesList.size();
        int maxPageNo = imagesplusesList.size()%limit == 0? imagesplusesList.size()/limit:imagesplusesList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(imagesplusesList.subList(beginIndex, endIndex),total);

        return page;
    }

    @Override
    public MyPage searchImgesById(int pageNo, int limit, String idSorted, Imagesplus imagesplus, Integer id) {
        MyPage page = null;
        List<Imagesplus> imagesplusesList = new ArrayList<>();
        imagesplusesList.add(imagesplus);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(imagesplusesList);
        }
        int total = imagesplusesList.size();
        int maxPageNo = imagesplusesList.size()%limit == 0? imagesplusesList.size()/limit:imagesplusesList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(imagesplusesList.subList(beginIndex, endIndex),total);

        return page;
    }
}
