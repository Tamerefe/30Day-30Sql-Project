CREATE TABLE Social (
    UserId NUMBER(10) PRIMARY KEY,
    Username VARCHAR2(100),
    Email VARCHAR2(50),
    AccPassword  VARCHAR2(50)
);

CREATE TABLE Post (
    PostNumber NUMBER(10) PRIMARY KEY,
    UserId NUMBER(10),
    Title  VARCHAR2(50),
    Content VARCHAR2(50),
    CreatedDate TIMESTAMP
);

CREATE TABLE Comments (
    CommentID NUMBER(10) PRIMARY KEY,
    PostID NUMBER(10) NOT NULL,
    UserId NUMBER(10) NOT NULL,
    Content VARCHAR2(100)
);