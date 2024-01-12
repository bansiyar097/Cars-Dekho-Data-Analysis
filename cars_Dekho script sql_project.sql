use cars;
select * from car_dekho;

## Total number of cars do we have in the Dataset;
select count(name) as number_of_entry from car_dekho;

## MANAGER ASKED HOW MANY CARS WILL BE AVAILABLE IN THE YEAR 2023;
Select count(name) from car_dekho where year = 2023;

## MANAGER ASKED HOW MANY CARS WILL BE THERE IN THE YEAR 2020,2021,2022;
Select count(name) from car_dekho where year in (2020,2021,2022);

## MANAGER ASKED TO SHOW THE COUNT OF CARS FROM EACH YEAR;
Select year,count(name) as count from car_dekho group by year order by 1 desc; 

##  MANAGER ASKED HOW MANY DIESEL CARS WERE THERE IN 2020;
Select count(name) as count from car_dekho where year = 2020 and fuel = "Diesel";

## How many petrol cars were there in 2020;
Select count(name) as count from car_dekho where year = 2020 and fuel = "Petro;";

##MANAGER ASKED TO GIVE THE DETAILS OF ALL CARS PETROL DIESEL AND CNG COME BY ALL YEAR;
Select fuel,year, count(*) from car_dekho group by fuel,year;

##  MANAGER ASKED IN WHICH YEAR WE HAVE MORE THAN 100 CARS;
select year, count(*) from car_dekho group by year having count(name)>100 order by 2;

## Manager asked give the detsils of cars details between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;

##M MANAGER ASKED TO GIVE THE COUNT OF THE CARS were there in between 2015 and 2023;
select count(*) from car_dekho where year between 2015 and 2023;


