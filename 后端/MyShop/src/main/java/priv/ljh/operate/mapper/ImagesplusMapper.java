package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Imagesplus;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 详情轮播图 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-13
 */
@Mapper
@Repository
@ApiModel("详情轮播图实体接口类")
public interface ImagesplusMapper extends BaseMapper<Imagesplus> {

}
