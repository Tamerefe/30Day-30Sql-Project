INSERT INTO Customers (CustomerID, FullName) VALUES (1, 'John Doe');
INSERT INTO Customers (CustomerID, FullName) VALUES (2, 'Jane Smith');
INSERT INTO Customers (CustomerID, FullName) VALUES (3, 'Alice Johnson');
INSERT INTO Customers (CustomerID, FullName) VALUES (4, 'Bob Brown');
INSERT INTO Customers (CustomerID, FullName) VALUES (5, 'Charlie Davis');

INSERT INTO Tables (TableID, Seats, Locat) VALUES (1, 4, 'Inside');
INSERT INTO Tables (TableID, Seats, Locat) VALUES (2, 2, 'Outside');
INSERT INTO Tables (TableID, Seats, Locat) VALUES (3, 6, 'Inside');
INSERT INTO Tables (TableID, Seats, Locat) VALUES (4, 4, 'Outside');
INSERT INTO Tables (TableID, Seats, Locat) VALUES (5, 8, 'Inside');

INSERT INTO Reservations (ReservationID, CustomerID, TableID, ReservationDate, Statu) VALUES (1, 1, 1, TO_DATE('2024-12-15 18:00', 'YYYY-MM-DD HH24:MI'), 'Reserved');
INSERT INTO Reservations (ReservationID, CustomerID, TableID, ReservationDate, Statu) VALUES (2, 2, 2, TO_DATE('2024-12-16 19:00', 'YYYY-MM-DD HH24:MI'), 'Reserved');
INSERT INTO Reservations (ReservationID, CustomerID, TableID, ReservationDate, Statu) VALUES (3, 3, 3, TO_DATE('2024-12-17 20:00', 'YYYY-MM-DD HH24:MI'), 'Reserved');
INSERT INTO Reservations (ReservationID, CustomerID, TableID, ReservationDate, Statu) VALUES (4, 4, 4, TO_DATE('2024-12-18 21:00', 'YYYY-MM-DD HH24:MI'), 'Reserved');
INSERT INTO Reservations (ReservationID, CustomerID, TableID, ReservationDate, Statu) VALUES (5, 5, 5, TO_DATE('2024-12-19 18:30', 'YYYY-MM-DD HH24:MI'), 'Reserved');