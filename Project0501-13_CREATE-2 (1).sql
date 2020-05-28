DROP TABLE [Optimus.Makes];
DROP TABLE [Optimus.Parks];
DROP TABLE [Optimus.Drives];
DROP TABLE [Optimus.Station];
DROP TABLE [Optimus.Payment];
DROP TABLE [Optimus.Vehicle];
DROP TABLE [Optimus.Driver];
DROP TABLE [Optimus.Location];


CREATE TABLE [Optimus.Location](	
	locationId CHAR (10) NOT NULL,
	locationName VARCHAR (50),
	address VARCHAR (100),
	CONSTRAINT pk_Location_locationId PRIMARY KEY (locationId));

CREATE TABLE [Optimus.Driver](
	driverId CHAR (10) NOT NULL,
	firstName VARCHAR (20),
	lastName VARCHAR (20),
	permit CHAR (5),
	CONSTRAINT pk_Driver_driverId PRIMARY KEY (driverId));

CREATE TABLE [Optimus.Vehicle](	
	vehicleNumber CHAR (10) NOT NULL,
	equippedPlugin CHAR (5),
	CONSTRAINT pk_Vehicle_vehicleNumber PRIMARY KEY (vehicleNumber))

CREATE TABLE [Optimus.Payment](
	paymentId CHAR (10) NOT NULL,
	paymentMode VARCHAR (20),
	paymentAmount NUMERIC (6,2),
	CONSTRAINT pk_Payment_paymentId PRIMARY KEY (paymentId))

CREATE TABLE [Optimus.Station](
	stationId CHAR (10) NOT NULL,
	locationId CHAR (10),
	chargingPorts INTEGER,
	CONSTRAINT pk_Station_stationId PRIMARY KEY (stationId),
	CONSTRAINT fk_Station_locationId FOREIGN KEY (locationId)
		REFERENCES [Optimus.Location] (locationId)
		ON DELETE CASCADE ON UPDATE CASCADE);


CREATE TABLE [Optimus.Drives](
	driverId CHAR (10) NOT NULL,
    vehicleNumber CHAR (10) NOT NULL,
    CONSTRAINT pk_Drives_driverId_vehicleNumber PRIMARY KEY (driverId, vehicleNumber),
    CONSTRAINT fk_Drives_driverId FOREIGN KEY (driverId)
  		REFERENCES [Optimus.Driver] (driverId)
  		ON DELETE CASCADE ON UPDATE NO ACTION,
    CONSTRAINT fk_Drives_vehicleNumber FOREIGN KEY (vehicleNumber)
  		REFERENCES [Optimus.Vehicle] (vehicleNumber)
  		ON DELETE CASCADE ON UPDATE NO ACTION);


CREATE TABLE [Optimus.Parks](
	vehicleNumber CHAR (10) NOT NULL,
	stationId CHAR (10) NOT NULL,
	CONSTRAINT pk_Parks_vehicleNumber_stationId PRIMARY KEY (vehicleNumber,stationId),
	CONSTRAINT fk_Parks_vehicleNumber FOREIGN KEY (vehicleNumber)
		REFERENCES [Optimus.Vehicle] (vehicleNumber)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT fk_Parks_stationId FOREIGN KEY (stationId)
	REFERENCES [Optimus.Station] (stationId)
	ON DELETE CASCADE ON UPDATE CASCADE);
   	
 
CREATE TABLE [Optimus.Makes](
   	driverId CHAR (10) NOT NULL,
   	vehicleNumber CHAR (10) NOT NULL,
   	paymentId CHAR (10) NOT NULL,
   	month INTEGER,
   	day INTEGER,
   	year INTEGER,
   	parkingDuration INTEGER,
   	chargingDuration INTEGER,
   	CONSTRAINT pk_Makes_driverId_vehicleNumber_paymentId PRIMARY KEY (driverId, vehicleNumber, paymentId),
   	CONSTRAINT fk_Makes_driverId FOREIGN KEY (driverId)
   	  	REFERENCES [Optimus.Driver] (driverId)
   	  	ON DELETE NO ACTION ON UPDATE  NO ACTION,
   	CONSTRAINT fk_Makes_vehicleNumber FOREIGN KEY (vehicleNumber)
   	  	REFERENCES [Optimus.Vehicle] (vehicleNumber)
   	  	ON DELETE NO ACTION ON UPDATE NO ACTION,
   	CONSTRAINT fk_Makes_paymentId FOREIGN KEY (paymentId)
   	  	REFERENCES [Optimus.Payment] (paymentId)
        ON DELETE NO ACTION ON UPDATE NO ACTION);

