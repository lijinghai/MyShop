package priv.ljh.operate.service;

import priv.ljh.operate.entity.Desc1;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 获取详细介绍 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
public interface Desc1Service extends IService<Desc1> {
    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param descs1
     * @return
     */
    public MyPage searchDesc(int pageNo, int limit, String idSorted, List<Desc1> descs1);

    /**
     * 根据id查询数据
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param desc1
     * @param id
     * @return
     */
    public MyPage searchDescById(int pageNo, int limit, String idSorted, Desc1 desc1,Integer id);
}
