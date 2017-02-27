//homePage에 필요한 js 파일

//공통페이지 객체 접근을 위해 추가
var CommonData = require("js/CommonData");

//writePage로 이동 함수
function gotoWrite() {
	router.push("write");
}

//subsPage로 이동 함수
function gotoSubs() {
	router.push("subs");
}

//ninePage로 이동 함수
function gotoNine() {
	router.push("nine");
}

//아홉 편의 모음으로 이동하기 위한 모음 보기 버튼을 눌렀을 때 동작하는 함수
function nineWritings() {

    //아홉편의 글에 대한 데이터를 받기 위한 요청
    fetch('http://localhost:8081/api/content/nine', {
        method: 'GET', 
        headers: { "Content-type": "application/json; charset=UTF-8"}})
    .then(function(response) {
        return response.json();
        }).then(function(jsonData) {
        var conts = jsonData;
        CommonData.contentNine.clear();
        for (var i = 0; i < conts.length; i++) {
            //날짜 포맷 적용
            conts[i].CREATEDDATE = new Date(conts[i].CREATEDDATE).dateForm();
            CommonData.contentNine.add(conts[i]);
        }  
        //데이터 받은 후 ninePage로 이동
        router.push("nine");
    });  
}

//PageController를 통해 좌우로 이동했을 때 다른페이지로 넘어갔다 돌아오면 다시 homePage의 첫번째 패이지로 이동하도록 추가
function clickHandler() {
    CommonData.currentPage.value = "page1";
}


//CommonData.~는 CommonData에서 객체에 접근하기 위해 사용 
module.exports = {
    contentOne:CommonData.contentOne,
    clickHandler,
    currentPage:CommonData.currentPage,
    mainSub:CommonData.mainSub,
    gotoWrite,
    gotoSubs,
    gotoNine,
    contentNine:CommonData.contentNine,
    nineWritings
}
