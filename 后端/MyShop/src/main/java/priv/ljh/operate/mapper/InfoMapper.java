package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Info;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 获取详情参数 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Mapper
@Repository
@ApiModel("获取详情参数实体接口类")
public interface InfoMapper extends BaseMapper<Info> {

}
