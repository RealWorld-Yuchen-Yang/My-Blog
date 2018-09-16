package com.my.blog.website.service.questionaire.disc;

import com.my.blog.website.model.Vo.questionaire.disc.ResultCommentVo;

public interface IQuestionaireDiscService {
    public ResultCommentVo getResultComment(String wechat_id);
}
