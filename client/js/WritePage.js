//writePage를 위한 js 파일

var CommonData = require("js/CommonData");

//뒤로 가기 함수
function goBack() {
    router.goBack();
}

//완료버튼을 누르면 동작하는 함수.
//서버에 데이터 전달
function write() {

    var postData = {"CONTENT":CommonData.text.value, "SUBJECT":CommonData.mainSub.value};

	fetch('http://localhost:8081/api/content/post', {
        method: 'POST', 
        headers: { "Content-type": "application/json; charset=UTF-8"},
        body: JSON.stringify(postData)
    })
    .then(function(response) {
    	console.log(response._bodyText);
    	
    });
}

module.exports = {
    contentAll:CommonData.contentAll,
    text:CommonData.text,
    mainSub:CommonData.mainSub,
    contentOne:CommonData.contentOne,
    write,
    goBack
}