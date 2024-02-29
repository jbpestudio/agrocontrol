package com.techsalessolutions.agrocontrol.repository;

import com.techsalessolutions.agrocontrol.model.Location;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository extends JpaRepository<Location, Integer> {
    Location findTopByOrderCodLocationDesc();  //findTopByOrderByCodFarmDesc();

}
