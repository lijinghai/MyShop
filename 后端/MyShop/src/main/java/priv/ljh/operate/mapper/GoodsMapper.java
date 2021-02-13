package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Goods;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 物品列表 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-10
 */
@Mapper
@Repository
@ApiModel("首页商品实体接口类")
public interface GoodsMapper extends BaseMapper<Goods> {

}
