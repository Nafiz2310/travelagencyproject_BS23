package com.bs23.travelagency.repository;

import com.bs23.travelagency.entity.Location;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository extends JpaRepository<Location, Long> {
}
