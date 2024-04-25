--Количество прилетов по городам
SELECT 
    a.city AS "Город",
    COUNT(f.flight_id) AS "Количество прилетов"
FROM flights f
    INNER JOIN airports_data a ON a.airport_code = f.arrival_airport
GROUP BY a.city;