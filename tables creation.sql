





create table Fact_Sales(
  sales_id_SK int primary key identity (1,1) ,
  Book_Fk int , Customer_FK int , order_FK int , 
  date_FK int , order_line_Bk int , 
  price decimal(5,2) , 
  created_at datetime )


  -------Dim_Book
   create table Dim_Book (
   Book_SK int primary key identity (1,1) ,
   Book_id_BK int , title varchar(400),
   isbn13 varchar(13) , language_id int , publication_date date ,
   publisher_id int , author_id int , author_name varchar(400) ,
   publisher_name nvarchar(1000) , language_name varchar(50), start_date datetime , 
   end_date datetime , is_current tinyint )


   -------------- Dim_Customer
      create table Dim_Customer (
	  customer_SK int primary key identity(1,1) ,
	  customer_id_BK int , first_name varchar(200) , last_name varchar(200) ,
	  email varchar(350) , address_status varchar(30) , street_number varchar(10) 
	  , street_name varchar(200) , city varchar(100) , country_id int  , country_name varchar(200)
	  , start_date datetime ,  end_date datetime , is_current tinyint )


	  --------------------Dim_Order
	  CREATE table Dim_Order
	  ( 
	      order_SK int primary key identity(1,1) ,
		  order_id_BK int , order_date datetime , shopping_method_id int , method_name varchar(100) 
		  , history_id int , status_id int , status_date datetime , status_value varchar(20) , 
		  cost decimal(6,2) , start_date datetime , end_date datetime , is_current tinyint )





