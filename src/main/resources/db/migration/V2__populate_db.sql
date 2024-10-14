INSERT INTO air_company (name, company_type, founded_at) VALUES
    ('Air Company 1', 'Passenger', '2000-01-01'),
    ('Air Company 2', 'Cargo', '1995-05-15'),
    ('Air Company 3', 'Passenger', '2010-11-30');

INSERT INTO airplane (name, factory_serial_number, air_company_id, number_of_flights, flight_distance, fuel_capacity, type, created_at) VALUES
    ('Boeing 737', 'BSN123', 1, 50, 500000.0, 10000.0, 'Passenger', CURRENT_TIMESTAMP),
    ('Airbus A320', 'ASN456', 1, 45, 400000.0, 9000.0, 'Passenger', CURRENT_TIMESTAMP),
    ('Boeing 747', 'BSN789', 1, 60, 600000.0, 12000.0, 'Cargo', CURRENT_TIMESTAMP),
    ('Boeing 777', 'BSN987', 1, 55, 550000.0, 11000.0, 'Passenger', CURRENT_TIMESTAMP),
    ('Airbus A330', 'ASN654', 1, 48, 480000.0, 9500.0, 'Passenger', CURRENT_TIMESTAMP),
    ('Boeing 757', 'BSN246', 2, 40, 400000.0, 8000.0, 'Cargo', CURRENT_TIMESTAMP),
    ('Airbus A380', 'ASN789', 2, 65, 650000.0, 13000.0, 'Cargo', CURRENT_TIMESTAMP),
    ('Boeing 767', 'BSN357', 2, 55, 550000.0, 11000.0, 'Cargo', CURRENT_TIMESTAMP),
    ('Airbus A350', 'ASN963', 3, 35, 350000.0, 7000.0, 'Passenger', CURRENT_TIMESTAMP),
    ('Boeing 787', 'BSN852', 3, 30, 300000.0, 6000.0, 'Passenger', CURRENT_TIMESTAMP);

INSERT INTO Flight (flight_status, air_company_id, airplane_id, departure_country, destination_country, distance, estimated_flight_time, created_at)
VALUES
    ('COMPLETED', 1, 1, 'France', 'USA', 5500.0, 8.5, CURRENT_TIMESTAMP),
    ('COMPLETED', 1, 2, 'Germany', 'Canada', 6000.0, 8.0, CURRENT_TIMESTAMP),
    ('ACTIVE', 3, 3, 'Spain', 'USA', 5000.0, 7.5, CURRENT_TIMESTAMP),
    ('DELAYED', 1, 4, 'Italy', 'Canada', 5200.0, 7.0, CURRENT_TIMESTAMP),
    ('COMPLETED', 1, 5, 'Portugal', 'USA', 4800.0, 6.5, CURRENT_TIMESTAMP),
    ('COMPLETED', 2, 6, 'UK', 'Canada', 5800.0, 7.0, CURRENT_TIMESTAMP),
    ('ACTIVE', 3, 7, 'Netherlands', 'USA', 5400.0, 6.5, CURRENT_TIMESTAMP),
    ('DELAYED', 2, 8, 'Belgium', 'Canada', 5600.0, 6.0, CURRENT_TIMESTAMP),
    ('COMPLETED', 3, 9, 'Sweden', 'USA', 5200.0, 5.5, CURRENT_TIMESTAMP),
    ('COMPLETED', 2, 10, 'Norway', 'Canada', 5000.0, 5.0, CURRENT_TIMESTAMP);