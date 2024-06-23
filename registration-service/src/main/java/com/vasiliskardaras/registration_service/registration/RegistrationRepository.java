package com.vasiliskardaras.registration_service.registration;

import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.Optional;

public interface RegistrationRepository extends MongoRepository<Registration, String> {

    Optional<Registration> findByTicketCode(String ticketCode);

    void deleteByTicketCode(String ticketCode);
}
