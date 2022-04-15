create database StoreShop

use StoreShop

create table Category
(
   [Id] int primary key identity,
   [Name] varchar(max)
)

create table Brand
(
   [Id] int primary key identity,
   [BrandName] varchar(max),
   [CategoryId] int foreign key references Category(Id)
)

create table Mark
(
  [Id] int primary key identity,
  [MarkName] varchar(max),
  [Brand_Id] int foreign key references Brand(Id)
)
create table Product
(
   [Id] int primary key identity,
   [ProductName] varchar(max),
   [MarkId] int foreign key references Mark(Id), 
   [Price] varchar(max),
   [Color] varchar(max) null,
   [Volume] varchar(max) null,
   [Count] int
)
Alter table Product
Add Price int;
select  Product.Id,Product.ProductName,Product.Color,Product.[Count],Mark.MarkName,Product.Price from Product 
join Mark on Product.MarkId = Mark.Id where Product.MarkId = 3
Select SUM(Price) as GeneralPrice from Product where Product.MarkId = 3


