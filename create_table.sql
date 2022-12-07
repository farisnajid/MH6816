CREATE TABLE passengers (
        
        passenger_id INT,
        first_name VARCHAR(64),
        last_name VARCHAR(64),
        DOB DATE,
        gender VARCHAR(8),
        nationality VARCHAR(32),
        passport_number VARCHAR(32),
        
        CONSTRAINT PKpassengers PRIMARY KEY (passenger_id));


CREATE TABLE aircrafts (
        
        aircraft_id INT,
        capacity INT,
        aircraft_type VARCHAR(32),
        
        CONSTRAINT PKaircrafts PRIMARY KEY (aircraft_id));


CREATE TABLE flights (
        
        flight_id INT,
        depature_datetime DATETIME,
        arrival_datetime DATETIME,
        departure VARCHAR(8),
        arrival VARCHAR(8),
        aircraft_id INT,
        status VARCHAR(16),
        
        CONSTRAINT PKflights PRIMARY KEY (flight_id),
        CONSTRAINT FKaircraft FOREIGN KEY (aircraft_id) REFERENCES aircrafts);

CREATE TABLE bookings (
        
        booking_id INT,
        datetime DATETIME,
        passenger_id INT,
        flight_id INT,
        price DECIMAL(13,2),
        status VARCHAR(16),
        
        CONSTRAINT PKbookings PRIMARY KEY (booking_id), 
        CONSTRAINT FKpassenger FOREIGN KEY (passenger_id) REFERENCES passengers,
        CONSTRAINT FKflight FOREIGN KEY (flight_id) REFERENCES flights);