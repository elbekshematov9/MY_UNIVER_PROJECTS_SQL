CREATE DATABASE BusinessHierarchy;
USE BusinessHierarchy;

CREATE TABLE CompanyGroup (
    GroupID INT PRIMARY KEY,	
    GroupName VARCHAR(100)
);

CREATE TABLE Company (
    CompID INT PRIMARY KEY,
    CompName VARCHAR(100),
    GroupID INT,
    FOREIGN KEY (GroupID) REFERENCES CompanyGroup(GroupID)
);

CREATE TABLE Plant (
    PlantID INT PRIMARY KEY,
    PlantLocation VARCHAR(100),
    CompID INT,
    FOREIGN KEY (CompID) REFERENCES Company(CompID)
);

CREATE TABLE Item (
    ItemNo INT PRIMARY KEY,
    ItemName VARCHAR(100),
    PlantID INT,
    FOREIGN KEY (PlantID) REFERENCES Plant(PlantID)
);