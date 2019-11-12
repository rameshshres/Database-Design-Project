/*1a
select count(*)
from customer
order by CustID ASC;*/

/*1b
select count(*)
from movie
order by MovieID ASC;*/

/*1c
select count(*)
from rental
order by rentalID ASC;*/

/*2.
select distinct movieType
from movie;*/

/*3.

select C.custID as CustID, C.custFname as FName, C.custLname as LName
from rental R, customer C
where R.rentalRentDate like '%-10-%' and R.rentalCustID = C.custID;*/

/*4.

select C.CustID as CustID, C.CustFname as FName, C.CustLname as LName
from rental R, customer C
where R.RentalCustID = C.CustID
Group by R.RentalCustID
having count(*) > 1
order by C.CustID ASC;*/

/*5.
select C.CustID as CustID, C.CustFname as FName, C.CustLname as LName
from customer C
where C.CustID not in 
(select R.RentalCustID
from rental R);*/

/*6.
select distinct C.CustID as CustID, C.CustFname as FName, C.CustLname as LName
from rental R, customer C
where (R.RentalRentDate like '%-10-%' or R.RentalRentDate like '%-11-%') and R.RentalCustID = C.CustID
order by CustID ASC;*/

/*7.

select C.CustID as CustID, C.CustFname as FName, C.CustLname as LName, Max(R.rentalRentDate) as rentalDate
from customer C, rental R
where C.CustID = R.RentalCustID
group by C.CustID
order by C.CustID ASC;*/

/*8. 
select distinct C.CustID as CustID, C.CustFname as FName, C.CustLname as LName, M.movieName as Movie
from customer C, rental R, movie M
Where C.CustID = R.RentalCustID and R.RentalMovieID = M.MovieID
order by CustID ASC;*/

/*9.
select distinct M.MovieName as MovieName, count(RentalMovieID) as TimesRented
from movie M, rental R
where M.MovieID = R.RentalMovieID
group by M.MovieName
order by TimesRented ASC;*/





