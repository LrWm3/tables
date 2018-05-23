CREATE TABLE Hotsheet_RE_1 (
  `L_StatusCatID` VARCHAR(50) COMMENT 'Status Category',
  `L_StatusID` VARCHAR(1) COMMENT 'Status Detail',
  `L_SystemPrice` INT(10) COMMENT 'Search Price',
  `L_ListAgent1` INT(10) COMMENT 'Agent',
  `L_ListOffice1` INT(10) COMMENT 'Listing Office 1',
  `L_ListAgent2` INT(10) COMMENT 'Listing Agent 2',
  `L_ListOffice2` INT(10) COMMENT 'Listing Office 2',
  `L_StatusDate` DATE default '0000-00-00' not null COMMENT 'Status Date',
  `L_UpdateDate` DATETIME default '0000-00-00 00:00:00' not null COMMENT 'Update Date',
  `L_DisplayId` VARCHAR(4) COMMENT 'MLS #',
  `L_StreetDesignationId` VARCHAR(50) COMMENT 'Street Designation',
  `LMD_MP_Latitude` DECIMAL(18,15) COMMENT 'Geo Latitude',
  `LMD_MP_Longitude` DECIMAL(19,15) COMMENT 'Geo Longitude',
  `LMD_MP_Quality` DECIMAL(12,8) COMMENT 'Geo Quality',
  `LMD_MP_ZoomLevel` DECIMAL(2,0) COMMENT 'Geo Zoom Level',
  `LMD_MP_AddressLine` VARCHAR(255) COMMENT 'Geo Address Line',
  `LMD_MP_PrimaryCity` VARCHAR(100) COMMENT 'Geo Primary City',
  `LMD_MP_SecondaryCity` VARCHAR(100) COMMENT 'Geo Secondary City',
  `LMD_MP_Subdivision` VARCHAR(2) COMMENT 'Geo Subdivision',
  `LMD_MP_PostalCode` VARCHAR(10) COMMENT 'Geo Postal Code',
  `LMD_MP_MatchCode` INT(3) COMMENT 'Geo Match Code',
  `LMD_MP_MatchedMethod` INT(3) COMMENT 'Geo Matched Method',
  `LMD_MP_UpdateDate` DATETIME default '0000-00-00 00:00:00' not null COMMENT 'Geo Update Timestamp',
  `L_Address` VARCHAR(100) COMMENT 'Address',
  `L_Status` VARCHAR(50) COMMENT 'Status',
  `H_HotsheetID` INT(10) COMMENT 'Hotsheet ID',
  `H_EntryType` VARCHAR(50) COMMENT 'Hotsheet Type',
  `H_InputDate` DATETIME default '0000-00-00 00:00:00' not null COMMENT 'Hotsheet Timestamp',
  `H_Comment_` VARCHAR(255) COMMENT 'Comment',
  `H_HotsheetStatusId` VARCHAR(50) COMMENT 'Hotsheet Status ID',
  `H_PreviousPrice` INT(10) COMMENT 'Hotsheet Previous Price',
  `H_Price` INT(10) COMMENT 'Hotsheet Price',
  `LV_vow_include` VARCHAR(50) COMMENT 'VOW Include',
  `LV_vow_address` VARCHAR(50) COMMENT 'VOW Address',
  `LV_vow_comment` VARCHAR(50) COMMENT 'VOW Comment',
  `LV_vow_avm` VARCHAR(50) COMMENT 'VOW AVM',
  `L_IdxInclude` VARCHAR(50) COMMENT 'IDX Include',
  `L_LastDocUpdate` DATETIME default '0000-00-00 00:00:00' not null COMMENT 'Doc Timestamp',
  `L_ListingID` INT(10) COMMENT 'SystemID',
  `L_Class` VARCHAR(50) COMMENT 'Class',
  `L_Type_` VARCHAR(50) COMMENT 'Type',
  `L_Area` VARCHAR(50) COMMENT 'Area',
  `L_AddressNumber` VARCHAR(15) COMMENT 'Address Number',
  `L_AddressSearchNumber` INT(10) COMMENT 'Address Search Number',
  `L_AddressDirection` VARCHAR(2) COMMENT 'Address Direction',
  `L_AddressStreet` VARCHAR(50) COMMENT 'Address Street',
  `L_Address2` VARCHAR(50) COMMENT 'Address 2',
  `L_City` VARCHAR(50) COMMENT 'City',
  `L_State` VARCHAR(50) COMMENT 'State',
  `L_Zip` VARCHAR(20) COMMENT 'Zip',
  PRIMARY KEY(`H_HotsheetID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

