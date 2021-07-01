# 테이블 조회 기능

SELECT * FROM `person`;

SELECT `id`,`name`,`hobby`,`introduce`,`createdAt`,`updatedAt`
FROM `person`;

# 별명 붙이기

# 테이블 명 별명 붙이기
SELECT * FROM `person` AS `user`;

# 컬럼 이름 별명 붙이기
SELECT `name`,`birth` As `yyymmdd` ,`hobby`,`introduce`
FROM `person`;

# 중복 제거
SELECT DISTINCT `name` FROM `person`;

# 데이터 개수 세기
SELECT count(*) AS `에라이` FROM `person`;

# 이름이 김바다인 사용자의 생년월일 조회
SELECT `yyymmdd` FROM `person` WHERE `name` = '김바다';

# 이름 김바다가 아닌 사용자의 데이터 조회
SELECT * FROM `person` WHERE `name` != '김바다';

# 조건에 맞는 데이터 가져오기
SELECT * FROM `person` WHERE `id` = 3;

# 날짜 비교
# 2021-06-17 이후에 입력된 내용 출력
SELECT * FROM `person` WHERE `createdAt` > '2021-06-16 23:59:59'; # 몇시 몇분 몇초도 써주는게 좋다.

# 개수 조회
SELECT count(*) FROM `person` WHERE `name` = '김바다';

# NULL 조회
SELECT * FROM `person` WHERE `introduce` is NULL;
SELECT * FROM `person` WHERE `introduce` is not NULL;

# 여러 조건 데이터 조회
# id가 3,4,5,6
SELECT * FROM `person` WHERE `id` in (3, 4, 5, 6);

# 여러 조건
# id 가 3이거나 4인 데이터 조회
SELECT * FROM `person` WHERE `id` = 3 OR `id` = 4;

# 이름이 김바다 이면서 취미가 사냥하기 인 데이터 조회
SELECT * FROM `person` WHERE `name` = '김바다' AND `hobby` = '사냥하기';








