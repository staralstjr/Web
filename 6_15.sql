CREATE DATABASE `webstaralstjr`;
/* 
	테이블 만들기	
    사람 정보 테이블 만들기
    id, 이름, 생년월일, 취미, 자기소개, 작성시간, 수정시간
    
*/

CREATE TABLE `person` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(16) NOT NULL,
    `birth` int NOT NULL, 
    `hobby` varchar(64) NOT NULL,
    `introduce` text,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `score` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(8) NOT NULL,
    `year` int NOT NULL,
    `term` char(4) NOT NULL,
	`title` varchar(4) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* 2. 칼럼 추가 */
ALTER TABLE `score` ADD `semester` INT NOT NULL AFTER `year`;

/* 3. 컬럼 이름 수정 */
ALTER TABLE `score` CHANGE `title` `subject` varchar(4);

/* 4. 컬럼 타입 수정 */
ALTER TABLE `score` MODIFY `name` varchar(32);
ALTER TABLE `score` MODIFY `subject` varchar(16);





