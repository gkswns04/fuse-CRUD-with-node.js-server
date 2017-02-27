//ninePage에서 필요한 js 파일

var CommonData = require("js/CommonData");

//back버튼을 눌렀을 때 ninePage의 첫 페이지로 이동한후 이전 페이지로 다시 이동하도록 했습니다. 
//다시 페이지에 들어왔을 때 첫페이지부터 시작하기 위해.
function clickHandlerN() {
    CommonData.currentPage.value = "page1";
    router.goBack();
}


module.exports = {
    contentNine:CommonData.contentNine,
    clickHandlerN,
    currentPage:CommonData.currentPage
}
