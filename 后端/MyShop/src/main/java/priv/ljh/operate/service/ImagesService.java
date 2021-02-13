package priv.ljh.operate.service;

import priv.ljh.operate.entity.Images;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.operate.entity.Unbo;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 二级图片列表 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
public interface ImagesService extends IService<Images> {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param images
     * @return
     */
    public MyPage searchImges(int pageNo, int limit, String idSorted, List<Images> images);

    /**
     * 根据id查询数据
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param images
     * @param id
     * @return
     */
    public MyPage searchImgesById(int pageNo, int limit, String idSorted, Images images,Integer id);
}
