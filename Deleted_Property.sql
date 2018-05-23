CREATE TABLE Deleted_Property (
  `X_Deleted_ID` INT(10) COMMENT 'Deleted ID',
  `X_Deleted_Date` DATE default '0000-00-00' not null COMMENT 'Deleted Date',
  `X_DisplayId` VARCHAR(15) COMMENT 'MLS #',
  PRIMARY KEY(`X_Deleted_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

