create database hospital;

use hospital;



CREATE TABLE `admin` (
  `userid` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `patient` (
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `authorize` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `admin` VALUES ('admin', 'admin');