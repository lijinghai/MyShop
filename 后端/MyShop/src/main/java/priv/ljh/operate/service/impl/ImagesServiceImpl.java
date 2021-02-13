package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.operate.mapper.ImagesMapper;
import priv.ljh.operate.service.ImagesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 二级图片列表 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Service
public class ImagesServiceImpl extends ServiceImpl<ImagesMapper, Images> implements ImagesService {

    @Override
    public MyPage searchImges(int pageNo, int limit, String idSorted, List<Images> images) {
        MyPage page = null;
        List<Images> imagesList = new ArrayList<>();
        imagesList.addAll(images);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(imagesList);
        }
        int total = imagesList.size();
        int maxPageNo = imagesList.size()%limit == 0? imagesList.size()/limit:imagesList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(imagesList.subList(beginIndex, endIndex),total);

        return page;
    }

    @Override
    public MyPage searchImgesById(int pageNo, int limit, String idSorted, Images images, Integer id) {
        MyPage page = null;
        List<Images> imagesList = new ArrayList<>();
        imagesList.add(images);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(imagesList);
        }
        int total = imagesList.size();
        int maxPageNo = imagesList.size()%limit == 0? imagesList.size()/limit:imagesList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(imagesList.subList(beginIndex, endIndex),total);

        return page;
    }
}
