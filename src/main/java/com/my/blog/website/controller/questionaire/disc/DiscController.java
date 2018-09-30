package com.my.blog.website.controller.questionaire.disc;

import com.my.blog.website.controller.BaseController;
import com.my.blog.website.model.Vo.questionaire.disc.DiscFormAnswersVo;
import com.my.blog.website.model.Vo.questionaire.disc.RawAnswerVo;
import com.my.blog.website.model.Vo.questionaire.disc.ResultCommentVo;
import com.my.blog.website.service.questionaire.disc.IQuestionaireDiscService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/questionaire/disc")
public class DiscController extends BaseController{

    @Resource
    private IQuestionaireDiscService questionaireDiscService;


    @PostMapping(value="/getQuestions")
    public String getQuestions(Model model){
//        Object discQuestions = questionaireDiscService.getQuestions();
//        model.addAttribute("discQuestions",discQuestions);
//        return render("disc_questions");
        return "disc_questions";
    }

    @PostMapping(value="/answerQuestions")
    public String answerQuestions(@ModelAttribute(value="discFormAns") DiscFormAnswersVo discFormAnswers){

        RawAnswerVo rawAnswerVo = new RawAnswerVo();
        //set current user's wechat id
        //now just faking the wechat_ids until acutally pluged into wechat
        final String wechatId = "yycFakeWechatId";
        rawAnswerVo.setWechatId(wechatId);

        //set answers
        rawAnswerVo.setAnswer1(discFormAnswers.getMost1()+discFormAnswers.getLeast1());
        rawAnswerVo.setAnswer2(discFormAnswers.getMost2()+discFormAnswers.getLeast2());
        rawAnswerVo.setAnswer3(discFormAnswers.getMost3()+discFormAnswers.getLeast3());
        rawAnswerVo.setAnswer4(discFormAnswers.getMost4()+discFormAnswers.getLeast4());
        rawAnswerVo.setAnswer5(discFormAnswers.getMost5()+discFormAnswers.getLeast5());
        rawAnswerVo.setAnswer6(discFormAnswers.getMost6()+discFormAnswers.getLeast6());
        rawAnswerVo.setAnswer7(discFormAnswers.getMost7()+discFormAnswers.getLeast7());
        rawAnswerVo.setAnswer8(discFormAnswers.getMost8()+discFormAnswers.getLeast8());
        rawAnswerVo.setAnswer9(discFormAnswers.getMost9()+discFormAnswers.getLeast9());
        rawAnswerVo.setAnswer10(discFormAnswers.getMost10()+discFormAnswers.getLeast10());
        rawAnswerVo.setAnswer11(discFormAnswers.getMost11()+discFormAnswers.getLeast11());
        rawAnswerVo.setAnswer12(discFormAnswers.getMost12()+discFormAnswers.getLeast12());
        rawAnswerVo.setAnswer13(discFormAnswers.getMost13()+discFormAnswers.getLeast13());
        rawAnswerVo.setAnswer14(discFormAnswers.getMost14()+discFormAnswers.getLeast14());
        rawAnswerVo.setAnswer15(discFormAnswers.getMost15()+discFormAnswers.getLeast15());
        rawAnswerVo.setAnswer16(discFormAnswers.getMost16()+discFormAnswers.getLeast16());
        rawAnswerVo.setAnswer17(discFormAnswers.getMost17()+discFormAnswers.getLeast17());
        rawAnswerVo.setAnswer18(discFormAnswers.getMost18()+discFormAnswers.getLeast18());
        rawAnswerVo.setAnswer19(discFormAnswers.getMost19()+discFormAnswers.getLeast19());
        rawAnswerVo.setAnswer20(discFormAnswers.getMost20()+discFormAnswers.getLeast20());
        rawAnswerVo.setAnswer21(discFormAnswers.getMost21()+discFormAnswers.getLeast21());
        rawAnswerVo.setAnswer22(discFormAnswers.getMost22()+discFormAnswers.getLeast22());
        rawAnswerVo.setAnswer23(discFormAnswers.getMost23()+discFormAnswers.getLeast23());
        rawAnswerVo.setAnswer24(discFormAnswers.getMost24()+discFormAnswers.getLeast24());

        System.out.println("Input Answers is: "+rawAnswerVo);
        questionaireDiscService.answerQuestions(rawAnswerVo);
        return render("confirm_page");
    }

    @PostMapping(value="/getProcessedAnswer")
    public String getProcessedAnswer(Model model){//, @RequestParam(value = "wechatId") String wechatId){
        final String wechatId = "yycFakeWechatId";
        ResultCommentVo comment = questionaireDiscService.getResultComment(wechatId);
        model.addAttribute("comment", comment);
        return render( "result");
    }
}