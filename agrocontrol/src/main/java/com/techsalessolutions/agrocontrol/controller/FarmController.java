package com.techsalessolutions.agrocontrol.controller;

import com.techsalessolutions.agrocontrol.model.Farm;
import com.techsalessolutions.agrocontrol.service.FarmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/farms")
public class FarmController {

    @Autowired
    private FarmService farmService;

    @GetMapping("/")
    public List<Farm> getAllFarms(){
        return farmService.getAllFarms();
    }

    @GetMapping("/{id}")
    public Farm getFarmById(@PathVariable int id){
        return farmService.getFarmById(id);
    }

    @PostMapping("/")
    public Farm createFarm(@RequestBody Farm farm){
        return farmService.createFarm(farm);
    }

    @PutMapping("/{id}")
    public Farm updateFarm(@PathVariable int id, @RequestBody Farm farm){
        return farmService.updateFarm(id, farm);
    }

    @DeleteMapping("/{id}")
    public void deleteFarm(@PathVariable int id){
        farmService.deleteFarm(id);
    }

}
