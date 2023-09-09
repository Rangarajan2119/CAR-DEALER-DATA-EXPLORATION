use portfolio_project;

--	READ DATA
SELECT * FROM car_dekho;

-- TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS -- 
select  count(*) from car_dekho;
-- HOW MANY CARS IN THE YEAR 2023 --
select count(*) from car_dekho where year = '2023';

-- HOW MANY CARS IN THE YEAR 2020,2021,2022 --
select count(*) from car_dekho where year = '2020';
select count(*) from car_dekho where year = '2021';
select count(*) from car_dekho where year = '2022';
-- GROUP BY --
select count(*) from car_dekho where year in ('2020', '2021','2022') group by year;

-- TOTAL CARS BY ALL YEAR --
select year, count(*) from car_dekho group by year;

-- HOW MANY DIESEL CARS IN THE YEAR 2020 --
select count(*) from car_dekho where year = '2020' and fuel = 'diesel';

-- HOW MANY PETROL CARS IN THE YEAR 2020 --
select count(*) from car_dekho where year = '2020' and fuel = 'petrol';

-- PRINT OF ALL THE FUEL CARS BY ALL YEAR --
select year, count(*) from car_dekho where fuel = 'diesel' group by year; 
select year, count(*) from car_dekho where fuel = 'petrol' group by year;
select year, count(*) from car_dekho where fuel = 'cng' group by year;  

-- WHICH YEAR HAD MORE THAN 1000 CARS --
select year, count(*) from car_dekho group by year having count(*) >100;

-- CARS COUNT BETWEEN 2015 AND 2023 --
select  count(*) from car_dekho where year between 2015 and 2023;

-- SELECT ALL DETAILS OF CARS FROM 2015 TO 2023 --
select * from car_dekho where year between 2015 and 2023;

-- SHOW BMW CARS ALONE --
select * from car_dekho where name like 'bmw%';

-- SHOW ONLY FIRST OWNER WITH MILEAGE MORE THAN 30.0 --
select * from car_dekho where (owner = 'first owner') and mileage > 30.0;

-- CLIENT ASKS ALL CARS IN 2021 WITH POWER MORE THAN 120 --
select name,max_power from car_dekho where year = '2021' and max_power >120 order by max_power;

-- CLIENT ASKS DETAILS OF ALL CARS WHICH HAS DRIVEN KMS LESS THAN 10,000 --
select * from car_dekho where char_length(km_driven) = '4';

-- SHOW CAR NAMES WHICH HAS 5 SEATS --
select name,if (seats = '5', '1',NULL) as total_seats from car_dekho;

-- CUSTOMER ASKS ALL THE DETAILS OF CAR WITH KMS DRIVEN LESS THAN 10,000 WITH INDIVDUAL SELLER --
select * from car_dekho where (seats = '5') and (seller_type = 'individual') and km_driven <10000 order by km_driven;

-- CLIENT ASKS TO SHOW DETAILS OF CARS WITH MANUAL GEARBOX WITH TORQUE NOT MORE THAN 100 --
select * from car_dekho where transmission = 'manual' and torque <= 100 order by name;

-- SHOW CAR NAMES,YEAR AND SELLING PRICE WHERE MILEAGE IS NOT LESS THAN 15 IN THE YEAR 2020 --
select name,year,selling_price,mileage from car_dekho where year = '2020' and mileage >=15 order by selling_price;