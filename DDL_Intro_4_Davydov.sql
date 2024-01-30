CREATE TABLE Team (
 teamNumber INTEGER NOT NULL,
 teamName VARCHAR(50) NOT NULL,
 CONSTRAINT PK_Team PRIMARY KEY(teamNumber)
)

CREATE TABLE Cyclist (
 cyclistNumber INTEGER NOT NULL,
 familyName VARCHAR(50) NOT NULL,
 givenName VARCHAR(50) NOT NULL,
 teamNumber INTEGER NOT NULL,
 CONSTRAINT PK_Cyclist PRIMARY KEY(cyclistNumber),
 FOREIGN KEY (teamNumber) REFERENCES Team(teamNumber)
)

INSERT INTO Team(teamNumber, teamName) VALUES
(1, 'JAVA'),
(2, 'PYTHON')

INSERT INTO Cyclist(cyclistNumber, familyName, givenName, teamNumber) VALUES
(1, 'Smith', 'Maria', 1),
(2, 'Maison', 'Veronika', 2),
(3, 'Addison', 'Michael', 1),
(4, 'Cumberbatch', 'Benedict', 1)

INSERT INTO Cyclist (cyclistNumber, familyName, givenName, teamNumber) VALUES
(1, 'Dupont', 'Alice', 2);

INSERT INTO Team (teamNumber, teamName) VALUES
(1, 'Duplicate Team');

INSERT INTO Cyclist (cyclistNumber, familyName, givenName, teamNumber) VALUES
(5, 'Anderson', 'Chris', 3);

SELECT teamName
 FROM Team
 ORDER BY teamName

 SELECT familyName, givenName
 FROM Cyclist