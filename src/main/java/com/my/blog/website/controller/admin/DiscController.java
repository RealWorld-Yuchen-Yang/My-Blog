package com.my.blog.website.controller.admin;

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

    @PostMapping(value="/answerQuestions")
    public void answerQuestions(RawAnswerVo rawAnswerVo){
//        questionaireDiscService.insert(rawAnswerVo);
    }

    @PostMapping(value="/getProcessedAnswer")
    public String getProcessedAnswer(Model model, @RequestParam(value = "wechatId") String wechatId){
        ResultCommentVo comment = questionaireDiscService.getResultComment(wechatId);
        model.addAttribute("comment", comment);
        return render( "result");
    }
}