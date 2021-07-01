# 한행 추가
# user 테이블

INSERT INTO `user`
(
	`name`,
    `yyymmdd`,
    `hobby`,
    `introduce`,
    `createdAt`,
    `updatedAt`,
    `email`
) VALUE (
	'권민석',
    '20020423',
    '독서, 노래, 영화',
    '안녕하세요 \n 저는 권민석입니다.',
    now(),
    now(),
    'staralstjr@gmail.com'
);

# 여러 행 추가
INSERT INTO `user` 
(
	`name`,
    `yyymmdd`,
    `hobby`,
    `introduce`,
    `createdAt`,
    `updatedAt`,
    `email`
) VALUES (
	'야옹이',
    '20211404',
    '야옹하기',
    '미야옹',
    now(),
    now(),
    'yaong@naver.com'
),
(
	'멍멍이',
    '20211403',
    '멍멍하기',
    '멍멍',
    now(),
    now(),
    'mung@naver.com'
),

(
	'야옹이',
    '19991230',
    '하악질하기',
    '하악',
    now(),
    now(),
    'haak@naver.com'
);

TRUNCATE TABLE `user`; 
# 싹 날려버리기