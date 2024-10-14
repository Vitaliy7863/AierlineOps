CREATE TYPE flight_status AS ENUM ('ACTIVE', 'COMPLETED', 'DELAYED', 'PENDING');

CREATE TABLE air_company (
    ID SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    company_type VARCHAR(100) NOT NULL,
    founded_at DATE NOT NULL
);

CREATE TABLE airplane (
    ID SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    factory_serial_number VARCHAR(255) UNIQUE NOT NULL,
    air_company_id INT NOT NULL,
    number_of_flights INT DEFAULT 0,
    flight_distance FLOAT DEFAULT 0.0,
    fuel_capacity FLOAT NOT NULL,
    type VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Flight (
    ID SERIAL PRIMARY KEY,
    flight_status flight_status NOT NULL,
    air_company_id INT NOT NULL,
    airplane_id INT NOT NULL,
    departure_country VARCHAR(100) NOT NULL,
    destination_country VARCHAR(100) NOT NULL,
    distance FLOAT NOT NULL,
    estimated_flight_time FLOAT NOT NULL,
    ended_at TIMESTAMP,
    delay_started_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (air_company_id) REFERENCES air_company(ID),
    FOREIGN KEY (airplane_id) REFERENCES airplane(ID)
);