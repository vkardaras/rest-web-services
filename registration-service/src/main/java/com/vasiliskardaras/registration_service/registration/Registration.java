package com.vasiliskardaras.registration_service.registration;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.math.BigDecimal;

@Document("registrations")
public record Registration(
        @Id String id,
        Integer productId,
        String eventName,
        BigDecimal amount,
        String ticketCode,
        String attendeeName) {
}
