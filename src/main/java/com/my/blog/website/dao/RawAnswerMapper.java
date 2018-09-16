package com.my.blog.website.dao;


import com.my.blog.website.model.Vo.questionaire.disc.RawAnswerVo;
import org.springframework.stereotype.Component;

@Component
public interface RawAnswerMapper {

    int insert(RawAnswerVo rawAnswerVo);


    RawAnswerVo selectByWechatId(String wechatId);
}
