## Sælgertabellen: invariante entiteter 
CREATE TABLE Seller(
seller_id_CVR SERIAL PRIMARY KEY, 
name VARCHAR (100),
address TEXT
);
## Vil-tabellen: invariante entiteter
CREATE TABLE Car  (
bil_id SERIAL PRIMARY KEY,
link VARCHAR (500) UNIQUE,
makemodel VARCHAR(200),
properties VARCHAR(500) UNIQUE,
location VARCHAR(200),
seller_id_CVR INT REFERENCES Seller(seller_id)
);

## Observation- tabellen: varierende data (tidsserie) 
CREATE TABLE Observation (
observation_id SERIAL PRIMARY KEY, 
car_id INT REFERENCES Car(car_id), 
price VARCHAR(50),
details TEXT, 
timestamp TIMESTAMP DEFAULT current_timestamp
);

## Observation1- tabellen: varierende data (tidsserie) 
CREATE TABLE Observation1 (
observation_id SERIAL PRIMARY KEY, 
car_id INT REFERENCES Car(car_id), 
price VARCHAR(50),
details TEXT, 
timestamp TIMESTAMP DEFAULT current_timestamp
);
