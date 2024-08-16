-- create database
create database AirlinesDataBase;
use AirlinesDataBase;

-- create tables
-- airlines table
create table airlines (
airlineid int primary key identity(1,1) not null,
airlinename varchar(100) not null
);

-- airplanes table
create table airplanes (
airplaneid int primary key identity(1,1) not null,
modelnumber varchar(50) not null,
registrationnumber varchar(50) unique not null,
capacity int not null,
airlineid int,
foreign key (airlineid) references airlines(airlineid)
);

-- flights table
create table flights (
flightid int primary key identity(1,1) not null,
flightnumber varchar(50) unique not null,
departureairport varchar(100) not null,
destinationairport varchar(100) not null,
departuredatetime datetime not null,
arrivaldatetime datetime not null,
airplaneid int,
foreign key (airplaneid) references airplanes(airplaneid)
);

-- passengers table
create table passengers (
passengerid int primary key identity(1,1) not null,
givennames varchar(100) not null,
surname varchar(100) not null,
email varchar(100) unique not null
);

-- bookings table
create table bookings (
bookingid int primary key identity(1,1) not null,
flightid int,
passengerid int,
bookingdate date,
foreign key (flightid) references flights(flightid),
foreign key (passengerid) references passengers(passengerid)
);

-- staff table
create table staff (
staffid int primary key identity(1,1) not null,
staffname varchar(100) not null,
staffrole varchar(100) not null,
flightid int,
foreign key (flightid) references flights(flightid)
);

-- insert airlines
insert into airlines (airlinename) values
('Airline A'),
('Airline B'),
('Airline C'),
('Airline D'),
('Airline E'),
('Airline F'),
('Airline G'),
('Airline H'),
('Airline I'),
('Airline J');

-- insert airplanes
insert into airplanes (modelnumber, registrationnumber, capacity, airlineid) values
('A 737', 'ABC123', 180, 1),
('B A320', 'DEF456', 150, 2),
('C 747', 'GHI789', 400, 3),
('D A380', 'JKL012', 500, 4),
('E 777', 'MNO345', 300, 5),
('F A330', 'PQR678', 250, 6),
('G 787', 'STU901', 280, 7),
('H A350', 'VWX234', 350, 8),
('I 767', 'YZA567', 220, 9),
('J A319', 'BCD890', 140, 10);

-- insert flights
insert into flights (flightnumber, departureairport, destinationairport, departuredatetime, arrivaldatetime, airplaneid) values
('FL1001', 'ABC', 'EFG', '2024-03-24 08:00:00', '2023-03-24 11:00:00', 1),
('FL1002', 'DEF', 'HIJ', '2023-03-24 12:00:00', '2023-03-24 16:00:00', 2),
('FL1003', 'GHI', 'KLM', '2023-03-24 18:00:00', '2023-03-24 22:00:00', 3),
('FL1004', 'JKL', 'NOP', '2023-03-24 09:00:00', '2023-03-24 11:30:00', 4),
('FL1005', 'MNO', 'QUR', '2023-03-24 14:00:00', '2023-03-24 16:00:00', 5),
('FL1006', 'PKR', 'STV', '2023-03-24 19:00:00', '2023-03-24 21:00:00', 6),
('FL1007', 'STU', 'UQX', '2023-03-24 08:00:00', '2023-03-24 10:00:00', 7),
('FL1008', 'VWX', 'YZB', '2023-03-24 13:00:00', '2023-03-24 16:00:00', 8),
('FL1009', 'YZA', 'ACD', '2023-03-24 18:00:00', '2023-03-24 21:00:00', 9),
('FL1010', 'BCD', 'MNZ', '2023-03-24 22:00:00', '2023-03-25 01:00:00', 10);

-- insert passengers
insert into passengers (givennames, surname, email) values
('Muzna', 'Ali', 'ex1@example.com'),
('Sara', 'Kamran', 'ex11@example.com'),
('Fatima', 'Mansoor', 'ex2@example.com'),
('Bisma', 'Fahad', 'ex12@example.com'),
('Nighat', 'Azeemi', 'ex3@example.com'),
('Sarah', 'Khan', 'ex15@example.com'),
('Farah', 'Urooj', 'ex4@example.com'),
('Nehal', 'Arshad', 'ex16@example.com'),
('Sakina', 'Qasim', 'ex5@example.com'),
('Shama', 'Amir', 'ex17@example.com'),
('Urooj', 'Nagori', 'ex6@example.com'),
('Annie', 'Anus', 'ex18@example.com'),
('Ifra', 'Siddiqui', 'ex7@example.com'),
('Kami', 'Khan', 'ex19@example.com'),
('Ali', 'Ahmed', 'ex8@example.com'),
('Javed', 'Zafar', 'ex20@example.com'),
('Saba', 'Khanam', 'ex9@example.com'),
('Tania', 'Daniyal', 'ex21@example.com'),
('Mani', 'Usman', 'ex10@example.com'),
('Sidra', 'Ali', 'ex22@example.com');

-- Insert Bookings with various dates
insert into Bookings (FlightID, PassengerID, BookingDate) values
(1, 1, '2023-03-01'), 
(1, 2, '2023-03-01'), 
(1, 3, '2023-03-01'), 
(1, 4, '2023-03-20'), 
(1, 5, '2023-03-20'),
(1, 6, '2023-03-24'), 
(1, 7, '2023-03-24'), 
(1, 8, '2023-03-24'), 
(1, 9, '2023-03-24'), 
(1, 10, '2023-03-24'),
(1, 11, '2023-03-24'), 
(1, 12, '2023-03-24'), 
(1, 13, '2023-03-24'), 
(1, 14, '2023-03-24'), 
(1, 15, '2023-03-24'),
(1, 16, '2023-03-24'), 
(1, 17, '2023-03-24'), 
(1, 18, '2023-03-24'), 
(1, 19, '2023-03-24'), 
(1, 20, '2023-03-24'),
(2, 1, '2023-03-24'), 
(2, 2, '2023-03-24'), 
(2, 3, '2023-03-24'), 
(2, 4, '2023-03-24'), 
(2, 5, '2023-03-24');


insert into Staff (StaffName, StaffRole, FlightID) values
('Ali', 'Pilot', 1),
('Saba', 'Hostess', 1),
('Akbar', 'Guard', 1),
('Sana', 'Administrator', 1),
('Aqsa', 'Booking Officer', 1),
('Iraj', 'Pilot', 2),
('Kanwal', 'Hostess', 2),
('Seemen', 'Guard', 2),
('Seema', 'Administrator', 2),
('Dania', 'Booking Officer', 2),
('Danish', 'Pilot', 3),
('Jiya', 'Hostess', 3),
('Javeriya', 'Guard', 3),
('Rayaan', 'Administrator', 3),
('Zara', 'Booking Officer', 3),
('Zoya', 'Pilot', 4),
('Kaniat', 'Hostess', 4),
('Kami', 'Guard', 4),
('Laiba', 'Administrator', 4),
('Fizza', 'Booking Officer', 4),
('Wajih', 'Pilot', 5),
('Tina', 'Hostess', 5),
('Rimsha', 'Guard', 5),
('Maria', 'Administrator', 5),
('Ghnaiya', 'Booking Officer', 5),
('Muzammil', 'Pilot', 6),
('Munzaa', 'Hostess', 6),
('Hania', 'Guard', 6),
('Areesha', 'Administrator', 6),
('Tahir', 'Booking Officer', 6),
('Tariq', 'Pilot', 7),
('Wasim', 'Hostess', 7),
('Simra', 'Guard', 7),
('Puja', 'Administrator', 7),
('Rani', 'Booking Officer', 7);

select * from airlines
select * from airplanes
select * from flights
select * from passengers
select * from bookings
select * from staff

-- retrieve booking details for all passengers flying on 24-03-2023
select passengers.givennames, passengers.surname, passengers.email, flights.flightnumber, flights.departureairport, flights.destinationairport, flights.departuredatetime, flights.arrivaldatetime
from bookings
join flights on bookings.flightid = flights.flightid
join passengers on bookings.passengerid = passengers.passengerid
where convert(date, flights.departuredatetime) = '2023-03-24';


-- delete booking details for the date 20-03-2023
delete from bookings
where bookingdate = '2023-03-20';

-- create a view displaying flight number, source, and destination
create view flightview as
select flightnumber, departureairport as source, destinationairport as destination
from flights;

-- update the view such that the flight on 24-03-2023 departs from Dubai and arrives in Pakistan
update flights
set departureairport = 'Dubai', destinationairport = 'Pakistan'
where flightnumber = 'FL1001' and departuredatetime = '2023-03-24 08:00:00';