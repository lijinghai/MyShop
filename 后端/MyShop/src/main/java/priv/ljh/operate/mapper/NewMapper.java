package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.New;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 资讯详情 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Mapper
@Repository
@ApiModel("资讯详情实体接口类")
public interface NewMapper extends BaseMapper<New> {

}
