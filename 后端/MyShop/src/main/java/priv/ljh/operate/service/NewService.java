package priv.ljh.operate.service;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.New;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 资讯详情 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
public interface NewService extends IService<New> {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param news
     * @return
     */
    public MyPage searchNews(int pageNo, int limit, String idSorted, List<New> news);

    /**
     * 根据id查询数据
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param news
     * @param id
     * @return
     */
    public MyPage searchNewsById(int pageNo, int limit, String idSorted, New news,Long id);

}
