create database AirlinesMgmtDatabase

create TABLE airport
(		airportid		char(2)			NOT NULL,
		airportname		varchar(25)		NOT NULL,
		city			varchar(15)		NOT NULL,
		country			varchar(15)		NOT NULL,
		PRIMARY KEY (airportid) );
select * from airport;

create TABLE client
(		clientid		char(2)			NOT NULL,
		lastname		varchar(10)		NOT NULL,
		firstname		varchar(10)		NOT NULL,
		passportnum		char(8)			NOT NULL,
		airportid		char(2)			NOT NULL,
		PRIMARY KEY (clientid),
		FOREIGN KEY (airportid) REFERENCES airport(airportid) );
select * from client;

create TABLE phone
(		phoneNum		char(10)		NOT NULL,
		clientid		char(2)			NOT NULL,
		PRIMARY KEY (phonenum),
		FOREIGN KEY (clientid) REFERENCES client(clientid) );	
select * from phone;


create TABLE spouse
(		spouseid		char(2)			NOT NULL,
		clientid		char(2),
		spassport		char(8)			NOT NULL,
		PRIMARY KEY (spouseid, clientid),
		FOREIGN KEY (clientid) REFERENCES client(clientid) );

select * from spouse;

create TABLE booking
(		bookingnum		char(5)			NOT NULL,
		clientid		char(2)			NOT NULL,
		price			numeric(5,2)	NOT NULL,
		PRIMARY KEY (bookingnum),
		FOREIGN KEY (clientid) REFERENCES client(clientid) );
select * from booking;

create TABLE airlines
(		airlinesid		char(2)			NOT NULL,
		mainoffice		varchar(15)		NOT NULL,
		PRIMARY KEY (airlinesid)  );

select * from airlines;


create TABLE flightstatus
(		statusid		char(2)			NOT NULL,
		arrivaltime		varchar(10)		NOT NULL,
		arrivaldate		DATE			NOT NULL,
		departuretime	varchar(10)		NOT NULL,
		departuredate	DATE			NOT NULL,
		PRIMARY KEY (statusid)  );
select * from flightstatus;

create TABLE flight
(		flightid		char(2)			NOT NULL,
		originairportid	char(2)			NOT NULL,
		destairportid	char(2)			NOT NULL,
		statusid		char(2)			NOT NULL,
		airlinesid		char(2)			NOT NULL,
		returnflightid	char(2),
		PRIMARY KEY(flightid),
		FOREIGN KEY (originairportid) REFERENCES airport(airportid),
		FOREIGN KEY (destairportid) REFERENCES airport(airportid),
		FOREIGN KEY (statusid) REFERENCES flightstatus(statusid),
		FOREIGN KEY (airlinesid) REFERENCES airlines(airlinesid),
		FOREIGN KEY (returnflightid) REFERENCES flight(flightid) );

select * from flight;


create TABLE aircraft
(		aircraftid		char(2)			NOT NULL,
		model			varchar(15)		NOT NULL,
		flightid		char(2)			NOT NULL,
		PRIMARY KEY (aircraftid),
		FOREIGN KEY (flightid) REFERENCES flight(flightid) );

select * from aircraft;


create TABLE components
(		componentsid	char(3)			NOT NULL,
		componentsname	varchar(10)		NOT NULL,
		PRIMARY KEY (componentsid) );

select * from components;

create TABLE manufracturer
(		manuid			char(3)			NOT NULL,
		manuname		varchar(10)		NOT NULL,
		PRIMARY KEY (manuid) );

select * from manufracturer;

create TABLE provides
(		manuid			char(3)			NOT NULL,
		componentsid	char(3)			NOT NULL,
		aircraftid		char(2)			NOT NULL,
		PRIMARY KEY (manuid, componentsid, aircraftid),
		FOREIGN KEY (manuid) REFERENCES manufracturer(manuid),
		FOREIGN KEY (componentsid) REFERENCES components(componentsid),
		FOREIGN KEY (aircraftid) REFERENCES aircraft(aircraftid) );


select * from provides;

create TABLE advertisements
(		adid			char(4)			NOT NULL,
		addescription	varchar(20)		NOT NULL,
		PRIMARY KEY (adid)   );

select * from advertisements;

create TABLE travelclass
(		classid				char(2)			NOT NULL,
		classname			varchar(10)		NOT NULL,
		classdescription	varchar(20)		NOT NULL,
		refreshments		varchar(15),
		PRIMARY KEY (classid)   );

select * from travelclass;


create TABLE offers
(		classid			char(2)			NOT NULL,
		adid			char(4)			NOT NULL,
		discount		varchar(15),
		PRIMARY KEY (classid, adid),
		FOREIGN KEY (classid) REFERENCES travelclass(classid),
		FOREIGN KEY (adid) REFERENCES advertisements(adid)   );

select * from offers;


create TABLE aircraftseat
(		seatnum			char(5)			NOT NULL,
		aircraftid		char(2)			NOT NULL,
		classid			char(2)			NOT NULL,
		PRIMARY KEY (seatnum),
		FOREIGN KEY (classid) REFERENCES travelclass(classid),
		FOREIGN KEY (aircraftid) REFERENCES aircraft(aircraftid)   );

