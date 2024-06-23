CREATE TABLE organizers (
    id integer PRIMARY KEY,
    description character varying(255),
    name character varying(255) NOT NULL
);

CREATE TABLE venues (
    id integer PRIMARY KEY,
    city character varying(255),
    country character varying(255),
    name character varying(255) NOT NULL,
    street character varying(255)
);

CREATE TABLE events (
    id integer PRIMARY KEY,
    end_date date,
    name character varying(255) NOT NULL,
    start_date date,
    organizer_id integer NOT NULL REFERENCES organizers(id),
    venue_id integer NOT NULL REFERENCES venues(id)
);

CREATE TABLE products (
    id integer PRIMARY KEY,
    description character varying(255),
    event_id integer NOT NULL REFERENCES events(id),
    name character varying(255) NOT NULL,
    price numeric(38,2) NOT NULL
);

INSERT INTO organizers (id, name, description) VALUES (101, 'Globomantics', 'Globomantics Technology Corporation');
INSERT INTO organizers (id, name, description) VALUES (102, 'Carved Rock', 'Carved Rock Sports Equipment');

INSERT INTO venues (id, name, street, city, country) VALUES (201, 'Globomatics Main Office', 'Test Street 325', 'New York', 'USA');
INSERT INTO venues (id, name, street, city, country) VALUES (202, 'Sea View Hotel', 'Beach Boulevard 863', 'Los Angeles', 'USA');

INSERT INTO events (id, name, organizer_id, venue_id, start_date, end_date) VALUES (501, 'Globomantics Tech Conference', 101, 201, '2023-10-02', '2023-10-04');
INSERT INTO events (id, name, organizer_id, venue_id, start_date, end_date) VALUES (502, 'Globomantics Developer Day', 101, 201, '2024-01-10', '2024-01-10');
INSERT INTO events (id, name, organizer_id, venue_id, start_date, end_date) VALUES (503, 'Carved Rock New Products Day', 102, 202, '2024-02-29', '2024-02-29');

INSERT INTO products (id, event_id, name, description, price) VALUES (801, 501, 'Standard', 'Standard Conference Ticket', 499.00);
INSERT INTO products (id, event_id, name, description, price) VALUES (802, 501, 'Premium', 'Premium Conference Ticket', 649.00);
INSERT INTO products (id, event_id, name, description, price) VALUES (803, 502, 'Standard', 'Developer Day Ticket', 195.50);
INSERT INTO products (id, event_id, name, description, price) VALUES (804, 503, 'Regular', 'Regular Entrance', 35.00);
INSERT INTO products (id, event_id, name, description, price) VALUES (805, 503, 'VIP', 'VIP Bonus Entrance', 65.00);
