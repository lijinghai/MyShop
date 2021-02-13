package priv.ljh.operate.service;

import org.springframework.stereotype.Service;
import priv.ljh.operate.entity.Goods;
import priv.ljh.operate.entity.Unbo;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
public interface UnboService extends IService<Unbo> {
    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param Unbo
     * @return
     */
    public MyPage searchUnbo(int pageNo, int limit, String idSorted, List<Unbo> Unbo);
}
