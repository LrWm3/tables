CREATE TABLE Office (
  `O_OfficeID` INT(10) COMMENT 'Office Identifier',
  `O_BranchOfOrgID` INT(10) COMMENT 'Main Office ID',
  `O_HiddenOtyID` VARCHAR(50) COMMENT 'Office Type',
  `O_ShortName` VARCHAR(25) COMMENT 'Office Abbreviation',
  `O_OrganizationName` VARCHAR(100) COMMENT 'Office Name',
  `O_OrgAddressStreet` VARCHAR(50) COMMENT 'Offce Address Street Name',
  `O_OrgAddress2` VARCHAR(50) COMMENT 'Office Address2',
  `O_OrgCity` VARCHAR(50) COMMENT 'Office City',
  `O_OrgState` VARCHAR(50) COMMENT 'Office State',
  `O_OrgZip` VARCHAR(20) COMMENT 'Office Zip',
  `O_MailAddressStreet` VARCHAR(50) COMMENT 'Office Mail Street Name',
  `O_MailAddress2` VARCHAR(50) COMMENT 'Office Mail Address2',
  `O_MailCity` VARCHAR(50) COMMENT 'Office Mail City',
  `O_MailState` VARCHAR(50) COMMENT 'Office Mail State',
  `O_MailZip` VARCHAR(20) COMMENT 'Office Mail Zip',
  `O_Contact` VARCHAR(20) COMMENT 'Office Contact',
  `O_PhoneNumber1Desc` VARCHAR(10) COMMENT 'Office Phone1 Description',
  `O_PhoneNumber1CountryCodeId` VARCHAR(50) COMMENT 'Office Phone1 CountryId',
  `O_PhoneNumber1` VARCHAR(30) COMMENT 'Office Phone1 Number',
  `O_PhoneNumber1Ext` VARCHAR(5) COMMENT 'Office Phone1 Extension',
  `O_PhoneNumber2Desc` VARCHAR(10) COMMENT 'Office Phone2 Description',
  `O_PhoneNumber2CountryCodeId` VARCHAR(50) COMMENT 'Office Phone2 CountryId',
  `O_PhoneNumber2` VARCHAR(30) COMMENT 'Office Phone2 Number',
  `O_PhoneNumber2Ext` VARCHAR(5) COMMENT 'Office Phone2 Extension',
  `O_PhoneNumber3Desc` VARCHAR(10) COMMENT 'Office Phone3 Description',
  `O_PhoneNumber3CountryCodeId` VARCHAR(50) COMMENT 'Office Phone3 CountryId',
  `O_PhoneNumber3` VARCHAR(30) COMMENT 'Office Phone3 Number',
  `O_PhoneNumber3Ext` VARCHAR(5) COMMENT 'Office Phone3 Extension',
  `O_EMail` VARCHAR(50) COMMENT 'Office Email',
  `O_WebPage` VARCHAR(80) COMMENT 'Office Url',
  `O_NationalNumber` VARCHAR(10) COMMENT 'National RDS Number',
  `O_BrokerID` INT(10) COMMENT 'Designated Broker ID',
  `O_BrokerMgmtReports` VARCHAR(50) COMMENT 'Broker Management Reports',
  `O_RouteID` VARCHAR(1) COMMENT 'Book Route ID',
  `O_RouteSeq` VARCHAR(3) COMMENT 'Book Route Sequence',
  `O_NonMemberLocalCharge` DECIMAL(8,2) COMMENT 'Local NonMember Charge',
  `O_CorpPACCOntribution` DECIMAL(8,2) COMMENT 'Corp PAC Contribution',
  `O_LastPACContribDate` DATE default '0000-00-00' not null COMMENT 'Lst PAC Contribution Date',
  `O_ContribCheckNum` VARCHAR(10) COMMENT 'Lst PAC Contrib Check #',
  `O_PreviousPACContrib` DECIMAL(8,2) COMMENT 'Previous PAC Contribution',
  `O_UpdateDate` DATETIME default '0000-00-00 00:00:00' not null COMMENT 'Update Date',
  `O_UpdateAgent` INT(10) COMMENT 'Update By Agent',
  `O_InputDate` DATETIME default '0000-00-00 00:00:00' not null COMMENT 'Date Added',
  `O_board_id` INT(10) COMMENT 'Board ID',
  `O_IdxInclude` CHAR(1) COMMENT 'IDX Include',
  `MO_HiddenOtyID` VARCHAR(50) COMMENT 'MOOffice Type',
  `MO_ShortName` VARCHAR(25) COMMENT 'MOOffice Abbreviation',
  `MO_OrganizationName` VARCHAR(100) COMMENT 'MOOffice Name',
  `MO_OrgAddressStreet` VARCHAR(50) COMMENT 'MOOffceAddressStreetName',
  `MO_OrgAddress2` VARCHAR(50) COMMENT 'MOOffice Address2',
  `MO_OrgCity` VARCHAR(50) COMMENT 'MOOffice City',
  `MO_OrgState` VARCHAR(50) COMMENT 'MOOffice State',
  `MO_OrgZip` VARCHAR(20) COMMENT 'MOOffice Zip',
  `MO_PhoneNumber1Desc` VARCHAR(10) COMMENT 'MOOfficePhone1Description',
  `MO_PhoneNumber1CountryCodeId` VARCHAR(50) COMMENT 'MOOffice Phone1 CountryId',
  `MO_PhoneNumber1` VARCHAR(30) COMMENT 'MOOffice Phone1 Number',
  `MO_PhoneNumber1Ext` VARCHAR(5) COMMENT 'MOOffice Phone1 Extension',
  `MO_EMail` VARCHAR(50) COMMENT 'MOOffice Email',
  `MO_WebPage` VARCHAR(80) COMMENT 'MOOffice Url',
  `MO_board_id` INT(10) COMMENT 'MOBoard ID',
  `O_NumberOfSoldBooks` INT(5) COMMENT 'Active Book Count',
  `O_NumberOfActiveBooks` INT(5) COMMENT 'Sold Book Count',
  `O_MemberOfBoard` VARCHAR(50) COMMENT 'Board Member',
  `O_MemberOfMLS` VARCHAR(50) COMMENT 'MLS Member',
  `O_CID` VARCHAR(50) COMMENT 'Commercial Investment Div',
  `O_Affiliate` VARCHAR(50) COMMENT 'Affiliate',
  `O_PrintOnMailingListS` VARCHAR(50) COMMENT 'Print On Mailing Lists',
  `O_OrgAllwdCompAccess` VARCHAR(50) COMMENT 'Office Computer Access',
  `O_NationalDuesAnnual` DECIMAL(8,2) COMMENT 'National Dues Annual',
  `O_NationalDuesPaid` VARCHAR(50) COMMENT 'National Dues Paid',
  `O_StateDuesAnnual` DECIMAL(8,2) COMMENT 'State Dues Annual',
  `O_StateDuesPaid` VARCHAR(50) COMMENT 'State Dues Paid',
  `O_LocalDuesAnnual` DECIMAL(8,2) COMMENT 'Local Dues Annual',
  `O_LocalDuesPaid` VARCHAR(50) COMMENT 'Local Dues Paid',
  `O_MLSFeesMonthly` DECIMAL(8,2) COMMENT 'MLS Fees Monthly',
  `O_MLSFeesPaid` VARCHAR(50) COMMENT 'MLS Fees Paid',
  `O_NonMemberNatnlCharge` DECIMAL(8,2) COMMENT 'National NonMember Charge',
  `O_NonMemberStateCharge` DECIMAL(8,2) COMMENT 'State NonMember Charge',
  PRIMARY KEY(`O_OfficeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
