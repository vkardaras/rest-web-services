package com.vasiliskardaras.registration_service.events;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.service.annotation.GetExchange;

public interface EventsClient {

    @GetExchange("/products/{id}")
    Product getProductById(@PathVariable("id") int productId);

    @GetExchange("/events/{id}")
    Event getEventById(@PathVariable("id") int eventId);
}
