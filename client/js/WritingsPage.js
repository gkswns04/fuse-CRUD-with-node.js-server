//writingsPage를 위한 js파일

var CommonData = require("js/CommonData");

//뒤로 가기 함수
function goBack() {
	router.goBack();
}

//writePage로 이동 함수
function gotoWrite() {
	router.push("write");
}

module.exports = {
    writingsFirst:CommonData.writingsFirst,
    contentAll:CommonData.contentAll,
    goBack,
    gotoWrite
}