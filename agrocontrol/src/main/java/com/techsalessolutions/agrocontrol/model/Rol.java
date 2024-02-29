package com.techsalessolutions.agrocontrol.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Entity
@Table(name = "throl")
public class Rol {

    @Id
    @Column(name = "codrol")
    private int codRol;
    @Column(name = "namerole")
    private String nameRole;
    @Column(name = "status")
    private int status;
    @Column(name = "create_at")
    private Timestamp createAt;
    @Column(name = "create_up")
    private Timestamp createUp;

}
