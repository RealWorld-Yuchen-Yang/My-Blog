'use strict';

var nQ = $("#questions .question").length;
var limitPerPage = 3;

$("#questions .question:gt("+(limitPerPage-1)+")").hide();
var totalPages = Math.round(nQ/limitPerPage);
// alert(totalPages);
$(".pagination").append("<li class='current-page active' ><a   href='javascript:void(0)'>"+1+" </a></li>");
for(var i=2;i<=totalPages;i++){
    $(".pagination").append("<li class='current-page'><a   href='javascript:void(0)'>"+i+" </a></li>");
}

$(".pagination").append("<li><a  href='javascript:void(0)' aria-label='Next' id='next'>&raquo;</a></li>");

//highlighting the current page index
$(".pagination li.current-page").on("click",function(){
    if($(this).hasClass("active")){
        return false;
    }
    else{
        var currentPage = $(this).index();
        $(".pagination li").removeClass("active");
        $(this).addClass("active");
        $("#questions .question").hide();

        var grandTotal = limitPerPage * currentPage;
        for(var i=grandTotal-limitPerPage; i<grandTotal;i++){
            $("#questions .question:eq("+i+")").show();
        }
    }
});

$("#next").on("click",function () {
    var currentPage = $(".pagination li.active").index();
    if(currentPage == totalPages){
        return false;
    }
    else{
        currentPage++;
        $(".pagination li").removeClass("active");
        $(this).addClass("active");
        $("#questions .question").hide();

        var grandTotal = limitPerPage * currentPage;
        for(var i=grandTotal-limitPerPage; i<grandTotal;i++){
            $("#questions .question:eq("+i+")").show();
        }
        $(".pagination li.current-page:eq("+(currentPage-1)+")").addClass("active");
    }
});

$("#prev").on("click",function () {
    var currentPage = $(".pagination li.active").index();
    if(currentPage === 1){
        return false;
    }
    else{
        currentPage--;
        $(".pagination li").removeClass("active");
        $(this).addClass("active");
        $("#questions .question").hide();

        var grandTotal = limitPerPage * currentPage;
        for(var i=grandTotal-limitPerPage; i<grandTotal;i++){
            $("#questions .question:eq("+i+")").show();
        }
        $(".pagination li.current-page:eq("+(currentPage-1)+")").addClass("active");
    }
});

//form validation: if each line has two input values, it is invalid
$("#questions").submit(function(e){
    e.preventDefault();
    $(".error").remove();
    var mostList = $("#questions .question-line-most");
    var leastList = $("#questions .question-line-least");
    var mostCount=0;
    var leastCount=0;
    var length = mostList.length;

    for(var i=0;i<length;i++){
        var curMostChecked = mostList[i].checked;
        var curLeastChecked = leastList[i].checked;

        if(curMostChecked && curLeastChecked){
            leastList.eq(i).after("<span class='error'>inputs should not be in the same line</span>");
        }
        if(curMostChecked){
            mostCount++;
        }
        if(curLeastChecked){
            leastCount++;
        }
    }
    if(mostCount !== nQ || leastCount !== nQ){
        alert("not enough inputs")
    }
    else{
        $(this).get(0).submit();
    }
})
