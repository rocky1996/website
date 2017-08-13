$(function () {
   $('.login').click(function () {
       var sHeight = $(document).height();
       var sWidth = $(document).width();
//      一个最大的遮罩层
       var $oMask = $('<div id="mask"></div>');
       $oMask.css({'height':sHeight+'px','width':sWidth+'px'});
       $("body").append($oMask);
       var wHeight=$(window).height();
       var wWidth=$(window).width();
//     遮罩层里面的按钮选择
       var $oLogin=$('<div id="face">' +

           '</div>');
       $('body').append($oLogin);
       var dHeight=$oLogin.height();
       var dWidth=$oLogin.width();
       $oLogin.css({left:(wWidth-dWidth)/2+"px",top:(wHeight-dHeight)/2+"px"});
   });
});
