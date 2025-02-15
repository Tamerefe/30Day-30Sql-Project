CREATE TABLE Players (
    player_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    player_name VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE Game_Sessions (
    session_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    session_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Scores (
    score_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    player_id NUMBER NOT NULL,
    session_id NUMBER NOT NULL,
    score NUMBER NOT NULL CHECK (score >= 0),
    score_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES Players(player_id) ON DELETE CASCADE,
    FOREIGN KEY (session_id) REFERENCES Game_Sessions(session_id) ON DELETE CASCADE
);

INSERT INTO Players (player_name) VALUES ('Ahmet');
INSERT INTO Players (player_name) VALUES ('Mehmet');
INSERT INTO Players (player_name) VALUES ('Zeynep');

INSERT INTO Game_Sessions (session_date) VALUES (SYSTIMESTAMP);
INSERT INTO Game_Sessions (session_date) VALUES (SYSTIMESTAMP - INTERVAL '1' DAY);
INSERT INTO Game_Sessions (session_date) VALUES (SYSTIMESTAMP - INTERVAL '2' DAY);

INSERT INTO Scores (player_id, session_id, score) VALUES (1, 1, 500);
INSERT INTO Scores (player_id, session_id, score) VALUES (2, 2, 750);
INSERT INTO Scores (player_id, session_id, score) VALUES (3, 3, 900);
INSERT INTO Scores (player_id, session_id, score) VALUES (1, 2, 1200);
INSERT INTO Scores (player_id, session_id, score) VALUES (2, 1, 400);

