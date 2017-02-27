
CREATE TABLE SUBS (
	SUBJECT     VARCHAR(50)  NOT NULL, -- 글감
 	PRIMARY KEY (SUBJECT)
);



CREATE TABLE CONTENTS (
	NO         INTEGER      NOT NULL	AUTO_INCREMENT, 
	CONTENT    TEXT		 NOT NULL,
	CREATEDDATE DATETIME  NOT NULL	DEFAULT	CURRENT_TIMESTAMP,
	SUBJECT     VARCHAR(100)  NOT NULL, 
	WRITER	    VARCHAR(50)	NOT NULL DEFAULT '관리자',
	ISEXTRACT   VARCHAR(2) NOT NULL DEFAULT 'N',  
 	PRIMARY KEY (NO),
	FOREIGN KEY (SUBJECT) REFERENCES SUBS (SUBJECT)
);

INSERT INTO SUBS VALUES ('주사위');
INSERT INTO SUBS VALUES ('동경');
INSERT INTO SUBS VALUES ('며칠 후');
INSERT INTO SUBS VALUES ('틀');
INSERT INTO SUBS VALUES ('정보');
INSERT INTO SUBS VALUES ('방향');
INSERT INTO SUBS VALUES ('외모');
INSERT INTO SUBS VALUES ('조명');
INSERT INTO SUBS VALUES ('신호등');
INSERT INTO SUBS VALUES ('친절');
INSERT INTO SUBS VALUES ('수첩');
INSERT INTO SUBS VALUES ('무한');
INSERT INTO SUBS VALUES ('숲 속');
INSERT INTO SUBS VALUES ('바래다');
INSERT INTO SUBS VALUES ('가방');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('마주앉아 주사위를 던지던 밤, 우리는 비에 젖은 도시들을 하나둘 쓸어모으기 시작했네. 힘없이 손끝에서 녹아내리던 이국의 골목들, 온통 여관과 호텔뿐인 도시들 속에서 우리는 좀더 비릿한 곳을 찾아 위조지폐처럼 떠돌았지', '주사위', '이혜미 <빗속의 부르마블> 중', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('주사위가 굴러갔다.
눈금의 수만큼 나는 움직인다.

그 어디로든,
인생이라는 주사위를 통해,
나는 오늘도 인생이라는 주사위에 의해

굴러간다.

어디로든, 굴러간다.', '주사위', '에카엘');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('주사위 한 번 던지면
어떤 숫자가 나올지 모르는 게
우리들 인생

예상할 수 없기 때문에 더 즐거운 게 인생이다.', '주사위', '달밤의토끼');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('사랑은 타이밍이라

주사위를 굴려 굴려 한판을 다 돌아도

너란 자리는 조금 모자라고 조금 지나쳐 가고

한없이 비껴가기만 하더라', '주사위', '플라네타리움');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('이제는 내가 마치 몽유병자처럼 지속하던, 독특하게 내면 안으로 은둔해버린 삶의 방식에서 새로운 것이 형성되기 시작했다. 내 안에서 삶을 향한 동경, 아니 오히려 사랑을 향한 동경이 피어났다.', '동경', '헤르만 헤세 <데미안> 중', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('동경과 공명

그대와 나의 애매한 관계

그리하여 나는 특별한 그 자리를 넘본다.
', '동경', '숨별');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('무언가를 동경을 함은
눈을 멀게 하고 생각을 멈추게 하는 
제법 강한 마취제다.', '동경', '세상을알아버린피터팬');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('행복을
동경하지 말아요

행복은
동경의 대상이 아니고

지금
누려야 할 대상이에요

#행복하자 아프지 말고', '동경', '아들러리안');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('두보가 떠나고 며칠 후,
떠난 동생 두보를 더욱 그리워하던 이백은
문수가 시구성 아래에서
지난 날 함께 지내던 일이 떠올랐고,
이제는 자기 홀로 남겨진 것을 깨달았다.', '며칠 후', '칭란쯔 <그대를 만나, 이 생이 아름답다> 중', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('너의 권태에서
너의 표정에서

그것이 단지 며칠 후라는 건 우리 둘 다 알았다.

그저 익숙한 것에서 비롯된 편안함과
그것이 막상 현실로써 들이닥치게 됨에 생길 주변의 변화, 시선, 듣기 싫은 위로.

우리는 억지 노력을 하고 있다.', '며칠 후', '혜기야');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('기약 없는 며칠 후
정확히 알려줬으면..
떠나는 사람도
기다리는 사람도
걱정이 없을텐데...
그래도 하염없이
당신을 기다립니다
', '며칠 후', '고스란한 소원');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('며칠 후 너를 만난다는 것
가장 설레는 일', '며칠 후', '유월 그 어느날');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('사랑은 단 한 번 펼친 면의 첫 줄에서
비유된다 이제 더 이상 우연한 방식의 이야기는 없다
이 곳에 도착했으니 가방은 조용해지고
마음이 열리기 시작한다
여행은 항상 당신의 궤도에 있다.', '가방', '윤성택, <여행> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('가방...
가방은 책가방밖에 떠오르지가 않는다
초등학교때 6년간 쓴 가방을 보면 초등학교 때 있었던 일들이 문득 떠오른다
물감 쏟아져 엄청나게 고생했던 일
수저 안 가져와서 급식실에 갔던 일
아직까지도 기억이 나는 게 너무 신기하다', '가방', 'S T A Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('졸업을 한 후
가방에 있던 책을 내려놓는 게 우리의 추억을 내려놓는 거 같아서
살짝 망설였던 거 같다.', '가방', 'Classical');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('가방 끈이 중요해 짧으면 할수 있는 것도 별로 없어
늘릴 수 있을 만큼 늘려야해', '가방', '재아야');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('유리창으로 들어온 햇살이
책꽂이의책들을 바래게 한다
햇살 아래 바래지 않는 책은 없다
열려진 책이거나 전혀 열려지지 않는 책이거나 햇살은 상관하지 않고 그것들을 조금씩 앗아간다', '바래다', '강영환 <책은 어두워지지 않는다> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('이제는 바래진
나의바램', '바래다', '꽃, 그리고 너');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('연애 초에 바래다 준다고 할 때
그러라고 할 걸 그랬어
힘들까봐 그냥 가라고 했는데
결국 한 번도 바래다 주지 않았잖아
아끼다 똥 됐네', '바래다', '서해야');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('사라지다
모든것이', '바래다', '공무도하');




INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('인간의 말을 이해할 수 없을 때
나는 숲을 찾는다
숲에가서
나무와 풀잎의 말을 듣는다
무언가 수런대는 그들의 목소리를 알 수 없어도
나는 그들의 은유를 이해할 것 같다
이슬 속에 지는 달과
그들의 신화를,
이슬 속에 지는 달과
그들의 신화를,
이슬 속에 뜨는 해와
그들의 역사를,', '숲 속', '정희성 <숲 속에 서서> 중', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('
숲 속에서 길을 찾아
길은 점점 더 모르겠어

하지만 그 와중에도 길을 찾으려 노력해
언젠가는 숲을 벗어나기 위해', '숲 속', '재아야');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('보았다.
그 어느 곳보다도 푸른 그곳에서
표현하지 못할 만큼 한없이 푸른
너를', '숲 속', 'black.R');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('숲속에서 한번', '숲 속', '야진');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('우리는 분명 무한한 세계에 살고 있지만 유한한
세상밖에 보지 못한다. 유한한 것밖에 보지
못하는 능력으로 무한한 세상을 생각한다.
이것이 어쩌면 우리의 인생을 가장 혼란스럽게
만드는 요소가 아닐까?', '무한', '박종하 <수학,생각의 기술>중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('0.9999999...
무한인 것 같지만 결국 유한하더라', '무한', '미르');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('인생은 무한하지 않기에
의미와 가치가 있고
무수히 아름답다.', '무한', 'hippo.soo');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('절망일 수도,
희망일 수도', '무한', '52130805');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('나의 수첩은 상실,욕망,기대의 일화들,하늘로
날아가는 여행자들의 영혼의 스냅 사진들로
점점 두꺼워졌다.', '수첩', '알랭 드 보통 <공항에서 일주일을> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('적어놓고 보지않아
버릴때쯤에나 한번, 보겠지', '수첩', '빛');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('수첩은
역시
스프링 수첩
지난일을 찢어버릴수 있거던', '수첩', 'SKEJ');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('생각 나는 것들만 적어놔도
왠지
만족스럽다.', '수첩', '윤지 박');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('인간은 결국 홀로 설수 밖에 없는 존재이지만,
친절은 넘어진 자를 일으켜 세운다.', '친절', '법정,류시화 < 살아 있는 것은 다 행복하라> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('너를 위해서가 아닌
그 무엇이 조심스러운 나를위해', '친절', 'hippo.soo');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('친절을 베풀고 싶은데
내 욕심때문에 실천하지 못할 때
난 내가 착하지 못하다는 것을 느낀다.', '친절', '52130805');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('당연하다고 생각했던 것이
과분하게 느껴질 때', '친절', 'O_5o_5
');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('빨간 신호등 앞에서 파란 불이 들어오길
기다리듯이, 인내와 끈기를 가지고 파란
신호등이 켜질 날을 기다려야 한다. 서두르면
파란 신호등은 좀처럼 켜지지 않을지도 모른다.
열심히 노력하여 극복하야 한다. 아픔은
아무에게나 찾아오는 게 아니다. 누구보다
성숙하지 못한 사람에게 찾아온다. "아픈 만큼
성숙해진다"는 말도있듯이, 철부지에게는
아픔이 특효약이 되는 것이니, 아픔이 찾아오는
것은 이상한 일이 아니다.', '신호등', '홍미숙 <신호등> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('가끔은 느리게,
가끔은 느긋하게
가끔은 천천히
가끔은 빠르게', '신호등', '인비서블');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('그래
내가 기다릴게
적신호만 켜지마', '신호등', '주곤');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('하 나의 인내심', '신호등', '김유빈');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('다시 무대에 서서 연기를 한다. 조명을 받고
주어진 대사를 한다. 박수를 받고 막이
내려진다. 일단 나를 벗어났다가 다시 나로
되돌아온다. 하지만 돌아온 곳은 정확하게는
이전과 똑같은 장소가 아니다.', '조명', '무라카미 하루키 <드라이브 마이 카> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('조명 속 찬란했던 너를 기억하기에
침묵하게 되는 것인지 모른다.', '조명', '녹는다녹아');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('가장 밝은 조명아래 서있는
나는
가장 환하게 어둡다.', '조명', '그곳엔 아무것도');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('달의 조명 태양
자식의 조명 부모님
나의 조명 너', '조명', '정민');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('마치 불썽사나운 외모를 가진 사람은 저절로 더 
좋은 내면을 지니게 된다는 듯,
아니면 외모의 결함을 내면의 뭔가로 당연히
보충해야 한다는 듯이 말했다.', '외모', '샤론 볼턴 <뱀이 깨어나는 마을> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('사람들도 참.. 어쩔수가없나봐', '외모', '김유빈');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('예뻐보이고 싶은게 아니라 사랑받고 싶은거야', '외모', '띠부띠부씰');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('잘생긴 게 최고야!', '외모', '귤겁질');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('인생은 순방향으로 살게 되고 역방향으로 이해된다.', '방향', '마이케 빈네무트 <나는 떠났다 그리고 자유를 배웠다> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('방향치인 나에겐 너무 무서운 존재', '방향', '잘자96');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('나침반은 올바른 방향을 가르키기 전에 반드시 흔들린다.', '방향', '인용구');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('길눈이 어둡고, 방향감각이 없어서 알게 된건
해매다 보면 다시 제자리로 돌아온다는 것이다.', '방향', '_혜');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('정보는 정보를 원하게 마련이거든요. 한번
수집하기 시작하면 수집하는 것 자체가 목적이
됩니다. 혹시 빠뜨린 건 없나, 더 없나, 어디
모르는 정보가 있는 건 아닌가, 누가 감추고
있지는 않나, 의심에 빠져서 정보 자체를 비대하게
살찌우면서 더 더 하고 탐욕스럽게
원하게 되는거죠.', '정보', '온다 리쿠 <나와 춤을> 중', 'Y');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('너의 대한 정보를 남기지 마라.', '정보', 'goooooood');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('쓸모 있어야 정보다.
정보를 알아 볼 수 있어야 한다.
한데 엮어두고 결론이 나야한다.
', '정보', '매력고등어');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('0과 1, 흑과 백의 조합,
소중하고 미묘한 덩어리 결정.', '정보', 'Alt');



INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`,`ISEXTRACT`) VALUES ('우리는 삶을 번번이 하나의 틀에 집어넣고,
삶은 번번이 그 틀을 부숴버린다.', '틀', '아르노 가이거 <유배중인 나의 왕> 중', 'Y');


INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('내 그릇을 채워나가야만 하건만
나는 틈만 나면 거푸집을 때려부수고 싶다.
이 구더기 같은 것 같으니', '틀', '매달린남자');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('내가 바라는 아름다운 액자
그 속에 나라는 사진을 집어넣었다.
모서리가 삐져나왔고, 잘라내지 않는 한 맞출 수가 없다는 걸 알았다.', '틀', '제트별');

INSERT INTO CONTENTS (`CONTENT`, `SUBJECT`, `WRITER`) VALUES
('얽매이기 싫은데 이미 얽매어 져있어', '틀', '_혜');



