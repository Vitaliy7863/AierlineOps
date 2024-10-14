package com.example.airlineops.airplane;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.OffsetDateTime;

@Entity
@Data
@Table(name = "airplane")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Airplane {

    @Id
    @Column(nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(name = "factory_serial_number", nullable = false)
    private String factorySerialNumber;

    @Column(name = "air_company_id", nullable = false)
    private Integer airCompanyId;

    @Column(name = "number_of_flights", nullable = false)
    private Integer numberOfFlights = 0;

    @Column(name = "flight_distance", nullable = false)
    private Float flightDistance = 0.0f;

    @Column(name = "fuel_capacity", nullable = false)
    private Float fuelCapacity;

    @Column(nullable = false)
    private String type;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;
}