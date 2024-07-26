-- Create the Country table first
CREATE TABLE IF NOT EXISTS Country (
  Code CHAR(3) NOT NULL,
  Name VARCHAR(52) NOT NULL,
  Continent ENUM('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL,
  Region VARCHAR(26) NOT NULL,
  SurfaceArea FLOAT NOT NULL,
  IndepYear SMALLINT,
  Population INT NOT NULL,
  LifeExpectancy FLOAT,
  GNP FLOAT,
  GNPOld FLOAT,
  LocalName VARCHAR(45) NOT NULL,
  GovernmentForm VARCHAR(45) NOT NULL,
  HeadOfState VARCHAR(60),
  Capital INT,
  Code2 CHAR(2) NOT NULL,
  PRIMARY KEY (Code)
);

-- Create the City table next
CREATE TABLE IF NOT EXISTS City (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(35) NOT NULL,
  CountryCode CHAR(3) NOT NULL,
  District VARCHAR(20) NOT NULL,
  Population INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- Create the CountryLanguage table
CREATE TABLE IF NOT EXISTS CountryLanguage (
  CountryCode CHAR(3) NOT NULL,
  Language VARCHAR(30) NOT NULL,
  IsOfficial ENUM('T','F') NOT NULL,
  Percentage FLOAT NOT NULL,
  PRIMARY KEY (CountryCode, Language),
  FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- Insert data into Country table
INSERT INTO Country (Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, GNPOld, LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090.00, 1919, 22720000, 45.9, 5976.00, NULL, 'Afghanistan', 'Islamic Republic', 'Hamid Karzai', 1, 'AF'),
('NLD', 'Netherlands', 'Europe', 'Western Europe', 41526.00, 1581, 15864000, 78.3, 371362.00, 360478.00, 'Nederland', 'Constitutional Monarchy', 'Beatrix', 5, 'NL'),
('USA', 'United States', 'North America', 'Northern America', 9631420.00, 1776, 327167434, 78.6, 20412850.00, 19485394.00, 'United States', 'Federal Republic', 'Donald Trump', 3813, 'US'),
('BRA', 'Brazil', 'South America', 'South America', 8515767.00, 1822, 209288278, 75.7, 2055508.00, 2112107.00, 'Brasil', 'Federal Republic', 'Jair Bolsonaro', 3633, 'BR');

-- Insert data into City table
INSERT INTO City (Name, CountryCode, District, Population)
VALUES
('Kabul', 'AFG', 'Kabol', 1780000),
('Amsterdam', 'NLD', 'Noord-Holland', 731200),
('New York', 'USA', 'New York', 8175133),
('Rio de Janeiro', 'BRA', 'Rio de Janeiro', 6748000);

-- Insert data into CountryLanguage table
INSERT INTO CountryLanguage (CountryCode, Language, IsOfficial, Percentage)
VALUES
('AFG', 'Pashto', 'T', 35.0),
('AFG', 'Dari', 'T', 50.0),
('NLD', 'Dutch', 'T', 95.6),
('USA', 'English', 'T', 82.1),
('BRA', 'Portuguese', 'T', 97.9);
