CREATE TABLE countries 
(
	    country_id INT ,
	    country_name VARCHAR(40) NOT NULL ,

	PRIMARY KEY (country_id) ,
	UNIQUE (country_name)
);


CREATE TABLE city 
(
	city_id INT , 
	city_name VARCHAR(30) NOT NULL,
	country_id INT NOT NULL ,
	PRIMARY KEY (city_id) ,
	UNIQUE (city_name) ,
	FOREIGN KEY (country_id) REFERENCES countries(country_id) 
);


CREATE TABLE metro_stations
(
	station_id INT , 
	station_name VARCHAR(30) NOT NULL, 
	city_id INT NOT NULL , 
	station_info TEXT(500) DEFAULT ('NO DATA YET') , 

	PRIMARY KEY (station_id) , 
	FOREIGN KEY (city_id) REFERENCES city(city_id) 
);


CREATE TABLE connections
(
	connection_id INT ,
	station_id INT NOT NULL , 
	connected_station_id INT NOT NULL , 
	connection_info VARCHAR(40) ,  
	PRIMARY KEY (connection_id) , 
	FOREIGN KEY (station_id) REFERENCES metro_stations(station_id) , 
	FOREIGN KEY (connected_station_id) REFERENCES metro_stations(station_id)
);
