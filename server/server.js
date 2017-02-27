var express = require('express'); //express framework 사용
var app = express();
var bodyParser = require('body-parser'); //post 형식의 데이터에 body를 파싱하기 위해 사용
var path = require('path'); //파일 경로를 다루기 위해 사용
var expressValidator = require('express-validator'); // req값의 유효값 검사에 사용

app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true })); 
app.use(bodyParser.json());
app.use(expressValidator());


//MySql 접속
var connection  = require('express-myconnection');
var mysql = require('mysql');

app.use(
    connection(mysql,{
        host     : 'localhost',
        user     : 'root',
        password : '1111',
        database : 'writingdb',
        debug    : false
    },'request')
);

//라우터 등록
var router = express.Router();

router.use(function(req, res, next) {
    console.log(req.method, req.url);
    next();
});

//글(content) 데이터에 접근하기 위한 요청에 응답하는 router
var cont = router.route('/content/:data');

//주제(subject) 데이터에 접근하기 위한 요청에 응답하는 router 
var sub = router.route('/sub');


//DB에서 글 데이터 가져오기(get요청에 대한 응답)
cont.get(function(req,res,next){
    req.getConnection(function(err,conn){

        if (err) { 
        	return next("Cannot Connect");
        }

        //하나의 글 데이터(homePage에서 사용 할)를 요청할 때 보내주기 위한 응답
        //2시간마다 바뀌게 적용하지 못해서 homePage에 출력을 바꾸려면 직접 여기서 번호를 바꿔줘야 합니다.
        if (req.params.data == 'one') {
        	var query = conn.query('SELECT * FROM CONTENTS WHERE no=?','1',function(err,rows){

	            if(err){
	                console.log(err);
	                return next("Mysql error, check your query");
	            }
            res.send(rows);
         	});

        //아홉 편의 모음에서 쓸 데이터 요청에 대한 응답	
        } else if (req.params.data == 'nine'){
        	var query = conn.query('SELECT * FROM CONTENTS order by rand() limit 9',function(err,rows){

	            if(err){
	                console.log(err);
	                return next("Mysql error, check your query");
	            }
            res.send(rows);
         	});

        // 특정 글감에 대한 글들을 받아오기 위한 쿼리
        } else {
        	var query = conn.query('SELECT * FROM CONTENTS WHERE SUBJECT=? ORDER BY createddate DESC',req.params.data,function(err,rows){

	            if(err){
	                console.log(err);
	                return next("Mysql error, check your query");
	            }
            res.send(rows);
         	});
        }

    });

});


//DB에서 글감 받아오기(글감목록에 사용)
sub.get(function(req,res,next){
    req.getConnection(function(err,conn){

        if (err) { 
        	return next("Cannot Connect");
        }

        var query = conn.query('SELECT * FROM SUBS',function(err,rows){

            if(err){
                return next("Mysql error, check your query");
            }
            res.send(rows);

         });

    });

});


//DB에 글 저장하기
cont.post(function(req,res,next){

    var errors = req.validationErrors();
    if(errors){
        res.status(422).json(errors);
        return;
    }
    
    //클라이언트에서 받은 데이터
    var data = {
        CONTENT:req.body.CONTENT,
        SUBJECT:req.body.SUBJECT
     };

    //DB에 저장
    req.getConnection(function (err, conn){
        if (err) { 
        	return next("Cannot Connect");
        }

        var query = conn.query("INSERT INTO CONTENTS set ? ",data, function(err, rows){

            if(err){
                console.log(err);
                return next("Mysql error, check your query");
            }

        res.sendStatus(200);
        });
     });
});


//router의 기본 url
app.use('/api', router);


//Server 동작
app.listen(8081, function() {
  console.log('listening on 8081')
})




















/*
// GET으로 넘어오는 경우
app.get('/test/:data', function(req, res, next) {
	var arr=[]
	var val={}
	val.word = '정보';
	val.writing = '정보는 정보를 원하게 마련이거든요. 한 번 수집하기 시작하면 수집하는 것 자체가 목적이 됩니다. 혹시 빠드린 건 없나, 더 없나, 어디 모르는 정보가 있는 건 아닌가, 누가 감추고 있지는 않나, 의심에 빠져서 정보 자체를 비대하게 살찌우면서 더 더 하고 탐욕스럽게 원하게 되는 거죠.';
	val.writer = '온다 리쿠 <나와 춤을> 중';
	arr.push(val);
    res.send(arr);

});

app.get('/test/write/:data', function(req, res, next) {
	console.log(req.params.data);
	res.send('good!!!');
})


// POST로 넘어오는 경우
app.post('/test', function(req, res, next) {
	console.log("post::" + req.body.num + req.body.name);
    res.send("post::" + req.body.num + req.body.name);
});

*/
