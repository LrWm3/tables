CREATE TABLE Deleted_Agent (
  `X_Deleted_ID` INT(10) COMMENT 'Deleted ID',
  `X_Deleted_Date` DATE default '0000-00-00' not null COMMENT 'Deleted Date',
  PRIMARY KEY(`X_Deleted_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

