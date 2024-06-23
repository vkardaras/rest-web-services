package com.vasiliskardaras.events_service.events;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EventRepository extends JpaRepository<Event, Integer> {

    List<Event> findByOrganizerId(int organizerId);
}
