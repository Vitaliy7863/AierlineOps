package com.example.airlineops.aircompany;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.OffsetDateTime;

@Entity
@Data
@Table(name = "air_company")
@EntityListeners(AuditingEntityListener.class)
public class AirCompany {

    @Id
    @Column(nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "company_type", nullable = false)
    private String companyType;

    @CreatedDate
    @Column(name = "founded_at", nullable = false, updatable = false)
    private OffsetDateTime foundedAt;
}