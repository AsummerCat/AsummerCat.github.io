<!--崩溃欺骗-->
 var OriginTitle = document.title;
 var titleTime;
 document.addEventListener('visibilitychange', function () {
     if (document.hidden) {
         $('[rel="icon"]').attr('href', "/img/飞天小女警_毛毛.png");
         document.title = '╭(°A°`)╮ 页面崩溃啦 ~';
         clearTimeout(titleTime);
     }
     else {
         $('[rel="icon"]').attr('href', "/img/飞天小女警_泡泡.png");
         document.title = '(ฅ>ω<*ฅ) 噫又好了~' + OriginTitle;
         titleTime = setTimeout(function () {
             document.title = OriginTitle;
         }, 2000);
     }
 });