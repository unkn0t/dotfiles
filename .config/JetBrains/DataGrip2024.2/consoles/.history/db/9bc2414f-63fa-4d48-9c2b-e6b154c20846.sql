SELECT
    a.airline_id,
    a.airline_name,
    f.flight_no
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    f.flight_no
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
ORDER BY a.airline_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    f.flight_no
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
WHERE f.scheduled_departure NOT BETWEEN date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    f.flight_no
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
WHERE f.scheduled_departure NOT BETWEEN date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month'
ORDER BY a.airline_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(f.scheduled_departure NOT BETWEEN date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month')
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(f.scheduled_departure BETWEEN date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month')
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(f.scheduled_departure BETWEEN date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(f.scheduled_departure BETWEEN date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '1 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(CASE WHEN
        f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '1 month'
        THEN 1 ELSE 0 END) as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '1 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '3 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '3 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) - INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '3 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) - INTERVAL '3 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '3 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) - INTERVAL '6 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '3 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) - INTERVAL '9 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '3 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
ORDER BY num_flts DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
HAVING num_flts = 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month') as num_flts
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name,
    count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month') AS num
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
HAVING num = 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    a.airline_id,
    a.airline_name
FROM
    airline as a
JOIN flights as f ON f.airline_id = a.airline_id
GROUP BY a.airline_id, a.airline_name
HAVING count(*) FILTER (WHERE f.scheduled_departure BETWEEN
            date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' AND date_trunc('month', CURRENT_DATE) + INTERVAL '2 month') = 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.*
FROM flights as f
JOIN booking_flight as bf ON bf.flight_id = f.flight_id
JOIN booking as b ON bf.booking_id = b.booking_id
JOIN passengers as p ON b.passenger_id = p.passenger_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.*
FROM flights as f
JOIN booking_flight as bf ON bf.flight_id = f.flight_id
JOIN booking as b ON bf.booking_id = b.booking_id
JOIN passengers as p ON b.passenger_id = p.passenger_id
WHERE f.flight_id = 10;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.*
FROM flights as f
JOIN booking_flight as bf ON bf.flight_id = f.flight_id
JOIN booking as b ON bf.booking_id = b.booking_id
JOIN passengers as p ON b.passenger_id = p.passenger_id
WHERE f.flight_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.*
FROM flights as f
JOIN booking_flight as bf ON bf.flight_id = f.flight_id
JOIN booking as b ON bf.booking_id = b.booking_id
JOIN passengers as p ON b.passenger_id = p.passenger_id
WHERE f.flight_id = 5;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id,
    avg(b.price),
    sum(b.price),
    min(b.price),
    max(b.price)
FROM flights as f
JOIN booking_flight as bf ON bf.flight_id = f.flight_id
JOIN booking as b ON b.booking_id = bf.booking_id
GROUP BY flight_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id,
    avg(b.price),
    sum(b.price),
    min(b.price),
    max(b.price)
FROM flights as f
JOIN booking_flight as bf ON bf.flight_id = f.flight_id
JOIN booking as b ON b.booking_id = bf.booking_id
GROUP BY f.flight_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'Kazakhstan';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'France';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'Russia';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'Ukraine';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'USA';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'US';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'Turkey';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id
FROM flights as f
JOIN airport ar ON f.arrival_airport_id = ar.airport_id
WHERE country = 'China';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.first_name || ' ' || p.last_name,
    a.country
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON f.flight_id = bf.flight_id
JOIN airport as a ON a.airport_id = f.arrival_airport_id
WHERE age(p.date_of_birth) < 18;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.first_name || ' ' || p.last_name,
    a.country
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON f.flight_id = bf.flight_id
JOIN airport as a ON a.airport_id = f.arrival_airport_id
WHERE age(p.date_of_birth) < INTERVAL '18 years';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.first_name || ' ' || p.last_name as full_name,
    a.country
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON f.flight_id = bf.flight_id
JOIN airport as a ON a.airport_id = f.arrival_airport_id
WHERE age(p.date_of_birth) < INTERVAL '18 years';
;-- -. . -..- - / . -. - .-. -.--
(p.date_of_birth);
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.first_name || ' ' || p.last_name as full_name,
    age(p.date_of_birth) as age,
    a.country
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON f.flight_id = bf.flight_id
JOIN airport as a ON a.airport_id = f.arrival_airport_id
WHERE age(p.date_of_birth) < INTERVAL '18 years';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.first_name || ' ' || p.last_name as full_name,
    p.passport_number,
    f.actual_arrival
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON f.flight_id = bf.flight_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    f.flight_id,
    f.flight_no
FROM flights as f
JOIN airline as al ON f.airline_id = al.airline_id
JOIN airport as ar ON f.departure_airport_id = ar.airport_id
WHERE al.airline_country = ar.country;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    array_agg(f.flight_id),
    ar.country
FROM flights as f
JOIN airline as al ON f.airline_id = al.airline_id
JOIN airport as ar ON f.departure_airport_id = ar.airport_id
WHERE al.airline_country = ar.country
GROUP BY ar.country;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    array_agg(f.flight_id) as flights,
    ar.country
FROM flights as f
JOIN airline as al ON f.airline_id = al.airline_id
JOIN airport as ar ON f.departure_airport_id = ar.airport_id
WHERE al.airline_country = ar.country
GROUP BY ar.country;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    ar.country,
    array_agg(f.flight_id) as flights
FROM flights as f
JOIN airline as al ON f.airline_id = al.airline_id
JOIN airport as ar ON f.departure_airport_id = ar.airport_id
WHERE al.airline_country = ar.country
GROUP BY ar.country;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    p.first_name || ' ' || p.last_name as full_name,
    p.passport_number,
    f.actual_arrival,
    a.country
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON bf.flight_id = f.flight_id
JOIN airport as a ON a.airport_id = f.arrival_airport_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    count(*) as number_of_french
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON bf.flight_id = f.flight_id
JOIN airport as a ON f.arrival_airport_id = a.airport_id
WHERE a.country = 'Russia';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    count(*) as number_of_french
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON bf.flight_id = f.flight_id
JOIN airport as a ON f.arrival_airport_id = a.airport_id
WHERE a.country = 'France';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    count(*) as number_of_french
FROM passengers as p
JOIN booking as b ON b.passenger_id = p.passenger_id
JOIN booking_flight as bf ON bf.booking_id = b.booking_id
JOIN flights as f ON bf.flight_id = f.flight_id
JOIN airport as a ON f.arrival_airport_id = a.airport_id
WHERE a.country = 'China';
;-- -. . -..- - / . -. - .-. -.--
CREATE INDEX flights_actual_departure_id ON flights(actual_departure);
;-- -. . -..- - / . -. - .-. -.--
UPDATE flights SET flight_no = 'US-KW' WHERE flight_id = 365;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE flight_no = 'US-KS' AND scheduled_departure = '2023-09-04';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE flight_no = 'US-TX' AND scheduled_departure = '2023-09-04';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE flight_no = 'US-TX' AND scheduled_departure = '2024-09-04';
;-- -. . -..- - / . -. - .-. -.--
UPDATE flights SET flight_no = 'US-BX' WHERE flight_id = 747;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE flight_no = 'US-TX' AND scheduled_departure = '2023-06-05';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE flight_no = 'US-AK' AND scheduled_departure = '2023-09-23';
;-- -. . -..- - / . -. - .-. -.--
UPDATE flights SET flight_no = 'US-AZ' WHERE flight_id = 664;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE flight_no = 'US-AK' AND scheduled_departure = '2024-02-08';
;-- -. . -..- - / . -. - .-. -.--
UPDATE flights SET flight_no = 'US-AN' WHERE flight_id = 102;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT [flight_no], [scheduled_departure],
       RN = ROW_NUMBER()OVER(PARTITION BY flight_no ORDER BY flight_no)
   FROM flights
) SELECT * FROM CTE;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT flight_no, scheduled_departure,
       RN = ROW_NUMBER()OVER(PARTITION BY flight_no ORDER BY flight_no)
   FROM flights
) SELECT * FROM CTE;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT flight_no, scheduled_departure,
       ROW_NUMBER() OVER (PARTITION BY flight_no ORDER BY flight_no) AS RN
   FROM flights
) SELECT * FROM CTE;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT flight_no, scheduled_departure,
       ROW_NUMBER() OVER (PARTITION BY flight_no, scheduled_departure ORDER BY flight_no) AS RN
   FROM flights
) SELECT * FROM CTE;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT flight_no, scheduled_departure,
       ROW_NUMBER() OVER (PARTITION BY flight_no ORDER BY flight_no) AS RN
   FROM flights
) SELECT * FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT flight_no, scheduled_departure,
       ROW_NUMBER() OVER (PARTITION BY flight_no, scheduled_departure ORDER BY flight_no) AS RN
   FROM flights
) SELECT * FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT flight_no, scheduled_departure,
       ROW_NUMBER() OVER (PARTITION BY flight_no, scheduled_departure ORDER BY flight_no) AS RN
   FROM flights
) DELETE FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM flights
WHERE flight_id NOT IN (
   select min(flight_id) from flights
   group by flight_no, scheduled_departure
);
;-- -. . -..- - / . -. - .-. -.--
 UNIQUE INDEX flights_flight_no_shed_dep_id ON flights(flight_no, scheduled_departure);;
;-- -. . -..- - / . -. - .-. -.--
CREATE UNIQUE INDEX flights_flight_no_shed_dep_id ON flights(flight_no, scheduled_departure);
;-- -. . -..- - / . -. - .-. -.--
DROP INDEX flights_dep_airport_arr_airport_id;
;-- -. . -..- - / . -. - .-. -.--
CREATE INDEX flights_dep_airport_arr_airport_id ON flights(departure_airport_id, arrival_airport_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE departure_airport_id = 1 AND arrival_airport_id = 2;
;-- -. . -..- - / . -. - .-. -.--
CREATE INDEX pass_id ON passengers((first_name || ' ' || last_name));
;-- -. . -..- - / . -. - .-. -.--
SELECT first_name || ' ' || last_name as full_name FROM passengers;
;-- -. . -..- - / . -. - .-. -.--
DROP INDEX pass_id;
;-- -. . -..- - / . -. - .-. -.--
EXPLAIN ANALYSE SELECT * FROM flights WHERE departure_airport_id = 32 OR arrival_airport_id = 23;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE departure_airport_id = 32 OR arrival_airport_id = 23;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM flights WHERE departure_airport_id = 2 OR arrival_airport_id = 3;
;-- -. . -..- - / . -. - .-. -.--
EXPLAIN ANALYSE SELECT * FROM flights WHERE departure_airport_id = 2 OR arrival_airport_id = 3;
;-- -. . -..- - / . -. - .-. -.--
EXPLAIN ANALYSE SELECT * FROM flights WHERE departure_airport_id = 2 AND arrival_airport_id = 3;
;-- -. . -..- - / . -. - .-. -.--
CREATE UNIQUE INDEX pass_num_id ON passengers(passport_number);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO
    passengers(first_name, last_name, passport_number)
VALUES (('Innokentiy', 'Popov', 'KAZE123-X'),
        ('Harry', 'Potter', 'ENGABC-3'));
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO
    passengers(first_name, last_name, passport_number)
VALUES ('Innokentiy', 'Popov', 'KAZE123-X'),
        ('Harry', 'Potter', 'ENGABC-3');
;-- -. . -..- - / . -. - .-. -.--
EXPLAIN ANALYZE INSERT INTO
    passengers(passenger_id, first_name, last_name, passport_number)
VALUES (1111, 'Innokentiy', 'Popov', 'KAZE123-X'),
        (1112, 'Harry', 'Potter', 'ENGABC-3');
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM passengers WHERE passenger_id = 1111 OR passenger_id = 1112;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO
    passengers(passenger_id, first_name, last_name, passport_number)
VALUES (1111, 'Innokentiy', 'Popov', 'KAZE123-X'),
        (1112, 'Harry', 'Potter', 'ENGABC-3');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO
    passengers(passenger_id, first_name, last_name, passport_number)
VALUES (1113, 'Innokentiy', 'Popov', 'KAZE123-X');
;-- -. . -..- - / . -. - .-. -.--
CREATE UNIQUE INDEX pass_info_id ON passengers(first_name, last_name, date_of_birth, country_of_citizenship);
;-- -. . -..- - / . -. - .-. -.--
EXPLAIN ANALYSE
    SELECT *
    FROM passengers
    WHERE country_of_citizenship = 'Philippines' AND extract(year from date_of_birth) = 1984;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    indexname as index_name
    indexdef as definition
FROM pg_indexes
WHERE table_name = 'passengers';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    indexname as index_name,
    indexdef as definition
FROM pg_indexes
WHERE table_name = 'passengers';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    indexname as index_name,
    indexdef as definition
FROM pg_indexes
WHERE tablename = 'passengers';
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM pg_indexes
WHERE tablename = 'passengers' AND (indexname = 'pass_num_id' OR indexname = 'pass_info_id');
;-- -. . -..- - / . -. - .-. -.--
DROP INDEX pass_info_id, pass_num_id;
;-- -. . -..- - / . -. - .-. -.--
DROP SCHEMA public CASCADE;
;-- -. . -..- - / . -. - .-. -.--
CREATE SCHEMA public;
;-- -. . -..- - / . -. - .-. -.--
GRANT ALL ON SCHEMA public TO postgres;
;-- -. . -..- - / . -. - .-. -.--
GRANT ALL ON SCHEMA public TO public;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW spec_date_flights AS
    SELECT * FROM flights
    WHERE scheduled_departure = '2024-01-22';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM spec_date_flights;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW spec_date_flights AS
    SELECT b.* FROM booking as b
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    JOIN flights as f ON bf.flight_id = f.flight_id
    WHERE extract(week from f.scheduled_departure) = extract(week from CURRENT_DATE) + 1;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW next_week_flights_booking AS
    SELECT b.* FROM booking as b
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    JOIN flights as f ON bf.flight_id = f.flight_id
    WHERE extract(week from f.scheduled_departure) = extract(week from CURRENT_DATE) + 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM next_week_flights_booking;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW top_booked_flights AS
    SELECT f.flight_id, count(b.*) as num_of_bookings FROM booking as b
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    JOIN flights as f ON bf.flight_id = f.flight_id
    GROUP BY f.flight_id
    ORDER BY num_of_bookings DESC
    LIMIT 5;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM top_booked_flights;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW airline_flights AS
    SELECT * FROM flights
    WHERE airline_id = 10;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE VIEW airline_flights AS
    SELECT * FROM flights
    WHERE airline_id = 10 AND extract(days from scheduled_departure)
        BETWEEN extract(days from CURRENT_DATE) AND extract(days from CURRENT_DATE) + 7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM airline_flights;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW long_delayed_flights AS
    SELECT * FROM flights
    WHERE actual_departure - scheduled_departure > make_interval(hours := 24);
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW long_delayed_flights AS
    SELECT * FROM flights
    WHERE actual_departure > scheduled_departure + make_interval(hours := 24);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM long_delayed_flights;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW leffler_passengers AS
    SELECT first_name || ' ' || last_name as full_name, country_of_citizenship FROM
    passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    WHERE b.booking_platform = 'Leffler-Thompson';
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW most_visited_countries AS
    SELECT a.country, count(f.*) as num_of_flights FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    GROUP BY a.country
    ORDER BY num_of_flights DESC
    LIMIT 10;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM most_visited_countries;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE VIEW leffler_passengers AS
    SELECT first_name || ' ' || last_name as full_name, date_of_birth
    FROM passengers
    JOIN booking as b ON passengers.passenger_id = b.passenger_id
    WHERE b.booking_platform = 'Leffler Thompson';
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE VIEW leffler_passengers AS
    SELECT first_name || ' ' || last_name as full_name, country_of_citizenship, date_of_birth
    FROM passengers
    JOIN booking as b ON passengers.passenger_id = b.passenger_id
    WHERE b.booking_platform = 'Leffler Thompson';
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE VIEW leffler_passengers AS
    SELECT first_name || ' ' || last_name as full_name, country_of_citizenship, date_of_birth
    FROM passengers
    JOIN booking as b ON passengers.passenger_id = b.passenger_id
    WHERE b.booking_platform = 'Leffler-Thompson';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM leffler_passengers;
;-- -. . -..- - / . -. - .-. -.--
SELECT 'DROP VIEW ' || table_name || ';'
  FROM information_schema.views
 WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
   AND table_name !~ '^pg_';
;-- -. . -..- - / . -. - .-. -.--
SELECT 'DROP VIEW ' || string_agg(table_name, ',')
  FROM information_schema.views
 WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
   AND table_name !~ '^pg_';
;-- -. . -..- - / . -. - .-. -.--
DROP VIEW spec_date_flights,next_week_flights_booking,top_booked_flights,most_visited_countries,airline_flights,long_delayed_flights,leffler_passengers;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW passengers_to_kz AS
    SELECT * from passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    JOIN flights as f ON bf.flight_id = f.flight_id
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE a.country = 'Kazakhstan';
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW passengers_to_kz AS
    SELECT p.* from passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    JOIN flights as f ON bf.flight_id = f.flight_id
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE a.country = 'Kazakhstan';
;-- -. . -..- - / . -. - .-. -.--
CREATE  OR REPLACE VIEW passengers_to_kz AS
    SELECT p.* from passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    JOIN flights as f ON bf.flight_id = f.flight_id
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE a.country = 'China';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM passengers_to_kz;
;-- -. . -..- - / . -. - .-. -.--
ALTER VIEW passengers_to_kz RENAME TO passengers_to_china;
;-- -. . -..- - / . -. - .-. -.--
DROP VIEW passengers_to_china;
;-- -. . -..- - / . -. - .-. -.--
CREATE INDEX flights_info ON flights(flight_no, scheduled_departure);
;-- -. . -..- - / . -. - .-. -.--
SELECT indexname, indexdef
FROM pg_indexes WHERE schemaname='public';
;-- -. . -..- - / . -. - .-. -.--
SELECT indexname, indexdef
FROM pg_indexes WHERE tablename='flights';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM booking_flight WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM booking_flight WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM baggage_check WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM baggage WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM boarding_pass WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM booking WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM booking WHERE booking_id = 10;
;-- -. . -..- - / . -. - .-. -.--
UPDATE flights SET scheduled_departure = CURRENT_DATE WHERE flight_id = 11000;
;-- -. . -..- - / . -. - .-. -.--
SELECT scheduled_departure FROM flights WHERE flight_id = 11000;
;-- -. . -..- - / . -. - .-. -.--
UPDATE flights SET scheduled_departure = CURRENT_DATE WHERE flight_id = 10;
;-- -. . -..- - / . -. - .-. -.--
SELECT scheduled_departure FROM flights WHERE flight_id = 10;
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price - 200 WHERE (SELECT booking_id FROM booking_flight WHERE flight_id = 20);
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price - 200 WHERE booking_id = (SELECT booking_id FROM booking_flight WHERE flight_id = 20);
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price - 200 WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 20);
;-- -. . -..- - / . -. - .-. -.--
SELECT price FROM booking WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 20);
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price - 200 WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 15);
;-- -. . -..- - / . -. - .-. -.--
SELECT price FROM booking WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 15);
;-- -. . -..- - / . -. - .-. -.--
SELECT count(booking_id) as cnt, flight_id FROM booking_flight GROUP BY flight_id ORDER BY cnt DESC LIMIT 10;
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price - 200 WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 207);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO passengers(passenger_id, first_name, last_name) VALUES (2000, 'Innokentiy', 'Popov');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO booking(booking_id, passenger_id, created_at, price) VALUES (10000, 2000, now(), 10000);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM passengers WHERE passenger_id = 2000;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM booking WHERE passenger_id = 2000;
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price + 200 WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 207);
;-- -. . -..- - / . -. - .-. -.--
SELECT price FROM booking WHERE booking_id IN (SELECT booking_id FROM booking_flight WHERE flight_id = 207);
;-- -. . -..- - / . -. - .-. -.--
SELECT weight_in_kg FROM baggage WHERE booking_id = (SELECT booking_id FROM booking WHERE passenger_id = 100);
;-- -. . -..- - / . -. - .-. -.--
ROLLBACK;
;-- -. . -..- - / . -. - .-. -.--
UPDATE baggage SET weight_in_kg = 10.22 WHERE booking_id = 222;
;-- -. . -..- - / . -. - .-. -.--
SELECT weight_in_kg FROM baggage WHERE booking_id = 222;
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking SET price = price * 0.8 WHERE passenger_id = 25;
;-- -. . -..- - / . -. - .-. -.--
SELECT price FROM booking WHERE passenger_id = 25;
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking_flight SET flight_id = 777 WHERE flight_id = 555;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM booking_flight WHERE flight_id = 555;
;-- -. . -..- - / . -. - .-. -.--
UPDATE booking_flight SET flight_id = 777 WHERE flight_id = 444;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM booking_flight WHERE flight_id = 444;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM passengers WHERE passenger_id = 18;
;-- -. . -..- - / . -. - .-. -.--
UPDATE passengers SET first_name = 'John' WHERE passenger_id = 18;
;-- -. . -..- - / . -. - .-. -.--
SELECT p.first_name FROM booking
JOIN passengers as p ON booking.passenger_id = p.passenger_id
WHERE p.passenger_id = 18;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO passengers(passenger_id, first_name, last_name, created_at) VALUES(5000, 'John', 'Cena', CURRENT_DATE);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO booking(booking_id, passenger_id, created_at) VALUES(8888, 5000, CURRENT_DATE);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM booking WHERE booking_id = 8888;
;-- -. . -..- - / . -. - .-. -.--
BEGIN;
;-- -. . -..- - / . -. - .-. -.--
UPDATE passengers SET last_name = 'Bing Chiling' WHERE passenger_id = 5000;
;-- -. . -..- - / . -. - .-. -.--
COMMIT;
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION insert_flight(
    flight_id integer,
    departure_airport_id integer,
    arrival_airport_id integer,
    airline_id integer,
    created_at date default current_date
)
AS
$$ BEGIN
INSERT INTO flights(flight_id, departure_airport_id, arrival_airport_id, airline_id, created_at)
VALUES (flight_id, departure_airport_id, arrival_airport_id, airline_id, created_at);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE PROCEDURE insert_flight(
    flight_id integer,
    departure_airport_id integer,
    arrival_airport_id integer,
    airline_id integer,
    created_at date default current_date
)
AS
$$ BEGIN
INSERT INTO flights(flight_id, departure_airport_id, arrival_airport_id, airline_id, created_at)
VALUES (flight_id, departure_airport_id, arrival_airport_id, airline_id, created_at);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT insert_flight(8888, 12, 15, 10);
;-- -. . -..- - / . -. - .-. -.--
CALL insert_flight(8888, 12, 15, 10);
;-- -. . -..- - / . -. - .-. -.--
CREATE PROCEDURE update_flight_status(
    id integer,
    new_status varchar(50)
)
AS
$$ BEGIN
UPDATE flights SET status = new_status WHERE flight_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CALL update_flight_status(8888, 'Delayed');
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION departing_from_airport(
    airport_id integer
)
RETURNS TABLE (flight_id int, flight_no varchar(50), status varchar(50)) AS
$$ BEGIN
RETURN QUERY SELECT flight_id, flight_no, status FROM flights WHERE departure_airport_id = airport_id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION departing_from_airport(
    airport_id integer
)
RETURNS TABLE (id int, number varchar(50), status varchar(50)) AS
$$ BEGIN
RETURN QUERY SELECT flight_id, flight_no, status FROM flights WHERE departure_airport_id = airport_id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION departing_from_airport(
    airport_id integer
)
RETURNS TABLE (id int, number varchar(50), status varchar(50)) AS
$$ BEGIN
RETURN QUERY SELECT flight_id, flight_no, status FROM flights WHERE departure_airport_id = airport_id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
DROP FUNCTION departing_from_airport;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION departing_from_airport(
    id integer
)
RETURNS TABLE (flight_id integer, flight_no varchar(50), status varchar(50)) AS
$$ BEGIN
RETURN QUERY SELECT flight_id, flight_no, status FROM flights WHERE departure_airport_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION departing_from_airport(
    id integer
)
RETURNS TABLE (flight_id integer, flight_no varchar(50), status varchar(50)) AS
$$ BEGIN
RETURN QUERY SELECT f.flight_id, f.flight_no, f.status FROM flights as f WHERE departure_airport_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT departing_from_airport(12);
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS integer AS
$$ BEGIN
RETURN QUERY SELECT avg(actual_arrival - scheduled_arrival) FROM flights WHERE arrival_airport_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS integer AS
$$ BEGIN
    SELECT avg(actual_arrival - scheduled_arrival) FROM flights WHERE arrival_airport_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS integer AS
$$ BEGIN
    SELECT avg(actual_arrival - scheduled_arrival) as result FROM flights WHERE arrival_airport_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM average_delay_for_a;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM average_delay_for_airport(12);
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS integer AS
$$ BEGIN
    RETURN(SELECT avg(actual_arrival - scheduled_arrival) as avg_delay FROM flights WHERE arrival_airport_id = id);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS integer AS
$$ BEGIN
    RETURN(SELECT avg(actual_arrival) as avg_delay FROM flights WHERE arrival_airport_id = id);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS time AS
$$ BEGIN
    RETURN(SELECT avg(actual_arrival - scheduled_arrival) as avg_delay FROM flights WHERE arrival_airport_id = id);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS time AS
$$ BEGIN
    RETURN(SELECT avg(actual_arrival::time - scheduled_arrival::time) as avg_delay FROM flights WHERE arrival_airport_id = id);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(actual_arrival - scheduled_arrival) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(actual_arrival::date - scheduled_arrival::date) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(actual_arrival::date - scheduled_arrival::date)::date as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(actual_arrival::interval - scheduled_arrival::interval) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg((actual_arrival - scheduled_arrival)::interval) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(age(actual_arrival - scheduled_arrival)) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT age(actual_arrival, scheduled_arrival) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(age(actual_arrival, scheduled_arrival)) as avg_delay FROM flights WHERE arrival_airport_id = 12;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS time AS
$$ BEGIN
    RETURN(SELECT avg(age(actual_arrival, scheduled_arrival)) as avg_delay FROM flights WHERE arrival_airport_id = id);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
DROP FUNCTION average_delay_for_airport(id integer);
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION average_delay_for_airport(
    id integer
)
RETURNS interval AS
$$ BEGIN
    RETURN(SELECT avg(age(actual_arrival, scheduled_arrival)) as avg_delay FROM flights WHERE arrival_airport_id = id);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT average_delay_for_airport(12);
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passengers_for_flight(
    id integer
)
RETURNS TABLE(id integer, name text) AS
$$ BEGIN
    RETURN QUERY SELECT p.passenger_id, p.first_name || ' ' || p.last_name FROM flights
    JOIN booking_flight as bf ON flights.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    JOIN passengers as p ON b.passenger_id = p.passenger_id
    WHERE flights.flight_id = id;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passengers_for_flight(
    flight_id integer
)
RETURNS TABLE(passenger_id integer, full_name text) AS
$$ BEGIN
    RETURN QUERY SELECT p.passenger_id, p.first_name || ' ' || p.last_name FROM flights
    JOIN booking_flight as bf ON flights.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    JOIN passengers as p ON b.passenger_id = p.passenger_id
    WHERE flights.flight_id = $1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(12);
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(15);
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(100);
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(1);
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(19);
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(33);
;-- -. . -..- - / . -. - .-. -.--
SELECT passengers_for_flight(13);
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passenger_with_max_flights()
RETURNS integer AS
$$ BEGIN
    RETURN(SELECT p.passenger_id, count(*) as num_flights FROM passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    ORDER BY num_flights DESC
    LIMIT 1);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passenger_with_max_flights()
RETURNS integer AS
$$ BEGIN
    RETURN(SELECT p.passenger_id, count(*) as num_flights FROM passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    GROUP BY b.passenger_id
    ORDER BY num_flights DESC
    LIMIT 1);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passenger_with_max_flights()
RETURNS integer AS
$$ BEGIN
    RETURN(SELECT p.passenger_id, count(*) as num_flights FROM passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    GROUP BY p.passenger_id
    ORDER BY num_flights DESC
    LIMIT 1);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passenger_with_max_flights()
RETURNS TABLE(passenger_id integer, flights integer) AS
$$ BEGIN
    RETURN QUERY SELECT p.passenger_id, count(*) as num_flights FROM passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    GROUP BY p.passenger_id
    ORDER BY num_flights DESC
    LIMIT 1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
DROP FUNCTION passenger_with_max_flights();
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION passenger_with_max_flights()
RETURNS TABLE(passenger_id integer, flights bigint) AS
$$ BEGIN
    RETURN QUERY SELECT p.passenger_id, count(*) as num_flights FROM passengers as p
    JOIN booking as b ON p.passenger_id = b.passenger_id
    JOIN booking_flight as bf ON b.booking_id = bf.booking_id
    GROUP BY p.passenger_id
    ORDER BY num_flights DESC
    LIMIT 1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT passenger_with_max_flights();
;-- -. . -..- - / . -. - .-. -.--
SELECT passenger_with_max_flights()[0];
;-- -. . -..- - / . -. - .-. -.--
SELECT * from passengers WHERE passenger_id = (SELECT passenger_id FROM passenger_with_max_flights());
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION number_of_flights_for_airlines()
RETURNS TABLE(airline_id integer, airline_name text, flights bigint) AS
$$ BEGIN
    RETURN QUERY SELECT a.airline_id, a.airline_name, count(*) as flights FROM flights as f
    JOIN airline as a ON f.airline_id = a.airline_id
    GROUP BY a.airline_id, a.airline_name;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
DROP FUNCTION number_of_flights_for_airlines();
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION number_of_flights_for_airlines()
RETURNS TABLE(airline_id integer, airline_name varchar(50), flights bigint) AS
$$ BEGIN
    RETURN QUERY SELECT a.airline_id, a.airline_name, count(*) as flights FROM flights as f
    JOIN airline as a ON f.airline_id = a.airline_id
    GROUP BY a.airline_id, a.airline_name;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT number_of_flights_for_airlines();
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION avg_ticket_price(
    flight_id integer
)
RETURNS numeric(10,2) AS
$$ BEGIN
    RETURN QUERY SELECT avg(b.price) FROM flights as f
    JOIN booking_flight as bf ON f.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    WHERE f.flight_id = $1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION avg_ticket_price(
    flight_id integer
)
RETURNS numeric(10,2) AS
$$ BEGIN
    RETURN(SELECT avg(b.price) FROM flights as f
    JOIN booking_flight as bf ON f.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    WHERE f.flight_id = $1);
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT avg_ticket_price(12);
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION long_delayed_flights()
RETURNS SETOF flights AS
$$ BEGIN
    RETURN QUERY SELECT * FROM flights
    WHERE age(scheduled_departure, actual_departure) > '24 hours' :: interval;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION most_expensive_flight()
RETURNS TABLE(flight_no varchar(50), departure_airport int, arrival_airport int, price numeric(7,2)) AS
$$ BEGIN
    SELECT f.flight_no, f.departure_airport_id, f.arrival_airport_id, b.price FROM flights as f
    JOIN booking_flight as bf ON f.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    ORDER BY b.price DESC
    LIMIT 1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT long_delayed_flights();
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION most_expensive_flight()
RETURNS TABLE(flight_no varchar(50), departure_airport int, arrival_airport int, price numeric(7,2)) AS
$$ BEGIN
    RETURN QUERY SELECT f.flight_no, f.departure_airport_id, f.arrival_airport_id, b.price
    FROM flights as f
    JOIN booking_flight as bf ON f.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    ORDER BY b.price DESC
    LIMIT 1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
DROP FUNCTION most_expensive_flight();
;-- -. . -..- - / . -. - .-. -.--
CREATE OR REPLACE FUNCTION most_expensive_flight()
RETURNS TABLE(flight_no varchar(50), departure_airport varchar(50), arrival_airport varchar(50), price numeric(7,2)) AS
$$ BEGIN
    RETURN QUERY SELECT f.flight_no, da.airport_name, aa.airport_name, b.price
    FROM flights as f
    JOIN booking_flight as bf ON f.flight_id = bf.flight_id
    JOIN booking as b ON bf.booking_id = b.booking_id
    JOIN airport as aa ON f.arrival_airport_id = aa.airport_id
    JOIN airport as da ON f.departure_airport_id = da.airport_id
    ORDER BY b.price DESC
    LIMIT 1;
END; $$
LANGUAGE plpgsql;
;-- -. . -..- - / . -. - .-. -.--
SELECT most_expensive_flight();
;-- -. . -..- - / . -. - .-. -.--
-- create procedure display longest flight
CREATE OR REPLACE FUNCTION longest_flight()
LANGUAGE plpgsql
AS $$
    BEGIN;
    SELECT * FROM flights ORDER BY age(actual_departure, actual_arrival) DESC LIMIT 1;
    END
$$;
;-- -. . -..- - / . -. - .-. -.--
-- create procedure display longest flight
CREATE OR REPLACE FUNCTION longest_flight()
    RETURNS SETOF flights
LANGUAGE plpgsql
AS $$
    BEGIN;
    RETURN (SELECT * FROM flights ORDER BY age(actual_departure, actual_arrival) DESC LIMIT 1);
    END
$$;
;-- -. . -..- - / . -. - .-. -.--
-- create procedure display longest flight
CREATE OR REPLACE FUNCTION longest_flight()
    RETURNS SETOF flights
LANGUAGE plpgsql
AS $$
    BEGIN
    RETURN (SELECT * FROM flights ORDER BY age(actual_departure, actual_arrival) DESC LIMIT 1);
    END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- create procedure display longest flight
CREATE OR REPLACE FUNCTION longest_flight()
    RETURNS SETOF flights
LANGUAGE plpgsql
AS $$
    BEGIN
    RETURN QUERY SELECT * FROM flights ORDER BY age(actual_departure, actual_arrival) DESC LIMIT 1;
    END;
$$;
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM flights WHERE flight_id = 8888;
;-- -. . -..- - / . -. - .-. -.--
SELECT longest_flight();
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE PROCEDURE count_passengers(airport_id integer)
    RETURNS TABLE(aiport_name text, count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT count(*) from flights;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(aiport_name text, count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE airport_id = id
    GROUP BY airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(aiport_name text, count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE airport_id = id
    GROUP BY airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(aiport_name varchar(50), count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE airport_id = id
    GROUP BY airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(airport_name varchar(50), count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE airport_id = id
    GROUP BY airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(airport_name varchar(50), count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE a.airport_id = id
    GROUP BY a.airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(airport_name varchar(50), count integer)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT a.airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE a.airport_id = id
    GROUP BY a.airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
DROP FUNCTION count_passengers(id integer);
;-- -. . -..- - / . -. - .-. -.--
-- procedure count fullname to airport
CREATE OR REPLACE FUNCTION count_passengers(id integer)
    RETURNS TABLE(airport_name varchar(50), count bigint)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT a.airport_name, count(*) as count FROM flights as f
    JOIN airport as a ON f.arrival_airport_id = a.airport_id
    WHERE a.airport_id = id
    GROUP BY a.airport_name;
END;
$$;
;-- -. . -..- - / . -. - .-. -.--
SELECT count_passengers(12);
;-- -. . -..- - / . -. - .-. -.--
ALTER DATABASE template1 REFRESH COLLATION VERSION;
;-- -. . -..- - / . -. - .-. -.--
create table companies (
	company_id INT PRIMARY KEY,
	company_name VARCHAR(255)
);
;-- -. . -..- - / . -. - .-. -.--
create table vehicles(
	vehicle_id INT PRIMARY KEY,
	vehicle_type VARCHAR(255),
	company_id INT,
    constraint fk_company_id FOREIGN KEY(company_id) references companies(company_id)
);
;-- -. . -..- - / . -. - .-. -.--
create table cities(
	city_id INT PRIMARY KEY,
	city_name VARCHAR(255),
	country_id INT
);
;-- -. . -..- - / . -. - .-. -.--
create table routes(
	route_id INT PRIMARY KEY,
	city_id INT,
    constraint fk_city_id FOREIGN KEY(city_id) references cities(city_id)
);
;-- -. . -..- - / . -. - .-. -.--
create table transport_types(
	transport_id INT PRIMARY KEY,
	transport_name VARCHAR(255),
	average_speed DECIMAL
);
;-- -. . -..- - / . -. - .-. -.--
insert into companies(company_id, company_name)
values (1, 'Toyota'), (2, 'Volkswagen'), (3, 'Mercedes'),
       (4, 'Mitsubishi'), (5, 'Audi');
;-- -. . -..- - / . -. - .-. -.--
insert into vehicles(vehicle_id, vehicle_type, company_id)
values (1, 'motorcycle', 1), (2, 'car', 1),
       (3, 'motorcycle', 2), (4, 'truck', 3),
       (5, 'car', 4), (6, 'truck', 5);
;-- -. . -..- - / . -. - .-. -.--
insert into cities(city_id, city_name, country_id)
values (1, 'Almaty', 1), (2, 'Aktau', 1),
       (3, 'New York', 2), (4, 'Washington', 2),
       (5, 'Moscow', 3);
;-- -. . -..- - / . -. - .-. -.--
insert into routes(route_id, city_id)
values (1, 2), (2, 3), (3, 4), (4, 5), (5, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into transport_types(transport_id, transport_name, average_speed)
values (1, 'bus', 50.5), (2, 'electro bus', 40.5),
       (3, 'bike', 20.3), (4, 'taxi', 70.7),
       (5, 'trolley', 50);
;-- -. . -..- - / . -. - .-. -.--
select * from vehicles;
;-- -. . -..- - / . -. - .-. -.--
select * from routes;
;-- -. . -..- - / . -. - .-. -.--
select route_id, cities.city_name from routes as r
join cities on r.city_id = cities.city_id;
;-- -. . -..- - / . -. - .-. -.--
update transport_types set average_speed = average_speed + 5 where average_speed < 100;
;-- -. . -..- - / . -. - .-. -.--
select * from transport_types;
;-- -. . -..- - / . -. - .-. -.--
insert into cities(city_id, city_name, country_id) values (6, 'Astana', NULL);
;-- -. . -..- - / . -. - .-. -.--
select * from cities;
;-- -. . -..- - / . -. - .-. -.--
select company_name, count(v.*) from companies
    join vehicles v on companies.company_id = v.company_id
    group by company_name;
;-- -. . -..- - / . -. - .-. -.--
select company_id, company_name from companies
    where company_name like 'A%';
;-- -. . -..- - / . -. - .-. -.--
select * from cities where country_id BETWEEN 3 and 10;
;-- -. . -..- - / . -. - .-. -.--
alter database users rename to java_login_system;
;-- -. . -..- - / . -. - .-. -.--
create table logins (
    id int primary key,
    username varchar(45),
    password varchar(60)
);
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE EMPLOYEE;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE EMPLOYEE (
   	ID INTEGER NOT NULL,
   	FIRSTNAME VARCHAR(40) NOT NULL,
	LASTNAME VARCHAR(40) NOT NULL,
	BIRTHDATE DATE,
	SALARY REAL,
	PRIMARY KEY (ID)
);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (110, 'Troy', 'Hammer', '1965-03-31', 102109.15);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (123, 'Michael', 'Walton', '1986-08-25', 93400.20);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (201, 'Thomas', 'Fitzpatrick', '1961-09-22', 75123.45);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (101, 'Abhijit', 'Gopali', '1956-06-01', 89345.00);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (120, 'Rajiv', 'Sudahari', '1969-12-22', 68400.22);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (190, 'Patrice', 'Bergeron', '1970-09-18', 109345.00);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (111, 'Matthieu', 'Williams', '1966-05-31', 100345.15);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (124, 'Michael', 'McGinn', '1979-01-25', 99400.20);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (202, 'Thomas', 'Heimer', '1967-07-22', 79123.45);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (102, 'Peter', 'Forrester', '1965-11-01', 99345.00);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (121, 'Kenny', 'Arlington', '1959-10-22', 78405.22);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (191, 'Jill', 'Molinair', '1968-08-18', 119345.00);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (129, 'Cindy', 'Colchester', '1965-03-24', 902109.15);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (133, 'Clarence', 'Dupree', '1986-08-11', 103400.20);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (211, 'Paromita', 'Sumesh', '1961-09-13', 105123.45);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (151, 'Arfat', 'Poland', '1956-06-11', 99345.00);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (130, 'David', 'OReilly', '1969-12-25', 88400.22);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO EMPLOYEE VALUES (200, 'Patricia', 'Arnant', '1970-10-31', 79345.00);