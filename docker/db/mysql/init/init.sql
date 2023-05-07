CREATE SCHEMA IF NOT EXISTS `review` DEFAULT CHARACTER SET utf8;
    USE `review`;

    CREATE TABLE review (
        reviewSeq bigint(20) not null primary key
    );

    CREATE TABLE `review` (
        `review_id` BIGINT UNSIGNED NOT NULL COMMENT '구매후기 ID',
    `order_no` BIGINT UNSIGNED NOT NULL COMMENT '주문번호',
    `prod_id` BIGINT UNSIGNED NOT NULL COMMENT '상품 ID',
    `review_content` VARCHAR(1000) NOT NULL COMMENT '구매후기 내용',
    `member_id` INT UNSIGNED NOT NULL COMMENT '회원 ID',
    `exposure_yn` CHAR(1) NOT NULL DEFAULT 'y' COMMENT '노출 여부',
    `reg_date` DATETIME NOT NULL COMMENT '등록일시',
    `modify_date` DATETIME NOT NULL COMMENT '수정일시',
    PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT='구매후기';

CREATE TABLE `member` (
    `member_id` BIGINT UNSIGNED NOT NULL COMMENT '회원 ID',
    `email` varchar(255) NOT NULL COMMENT '이메일',
    `member_name` VARCHAR(50) NOT NULL COMMENT '회원 이름',
    `member_status` VARCHAR(10) NOT NULL COMMENT '회원 상태(1:정상, 2:탈퇴)',
    `reg_date` DATETIME NOT NULL COMMENT '등록일시',
    `modify_date` DATETIME NOT NULL COMMENT '수정일시',
    PRIMARY KEY (`member_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT='회원';

CREATE TABLE `product` (
   `prod_id` BIGINT UNSIGNED NOT NULL COMMENT '상품번호',
   `prod_name` VARCHAR(100) NOT NULL COMMENT '상품명',
   `sale_status` CHAR(1) NOT NULL COMMENT '판매상태(A:판매가능,S:품절)',
   `sale_price` INT UNSIGNED DEFAULT NULL COMMENT '판매가격',
   `reg_date` DATETIME NOT NULL COMMENT '등록일시',
   `modify_date` DATETIME NOT NULL COMMENT '수정일시',
   PRIMARY KEY (`prod_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='상품';