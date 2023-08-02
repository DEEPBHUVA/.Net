--SelectAll Procedure [For List Page--
--===========================================--
CREATE PROCEDURE [dbo].[PR_Country_SelectAll]
AS
SELECT [dbo].[LOC_Country].[CountryID],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_Country].CountryCode,
	[dbo].[LOC_Country].[Created],
	[dbo].[LOC_Country].[Modified]
FROM [dbo].[LOC_Country]

PR_Country_SelectAll

--===========================================--
ALTER PROCEDURE [dbo].[PR_State_SelectAll]
AS
SELECT [dbo].[LOC_State].[StateID],
	[dbo].[LOC_State].[StateCode],
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_State].[CountryID],
	[dbo].[LOC_State].[Created],
	[dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_State].[CountryID] = [dbo].[LOC_Country].[CountryID]

PR_State_SelectAll

--===========================================--
CREATE PROCEDURE [dbo].[PR_City_SelectAll]
AS
SELECT [dbo].[LOC_City].[CityID],
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[Citycode],
	[dbo].[LOC_City].[StateID],
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_City].[CreationDate],
	[dbo].[LOC_City].[Modified]
	FROM [dbo].[LOC_City]
	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_City].[StateID] = [dbo].[LOC_State].[StateID]
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_City].[CountryID] = [dbo].[LOC_Country].[CountryID]

PR_City_SelectAll

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Branch_SelectAll]
AS
SELECT [dbo].[MST_Branch].[BranchID],
	[dbo].[MST_Branch].[BranchCode],
	[dbo].[MST_Branch].[BranchName],
	[dbo].[MST_Branch].[Created],
	[dbo].[MST_Branch].[Modified]
	FROM [dbo].[MST_Branch]
	
[PR_MST_Branch_SelectAll]

--===========================================--
ALTER PROCEDURE [dbo].[PR_MST_Student_SelectAll]
AS
SELECT [dbo].[MST_Student].[StudentID],
	[dbo].[MST_Student].[StudentName],
	[dbo].[MST_Branch].[BranchName],
	[dbo].[MST_Student].[BirthDate],
	[dbo].[MST_Student].[MobileNoStudent],
	[dbo].[MST_Student].[Email],
	[dbo].[MST_Student].[Gender],
	[dbo].[MST_Student].[Address],
	[dbo].[MST_Student].[Age],
	[dbo].[MST_Student].[MobileNoFather],
	[dbo].[MST_Student].[Password],
	[dbo].[MST_Student].[IsActive],
	[dbo].[MST_Student].[Created],
	[dbo].[MST_Student].[Modified],
	[dbo].[LOC_City].[CityName]
	FROM [dbo].[MST_Student]
	INNER JOIN [dbo].[MST_Branch]
	ON [dbo].[MST_Student].[BranchID] = [dbo].[MST_Branch].[BranchID]
	INNER JOIn [dbo].[LOC_City]
	ON [dbo].[MST_Student].[CityID] =  [dbo].[LOC_City].[CityID]

PR_MST_Student_SelectAll

--===========================================--
--SelectByPK Procedure [Edit time record fetch & fill controls]--
--===========================================--
CREATE PROCEDURE [dbo].[PR_Country_SelectByPK]
@CountryID int
AS
SELECT [dbo].[LOC_Country].[CountryID],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_Country].CountryCode,
	[dbo].[LOC_Country].[Created],
	[dbo].[LOC_Country].[Modified]
FROM [dbo].[LOC_Country]
WHERE [dbo].[LOC_Country].[CountryID] = @CountryID


[PR_Country_SelectByPK] 1

--===========================================--
CREATE PROCEDURE [dbo].[PR_State_SelectByPK]
@StateID int
AS
SELECT [dbo].[LOC_State].[StateID],
	[dbo].[LOC_State].[StateCode],
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_State].[CountryID],
	[dbo].[LOC_State].[Created],
	[dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_State].[CountryID] = [dbo].[LOC_Country].[CountryID]
	WHERE [dbo].[LOC_State].[StateID] = @StateID

[PR_State_SelectByPK]  1

--===========================================--
CREATE PROCEDURE [dbo].[PR_City_SelectByPK]
@CityID int
AS
SELECT [dbo].[LOC_City].[CityID],
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[Citycode],
	[dbo].[LOC_City].[StateID],
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_City].[CreationDate],
	[dbo].[LOC_City].[Modified]
	FROM [dbo].[LOC_City]
	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_City].[StateID] = [dbo].[LOC_State].[StateID]
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_City].[CountryID] = [dbo].[LOC_Country].[CountryID]
	WHERE [dbo].[LOC_City].[CityID] = @CityID

[PR_City_SelectByPK] 3

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Branch_SelectByPK]
@BranchID int
AS
SELECT [dbo].[MST_Branch].[BranchID],
	[dbo].[MST_Branch].[BranchCode],
	[dbo].[MST_Branch].[BranchName],
	[dbo].[MST_Branch].[Created],
	[dbo].[MST_Branch].[Modified]
	FROM [dbo].[MST_Branch]
	WHERE [dbo].[MST_Branch].[BranchID] = @BranchID
	
[PR_MST_Branch_SelectByPK] 1

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Student_SelectByPK]
@StudentID int
AS
SELECT [dbo].[MST_Student].[StudentID],
	[dbo].[MST_Student].[StudentName],
	[dbo].[MST_Branch].[BranchName],
	[dbo].[MST_Student].[BirthDate],
	[dbo].[MST_Student].[MobileNoStudent],
	[dbo].[MST_Student].[Email],
	[dbo].[MST_Student].[Gender],
	[dbo].[MST_Student].[Age],
	[dbo].[MST_Student].[MobileNoFather],
	[dbo].[MST_Student].[Password],
	[dbo].[MST_Student].[IsActive],
	[dbo].[LOC_City].[CityName]
	FROM [dbo].[MST_Student]
	INNER JOIN [dbo].[MST_Branch]
	ON [dbo].[MST_Student].[BranchID] = [dbo].[MST_Branch].[BranchID]
	INNER JOIn [dbo].[LOC_City]
	ON [dbo].[MST_Student].[CityID] =  [dbo].[LOC_City].[CityID]
	WHERE [dbo].[MST_Student].[StudentID] = @StudentID

[PR_MST_Student_SelectByPK] 2

--===========================================--
--Insert Procedure [To add any new record]--
--===========================================--
CREATE PROCEDURE [dbo].[PR_Country_Insert]
@CountryName     Varchar(100),
@CountryCode     Varchar(50),
@Created         DateTime,
@Modified        DateTime
AS
INSERT INTO [dbo].[LOC_Country]
(
	[CountryName],
	[CountryCode],
	[Created],
	[Modified]
)
VALUES(
@CountryName,
@CountryCode,
@Created,
@Modified
)

[PR_Country_Insert] "Japan","JA","2023-09-08","2023-09-10"

--===========================================--
CREATE PROCEDURE [dbo].[PR_State_Insert]
@StateName       Varchar(100),
@CountryId       int,
@StateCode       Varchar(50),
@Created         DateTime,
@Modified        DateTime
AS
INSERT INTO [dbo].[LOC_State]
(
	[StateName],
	[CountryID],
	[StateCode],
	[Created],
	[Modified]
)
VALUES(
@StateName,
@CountryId,
@StateCode,
@Created,
@Modified
)

[PR_State_Insert] "Rajsthan",1,"RJ","2023-08-05","2023-08-06"

--===========================================--
CREATE PROCEDURE [dbo].[PR_City_Insert]
@CityName      Varchar(100),
@StateID       int,
@CountryID     int,
@CityCode      Varchar(50),
@CreationDate  DateTime,
@Modified      DateTime
AS
INSERT INTO [dbo].[LOC_City]
(
	[CityName],
	[StateID],
	[CountryID],
	[Citycode],
	[CreationDate],
	[Modified]
)
VALUES(
@CityName,
@StateID,
@CountryID,
@CityCode,
@CreationDate,
@Modified
)

[PR_City_Insert] "Surat",1,1,"SU","2023-05-04","2023-05-06"

--===========================================--
CREATE PROCEDURE [dbo].[PR_MSR_Branch_Insert]
@BranchName     Varchar(100),
@BranchCode     Varchar(50),
@Created        DateTime,
@Modified       DateTime
AS
INSERT INTO [dbo].[MST_Branch]
(
	[BranchName],
	[BranchCode],
	[Created],
	[Modified]
)
VALUES(
@BranchName,
@BranchCode,
@Created,
@Modified
)

[PR_MSR_Branch_Insert] "Mechenical","ME","2023-06-05","2023-06-08"

--===========================================--
ALTER PROCEDURE [dbo].[PR_MST_Student_Insert]
@StudentID         int, 
@BranchID          int,
@CityID            int,
@StudentName       Varchar(100),
@MobileNoStudent   Varchar(100),
@Email             Varchar(100),
@MobileNoFather    Varchar(100),
@Address           Varchar(100),
@BirthDate         Datetime,
@Age               int,
@IsActive          Varchar(50),
@Gender            Varchar(50),
@Password          Varchar(50),
@Created           DateTime,
@Modified          DateTime
AS
INSERT INTO [dbo].[MST_Student]
(
	[StudentID],
	[BranchID],
	[CityID],
	[StudentName],
	[MobileNoStudent],
	[Email],
	[MobileNoFather],
	[Address],
	[BirthDate],
	[Age],
	[IsActive],
	[Gender],
	[Password],
	[Created],
	[Modified]
)
VALUES(
@StudentID,
@BranchID,
@CityID,
@StudentName,
@MobileNoStudent,
@Email,
@MobileNoFather,
@Address,
@BirthDate,
@Age,
@IsActive,
@Gender,
@Password,
@Created,
@Modified
)

[PR_MST_Student_Insert] 5,2,3,"Tirth","4569321780","tirthpatel45@gmail.com","1236547890","Rajkot,Mavdi Road,360001",
"2004-05-02","18","1","Meal","8965","2022-09-08","2023-09-09"

--===========================================--
--UpdateByPK Procedure [To update/modify existing record]----===========================================--CREATE PROCEDURE [dbo].[PR_Country_UpdateByPK]
@CountryID       int,
@CountryName     Varchar(100),
@CountryCode     Varchar(50),
@Created         DateTime,
@Modified        DateTime
AS
UPDATE [dbo].[LOC_Country]
SET
	[CountryName] = @CountryName,
	[CountryCode] = @CountryCode,
	[Created] = @Created,
	[Modified] = @Modified
WHERE [dbo].[LOC_Country].[CountryID] = @CountryID

[PR_Country_UpdateByPK] 

--===========================================--
CREATE PROCEDURE [dbo].[PR_State_UpdateByPK]
@StateID         int,
@StateName       Varchar(100),
@CountryId       int,
@StateCode       Varchar(50),
@Created         DateTime,
@Modified        DateTime
AS
UPDATE [dbo].[LOC_State]
SET
	[StateName] = @StateName,
	[CountryID] = @CountryId,
	[StateCode] = @StateCode,
	[Created] = @Created,
	[Modified] = @Modified
WHERE [dbo].[LOC_State].[StateID] = @StateID

[PR_State_UpdateByPK]

--===========================================--
CREATE PROCEDURE [dbo].[PR_City_UpdateByPK]
@CityID        int,
@CityName      Varchar(100),
@StateID       int,
@CountryID     int,
@CityCode      Varchar(50),
@CreationDate  DateTime,
@Modified      DateTime
AS
UPDATE [dbo].[LOC_City]
SET 
	[CityName] = @CityName,
	[StateID] = @StateID,
	[CountryID] = @CountryID,
	[Citycode] = @CityCode,
	[CreationDate] = @CreationDate,
	[Modified] = @Modified
WHERE [dbo].[LOC_City].[CityID] = @CityID

[PR_City_UpdateByPK]

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Branch_UpdateByPK]
@BranchID       int,
@BranchName     Varchar(100),
@BranchCode     Varchar(50),
@Created        DateTime,
@Modified       DateTime
AS
UPDATE [dbo].[MST_Branch]
SET
	[BranchName] = @BranchName,
	[BranchCode] = @BranchCode,
	[Created] = @Created,
	[Modified] = @Modified
WHERE [dbo].[MST_Branch].[BranchID] = @BranchID

[PR_MST_Branch_UpdateByPK]

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Student_UpdateByPK]
@StudentID         int, 
@BranchID          int,
@CityID            int,
@StudentName       Varchar(100),
@MobileNoStudent   Varchar(100),
@Email             Varchar(100),
@MobileNoFather    Varchar(100),
@Address           Varchar(100),
@BirthDate         Datetime,
@Age               int,
@IsActive          Varchar(50),
@Gender            Varchar(50),
@Password          Varchar(50),
@Created           DateTime,
@Modified          DateTime
AS
UPDATE [dbo].[MST_Student] 
SET 
	[BranchID] = @BranchID,
	[CityID] = @CityID,
	[StudentName] = @StudentName,
	[MobileNoStudent] = @MobileNoStudent,
	[Email] = @Email,
	[MobileNoFather] = @MobileNoFather,
	[Address] = @Address,
	[BirthDate] = @BirthDate,
	[Age] = @Age,
	[IsActive] = @IsActive,
	[Gender] = @Gender,
	[Password] = @Password,
	[Created] = @Created,
	[Modified] = @Modified
WHERE [dbo].[MST_Student].[StudentID] = @StudentID

--===========================================--
--DeleteByPK Procedure [To Delete record]--
--===========================================--
CREATE PROCEDURE [dbo].[PR_Country_DeleteByPK]
@CountryID int
AS
DELETE
FROM [dbo].[LOC_Country]
WHERE [dbo].[LOC_Country].[CountryID] = @CountryID

[PR_Country_DeleteByPK] 4

--===========================================--
CREATE PROCEDURE [dbo].[PR_State_DeleteByPK]
@StateID int
AS
DELETE 
FROM [dbo].[LOC_State]
WHERE [dbo].[LOC_State].[StateID] = @StateID

[PR_State_DeleteByPK] 4

--===========================================--
CREATE PROCEDURE [dbo].[PR_City_DeleteByPK]
@CityId int
AS
DELETE 
FROM [dbo].[LOC_City]
WHERE [dbo].[LOC_City].[CityID] = @CityId

[PR_City_DeleteByPK] 7

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Branch_DeleteByPK]
@BranchID int
AS
DELETE
FROM [dbo].[MST_Branch]
WHERE [dbo].[MST_Branch].[BranchID] = @BranchID

[PR_MST_Branch_DeleteByPK] 4

--===========================================--
CREATE PROCEDURE [dbo].[PR_MST_Student_DeleteByPK]
@StudentID int
AS
DELETE
FROM [dbo].[MST_Student]
WHERE [dbo].[MST_Student].[StudentID] = @StudentID

[PR_MST_Student_DeleteByPK] 5

--===========================================--