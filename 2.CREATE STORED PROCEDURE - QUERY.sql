--STORED PROCEDURE
--1.CREATE STORED PROCEDURE
CREATE PROCEDURE GetEmpDetails
AS
BEGIN

SELECT *
FROM [dbo].[Employee]

END

--EXECUTE STORED PROCEDURE
EXEC GetEmpDetails

--2.MODIFY STORED PROCEDURE
ALTER PROCEDURE GetEmpDetails
AS
BEGIN

SELECT EmployeeID,FirstName,LastName,Phone,Email,DepartmentID 
FROM [dbo].[Employee]

END

--EXECUTE STORED PROCEDURE
EXEC GetEmpDetails

--3.STORED PROCEDURE WITH PARAMETER
ALTER PROCEDURE GetEmpDetails
(
@DeptID as INT
)
AS
BEGIN

SELECT EmployeeID,FirstName,LastName,Phone,Email,DepartmentID 
FROM [dbo].[Employee]
WHERE DepartmentID = @DeptID

END

--EXECUTE STORED PROCEDURE
EXEC GetEmpDetails 1
