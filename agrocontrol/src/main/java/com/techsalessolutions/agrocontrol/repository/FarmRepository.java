package com.techsalessolutions.agrocontrol.repository;

import com.techsalessolutions.agrocontrol.model.Farm;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FarmRepository extends JpaRepository<Farm, Integer> {
    Farm findTopByOrderByCodFarmDesc();

}
