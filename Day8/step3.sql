UPDATE Reservations
SET Statu = 'Empty'
WHERE ReservationID = 1;

SELECT TableID, Seats, Locat
FROM Tables
WHERE TableID NOT IN (
    SELECT TableID
    FROM Reservations
    WHERE ReservationDate = TO_TIMESTAMP('2024-12-25 19:00', 'YYYY-MM-DD HH24:MI')
);

SELECT r.ReservationID, r.ReservationDate, t.Locat, r.Statu
FROM Reservations r
    JOIN Tables t ON r.TableID = t.TableID
WHERE r.CustomerID = 1;