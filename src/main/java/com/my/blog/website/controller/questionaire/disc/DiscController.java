package com.my.blog.website.controller.questionaire.disc;

import com.my.blog.website.controller.BaseController;
import com.my.blog.website.model.Vo.questionaire.disc.RawAnswerVo;
import com.my.blog.website.model.Vo.questionaire.disc.ResultCommentVo;
import com.my.blog.website.service.questionaire.disc.IQuestionaireDiscService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        Object discQuestions = questionaireDiscService.getQuestions();
        model.addAttribute("discQuestions",discQuestions);
        return render("disc_questions");
    }

    @PostMapping(value="/answerQuestions")
    public String answerQuestions(RawAnswerVo rawAnswerVo){
        //Assuming that all answers to all questions have two characters, e.g. "mostleast"

        //now just faking the wechat_ids until acutally pluged into wechat
        System.out.println("Input Answers is: "+rawAnswerVo);
        questionaireDiscService.answerQuestions(rawAnswerVo);
        return render("confirm_page");
    }

    @PostMapping(value="/getProcessedAnswer")
    public String getProcessedAnswer(Model model, @RequestParam(value = "wechatId") String wechatId){
        ResultCommentVo comment = questionaireDiscService.getResultComment(wechatId);
        model.addAttribute("comment", comment);
        return render( "result");
    }
}