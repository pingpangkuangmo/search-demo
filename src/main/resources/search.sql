
CREATE TABLE `search`.`a` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `search`.`b` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `aId` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `search`.`c` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `bId` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `search`.`d` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `cId` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO `search`.`a` (`name`, `create_time`) VALUES ('a1', '2015-4-1');
INSERT INTO `search`.`a` (`name`, `create_time`) VALUES ('a2', '2015-4-2');
INSERT INTO `search`.`a` (`name`, `create_time`) VALUES ('a3', '2015-4-3');
INSERT INTO `search`.`a` (`name`, `create_time`) VALUES ('a4', '2015-4-3');

INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b1a1', '2015-4-1',1);
INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b2a1', '2015-4-2',1);
INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b1a2', '2015-4-3',2);
INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b2a2', '2015-4-3',2);
INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b1a3', '2015-4-3',3);
INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b2a3', '2015-4-3',3);
INSERT INTO `search`.`b` (`name`, `create_time`,`aId`) VALUES ('b3a3', '2015-4-3',3);

INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b1a1', '2015-4-4',1);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b1a1', '2015-4-4',1);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b2a1', '2015-4-4',2);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b2a1', '2015-4-4',2);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b1a2', '2015-4-5',3);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b1a2', '2015-4-6',3);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b2a2', '2015-4-7',4);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b2a2', '2015-4-7',4);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b1a3', '2015-4-7',5);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b1a3', '2015-4-8',5);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b2a3', '2015-4-9',6);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b2a3', '2015-4-10',6);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c1b3a3', '2015-4-10',7);
INSERT INTO `search`.`c` (`name`, `create_time`,`bId`) VALUES ('c2b3a3', '2015-4-10',7);

INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b1a1', '2015-4-11',1);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b1a1', '2015-4-11',1);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b1a1', '2015-4-11',2);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b1a1', '2015-4-12',2);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b2a1', '2015-4-12',3);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b2a1', '2015-4-12',3);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b2a1', '2015-4-12',4);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b2a1', '2015-4-12',4);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b1a2', '2015-4-12',5);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b1a2', '2015-4-13',5);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b1a2', '2015-4-13',6);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b1a2', '2015-4-14',6);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b2a2', '2015-4-15',7);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b2a2', '2015-4-15',7);

INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b2a2', '2015-4-15',8);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b2a2', '2015-4-15',8);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b1a3', '2015-4-16',9);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b1a3', '2015-4-16',9);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b1a3', '2015-4-16',10);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b1a3', '2015-4-17',10);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b2a3', '2015-4-17',11);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b2a3', '2015-4-17',11);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b2a3', '2015-4-17',12);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b2a3', '2015-4-17',12);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c1b3a3', '2015-4-18',13);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c1b3a3', '2015-4-19',13);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d1c2b3a3', '2015-4-20',14);
INSERT INTO `search`.`d` (`name`, `create_time`,`cId`) VALUES ('d2c2b3a3', '2015-4-20',14);


