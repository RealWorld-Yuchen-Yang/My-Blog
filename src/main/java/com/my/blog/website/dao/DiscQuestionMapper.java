package com.my.blog.website.dao;

import com.my.blog.website.model.Vo.questionaire.disc.DiscQuestionItemVo;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface DiscQuestionMapper {
    List<DiscQuestionItemVo> selectAllQuestions();
}
