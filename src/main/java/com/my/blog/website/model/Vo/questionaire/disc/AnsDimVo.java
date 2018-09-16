package com.my.blog.website.model.Vo.questionaire.disc;

public class AnsDimVo {
    private Boolean isPositive;
    private Integer idx;
    private Character dim1;
    private Character dim2;
    private Character dim3;
    private Character dim4;

    public Boolean getIsPositive() {
        return isPositive;
    }

    public void setIsPositive(Boolean positive) {
        isPositive = positive;
    }

    public Integer getIdx() {
        return idx;
    }

    public void setIdx(Integer idx) {
        this.idx = idx;
    }

    public Character getDim1() {
        return dim1;
    }

    public void setDim1(Character dim1) {
        this.dim1 = dim1;
    }

    public Character getDim2() {
        return dim2;
    }

    public void setDim2(Character dim2) {
        this.dim2 = dim2;
    }

    public Character getDim3() {
        return dim3;
    }

    public void setDim3(Character dim3) {
        this.dim3 = dim3;
    }

    public Character getDim4() {
        return dim4;
    }

    public void setDim4(Character dim4) {
        this.dim4 = dim4;
    }
}
