
CREATE TABLE airlines_info (
    airline_id INT,
    airline_name VARCHAR(100),
    country_id INT,
    founded_year INT,
    is_active VARCHAR(10)
);

CREATE TABLE country_info (
    country_id INT,
    country_name VARCHAR(100),
    country_code VARCHAR(10),
    population INT,
    continent VARCHAR(50)
);

CREATE TABLE state_info (
    state_id INT,
    state_name VARCHAR(100),
    country_id INT,
    population INT,
    area INT
);

ALTER TABLE airlines_info
ADD headquarters VARCHAR(100),
ADD fleet_size INT,
ADD website VARCHAR(100);

ALTER TABLE country_info
ADD gdp VARCHAR(20),
ADD official_language VARCHAR(50),
ADD capital_city VARCHAR(100);

ALTER TABLE state_info
ADD capital VARCHAR(100),
ADD official_language VARCHAR(50),
ADD established_year INT;

ALTER TABLE airlines_info
RENAME COLUMN airline_name TO name;
ALTER TABLE airlines_info
RENAME COLUMN is_active TO status;
ALTER TABLE airlines_info
RENAME COLUMN founded_year TO year;

ALTER TABLE country_info
RENAME COLUMN country_name TO name;
ALTER TABLE country_info
RENAME COLUMN country_code TO code;
ALTER TABLE country_info
RENAME COLUMN continent TO region;

ALTER TABLE state_info
RENAME COLUMN state_name TO name;
ALTER TABLE state_info
RENAME COLUMN area TO area_km;
ALTER TABLE state_info
RENAME COLUMN population TO total_population;

ALTER TABLE airlines_info
MODIFY fleet_size VARCHAR(10);

ALTER TABLE country_info
MODIFY gdp VARCHAR(50);

ALTER TABLE state_info
MODIFY established_year VARCHAR(10);

INSERT INTO airlines_info (airline_id, name, country_id, year, status, headquarters, fleet_size, website)
VALUES
(1, 'Indigo', 1, 2006, 'Yes', 'Gurgaon', '280', 'www.goindigo.in'),
(2, 'Air India', 1, 1932, 'Yes', 'New Delhi', '120', 'www.airindia.in'),
(3, 'SpiceJet', 1, 2005, 'Yes', 'Gurgaon', '90', 'www.spicejet.com'),
(4, 'Vistara', 1, 2013, 'Yes', 'Gurgaon', '50', 'www.airvistara.com'),
(5, 'AirAsia India', 1, 2014, 'No', 'Bangalore', '30', 'www.airasia.co.in'),
(6, 'Akasa Air', 1, 2022, 'Yes', 'Mumbai', '20', 'www.akasaair.com'),
(7, 'Go First', 1, 2005, 'No', 'Mumbai', '25', 'www.flygofirst.com'),
(8, 'Alliance Air', 1, 1996, 'Yes', 'Delhi', '18', 'www.allianceair.in'),
(9, 'Star Air', 1, 2017, 'Yes', 'Bangalore', '10', 'www.starair.in'),
(10, 'TruJet', 1, 2013, 'No', 'Hyderabad', '8', 'www.trujet.com'),
(11, 'Zoom Air', 1, 2013, 'No', 'Gurgaon', '4', 'www.zoomair.in'),
(12, 'FlyBig', 1, 2020, 'Yes', 'Indore', '6', 'www.flybig.in'),
(13, 'Pawan Hans', 1, 1985, 'Yes', 'Noida', '45', 'www.pawanhans.co.in'),
(14, 'Deccan Charters', 1, 1997, 'Yes', 'Bangalore', '10', 'www.deccanair.com'),
(15, 'Taj Air', 1, 1993, 'Yes', 'Mumbai', '6', 'www.tajair.com'),
(16, 'Hindustan Aeronautics', 1, 1940, 'Yes', 'Bangalore', '15', 'www.hal-india.co.in'),
(17, 'Indira Aviation', 1, 2010, 'No', 'Bhopal', '3', 'www.indiraaviation.com'),
(18, 'Ventura AirConnect', 1, 2011, 'Yes', 'Surat', '5', 'www.venturaairconnect.in'),
(19, 'Heritage Aviation', 1, 2008, 'Yes', 'Delhi', '7', 'www.heritageaviation.in'),
(20, 'Sar Aviation', 1, 2009, 'Yes', 'Hyderabad', '4', 'www.saraviation.com');

INSERT INTO country_info (country_id, name, code, population, region, gdp, official_language, capital_city)
VALUES
(1, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(2, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(3, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(4, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(5, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(6, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(7, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(8, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(9, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(10, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(11, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(12, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(13, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(14, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(15, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(16, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(17, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(18, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(19, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi'),
(20, 'India', 'IN', 1390000000, 'Asia', '3 Trillion', 'Hindi', 'New Delhi');

INSERT INTO state_info (state_id, name, country_id, total_population, area_km, capital, official_language, established_year)
VALUES
(1, 'Maharashtra', 1, 123000000, 307713, 'Mumbai', 'Marathi', '1960'),
(2, 'Uttar Pradesh', 1, 231000000, 243286, 'Lucknow', 'Hindi', '1950'),
(3, 'Karnataka', 1, 69000000, 191791, 'Bengaluru', 'Kannada', '1956'),
(4, 'Tamil Nadu', 1, 76000000, 130058, 'Chennai', 'Tamil', '1956'),
(5, 'Gujarat', 1, 69000000, 196024, 'Gandhinagar', 'Gujarati', '1960'),
(6, 'Rajasthan', 1, 81000000, 342239, 'Jaipur', 'Hindi', '1950'),
(7, 'West Bengal', 1, 96000000, 88752, 'Kolkata', 'Bengali', '1950'),
(8, 'Bihar', 1, 127000000, 94163, 'Patna', 'Hindi', '1950'),
(9, 'Andhra Pradesh', 1, 54000000, 162968, 'Amaravati', 'Telugu', '1956'),
(10, 'Telangana', 1, 39000000, 112077, 'Hyderabad', 'Telugu', '2014'),
(11, 'Madhya Pradesh', 1, 86000000, 308350, 'Bhopal', 'Hindi', '1950'),
(12, 'Punjab', 1, 30000000, 50362, 'Chandigarh', 'Punjabi', '1966'),
(13, 'Odisha', 1, 45000000, 155707, 'Bhubaneswar', 'Odia', '1950'),
(14, 'Haryana', 1, 29000000, 44212, 'Chandigarh', 'Hindi', '1966'),
(15, 'Kerala', 1, 35000000, 38863, 'Thiruvananthapuram', 'Malayalam', '1956'),
(16, 'Assam', 1, 36000000, 78438, 'Dispur', 'Assamese', '1950'),
(17, 'Chhattisgarh', 1, 30000000, 135191, 'Raipur', 'Hindi', '2000'),
(18, 'Jharkhand', 1, 39000000, 79714, 'Ranchi', 'Hindi', '2000'),
(19, 'Himachal Pradesh', 1, 7400000, 55673, 'Shimla', 'Hindi', '1971'),
(20, 'Uttarakhand', 1, 11000000, 53483, 'Dehradun', 'Hindi', '2000');

UPDATE airlines_info SET status = 'No' WHERE airline_id = 1;
UPDATE airlines_info SET headquarters = 'Chennai' WHERE airline_id = 2;
UPDATE airlines_info SET fleet_size = '150' WHERE airline_id = 3;
UPDATE airlines_info SET website = 'www.newvistara.com' WHERE airline_id = 4;
UPDATE airlines_info SET year = 2015 WHERE airline_id = 5;
UPDATE airlines_info SET status = 'Yes' WHERE airline_id = 6;
UPDATE airlines_info SET headquarters = 'Pune' WHERE airline_id = 7;
UPDATE airlines_info SET fleet_size = '22' WHERE airline_id = 8;
UPDATE airlines_info SET website = 'www.flystar.com' WHERE airline_id = 9;
UPDATE airlines_info SET year = 2016 WHERE airline_id = 10;

UPDATE country_info SET gdp = '3.5 Trillion' WHERE country_id = 1;
UPDATE country_info SET name = 'Bharat' WHERE country_id = 2;
UPDATE country_info SET code = 'BH' WHERE country_id = 3;
UPDATE country_info SET region = 'South Asia' WHERE country_id = 4;
UPDATE country_info SET population = 1400000000 WHERE country_id = 5;
UPDATE country_info SET capital_city = 'Delhi' WHERE country_id = 6;
UPDATE country_info SET official_language = 'English' WHERE country_id = 7;
UPDATE country_info SET gdp = '4 Trillion' WHERE country_id = 8;
UPDATE country_info SET code = 'IND' WHERE country_id = 9;
UPDATE country_info SET name = 'Hindustan' WHERE country_id = 10;

UPDATE state_info SET capital = 'New Mumbai' WHERE state_id = 1;
UPDATE state_info SET official_language = 'Urdu' WHERE state_id = 2;
UPDATE state_info SET area_km = 200000 WHERE state_id = 3;
UPDATE state_info SET total_population = 75000000 WHERE state_id = 4;
UPDATE state_info SET established_year = '1961' WHERE state_id = 5;
UPDATE state_info SET capital = 'Ajmer' WHERE state_id = 6;
UPDATE state_info SET official_language = 'English' WHERE state_id = 7;
UPDATE state_info SET area_km = 85000 WHERE state_id = 8;
UPDATE state_info SET total_population = 60000000 WHERE state_id = 9;
UPDATE state_info SET established_year = '2015' WHERE state_id = 10;


DELETE FROM airlines_info WHERE status = 'No';
DELETE FROM country_info WHERE population > 1300000000 AND code = 'IN';
DELETE FROM state_info WHERE total_population < 10000000 OR area_km > 300000;
DELETE FROM airlines_info WHERE airline_id IN (11,12,13);
DELETE FROM country_info WHERE country_id NOT IN (1,2,3,4,5);
DELETE FROM state_info WHERE state_id BETWEEN 15 AND 20;
DELETE FROM airlines_info WHERE airline_id NOT BETWEEN 2 AND 8;

SELECT * FROM airlines_info WHERE fleet_size = '150';
SELECT * FROM country_info WHERE official_language = 'hindi';
SELECT * FROM state_info WHERE area_km < 100000;
SELECT * FROM airlines_info WHERE status = 'Yes' AND year > 2010;
SELECT * FROM country_info WHERE name = 'India' OR name = 'Bharat';
SELECT * FROM state_info WHERE state_id IN (1,2,3,4,5);
SELECT * FROM airlines_info WHERE airline_id NOT IN (1,3,5);
SELECT * FROM country_info WHERE country_id BETWEEN 1 AND 10;
SELECT * FROM state_info WHERE state_id NOT BETWEEN 6 AND 15;
