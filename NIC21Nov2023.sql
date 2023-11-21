Create Database COURSE_MANAGER
GO

 USE COURSE_MANAGER 
 GO

Create Table COURSE_MASTER
 ( COURSE_CD Numeric(5,0) NOT NULL ,
 COURSE_NAME Varchar(30)  NULL,
 DURATION Tinyint  NULL,
 PRIMARY KEY (COURSE_CD)
 );

 INSERT INTO COURSE_MASTER
 VALUES(10001,'.NET PROGRAMMING',1);
 INSERT INTO COURSE_MASTER
 VALUES(10002,'ElementsofWebDesigning',1);
 INSERT INTO COURSE_MASTER
 VALUES(10003,'AdvancedWindowsProgramming',2);
 INSERT INTO COURSE_MASTER
 VALUES(10004,'AndroidProfessionalDevelopment',3);

 Create Table STUDENT_MASTER
 ( REGISTRATION_ID VARCHAR(8)  NOT NULL,
 NAME VARCHAR(30)  NULL,
 DOB DATETIME  NULL,
 GENDER CHAR(1) NULL,
 EMAIL VARCHAR(30) NULL,
 MOBILE  VARCHAR(10) NULL,
 REGN_DT DATETIME NULL,
 Address Varchar(50) NULL,
 District_cd int NULL,
 Taluk_cd int NULL,
 PRIMARY KEY (REGISTRATION_ID)
);

CREATE TABLE COURSE_REGISTRATION
(REGISTRATION_ID NUMERIC(10,0) NOT NULL,
 COURSE_CD NUMERIC(5,0)NOT NULL,
 COURSE_REGN_DT DATETIME NOT NULL,
 PRIMARY KEY (COURSE_CD,COURSE_REGN_DT)
 );

 CREATE TABLE Mstdistrict
 (District_Cd int not NULL,
 Distrinct_NAme Varchar(50),
 Primary Key (District_Cd)
 );

 INSERT INTO Mstdistrict
 VALUES(1,'Mysore');
 INSERT INTO Mstdistrict
 VALUES(2,'Tumkur');
 INSERT INTO Mstdistrict
 VALUES(3,'Bangalore Urban');

 CREATE TABLE Msttaluk
 (District_CD int NOT NULL,
 Taluk_Cd int NOT NULL,
 Taluk_Name Varchar(50) NOT NULL
 ,
 FOREIGN KEY (District_CD) REFERENCES Mstdistrict(District_CD)
 );

 INSERT INTO Msttaluk
 VALUES(1,1,'TirumaKudalu');
 INSERT INTO Msttaluk
 VALUES(1,2,'Narasipura');
 INSERT INTO Msttaluk
 VALUES(1,3,'Nanjangud');
 INSERT INTO Msttaluk
 VALUES(2,1,'Sira');
 INSERT INTO Msttaluk
 VALUES(2,2,'Madhugiri');
 INSERT INTO Msttaluk
 VALUES(2,3,'Gubbi');
 INSERT INTO Msttaluk
 VALUES(3,1,'RR Nagar');
 INSERT INTO Msttaluk
 VALUES(3,2,'Anekal');
 INSERT INTO Msttaluk
 VALUES(3,3,'Krishnarajapura');



 SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Uma.G
-- Create date: 21/Nov/2023
-- Description:	adding datarecords to table 
-- =============================================
Alter PROCEDURE sp_InsertUpdateNewUser
@Name nvarchar(100),
@DOB Datetime,
@Gender char(1),
@Email varchar(30),
@Mobileno varchar(10),
@Address varchar(50),
@District_cd int,
@Taluk_cd int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	

    -- Insert statements for procedure here
	

		INSERT INTO [dbo].[STUDENT_MASTER]
		([REGISTRATION_ID],[NAME],
		[DOB]
	    ,[GENDER]
		,[EMAIL]
		,[MOBILE]
		,[REGN_DT]
		,[Address]
		,[District_cd]
		,[Taluk_cd]
		)
		VALUES
		('RG'+Cast((Select Count(*) from [dbo].[STUDENT_MASTER])as varchar),
		@Name,
		@DOB,
		@Gender,
		@Email,
		@Mobileno,
		getdate(),
		@Address
		,@District_cd
		,@Taluk_cd
		);
		
		Return @@ROWCOUNT
	
	
	END