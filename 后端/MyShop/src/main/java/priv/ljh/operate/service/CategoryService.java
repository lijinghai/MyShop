package priv.ljh.operate.service;

import priv.ljh.operate.entity.Category;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 图片分类 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
public interface CategoryService extends IService<Category> {

    /**
     * 图片类别
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param category
     * @return
     */
    public MyPage searchCategory(int pageNo, int limit, String idSorted, List<Category> category);

}
