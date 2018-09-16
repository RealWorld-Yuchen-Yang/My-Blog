package com.my.blog.website.service.questionaire.disc;

import com.my.blog.website.model.Vo.questionaire.disc.DiscQuestionVo;
import com.my.blog.website.model.Vo.questionaire.disc.RawAnswerVo;
import com.my.blog.website.model.Vo.questionaire.disc.ResultCommentVo;

import java.util.List;

public interface IQuestionaireDiscService {

    public List<DiscQuestionVo> getQuestions();

    public void answerQuestions(RawAnswerVo rawAnswerVo);

    public ResultCommentVo getResultComment(String wechat_id);

}
