package com.my.blog.website.model.Vo.questionaire.disc;

public class LineItemVo {
    private int lineNumber;
    private String lineContent;
    private char most;
    private char least;

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
