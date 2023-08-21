create database market
select * from [supermarket_sales - Sheet1]

select distinct Product_line from [supermarket_sales - Sheet1]


select Product_line ,
 sum(case when Product_line = 'Fashion accessories' then 1 else 0 end ) as fashion_accessorie ,
 sum(case when Product_line = 'Health and beauty' then 1 else 0  end ) as Health_beauty,
 sum(case when Product_line = 'Electronic accessories' then 1 else 0  end ) as Electronic_accessories,
 sum(case when Product_line = 'Food and beverages' then 1 else 0  end ) as Food_beverages,
 sum(case when Product_line = 'Sports and travel' then 1 else 0  end ) as Sports_travel,
 sum(case when Product_line = 'Home and lifestyle' then 1 else 0  end ) as Home_lifestyle
 from [supermarket_sales - Sheet1]
 group by Product_line
 
 select Product_line,Branch , Gender ,max(Quantity) as max_quantity
 from [supermarket_sales - Sheet1]
 group by Branch , Gender , Product_line

 select Product_line , gender , max(Unit_price) as max_unit_price
 from [supermarket_sales - Sheet1]
 group by Product_line , Gender
 order by max_unit_price desc

 select Branch ,sum(gross_income) as total_gross_income
 from [supermarket_sales - Sheet1]
 where Branch in ('A' , 'B','C')
 group by Branch
 order by total_gross_income desc
 
select payment ,
sum(case when payment= 'cash' then 1  end ) as cash_payment,
sum(case when payment= 'Ewallet'then 1  end )  as Ewallet_payment,
sum(case when payment= 'credit card' then 1 end) as credit_card_payment
 from [supermarket_sales - Sheet1]
 where gender = 'male'
 group by Payment , Gender
 order by cash_payment , Ewallet_payment , credit_card_payment

 select  Gender , Product_line , min(Rating) as min_rating
 from [supermarket_sales - Sheet1]
 group by gender , Product_line 

 select max(Unit_price + Tax_5) as total
 from [supermarket_sales - Sheet1]

 ALTER DATABASE market MODIFY NAME = supermarket;