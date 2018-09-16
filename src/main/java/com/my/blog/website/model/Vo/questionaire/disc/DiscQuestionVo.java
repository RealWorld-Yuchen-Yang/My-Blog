package com.my.blog.website.model.Vo.questionaire.disc;

public class DiscQuestionVo {
    private int questionNumber;
    private String questionContent;
    private int lineNumber;
    private String lineContent;
    private char most;
    private char least;


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

    public int getLineNumber() {
        return lineNumber;
    }

    public void setLineNumber(int lineNumber) {
        this.lineNumber = lineNumber;
    }

    public String getLineContent() {
        return lineContent;
    }

    public void setLineContent(String lineContent) {
        this.lineContent = lineContent;
    }

    public char getMost() {
        return most;
    }

    public void setMost(char most) {
        this.most = most;
    }

    public char getLeast() {
        return least;
    }

    public void setLeast(char least) {
        this.least = least;
    }
}
