--Топ пассажиров
SELECT 
    t.passenger_name AS "ФИО Пассажира",
    SUM(b.total_amount)
FROM tickets t
    INNER JOIN bookings b ON t.book_ref = b.book_ref
GROUP BY t.passenger_name
ORDER BY SUM(b.total_amount) DESC;