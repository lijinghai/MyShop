package priv.ljh.operate.service;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.Imagesplus;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 详情轮播图 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
public interface ImagesplusService extends IService<Imagesplus> {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param imagespluses
     * @return
     */
    public MyPage searchImgesPlus(int pageNo, int limit, String idSorted, List<Imagesplus> imagespluses);

    /**
     * 根据id查询数据
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param imagesplus
     * @param id
     * @return
     */
    public MyPage searchImgesById(int pageNo, int limit, String idSorted, Imagesplus imagesplus,Integer id);
}
