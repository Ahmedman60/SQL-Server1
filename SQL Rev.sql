use Northwind
-----------------------------------
select distinct [Country]
 from Customers

 --------------------------------------------------------

 select * 
 from Customers
 where ContactTitle='owner' or City='london'

 -------------------------------------------
  select * 
 from Customers
 where ContactTitle='owner' and City='Madrid'
 --------------------------------------------------------

  select top(10)*
 from Customers
 where ContactTitle='owner' or City='london'
 order by CustomerID  desc
 
 --------------------------------------------------
 --------------------------------------------------
 --INSERT
 --------------------------------------------------
 --------------------------------------------------
 Delete from Customers
 where  CustomerID='MFSE'
 
 insert into Customers(CustomerID,CompanyName,City) Values('MFSE','Feto','Alexsandria')
 
 insert into Customers values('mmaz','feto')--here it constructor insertion u should insert all values in order
 

 --------------------------------------------------
 --------------------------------------------------
 --update
 --------------------------------------------------
 --update table_name 
 --set column1 name=value,column1 name=value,column1 name=value
 --where (condation column?=value?)
 --------------------------------------------------
 update Customers
 set ContactName='Mohamed Fathallah',Region='Middel east'
 where
 CustomerID='MFSE'

 SELECT * FROM Customers
 WHERE CustomerID='MFSE'

 --------------------------------------------------
 --------------------------------------------------
 --Delet
 --------------------------------------------------
 --delete from  table_name
 --where (condation column?=value?)
 --------------------------------------------------
 delete from Customers
 where CustomerID='MFSE'

  SELECT * FROM Customers
 WHERE CustomerID='MFSE'

 ---------------------------------------------------
 --Operation + * - /  ------ logical < > <> in between like
 --------------------------------------------------------------
 select * from Orders where  OrderDate  between '7/8/1996' and '7/31/1996'

  select * from Orders where  OrderDate > '7/8/1996' --<> ·« ”«ÊÏ -- <  ,> ,<=,>=,= 


   select * from Orders where  OrderDate  in ('7/8/1996' , '7/31/1996') -- in , between,like

    ---------------------------------------------------------------------------------------
	-- Like statement
	---------------------------------------------------------------------------------------


	Select * from Customers
	where ContactName like 'MAN%'

	Select * from Customers
	where ContactName like '%M%' --Õ—Ê› «Ê «—ﬁ«„ ﬁ»· Ê‰’Â„ ›Ï Õ—› m «Ê ›Ï «Ì „ﬂ«‰ »‰Â„ Ê »⁄œ ﬂœÂ Õ—Ê›

	Select * from Customers
	where ContactName like 'Thomas%'  --«Ï—ﬁ„ «Ê Õ—› «·Ï „«·‰Â«ÌÂ »⁄œ «·Õ—Ê» œÏ

	
	Select * from Customers -- ‰«ﬁ’ Õ—› Ê«Õœ »”
	where PostalCode like '0502_'


    Select * from Customers -- »ÕÀ ⁄‰ „Ã„Ê⁄Â „‰ «·Õ—Ê› «Ï ﬂÊ‰ ﬂ  »ÌÕ ÊÏ ⁄·Ï Õ—› „‰ œÊ·
	where ContactName like '%[abt]%' 

	 Select * from Customers -- any word start by a or b or t and infinite number of char
	where ContactName like '[abt]%' 

	--^ ..means not equal „‘ ‘€«· »Ï !

		 Select * from Customers -- any word not start by a or b or t and infinite number of char
	where ContactName like '[^abt]%'  



	-----------------------------------------------------
	--40 Join -- if u want to connect two tables u connect my primary key ! (Very Immportant)
	--used when u need information from 2 tables or more  u connect primrary key whit forigen key
	-----------------------------------------------------
--CONSTRAINT

	--------------------------------------------

	create database Test1

	go

	use test1
	
	create table momo(ID Int Not null ,Name nvarchar(50))
	alter table momo
	add primary key (ID)
--OR
	alter table momo
	add constraint Pk_momo  primary key (ID)
--OR
create table momo(ID Int Not null ,Name nvarchar(50) constraint pk primary key(ID) )
--TO REMOVE Primary key is from Remove constraint or design mood



	------------·“„ ÌﬂÊ‰ „ÊÃÊœ ›Ï «·ÃœÊ·Ì‰
	use Northwind
	select orders.orderid,orders.employeeid,firstname,lastname,orderdate
	 from orders inner join Employees
	  on orders.employeeid=Employees.EmployeeID
	
	-------------------------------------------------------------
	--Check [47] Constraint
	-------------------------------------------------------------
	use Test0
	alter table Mohamed 
	add   Regoin nvarchar(100) default 'Alexsandria'  
	---------------------------------------
	alter table mohamed
	add constraint CHECK_regoin check(regoin!='cairo')


	--OR
	Alter table Mohamed
	Add check(Regoin!='Giza')
	-----------------------------
	--remove constraint
	alter table mohamed
	drop constraint ----
	----------------------------------
	alter table mohamed
	add constraint CHECK_Sallary check(Sallary<=25000)

	
	insert into Mohamed(Sallary) values(5000)
	insert into Mohamed(Sallary) values(10000)

	---------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------
	--	UNION=»ÌÃÌ» ›Ï ’› Ê«Õœ ·“„ ÌﬂÊ‰ «·ÃœÊ·Ì‰ ›ÌÂ„ ‰›” ⁄œœ «·«⁄„œÂ ·Ê ⁄«Ê“   ÕœÂ„(»Ìœ„Ã Õﬁ·Ì‰ ›Ï Õﬁ· Ê«Õœ ÊÌ‘Ì· «·ﬁÌ„ «·„ﬂ——Â & Index=»”—⁄ ⁄„·Ì  «·Ê’Ê· ··»Ì‰« 
	--UNION ALL=» ÃÌ» «·„ ﬂ——Â »—œÊ ·Ê ⁄«Ê“  ÃÌ» ⁄„ÊœÌ‰ ›Ï ⁄„Êœ „‰ ÃœÊ·Ì‰ „Œ ·›Ì‰
	use Northwind

	create index idex_Employee on employees(EmployeeID)


	-------------------------------------------------------
	--sELECT Into=» ⁄„·Ã ÃœÊ· Ãœœ ﬂÊ»Ï »Ï «·»‰«  „‰ «·ÃœÊ· » «⁄ﬂ

    use Test0

	select * into Mohamed3
	from Mohamed

	--‘⁄«‰  ⁄„· ﬂÊ»Ï »” „‰Ê  Õÿ ‘—ÿ «Ï Õ«ÃÂ ⁄‘«‰ „Ì Õﬁﬁ‘

		select * into Mohamed2
	from Mohamed
	where ID=15615616516516579

	use Northwind

	select Orders.OrderDate,Orders.CustomerID,Employees.FirstName into emp
	from
	Employees join Orders
	on Employees.EmployeeID=Orders.EmployeeID
	----------------------------------------------------
	--·Ê ⁄«Ê“  ÃÌ» „ÊŸ› „⁄Ì‰ „À·« ⁄„· ﬂ«„ «Ê—œ— „Â„ »Ï «·»—„ —“ Ê ‘Ê› ﬂ· „ÊŸ› ⁄‰œﬂ »ﬁ«

	select Orders.OrderDate,Orders.CustomerID,Employees.FirstName into emp_Nancy_orders
	from
	Employees join Orders
	on Employees.EmployeeID=Orders.EmployeeID
	where Employees.EmployeeID=1
	

------------------------------------------------------------
--—»ÿ «ﬂÀ— „‰ ÃœÊ·
------------------------------------------------------------

use Northwind

select Orders.OrderID, Orders.OrderDate,Customers.CustomerID,Customers.ContactName,Employees.EmployeeID,Employees.FirstName +' '+ Employees.LastName as 'Employe Name' 
from
Orders inner join Customers on
Customers.CustomerID=Orders.CustomerID
 inner join  Employees on
 Employees.EmployeeID=Orders.EmployeeID 

 --AOTHER WAY

 select O.OrderID, O.OrderDate,C.CustomerID,C.ContactName,E.EmployeeID,E.FirstName +' '+ E.LastName as 'Employe Name' 
from
Orders O inner join Customers C on
C.CustomerID=O.CustomerID
 inner join  Employees E on
 E.EmployeeID=O.EmployeeID 



 ------------------------------------------------------------------------------
 --order by  last one order

 select top 1 * from Orders order by OrderID desc


 -------------------------------------------------------------------------------
 --sub query
 --»ÌÃ»·ﬂ «Œ— «Ï œÏ ··⁄„·Ì· «·⁄„· «Œ— «Ê—œ— ÊÌÃ»·œ «·‘—ﬂÂ Ê«”„Ê „Â„ Ãœ« œÂ Ê«»ÕÀ «ﬂ — ⁄‰Ê
 select contactname,companyname from Customers
 where CustomerID=(select top 1 CustomerID from Orders order by OrderID desc)
 --«‰  » ÃÌ» »Ì‰«  „‰ ÃœÊ· «·⁄„·««¡ Ê„·ﬂ‘ œ⁄ÊÂ »Ï «·„ÊÃÊœ ›Ï ÃœÊ· «·ÿ·«»« 
 -- ·“„  ÃÌ» «Ï œÏ Ê«Õœ »” ÿ·«„Â Õ«ÿÿ Ì”«ÊÏ

  select contactname,companyname from Customers
 where CustomerID in(select  CustomerID from Orders where OrderID<10290 )	--„„ﬂ‰ »Ï «·@  ÃÌ» œÂ »—œÊ

 --------------------------------------------------------------------------------------------------------------

 --Funcation (Configuration functions (give u info about your SSMS) Programmability > functions > system function

 ----------------------------------------------------

 select @@SERVERNAME
 select @@SERVICENAME
 select @@VERSION
 select @@CONNECTIONS
 select @@LANGUAGE
 select @@TOTAL_ERRORS
 select @@CPU_BUSY



 ---------------------------------------------------------------------------------------------------------------

 --Funcation (String functions) Programmability > functions > system function
  ----------------------------------------------------------------------------------------------
 use Northwind

 select   upper(firstname) ' firstname ' , lower(lastname) ' lastname ' from Employees

 -- len =lenght of char in words

 select   len(firstname),FirstName from Employees

 --left and take the first 3 char
 --right same but from right
 select   left(firstname,3),FirstName from Employees

  select   right(firstname,3),FirstName from Employees

  --reverse the word
  
  select   reverse(firstname),FirstName from Employees

  -----------------------------------------------------------------------------------------------------
 -- Funcation (aggregate functions) Programmability > functions > system function
 -----------------------------------------------------------------------------------

 select count(FirstName)from Employees           --[doesn't  count null values]

USE pubs

select * from sales

select max(ord_date) from sales
select max(qty)from sales
select min(qty)from sales
select avg(qty)from sales
select sum(qty)from sales

use Northwind

select top(1) max(LEN(companyname)) s,CompanyName from Customers

group by CompanyName
order by s desc
select * from [Order Details]
order by OrderID,ProductID
----------------------------------------------------------
select a.OrderID,a.ProductID,s.ProductName,sum(quantity) quntity,a.Discount --⁄‘«‰ ›Ï «Ê—œ—«  «ŒœÂ ‰›” «·»—Êœﬂ  „—Â »Ï œ”ﬂÊ  Ê„—Â „‰ €Ì—
from [Order Details] as a inner join Products s
on s.ProductID=a.ProductID
group by a.ProductID,a.Discount,a.OrderID,s.ProductName 
order by ProductID,OrderID

--------------------------------------------------------------------------------------------------------------

select OrderID,ProductID,  sum(unitprice) as [Unit Price],sum(Quantity),sum(UnitPrice*Discount) as discount from [Order Details]

group by OrderID,ProductID

------------------------------------------------------------------------------------
 -- Funcation (Data function) Programmability > functions > system function
 -----------------------------------------------------------------------------------

 select GETDATE()
 select day(getdate())--get the day of the date of today
  select month(getdate())
  select DATEPART(WEEKDAY,GETDATE())-- —ﬁ„ «·ÌÊ„ ›Ï «·«”»Ê⁄ «·”»  ÌÊ„ «·”«»⁄
    select DATEname(WEEKDAY,GETDATE())
	Select dateadd(day,10,getdate()) --Ì÷Ì› ⁄‘— «Ì«„ ⁄·Ï  «—ÌŒ «·‰Â—œ« ·Ê ⁄«Ê“  ⁄—› «· —ÌŒ »⁄œ ⁄‘— «Ì«„ ÊﬂœÂ
    Select dateadd(MONTH,-10,getdate())--ﬁ»· 10 ‘ÂÊ— Ê‰›” «·ﬂ·«„ »ﬁ« «Ì«„ ÊﬂœÂ  «‰« ﬂ« » «·›ﬂ—Â »”
	--„Â„ Ãœ««
	-------------------------------------

	select * from Employees
	where HireDate <(select convert(nvarchar(10), dateadd(YEAR,-1,getdate()),111))
	select GETDATE()

	select convert(nvarchar(10), dateadd(YEAR,-22,getdate()),111)
	select dateadd(year,-22,getdate())--if u want all the orders from one year (Very Important)

	select DATENAME(WEEKDAY,dateadd(year,-1,getdate()))--ﬂ«‰ ÌÊ„ ﬂ«„ «·‰Â—œ« „‰ ”‰Â

----------------------------------------------------------------------------------------------------
	-- ÕÊÌ· «· Ê«—ÌŒ
-----------------------------------------------------------------------------------------------------


select	getdate()

	select convert(nvarchar(20),getdate(),100)--» Õ›Ÿ „Ã„Ê… «ﬂÊ«œ ÂÌ« «·» Ã»·ﬂ «·‘ﬂ· 

	-- 10 103 british
	select convert(nvarchar(10),getdate(),103)
	-- 20  100	--defult
	--american 10  1
	--arabic 10 111

	select convert(nvarchar(10),getdate(),111)

	--Casting

	select DAY(getdate()) +Month(getdate()) --i need day next to month not to add them
	--Covert date from number to string
	select CAST(DAY(getdate())as nvarchar(2)) +' / '+ cast( Month(getdate()) as nvarchar(2))+' / '+ cast( year(getdate()) as nvarchar(4))

	---------------------------------------------------------------------------------------------------
	--Views
	---------------------------------------------------------------------------------------------------


	use Northwind
	go
	create view Mohamed_View
	as
	select * from Employees where EmployeeID<9


	-------------
	select * from Mohamed_View
	-------------

	ALTER view Mohamed_view
	as
	select * from Employees
	where EmployeeID<5
	-----------------

	drop view Mohamed_view


	------------------------------------------------------------------------------------------------------------
	--User Defines Functions „„ﬂ‰  Õÿ »—„ —«  Ê„„ﬂ‰ „ Õÿ‘
	----------------------------------------------------------------------------------------------------------------
	use Northwind


	 --Œ·Ï »«·ﬂ ·“„  Œ·Ï «·ﬁÌ„Â «· —Ã⁄ ‰›” «·ﬁÌ„Â «· —Ã⁄Â« „ —Ã⁄‘ ” —‰Ã Ê«‰  ﬂ« » «‰Â Ì—Ã⁄ «‰  
    create function myfunction()
	returns int --‰Ê⁄ «·»Ì‰«  «·⁄Ì—Ã⁄
	as
	begin
	return 7-- ⁄‘«‰ «„——«·ﬁÌ„Â «·⁄Ê“Â«  ŸÂ—
	end
	
	select dbo.myfunction() --u should put the schema name and bractuse



	-------------------------------------------------------------------------------------------------
	--Using Pramaters
	-------------------------------------------------------------------------------------------------


	   alter function function1(@num1 int , @num2 int)
	   returns int
	   as
	   begin
	   return @num1+@num2
	   end

	  select dbo.function1(50,50)  --30
	  -------------------------------------------------------------------------------------------------
	--Select  for (initalizing variable inside function we use declare) 
	
     --	select use to gain something from database u have it
     --set is to set value whatever it's

    --You can use set also to ON OR OFF utility such as identity



	-------------------------------------------------------------------------------------------------
	create function function2()
	   returns int
	   as
	   begin

	   declare @num1 int
	   set @num1=5
	   declare @num2 int
	   select @num2 =7 --select use to gain from database
	   return @num1+@num2

	   end

  select dbo.function2()
  ------------------------------------------------------------------------------------------------------
	create function function3()
	   returns int
	   as
	   begin

	   declare @num1 int
	   set @num1=5
	   declare @num2 int
	   select @num2 =@num1
	   return @num2
	   end
	
	select dbo.function3()

	------------------------------------------------------------------------------------------------------
	create function function4() --return number of employees
	   returns int
	   as
	   begin
	   declare @num1 int
	   select @num1 =Employees.EmployeeID From Employees
	   return @num1
	   end
	
	select dbo.function4()

 ------------------------------------------------------------------------------------------------------
 alter function function5(@ID int) 
	   returns nvarchar(50)
	   as
	   begin
	   declare @MyName nvarchar(50)
	   select @MyName =Employees.FirstName+''+Employees.LastName From Employees where EmployeeID=@ID
	   return @MyName
	   end
	
	select dbo.function5(5)


	------------------------------------------------------------------------------------------------------
	--if Select(69)
	------------------------------------------------------------------------------------------------------


	alter function Function6If(@MyCountry nvarchar(50))
	returns nvarchar(50)
	begin
	if(@MyCountry = 'UK' )	 
	return '„„·ﬂÂ  «·„ ÕœÂ'
   else if( @MyCountry='France')	
	return '›—‰”«'
	else
	Return @Mycountry  --you must put return at finish
	
--(The last statement included within a function must be a return statement)
	end
	----
	-----
	----- „Â„
	select dbo.function6if('U')

	SELECT companyname,contactname,dbo.function6if(Country)
     from Customers
	 where Country='uk' or Country= 'France'
	--------------	--------------	--------------	--------------	--------------
	
	CREATE function Function7(@MyCountry nvarchar(50))
	returns nvarchar(50)
	begin
	if(@MyCountry is null )	  --or @mycountry='ahmed' <<for or
	return 'No Region'
   	Return @Mycountry
	end

	select companyname,contactname,Region,dbo.function7(Region) from Customers

	--------------------------------------------------------------------------------
	--Function  Case Statement(71)
	--------------------------------------------------------------------------------
	alter Function CaseTest(@Title varchar(15))
	returns nvarchar(50)
	begin
	set @Title =
	case @Title
	when 'Mr.' then 'Master'
	when 'ms.' then 'Miss'
	when 'mrs.' then 'madam' --case must finsih whit end
	else 'Other'
	end
	
	return @title
	end

	use Northwind
	go
	select firstname,LastName,TitleOfCourtesy,dbo.CaseTest(TitleOfCourtesy) from Employees

	----------------------------------------------------------------------------------------------------
	--user Defintion functions 7 (Table Valued) (72)
	----------------------------------------------------------------------------------------------------
	create function testtable()
	returns @Table1 table
	( ID INT,NAME  nvarchar(50),city nvarchar(50))
	as
	begin
	insert into @Table1 select * from Names
	return;
	end
	------------------------------------------------------------------------------------------------

Use Test0
go
--------------------------------------------------------------------------------------
alter proc test
as
begin
insert into Mohamed1([Name]
      ,[MyAddress]
      ,[Sallary]
      ,[Regoin]) 
	  values('Feto','Alexsandria egypt mohrambek','8000','Alex')

	  
end
go
 exec test
 select * from Mohamed1

---------------------------------------------

ALTER proc test2 (@id int)
as
begin
select * from Mohamed1 where ID=@id  
end
go 
exec test2 2 --you have to not put bracktes

--------------------------------------------------------------------------------------
--We have 3 Job iD only we want to Restrict the user whit only them no one could enter id 4 or 10 or etc only 1,2,3
--if name exist u can't add this name again

alter proc AddName(@MyName nvarchar(50),@mycity nvarchar(50),@myjobid smallint)
as
begin

declare @name2 nvarchar(50)
select @name2=Name from Names where Name=@MyName --search in table first

if not @name2 is null  --if u find same name in table (if he didn't find name @name2 will be null)
print 'Name is Not Valid Choose Aother One Or Id Is OutOfrange '
else --@name2 null

insert into Names(NAME,CITY,JobID) values(@MyName,@mycity,@myjobid)

end
--
exec AddName 'KKK','Alexsandria',5


alter proc AddName(@MyName nvarchar(50),@mycity nvarchar(50),@myjobid smallint)
as
begin
declare @id2 smallint
declare @name2 nvarchar(50)
select @id2=Jobs.JobID FROM Jobs where Jobs.JobID=@myjobid
select @name2=Name from Names where Name=@MyName
if  @id2 is null or not @name2 is null  
print 'Name is Not Valid Choose Aother One Or Id Is OutOfrange '
else 
insert into Names(NAME,CITY,JobID) values(@MyName,@mycity,@myjobid)

end

exec AddName 'Feto1','Cairo',4

---------------------------------------------------------------------------------------

create proc SalaryCal(
@NameID smallint,
@mysalary decimal(18,2),
@mybouns  decimal(18,2),
@mydiscount decimal(18,2),
@mynet  decimal(18,2))
as
begin
insert into  Salary([NameID]
      ,[Salary]
      ,[Bouns]
      ,[discount]
      ,[net]) 
	  values
	  (@NameID ,
        @mysalary ,
        @mybouns ,
        @mydiscount ,
        @mynet )

end

SalaryCal 1,1500,150,15,1635

select * from  Salary

---------------------------------------------------
--Transaction must all the code if one query done and the aother error it will stop all the 2x query
-------------------------------------------------------

alter proc SalaryCal(
@NameID smallint,
@mysalary decimal(18,2),
@mybouns  decimal(18,2),
@mydiscount decimal(18,2),
@mynet  decimal(18,2) = 0) --default value cuz he shouldn't put directly the net
as
begin
if @mysalary>1000
set @mybouns=@mysalary*0.5 --if i want the bounds always be 10% from salary

else if @mysalary>1500
set @mybouns=@mysalary*0.10
set @mynet=(@mysalary+@mybouns)-@mydiscount


begin transaction
declare @CusID smallint
declare @namez smallint
select @CusID=Names.ID from Names where Names.ID=@NameID
select @namez=Salary.NameID from Salary where Salary.NameID=@NameID
if  @CusID is null

print 'There is No Employee whit this ID'

else if not @namez is null 

print 'You Have Put Salary To This One'

else

insert into  Salary([NameID]
      ,[Salary]
      ,[Bouns]
      ,[discount]
      ,[net]) 
	  values
	  (@NameID ,
        @mysalary ,
        @mybouns ,
        @mydiscount ,
        @mynet )

end
commit transaction
SalaryCal 11,5000,0,50

------------------------------------------------------------------------------------------------------------------

--Stored Procedures P7 [80] Return values
------------------------------------------------------------------------------------------------------------------

use Northwind
go
create proc testa
as
declare @ROWCOUNT int
select * From Orders
SET @Rowcount=@@ROWCOUNT
return @ROWCOUNT
GO

declare @Num int

exec @num= testa

select @Num

--------------------------------------------------------------------------------------------
--IDENTITY AND Transaction very immportant
--------------------------------------------------------------------------------------------

alter proc InsEmp_Salary 


@myName nvarchar(50),
@mycity nvarchar(50),@myjobid smallint,@mysalary decimal(18,2)

as

declare @myid smallint
 declare  @mybouns  decimal(18,2)=@mysalary*0.5
 declare @mydiscount decimal(18,2)=@mysalary*0.3
 declare  @mynet  decimal(18,2) = 0 --default value cuz he shouldn't put directly the net


begin

if @mysalary>1000
set @mybouns=@mysalary*0.8 --if i want the bounds always be 10% from salary

else if @mysalary>1500
set @mybouns=@mysalary*0.10
set @mynet=(@mysalary+@mybouns)-@mydiscount

begin try
begin transaction

insert into Names(NAME,CITY,JobID) values(@myName,@mycity,@myjobid)
set @myid  = (select SCOPE_IDENTITY())

insert into  Salary([NameID]
      ,[Salary]
      ,[Bouns]
      ,[discount]
      ,[net]) 
	  values
	  ( @myid,
        @mysalary ,
        @mybouns ,
        @mydiscount ,
        @mynet )

   commit transaction
   end try

   begin catch 
   rollback transaction
   print error_message()
   end catch
   end



InsEmp_Salary null,'Alexsandria',3,2000