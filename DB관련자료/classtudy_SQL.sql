---------------------------------------------------
-- 학원 관련 테이블
---------------------------------------------------
-- 관리자 테이블 생성
CREATE TABLE admin (
	adminId 	VARCHAR(16) 	PRIMARY KEY,
	passwd 		VARCHAR(16) 	NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 학원 테이블 생성
CREATE TABLE academy (
	academyNo 	INT PRIMARY KEY AUTO_INCREMENT,
	academyName 	VARCHAR(30) 	NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 강의 테이블 생성
CREATE TABLE lecture (
	lectureNo 	INT PRIMARY KEY AUTO_INCREMENT,
	lectureName 	VARCHAR(60) 	NOT NULL,
	academyNo 	INT 		NOT NULL,
	FOREIGN KEY (academyNo) REFERENCES academy(academyNo)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------------------------------------
-- 멤버 관련 테이블
---------------------------------------------------
-- 그룹 테이블 생성
-- leader 필요하면 나중에 leader table 생성해서 memberId, groupNo 연결
CREATE TABLE grouplist (
	groupNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	groupName 	VARCHAR(30) 	NOT NULL	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 멤버 테이블 생성
CREATE TABLE member (
	memberId 	VARCHAR(16) 	PRIMARY KEY,
	passwd 		VARCHAR(16) 	NOT NULL,
	name 		VARCHAR(16) 	NOT NULL,
	dateOfBirth 	VARCHAR(10) 	NOT NULL,
	gender 		VARCHAR(2) 	NOT NULL,
	tel 		VARCHAR(16) 	NOT NULL,
	zipcode 	VARCHAR(8) 	NOT NULL,
	address 	VARCHAR(60) 	NOT NULL,
	addressDetail 	VARCHAR(60) 	NOT NULL,
	email 		VARCHAR(40) 	NOT NULL,
	regDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	lectureNo 	INT 		NOT NULL,
	grade 		INT 		NOT NULL DEFAULT 0,
	point 		INT 		NOT NULL DEFAULT 0,
	reward 		INT 		NOT NULL DEFAULT 0,
	group1 		INT 		NOT NULL DEFAULT 1,
	group2 		INT 		NOT NULL DEFAULT 1,
	group3 		INT 		NOT NULL DEFAULT 1,	
	FOREIGN KEY (lectureNo) REFERENCES lecture(lectureNo),
	FOREIGN KEY (group1) REFERENCES grouplist(groupNo),
	FOREIGN KEY (group2) REFERENCES grouplist(groupNo),
	FOREIGN KEY (group3) REFERENCES grouplist(groupNo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 알림 테이블
CREATE TABLE noti (
	notiNo 		INT 		PRIMARY KEY AUTO_INCREMENT,
	receiver 	VARCHAR(16) 	NOT NULL,
	content 	VARCHAR(100) 	NOT NULL,
	checked 	BOOLEAN 	NOT NULL DEFAULT false,
	sendDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (receiver) REFERENCES member(memberId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 포인트 테이블
CREATE TABLE point (
	pointNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	member 		VARCHAR(16) 	NOT NULL,
	content 	VARCHAR(100) 	NOT NULL,
	changeVal 	INT 		NOT NULL,
	accrDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (member) REFERENCES member(memberId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 적립금 테이블
CREATE TABLE reward (
	rewardNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	member 		VARCHAR(16) 	NOT NULL,
	content 	VARCHAR(100) 	NOT NULL,
	changeVal 	INT 		NOT NULL,
	accrDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (member) REFERENCES member(memberId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------------------------------------
-- 게시판 테이블
---------------------------------------------------
-- 클래스게시판 테이블 생성
CREATE TABLE classboard (
	boardNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	title 		VARCHAR(50) 	NOT NULL,
	content 	TEXT 		NOT NULL,
	category 	SET('TIL', '질문', '클래스') NOT NULL,
	views 		INT 		NOT NULL DEFAULT 0,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	lectureNo 	INT 		NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (lectureNo) REFERENCES lecture(lectureNo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 자유게시판 테이블 생성
CREATE TABLE freeboard (
	boardNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	title 		VARCHAR(50) 	NOT NULL,
	content 	TEXT 		NOT NULL,
	category 	SET('공지사항', '질문', '정보', '이야기', '그룹홍보') NOT NULL,
	views 		INT 		NOT NULL DEFAULT 0,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	tags 		SET('Java', 'Python', 'JavaScript', 'Back-End', '웹 개발', '앱 개발', 'HTML/CSS', 'Front-End', '데이터베이스', 
			    '게임 개발', 'Android', 'Spring', 'Node.js', '알고리즘', 'React', '머신러닝', 'SQL', '인공지능', '정보보안', 
			    '블록체인', 'DevOps', '클라우드', 'Linux', 'iOS', 'Swift', 'Spring Boot', 'Bootstrap', 'jQuery', 'Git', 
			    'Django', 'UI/UX', '3D 모델링', 'Flask', 'After Effects', 'Premiere Pro', 'Photoshop', 'Illustrator', 
			    'R', '편집 디자인', 'Unity', 'JSP', 'JDBC', 'JSTL', '해킹', 'InDesign'),
	FOREIGN KEY (writer) REFERENCES member(memberId)	
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 그룹게시판 테이블 생성
CREATE TABLE groupboard (
	boardNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	title 		VARCHAR(50) 	NOT NULL,
	content 	TEXT 		NOT NULL,
	views 		INT 		NOT NULL DEFAULT 0,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	groupNo 	INT 		NOT NULL,
	tags 		SET('Java', 'Python', 'JavaScript', 'Back-End', '웹 개발', '앱 개발', 'HTML/CSS', 'Front-End', '데이터베이스', 
			    '게임 개발', 'Android', 'Spring', 'Node.js', '알고리즘', 'React', '머신러닝', 'SQL', '인공지능', '정보보안', 
			    '블록체인', 'DevOps', '클라우드', 'Linux', 'iOS', 'Swift', 'Spring Boot', 'Bootstrap', 'jQuery', 'Git', 
			    'Django', 'UI/UX', '3D 모델링', 'Flask', 'After Effects', 'Premiere Pro', 'Photoshop', 'Illustrator', 
			    'R', '편집 디자인', 'Unity', 'JSP', 'JDBC', 'JSTL', '해킹', 'InDesign'),
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (groupNo) REFERENCES grouplist(groupNo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------------------------------------
-- 댓글 테이블
---------------------------------------------------
-- 클래스게시판 댓글 테이블 생성
CREATE TABLE cbcomment (
	commentNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	content 	TEXT 		NOT NULL,
	writeDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	boardNo 	INT 		NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (boardNo) REFERENCES classboard(boardNo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 자유게시판 댓글 테이블 생성
CREATE TABLE fbcomment (
	commentNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	content 	TEXT 		NOT NULL,
	likes 		INT 		NOT NULL DEFAULT 0,
	writeDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	boardNo 	INT 		NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (boardNo) REFERENCES freeboard(boardNo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 그룹게시판 댓글 테이블 생성
CREATE TABLE gbcomment (
	commentNo 	INT 		PRIMARY KEY AUTO_INCREMENT,
	writer 		VARCHAR(16) 	NOT NULL,
	content 	TEXT 		NOT NULL,
	writeDate 	TIMESTAMP 	NOT NULL DEFAULT CURRENT_TIMESTAMP,
	boardNo 	INT 		NOT NULL,
	FOREIGN KEY (writer) REFERENCES member(memberId),
	FOREIGN KEY (boardNo) REFERENCES groupboard(boardNo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
