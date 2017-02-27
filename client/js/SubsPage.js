//subsPage에서 필요한 js파일

var CommonData = require("js/CommonData");

//homePage로 이동하기 위한 함수
exports.gotoHome = function() {
	router.push("home");
}

//writingsPage로 이동하기 위한 함수
exports.gotoWritings = function() {
	router.push("writings");
}

//선택한 글감에 대한 글을 받아오기 위한 함수 
function search(e) {
    fetch('http://localhost:8081/api/content/' + e.data.SUBJECT, {
        method: 'GET', 
        headers: { "Content-type": "application/json; charset=UTF-8"}})
    .then(function(response) {
        return response.json();
        }).then(function(jsonData) {
        var conts = jsonData;

        //다시 들어갔을 때 이전 목록을 지우기 위한 작업
        CommonData.writingsFirst.clear();
        CommonData.contentAll.clear();

        for (var i = 0; i < conts.length; i++) {
            //첫번째 글은 특정글(일반유저의 글이 아닌 기존 글에서 발췌한 글)을 첫번째에 보여주기 위한 작업
            if (conts[i].ISEXTRACT == 'Y') {
                CommonData.writingsFirst.add(conts[i]);
                continue;
            }

            //날짜 포맷 적용
            conts[i].CREATEDDATE = new Date(conts[i].CREATEDDATE).dateForm();
            CommonData.contentAll.add(conts[i]);
            router.push("writings");
        }
    });
}

module.exports = {
    contentAll:CommonData.contentAll,
    search,
    sub:CommonData.sub,
    writingsFirst:CommonData.writingsFirst,
    dateForm:CommonData.dateForm
}
