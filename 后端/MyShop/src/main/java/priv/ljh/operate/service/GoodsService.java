package priv.ljh.operate.service;

import priv.ljh.operate.entity.Goods;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 物品列表 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
public interface GoodsService extends IService<Goods> {
    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param goods
     * @return
     */
    public MyPage searchGoods(int pageNo, int limit, String idSorted, List<Goods> goods);
}
