package com.my.blog.website.service.impl.questionaire.disc;

import com.my.blog.website.dao.*;
import com.my.blog.website.model.Vo.questionaire.disc.*;
import com.my.blog.website.service.questionaire.disc.IQuestionaireDiscService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
public class QuestionaireDiscImpl implements IQuestionaireDiscService {

    private final int NUM_OF_Q = 24;

    @Resource
    private RawAnswerMapper rawAnswerMapper;

    @Resource
    private AnsDimMapper ansDimMapper;

    @Resource
    private DimCountScoreMappingMapper dimCountScoreMappingMapper;

    @Resource
    private ResultCommentMapper resultCommentMapper;

    @Resource
    private DiscQuestionMapper discQuestionMapper;

    @Override
    public List<DiscQuestionVo> getQuestions() {
        return discQuestionMapper.selectAllQuestions();
    }

    @Override
    public void answerQuestions(RawAnswerVo rawAnswerVo) {
        int affectedRows = rawAnswerMapper.insert(rawAnswerVo);
        System.out.println("answered ("+affectedRows+")question, with answer: "+rawAnswerVo.toString());

    }

    public ResultCommentVo getResultComment(String wechatId) {

        ResultCommentVo resultCommentVo = null;
        RawAnswerVo rawAnswer = rawAnswerMapper.selectByWechatId(wechatId);
        char[] posAnsArr = populateAnsArr(rawAnswer, this::getPosPart);
        char[] negAnsArr = populateAnsArr(rawAnswer, this::getNegPart);

        final List<AnsDimVo> ansDimVoList = ansDimMapper.getAnsDimMap();
        final Map posAnsDimMap = ansDimVoList.stream().filter(ansDimVo -> ansDimVo.getIsPositive()).collect(Collectors.toMap(AnsDimVo::getIdx, Function.identity()));
        final Map negAnsDimMap = ansDimVoList.stream().filter(ansDimVo -> !ansDimVo.getIsPositive()).collect(Collectors.toMap(AnsDimVo::getIdx, Function.identity()));
        char[] mappedPosAns = mapAnsToDim(posAnsDimMap, posAnsArr, true);
        char[] mappedNegAns = mapAnsToDim(negAnsDimMap, negAnsArr, false);

        int dSum = charCount(mappedPosAns,'D')-charCount(mappedNegAns,'D');
        int iSum = charCount(mappedPosAns,'I')-charCount(mappedNegAns,'I');
        int sSum = charCount(mappedPosAns,'S')-charCount(mappedNegAns,'S');
        int cSum = charCount(mappedPosAns,'C')-charCount(mappedNegAns,'C');

        DimCountScoreMappingVo dDimCountScoreMappingVo = dimCountScoreMappingMapper.selectByDimAndCount('D',dSum);
        DimCountScoreMappingVo iDimCountScoreMappingVo = dimCountScoreMappingMapper.selectByDimAndCount('I',iSum);
        DimCountScoreMappingVo sDimCountScoreMappingVo = dimCountScoreMappingMapper.selectByDimAndCount('S',sSum);
        DimCountScoreMappingVo cDimCountScoreMappingVo = dimCountScoreMappingMapper.selectByDimAndCount('C',cSum);

        List<DimCountScoreMappingVo> dimScoreList = Arrays.asList(new DimCountScoreMappingVo[]{dDimCountScoreMappingVo,iDimCountScoreMappingVo,sDimCountScoreMappingVo,cDimCountScoreMappingVo});

        final StringBuilder sb = new StringBuilder();
        dimScoreList.stream().filter(dimScore ->
            dimScore != null && dimScore.getRawScore().longValue()>0
        ).sorted((dimScore1, dimScore2) -> {
                long diff = dimScore1.getRawScore().longValue() - dimScore2.getRawScore().longValue();
                if(diff>0){
                    return -1;
                }
                else if(diff<0){
                    return 1;
                }
                else{
                    return 0;
                }
        }).limit(3).forEach(dimScore -> sb.append(dimScore.getDimension()));



        final String tp =  sb.toString();
        resultCommentVo = resultCommentMapper.getResultComment(tp);


        return resultCommentVo;
    }

    private char[] mapAnsToDim(final Map ansDimMap, char[] ansArr, boolean isPositive) {
        char[] resDimArr = new char[NUM_OF_Q];
        for (int i = 0; i < NUM_OF_Q; i++) {
            char curAns = ansArr[i];//A,B,C,D,E,F,G,H
            AnsDimVo ansDimVo = (AnsDimVo) ansDimMap.get(i + 1);//D,I,S,C,N
            resDimArr[i] = excelFormula(curAns, ansDimVo, isPositive);
        }
        return resDimArr;

    }


    private char getPosPart(String str) {
        return str.charAt(0);
    }

    private char getNegPart(String str) {
        return str.charAt(1);
    }


    private char[] populateAnsArr(RawAnswerVo rawAnswer, Function<String, Character> func) {
        char[] resultArr = new char[24];

        resultArr[0] = func.apply(rawAnswer.getAnswer1());
        resultArr[1] = func.apply(rawAnswer.getAnswer2());
        resultArr[2] = func.apply(rawAnswer.getAnswer3());
        resultArr[3] = func.apply(rawAnswer.getAnswer4());
        resultArr[4] = func.apply(rawAnswer.getAnswer5());
        resultArr[5] = func.apply(rawAnswer.getAnswer6());
        resultArr[6] = func.apply(rawAnswer.getAnswer7());
        resultArr[7] = func.apply(rawAnswer.getAnswer8());
        resultArr[8] = func.apply(rawAnswer.getAnswer9());
        resultArr[9] = func.apply(rawAnswer.getAnswer10());
        resultArr[10] = func.apply(rawAnswer.getAnswer11());
        resultArr[11] = func.apply(rawAnswer.getAnswer12());
        resultArr[12] = func.apply(rawAnswer.getAnswer13());
        resultArr[13] = func.apply(rawAnswer.getAnswer14());
        resultArr[14] = func.apply(rawAnswer.getAnswer15());
        resultArr[15] = func.apply(rawAnswer.getAnswer16());
        resultArr[16] = func.apply(rawAnswer.getAnswer17());
        resultArr[17] = func.apply(rawAnswer.getAnswer18());
        resultArr[18] = func.apply(rawAnswer.getAnswer19());
        resultArr[19] = func.apply(rawAnswer.getAnswer20());
        resultArr[20] = func.apply(rawAnswer.getAnswer21());
        resultArr[21] = func.apply(rawAnswer.getAnswer22());
        resultArr[22] = func.apply(rawAnswer.getAnswer23());
        resultArr[23] = func.apply(rawAnswer.getAnswer24());

        return resultArr;
    }

    /**
     * @param inputChar , current answer to the question
     * @return
     */
    private Character excelFormula(final Character inputChar, AnsDimVo ansDimVo, boolean isPositive) {
        char resultChar;

        final char[] posArr = {'A', 'B', 'C', 'D'};
        final char[] negArr = {'E', 'F', 'G', 'H'};
        final char[] selectedArr = isPositive ? posArr : negArr;

        resultChar =
                excelIf(inputChar == selectedArr[0], ansDimVo.getDim1(), excelIf(inputChar == selectedArr[1], ansDimVo.getDim2(), excelIf(inputChar == selectedArr[2], ansDimVo.getDim3(), excelIf(inputChar == selectedArr[3], ansDimVo.getDim4(), '0'))));
        return resultChar;

    }

    private char excelIf(boolean predicate, char trueAns, char elseAns) {
        if (predicate) {
            return trueAns;
        } else {
            return elseAns;
        }
    }

    private int charCount(char[] dimArr, final char targetDim) {
        int result=0;

        for(int i=0;i<dimArr.length;i++){
            if(dimArr[i]==targetDim){
                result++;
            }
        }
        return result;
    }
}
