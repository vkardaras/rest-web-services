package com.vasiliskardaras.events_service.events;

import org.springframework.data.jpa.repository.JpaRepository;

public interface VenueRepository extends JpaRepository<Venue, Integer> {
}
