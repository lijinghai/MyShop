package priv.ljh.operate.service;

import priv.ljh.operate.entity.Newslist;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 资讯列表 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
public interface NewslistService extends IService<Newslist> {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param newslists
     * @return
     */
    public MyPage searchNewslist(int pageNo, int limit, String idSorted, List<Newslist> newslists);

}
