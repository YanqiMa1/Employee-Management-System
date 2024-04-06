DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `employeeId` INT(100) unsigned NOT NULL,
    `firstName` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'firstName',
    `lastName` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'lastName',
    `gender` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'gender',
    `phoneNum` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'phoneNum',
    `position` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'position',
    `image` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'image',
    `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'date',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'employee';

CREATE TABLE `employee_info`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `employeeId` INT(100) unsigned NOT NULL,
    `firstName` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'firstName',
    `lastName` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'lastName',
    `position` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'position',
    `salary` DOUBLE NOT NULL COMMENT 'image',
    `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'date',
    PRIMARY KEY (`id`)
)ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'employee_info';