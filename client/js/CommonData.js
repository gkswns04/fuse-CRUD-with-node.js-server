//공통으로 쓰이는 js 페이지

//Data binding을 위한 객체를 생성하기 위한 Observable 추가 
var Observable = require("FuseJS/Observable");

//객체 생성
var sub = Observable();
var contentOne = Observable();
var contentNine = Observable();
var contentAll = Observable();
var mainSub = Observable();
var writingsFirst = Observable();
var text = Observable();
var currentPage = Observable("page1"); 


//서버에 하나의 글에 대한 데이터 요청
fetch('http://localhost:8081/api/content/one', {
    method: 'GET', 
    headers: { "Content-type": "application/json; charset=UTF-8"}})
.then(function(response) {
	return response.json();
	}).then(function(jsonData) {
    var conts = jsonData;
    for (var i = 0; i < conts.length; i++) {
        mainSub.value = conts[i].SUBJECT;
        contentOne.add(conts[i]);
    }
});


//서버에 주제 목록에 대해 요청
fetch('http://localhost:8081/api/sub', {
    method: 'GET', 
    headers: { "Content-type": "application/json; charset=UTF-8"}})
.then(function(response) {
    return response.json();
    }).then(function(jsonData) {

    var subs = jsonData;
    for (var i = 0; i < subs.length; i++) {
        sub.add(subs[i]);
    }
}); 


//날짜 형식을 위한 포맷
Date.prototype.dateForm = function()
{
    var yyyy = this.getFullYear().toString();
    var mm = (this.getMonth() + 1).toString();
    var dd = this.getDate().toString();
    var hh = this.getHours().toString();

    return yyyy + '년' + ' ' + (mm[1] ? mm : '0'+mm[0]) + '월' + ' ' + (dd[1] ? dd : '0'+dd[0]) + 
    '일' + ' ' + (dd[1] ? dd : '0'+dd[0]) + '시';
}


//바인딩 및 다른 페이지에서 참조를 위한 exports
module.exports = {
	sub,
    contentOne,
    contentNine,
    contentAll,
    writingsFirst,
	text,   
    mainSub,
    currentPage
}

