package priv.ljh.operate.service.impl;

import priv.ljh.operate.entity.Category;
import priv.ljh.operate.entity.Goods;
import priv.ljh.operate.mapper.CategoryMapper;
import priv.ljh.operate.service.CategoryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import priv.ljh.utils.MyPage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 * 图片分类 服务实现类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements CategoryService {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param category
     * @return
     */
    @Override
    public MyPage searchCategory(int pageNo, int limit, String idSorted, List<Category> category) {
        MyPage page = null;
        List<Category> categoryList = new ArrayList<>();
        categoryList.addAll(category);
        if(idSorted != null && idSorted.startsWith("-")){
            Collections.reverse(categoryList);
        }
        int total = categoryList.size();
        int maxPageNo = categoryList.size()%limit == 0? categoryList.size()/limit:categoryList.size()/limit + 1;
        if(pageNo>maxPageNo){
            pageNo = maxPageNo;
        }
        int beginIndex = (pageNo-1)*limit;
        int endIndex = pageNo*limit;
        if(endIndex>total){
            endIndex = total;
        }

        page = new MyPage(categoryList.subList(beginIndex, endIndex),total);

        return page;
    }
}
