package com.my.blog.website.dao;

import com.my.blog.website.model.Vo.questionaire.disc.AnsDimVo;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface AnsDimMapper {

    List<AnsDimVo> getAnsDimMap();

}
