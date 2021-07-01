CREATE TABLE `review` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `store` varchar(8) NOT NULL,
    `menu` varchar(8) NOT NULL,
    `point` DECIMAL(2,1) DEFAULT 3.5,
    `review` varchar(256) NULL, /* NULLABLE */ 
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* 2. 컬럼 추가 */
ALTER TABLE `review` ADD `userName` varchar(32) NOT NULL AFTER `menu`;

/* 3. 컬러 타입 수정 */
ALTER TABLE `review` MODIFY `menu` varchar(32);
ALTER TABLE `review` MODIFY `menu` varchar(32);
ALTER TABLE `review` CHANGE `store` `storeName` varchar(8);

ALTER TABLE `review` MODIFY `storeName` varchar(32);