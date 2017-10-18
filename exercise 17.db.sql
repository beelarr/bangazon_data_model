BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Training_Program` (
	`Start_Date`	date,
	`End_Date`	date,
	`Max Number`	int,
	`Program_ID`	int,
	PRIMARY KEY(`Program_ID`)
);
CREATE TABLE IF NOT EXISTS `Training Tix` (
	`Employee_ID`	int,
	`Tix_ID`	int,
	`Program_ID`	int,
	PRIMARY KEY(`Tix_ID`)
);
CREATE TABLE IF NOT EXISTS `Product Types` (
	`Type_ID`	int,
	`Description`	varchar ( 50 ),
	PRIMARY KEY(`Type_ID`)
);
CREATE TABLE IF NOT EXISTS `Product` (
	`Product_ID`	int,
	`Price`	int,
	`Title`	varchar ( 50 ),
	`Description`	varchar ( 50 ),
	`Customer_ID`	int,
	`Type_ID`	int,
	PRIMARY KEY(`Product_ID`)
);
CREATE TABLE IF NOT EXISTS `Payment_Type` (
	`Type_ID`	int,
	`Type_Name`	varchar ( 50 ),
	PRIMARY KEY(`Type_ID`)
);
CREATE TABLE IF NOT EXISTS `Payment` (
	`Type_ID`	varchar ( 20 ),
	`Payment_ID`	int,
	`Customer_ID`	int,
	`Account_Number`	int,
	PRIMARY KEY(`Payment_ID`)
);
CREATE TABLE IF NOT EXISTS `Orders` (
	`Order_ID`	int,
	`Customer_ID`	int,
	`Product_ID`	int,
	`Total_Price`	int,
	PRIMARY KEY(`Order_ID`)
);
CREATE TABLE IF NOT EXISTS `Order_Product` (
	`Order_ID`	Type,
	`Product_ID`	Type,
	`Price`	Type
);
CREATE TABLE IF NOT EXISTS `Employee` (
	`Employee_ID`	Int,
	`FirstName`	varchar ( 50 ),
	`LastName`	varchar ( 50 ),
	`Street`	varchar ( 50 ),
	`City`	varchar ( 50 ),
	`Zip`	varchar ( 5 ),
	`Phone`	varchar ( 10 ),
	`Dept_ID`	varchar ( 50 ),
	`Program_ID`	varchar ( 50 ),
	`Position`	varchar ( 50 ),
	PRIMARY KEY(`Employee_ID`)
);
CREATE TABLE IF NOT EXISTS `Department` (
	`Dept_ID`	Int,
	`Budget`	Int,
	`Employee_ID`	varchar ( 50 ),
	PRIMARY KEY(`Dept_ID`)
);
CREATE TABLE IF NOT EXISTS `Customer` (
	`Customer_ID`	int,
	`FirstName`	varchar ( 50 ),
	`LastName`	varchar ( 50 ),
	`Street`	varchar ( 50 ),
	`City`	varchar ( 50 ),
	`Zip`	varchar ( 5 ),
	`Phone`	varchar ( 10 ),
	`Date`	varchar ( 10 ),
	`Active`	boolean,
	PRIMARY KEY(`Customer_ID`)
);
CREATE TABLE IF NOT EXISTS `Computer` (
	`Computer_ID`	varchar ( 50 ),
	`Decommisioned_Date`	date,
	`Purchase_Date`	date,
	`Employee_ID`	Type,
	PRIMARY KEY(`Computer_ID`)
);
CREATE INDEX IF NOT EXISTS `FK7` ON `Payment` (
	`Type_ID`,
	`Customer_ID`
);
CREATE INDEX IF NOT EXISTS `FK6` ON `Order_Product` (
	`Order_ID`
);
CREATE INDEX IF NOT EXISTS `FK5` ON `Orders` (
	`Customer_ID`,
	`Product_ID`
);
CREATE INDEX IF NOT EXISTS `FK4` ON `Product` (
	`Customer_ID`,
	`Type_ID`
);
CREATE INDEX IF NOT EXISTS `FK3` ON `Training Tix` (
	`Employee_ID`,
	`Program_ID`
);
CREATE INDEX IF NOT EXISTS `FK2` ON `Computer` (
	`Employee_ID`
);
CREATE INDEX IF NOT EXISTS `FK1` ON `Department` (
	`Employee_ID`
);
CREATE INDEX IF NOT EXISTS `FK` ON `Employee` (
	`Dept_ID`,
	`Program_ID`
);
COMMIT;
