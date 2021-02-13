package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Images;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 二级图片列表 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Mapper
@Repository
@ApiModel("二级图片列表实体接口类")
public interface ImagesMapper extends BaseMapper<Images> {

}
