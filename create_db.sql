-- 1: Run one or more statements that will remove all of the tables that will be created 
-- below. This will allow the script to be run again without any errors caused by 
-- existing tables.
DROP TABLE IF EXISTS Priority_Choice, Regular_Choice, Kar_File, Song_Contributor, Song, Contributor, Artist, Users;

-- 2: Create Tables

CREATE TABLE
  Users (
    `User_ID`       INT AUTO_INCREMENT,   -- Primary ID field, will auto increment.
    `User_Name`     CHAR(63) NOT NULL,             -- Name of the user e.g. "Greg"

    PRIMARY KEY (`User_ID`)
  );

CREATE TABLE
  Artist (
    `Artist_ID`       INT AUTO_INCREMENT,   -- Primary ID field, will auto increment.
    `Artist_Name`     CHAR(63) NOT NULL,             -- Name of the artist e.g. "The Killers"

    PRIMARY KEY (`Artist_ID`)
  );

CREATE TABLE
  Contributor (
    `Contributor_ID`       INT AUTO_INCREMENT,   -- Primary ID field, will auto increment.
    `Contributor_Name`     CHAR(63) NOT NULL,             -- Name of the contributor e.g. "Bob Dylan"

    PRIMARY KEY (`Contributor_ID`)
  );

CREATE TABLE
  Song (
    `Song_ID`          INT AUTO_INCREMENT,   -- Primary ID field, will auto increment.
    `Song_Name`        CHAR(63) NOT NULL,             -- Name of the song e.g. "Hey Jude"
    `Artist_ID`        INT NOT NULL,                  -- Foriegn Key into Artist

    PRIMARY KEY (`Song_ID`),

    FOREIGN KEY (`Artist_ID`)
      REFERENCES Artist(`Artist_ID`)
  );

CREATE TABLE
  Song_Contributor (
    `Contributor_ID`   INT,                  -- Foriegn Key into Contributor
    `Song_ID`          INT,                  -- Foreign Key into Song
    `Contribution`     CHAR(63) NOT NULL,             -- Contributor's contribution to this song, e.g. "Singer"

    PRIMARY KEY (`Contributor_ID`, `Song_ID`),

    FOREIGN KEY (`Song_ID`)
      REFERENCES Song(`Song_ID`),
    FOREIGN KEY (`Contributor_ID`)
      REFERENCES Contributor(`Contributor_ID`)

  );

CREATE TABLE
  Kar_File (
    `File_Name`        CHAR(127),         -- Filename of this song version e.g. "HeyJude_TheBeatles_DuetVersion.kar"
    `Extended_Title`   CHAR(127) NOT NULL,         -- Name of this version of the song e.g. "Hey Jude (Duet Version)"
    `Song_ID`          INT NOT NULL,               -- Foreign Key into Song

    PRIMARY KEY (`File_Name`),

    FOREIGN KEY (`Song_ID`)
      REFERENCES Song(`Song_ID`)
  );

CREATE TABLE
  Regular_Choice (
    `User_ID`          INT,              -- Foreign Key into 'User'
    `File_Name`   CHAR(63),         -- Filename of this song version
    `Date_Time`    DATETIME,         -- Datetime song as submitted to the regular queue.

    PRIMARY KEY (`User_ID`, `File_Name`, `Date_Time`),

    FOREIGN KEY (`User_ID`)
      REFERENCES Users(`User_ID`),
    FOREIGN KEY (`File_Name`)
      REFERENCES Kar_File(`File_Name`)
  );

CREATE TABLE
  Priority_Choice (
    `User_ID`          INT,              -- Foreign Key into 'User'
    `File_Name`   CHAR(63),         -- Filename of this song version
    `Date_Time`    DATETIME,         -- Datetime song as submitted to the regular queue.
    `Money_Amt`       DECIMAL(15,2) NOT NULL,     -- Holds how much a user pays for a file to be played

    PRIMARY KEY (`User_ID`, `File_Name`, `Date_Time`),

    FOREIGN KEY (`User_ID`)
      REFERENCES Users(`User_ID`),
    FOREIGN KEY (`File_Name`)
      REFERENCES Kar_File(`File_Name`)
  );

-- 3: Run the command DESCRIBE;
DESCRIBE Users;
DESCRIBE Artist;
DESCRIBE Contributor;
DESCRIBE Song;
DESCRIBE Song_Contributor;
DESCRIBE Kar_File;
DESCRIBE Regular_Choice;
DESCRIBE Priority_Choice;