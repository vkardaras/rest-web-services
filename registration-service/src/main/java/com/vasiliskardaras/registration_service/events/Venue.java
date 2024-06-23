package com.vasiliskardaras.registration_service.events;

public record Venue(
        int id,
        String name,
        String street,
        String city,
        String country) {
}
