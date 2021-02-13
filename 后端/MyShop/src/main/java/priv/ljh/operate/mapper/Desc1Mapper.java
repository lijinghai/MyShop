package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Desc1;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 获取详细介绍 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Mapper
@Repository
@ApiModel("获取详细介绍实体接口类")
public interface Desc1Mapper extends BaseMapper<Desc1> {

}
