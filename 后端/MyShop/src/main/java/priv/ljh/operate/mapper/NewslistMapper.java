package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Newslist;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 资讯列表 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Mapper
@Repository
@ApiModel("资讯列表实体接口类")
public interface NewslistMapper extends BaseMapper<Newslist> {

}
