---------------------------------------------------
-- 학원 관련 테이블
---------------------------------------------------
-- 관리자 테이블 생성
CREATE TABLE admin (
	adminId 	VARCHAR(16) PRIMARY KEY,
	passwd 		VARCHAR(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 학원 테이블 생성
CREATE TABLE academy (
	academyId 	INT 		PRIMARY KEY AUTO_INCREMENT,
	academyName VARCHAR(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 강의 테이블 생성
CREATE TABLE lecture (
	lectureId 	INT 		PRIMARY KEY AUTO_INCREMENT,
	lectureName VARCHAR(60) NOT NULL,
	academyId 	INT 		NOT NULL,
	FOREIGN KEY (academyId) REFERENCES academy(academyId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------------------------------------
-- 멤버 관련 테이블
---------------------------------------------------
-- 그룹 테이블 생성
-- leader 필요하면 나중에 leader table 생성해서 memberId, groupId 연결
CREATE TABLE grouplist (
	groupId 	INT 		PRIMARY KEY AUTO_INCREMENT,
	groupName 	VARCHAR(30) NOT NULL	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 멤버 테이블 생성
CREATE TABLE member (
	memberId 	VARCHAR(16) 	PRIMARY KEY,
	passwd 		VARCHAR(16) 	NOT NULL,
    name 		VARCHAR(16) 	NOT NULL,
    dateOfBirth VARCHAR(10) 	NOT NULL,
    gender 		VARCHAR(2) 		NOT NULL,
    tel 		VARCHAR(16) 	NOT NULL,
    zipcode 	VARCHAR(8) 		NOT NULL,
    address 	VARCHAR(60) 	NOT NULL,
    addressDetail VARCHAR(60) 	NOT NULL,
    email 		VARCHAR(40) 	NOT NULL,
    regDate 	TIMESTAMP 		NOT NULL,
	lectureId 	INT 			NOT NULL,
	grade 		INT 			NOT NULL DEFAULT 0,
	point 		INT 			NOT NULL DEFAULT 0,
	reward 		INT 			NOT NULL DEFAULT 0,
	group1 		INT 			NOT NULL DEFAULT 1,
	group2 		INT 			NOT NULL DEFAULT 1,
	group3 		INT 			NOT NULL DEFAULT 1,	
	FOREIGN KEY (lectureId) REFERENCES lecture(lectureId),
	FOREIGN KEY (group1) REFERENCES grouplist(groupId),
	FOREIGN KEY (group2) REFERENCES grouplist(groupId),
	FOREIGN KEY (group3) REFERENCES grouplist(groupId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 알림 테이블
CREATE TABLE noti (
	notiId 		INT 			PRIMARY KEY AUTO_INCREMENT,
	receiver 	VARCHAR(16) 	NOT NULL,
	content 	VARCHAR(100) 	NOT NULL,
	checked 	BOOLEAN 		NOT NULL DEFAULT false,
	sendDate 	TIMESTAMP 		NOT NULL,
	FOREIGN KEY (receiver) REFERENCES member(memberId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 포인트 테이블
CREATE TABLE point (
	pointId 	INT 			PRIMARY KEY AUTO_INCREMENT,
	member 		VARCHAR(16) 	NOT NULL,
	content 	VARCHAR(100) 	NOT NULL,
	changeVal 	INT 			NOT NULL,
	accrDate 	TIMESTAMP 		NOT NULL,
	FOREIGN KEY (member) REFERENCES member(memberId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 적립금 테이블
CREATE TABLE reward (
	rewardId 	INT 			PRIMARY KEY AUTO_INCREMENT,
	member 		VARCHAR(16) 	NOT NULL,
	content 	VARCHAR(100) 	NOT NULL,
	changeVal 	INT 			NOT NULL,
	accrDate 	TIMESTAMP 		NOT NULL,
	FOREIGN KEY (member) REFERENCES member(memberId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------------------------------------
-- 게시판 테이블
---------------------------------------------------
-- 클래스게시판 테이블 생성
CREATE TABLE classboard (
	boardId 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) NOT NULL,
	title 		VARCHAR(50) NOT NULL,
	content 	TEXT 		NOT NULL,
	category 	SET('TIL', '질문', '클래스') NOT NULL,
	views 		INT 		NOT NULL DEFAULT 0,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL,
	lectureId 	INT 		NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (lectureId) REFERENCES lecture(lectureId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 자유게시판 테이블 생성
CREATE TABLE freeboard (
	boardId 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) NOT NULL,
	title 		VARCHAR(50) NOT NULL,
	content 	TEXT 		NOT NULL,
	category 	SET('공지사항', '질문', '정보', '이야기') NOT NULL,
	views 		INT 		NOT NULL DEFAULT 0,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL,
	tags 		SET('Java', 'Python', 'JavaScript', 'Back-End', '웹 개발', '앱 개발', 'HTML/CSS', 'Front-End', '데이터베이스', '게임 개발', 'Android', 'Spring', 'Node.js', '알고리즘', 'React', '머신러닝', 'SQL', '인공지능', '정보보안', '블록체인', 'DevOps', '클라우드', 'Linux', 'iOS', 'Swift'),
	FOREIGN KEY (writer) REFERENCES member(memberId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 그룹게시판 테이블 생성
CREATE TABLE groupboard (
	boardId 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) NOT NULL,
	title 		VARCHAR(50) NOT NULL,
	content 	TEXT 		NOT NULL,
	views 		INT 		NOT NULL DEFAULT 0,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL,
	groupId 	INT 		NOT NULL,
	tags 		SET('Java', 'Python', 'JavaScript', 'Back-End', '웹 개발', '앱 개발', 'HTML/CSS', 'Front-End', '데이터베이스', '게임 개발', 'Android', 'Spring', 'Node.js', '알고리즘', 'React', '머신러닝', 'SQL', '인공지능', '정보보안', '블록체인', 'DevOps', '클라우드', 'Linux', 'iOS', 'Swift'),
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (groupId) REFERENCES grouplist(groupId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------------------------------------
-- 댓글 테이블
---------------------------------------------------
-- 클래스게시판 댓글 테이블 생성
CREATE TABLE cbcomment (
	commentId 	INT 			PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	content 	TEXT 			NOT NULL,
	writeDate 	TIMESTAMP 		NOT NULL,
	boardId 	INT 			NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (boardId) REFERENCES classboard(boardId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 자유게시판 댓글 테이블 생성
CREATE TABLE fbcomment (
	commentId 	INT 			PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	content 	TEXT 			NOT NULL,
	likes 		INT 			NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 		NOT NULL,
	boardId 	INT 			NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (boardId) REFERENCES freeboard(boardId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 그룹게시판 댓글 테이블 생성
CREATE TABLE gbcomment (
	commentId 		INT 			PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	content 	TEXT 			NOT NULL,
	writeDate 	TIMESTAMP 		NOT NULL,
	boardId 	INT 			NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (boardId) REFERENCES groupboard(boardId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;