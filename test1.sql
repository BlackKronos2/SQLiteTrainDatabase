--Вывести количество вылетов на **.08.2017
SELECT COUNT(*)
FROM
(
    SELECT DISTINCT
        f.flight_id AS "ID",
        strftime('%m', substr(f.scheduled_departure, 1, 19)) AS "Месяц",
        strftime('%Y', substr(f.scheduled_departure, 1, 19)) AS "Год"
    FROM flights f
) 
WHERE "Месяц" = '08' AND "Год" = '2017';