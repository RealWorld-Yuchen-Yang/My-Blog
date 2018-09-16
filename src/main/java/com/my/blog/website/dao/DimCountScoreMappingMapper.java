package com.my.blog.website.dao;

import com.my.blog.website.model.Vo.questionaire.disc.DimCountScoreMappingVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface DimCountScoreMappingMapper {
    DimCountScoreMappingVo selectByDimAndCount(@Param("dimension") char dimension, @Param("count") int count);
}
