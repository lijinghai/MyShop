package priv.ljh.operate.service;

import priv.ljh.operate.entity.Images;
import priv.ljh.operate.entity.Info;
import com.baomidou.mybatisplus.extension.service.IService;
import priv.ljh.utils.MyPage;

import java.util.List;

/**
 * <p>
 * 获取详情参数 服务类
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
public interface InfoService extends IService<Info> {

    /**
     * 自定义分页查询方法
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param infos
     * @return
     */
    public MyPage searchInfo(int pageNo, int limit, String idSorted, List<Info> infos);

    /**
     * 根据id查询数据
     * @param pageNo
     * @param limit
     * @param idSorted
     * @param info
     * @param id
     * @return
     */
    public MyPage searchInfoById(int pageNo, int limit, String idSorted, Info info,Integer id);
}
