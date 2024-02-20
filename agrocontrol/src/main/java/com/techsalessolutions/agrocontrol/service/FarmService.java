package com.techsalessolutions.agrocontrol.service;

import com.techsalessolutions.agrocontrol.exception.FarmNotFoundException;
import com.techsalessolutions.agrocontrol.model.Farm;
import com.techsalessolutions.agrocontrol.repository.FarmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FarmService {
    @Autowired
    FarmRepository farmRepository;
    public List<Farm> getAllFarms(){
        return farmRepository.findAll();
    }
    public Farm getFarmById(int id){
        return farmRepository.findById(id).orElse(null);
    }
    public Farm createFarm(Farm farm){
        return farmRepository.save(farm);
    }

    public Farm updateFarm(int id, Farm farm){
        Farm existingFarm = farmRepository.findById(id).orElseThrow(() -> new FarmNotFoundException("Farm not found with id " + id));
        existingFarm.setNameFarm(farm.getNameFarm());
        existingFarm.setOwnerName(farm.getOwnerName());
        existingFarm.setOwnerMail(farm.getOwnerMail());
        existingFarm.setCodlocation(farm.getCodlocation());
        existingFarm.setStatus(farm.getStatus());
        existingFarm.setCreateAt(farm.getCreateAt());
        existingFarm.setCreateUp(farm.getCreateUp());
        return farmRepository.save(existingFarm);
    }

    public void deleteFarm(int id){
        farmRepository.deleteById(id);
    }
}
