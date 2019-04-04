# boardz
게시판 검색 기능 완성하기

## 기존 파일
```
 .
├── css
│   └── style.css
├── src
│   └── boardz.css
├── board.html
```

## 추가 및 수정된 파일
```
 .
├── css
│   └── style.css
├── src
│   └── boardz.css
├── board.php (수정)

```

## board.php (수정)
- example의 form 태그에 method='GET' action='boards.php' 추가
- boards.php에서 GET으로 전달받은 변수 값을 가져옴
	+ search
- MySQL 데이터베이스 연동
    + mysql_connect
	+ mysql_select_db
- 전달받은 변수 값 search를 이용해서, MySQL에 쿼리 스트링 전송
	+ mysql_query
- mysql_fetch_array() 함수를 이용해서, 전달받은 레코드를 가져옴
- 전달받은 레코드의 image_url 필드의 값을 echo() 함수를 통해 html의 <img> 태그의 src 속성 값으로 넣음
- 전달받은 레코드의 title 필드의 값이 빈 문자열이 아닌 경우에 echo() 함수를 통해 html의 <h1> 태그의 내용으로 넣음
- 전달받은 레코드의 contents 필드의 값이 빈 문자열이 아닌 경우에 echo() 함수를 통해 html 내용으로 넣음
- html의 <ul> 태그를 이용한 배치를 위해 num 변수, rowIdx 변수 추가함. num 변수는 mysql_num_rows() 함수를 이용해 쿼리 실행 결과 레코드의 개수를 3으로 나눈 수에 ceil() 함수를 적용시켜 세 개의 <ul> 태그를 사용할 때의 내부의 <li> 태그 개수의 최대값을 가지는 값이고, rowIdx 변수는 해당 row가 쿼리 실행 결과가 몇 번째 레코드인지를 저장하는 값이다.