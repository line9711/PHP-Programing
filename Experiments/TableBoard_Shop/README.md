# TableBoard_Shop
게시판 추가/수정/삭제 기능 구현하기.

## 기존 파일
```
 .
├── css - board_form.php와 index.php 에서 사용하는 stylesheet
│   └── ...
├── fonts - 폰트
│   └── ...
├── images - 아이콘 이미지
│   └── ...
├── vender - 외부 라이브러리
│   └── ...
├── js - board_form.php와 index.php 에서 사용하는 javascript
│   └── ...
├── function
│   └── insert.php - 게시글 작성 기능 구현
│   └── update.php - 게시글 수정 기능 구현
│   └── delete.php - 게시글 삭제 기능 구현
├── board_form.php - 게시글 작성/수정 시 사용하는 form이 포함된 php 파일
├── index.php - 게시글 조회 기능 구현
```

## MySQL 테이블 생성!

[여기에 테이블 생성 시, 사용한 Query 를 작성하세요.]
Note: 
- table 이름은 tableboard_shop 으로 생성
- 기본키는 num 으로, 그 외의 속성은 board_form.php 의 input 태그 name 에 표시된 속성 이름으로 생성
- 각 속성의 type 은 자유롭게 설정 (단, 입력되는 값의 타입과 일치해야 함)
    - ex) price -> int
    - ex) name -> char or varchar
CREATE TABLE tableboard_shop (
  num INT NOT NULL,
  date DATETIME NOT NULL,
  order_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(12,2) NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (num));
    
## index.php 수정
- DB를 연결한 후, tableboard_shop 테이블의 모든 레코드를 가져와 HTML을 이용하여 표현함.

## board_form.php 수정
- DB를 연결한 후, GET으로 넘어온 num 값을 가진 레코드를 가져와 HTML을 이용하여 표현함.
- 기존에 없던 <input type="hidden"> 태그를 추가하여 UPDATE할 레코드가 무엇인지 알 수 있도록 num 정보를 넣어줌.

## function
### insert.php 수정
- 주소를 통한 접근이나 유효하지 않은 접근을 차단하고, POST 방식으로 넘어온 경우에만 insert 작업이 실행되도록 $_POST에 데이터가 있는지를 검사함.
- DB를 연결한 후, tableboard_shop에 새로 넣을 레코드의 num 값을 구하는 쿼리를 실행함.
	+ num은 마지막 레코드의 num에 1을 더한 값으로 이는 전체 레코드의 수와 같음을 이용했다.
- num에 해당하는 값은 cnt라는 새로운 변수에 넣어줌.
- cnt 변수의 값과 POST 방식을 통해 넘어온 사용자가 입력한 데이터 값을 이용해 INSERT 쿼리를 실행함.
- 실행 결과를 javascript의 alert() 함수를 통해 알려준 후, index.php로 페이지 변경.

### update.php 수정
- 주소를 통한 접근이나 유효하지 않은 접근을 차단하고, POST 방식으로 넘어온 경우에만 update 작업이 실행되도록 $_POST에 데이터가 있는지를 검사함.
- DB를 연결한 후, POST 방식을 통해 넘어온 사용자가 입력한 데이터 값을 이용해 UPDATE 쿼리를 실행함.
	+ 변경할 레코드를 식별하기 위해 $_POST(num)에 담긴 정보를 사용함.
- 실행 결과를 javascript의 alert() 함수를 통해 알려준 후, index.php로 페이지 변경.

### delete.php 수정
- 유효하지 않은 접근을 차단하고, num 정보를 갖고 넘어온 경우에만 delete 작업이 실행되도록 $_GET[num] 변수가 정의 되었는지를 검사함.
- DB를 연결한 후, GET 방식을 통해 넘어온 삭제할 레코드의 num 데이터 값을 이용해 DELETE 쿼리를 실행함.
- 실행 결과를 javascript의 alert() 함수를 통해 알려준 후, index.php로 페이지 변경.

