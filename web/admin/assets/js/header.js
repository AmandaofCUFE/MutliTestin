(function(){
    // console.log(location.href);
    // console.log(location.host);
    // console.log(location);

    var href = location.href;
    // console.log(href);
    var currentTab = 0;
    if(href.indexOf('firstpage')>=0){
            currentTab = 0;
    }else if(href.indexOf('usercenter')>=0){
        currentTab = 1;
    }else if(href.indexOf('article')>=0){
        currentTab = 2;
    }else if(href.indexOf('topic')>=0){
        currentTab = 3;
    }else if(href.indexOf('result')>=0){

        currentTab = 4;
    }
    else if(href.indexOf('collection')>=0){
        currentTab = 1;
    }else if(href.indexOf('readinglist')>=0){
        currentTab = 1;
    }else if(href.indexOf('uploadlist')>=0){
        currentTab = 1;
    }else if(href.indexOf('emotion')>=0){
        currentTab = 1;
    }else if(href.indexOf('comment')>=0){
        currentTab = 1;
    }

    else{
        currentTab = 0;
    }

    $('.am-nav li').each(function(index, value){
        if(currentTab == index){
            $(this).addClass('am-active').siblings().removeClass('am-active');
        }
        // console.log(index,value);
    })
})();