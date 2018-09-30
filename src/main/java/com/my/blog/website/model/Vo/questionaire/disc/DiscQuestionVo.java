package com.my.blog.website.model.Vo.questionaire.disc;

import java.util.List;

public class DiscQuestionVo {
    private int questionNumber;
    private String questionContent;
    private List<LineItemVo> lineItemList;

    public int getQuestionNumber() {
        return questionNumber;
    }

    public void setQuestionNumber(int questionNumber) {
        this.questionNumber = questionNumber;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent;
    }

    public List<LineItemVo> getLineItemList() {
        return lineItemList;
    }

    public void setLineItemList(List<LineItemVo> lineItemList) {
        this.lineItemList = lineItemList;
    }
}
