package com.techsalessolutions.agrocontrol.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import javax.management.relation.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}
