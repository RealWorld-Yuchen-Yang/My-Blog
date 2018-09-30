package com.my.blog.website.service.questionaire.disc;

import com.github.pagehelper.PageInfo;
import com.my.blog.website.model.Vo.questionaire.disc.DiscQuestionItemVo;
import com.my.blog.website.model.Vo.questionaire.disc.RawAnswerVo;
import com.my.blog.website.model.Vo.questionaire.disc.ResultCommentVo;

public interface IQuestionaireDiscService {

    public PageInfo<DiscQuestionItemVo> getQuestions();
    public PageInfo getQuestions(Integer p, Integer limit);

    public void answerQuestions(RawAnswerVo rawAnswerVo);

    public ResultCommentVo getResultComment(String wechat_id);

}
