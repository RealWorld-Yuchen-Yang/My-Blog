package com.my.blog.website.model.Vo.questionaire.disc;

import java.math.BigDecimal;

public class DimCountScoreMappingVo {
    private char dimension;
    private int count;
    private BigDecimal rawScore;

    public char getDimension() {
        return dimension;
    }

    public void setDimension(char dimension) {
        this.dimension = dimension;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public BigDecimal getRawScore() {
        return rawScore;
    }

    public void setRawScore(BigDecimal rawScore) {
        this.rawScore = rawScore;
    }
}
