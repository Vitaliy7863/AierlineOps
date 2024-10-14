package com.example.airlineops.flight;

import com.example.airlineops.aircompany.AirCompany;
import com.example.airlineops.airplane.Airplane;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.OffsetDateTime;

@Entity
@Data
@Table(name = "flight")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "flight_status", nullable = false)
    private FlightStatus flightStatus;

    @ManyToOne
    @JoinColumn(name = "air_company_id", nullable = false)
    private AirCompany airCompany;

    @ManyToOne
    @JoinColumn(name = "airplane_id", nullable = false)
    private Airplane airplane;

    @Column(name = "departure_country", nullable = false)
    private String departureCountry;

    @Column(name = "destination_country", nullable = false)
    private String destinationCountry;

    @Column(nullable = false)
    private Float distance;

    @Column(name = "estimated_flight_time", nullable = false)
    private Float estimatedFlightTime;

    @Column(name = "ended_at")
    private OffsetDateTime endedAt;

    @Column(name = "delay_started_at")
    private OffsetDateTime delayStartedAt;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @PrePersist
    protected void onCreate() {
        createdAt = OffsetDateTime.now();
    }
}

enum FlightStatus {
    ACTIVE,
    COMPLETED,
    DELAYED,
    PENDING
}
