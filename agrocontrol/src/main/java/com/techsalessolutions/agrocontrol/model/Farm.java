package com.techsalessolutions.agrocontrol.model;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Timestamp;
@Data
@Entity
@Table(name = "thfarm")
public class Farm {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "codfarm")
    private int codFarm;
    @Column(name = "namefarm")
    private String nameFarm;
    @Column(name = "owner_name")
    private String ownerName;
    @Column(name = "owner_mail")
    private String ownerMail;
    @Column(name = "codlocation")
    private int codlocation;
    @Column(name = "status")
    private int status;
    @Column(name = "create_at")
    private Timestamp createAt;
    @Column(name = "create_up")
    private Timestamp createUp;

}
