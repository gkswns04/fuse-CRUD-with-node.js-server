# fuse-CRUD-example

* 이 앱은 기존에 있는 앱을 모방하여 만들었습니다.

# 사용기술

* Frontend : Fuse
* Backend : Node.js, Mysql

# 작동 방법

1. https://www.fusetools.com/downloads 페이지에서 fuse 다운로드 및 설치

2. DB를 준비하기 위해 mysql 설치 후 root계정으로 로그인. writingdb를 만들고 writingSQL.sql 파일로 table과 기본적인 db 내용 입력 

3. server폴더에서 npm install 후 node server.js로 서버실행

4. cmd에서 client폴더 내부의 위치로 들어가서 fuse preview 실행

5. android 또는 IOS로 확인하려면 cmd에서 fuse install android 명령으로 설치 후 스마트폰 연결한 후 fuse preview -t=Android 또는 fuse preview -t=iOS 명령으로 실행 
