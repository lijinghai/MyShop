package priv.ljh.operate.mapper;

import io.swagger.annotations.ApiModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import priv.ljh.operate.entity.Category;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 图片分类 Mapper 接口
 * </p>
 *
 * @author lijinghai
 * @since 2021-02-12
 */
@Mapper
@Repository
@ApiModel("图片类别实体接口类")
public interface CategoryMapper extends BaseMapper<Category> {

}
