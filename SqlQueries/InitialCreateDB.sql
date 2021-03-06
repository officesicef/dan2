DROP TABLE IF EXISTS [Instanca_Bolesti]
GO

DROP TABLE IF EXISTS [Epidemiolog]
GO

DROP TABLE IF EXISTS [Period_Javljanja]
GO

DROP TABLE IF EXISTS [Bolest]
GO

CREATE TABLE [Bolest] (
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Ime] NVARCHAR(150) NOT NULL,
	[Latinski_Naziv] NVARCHAR(150) NOT NULL,	
	[Zarazna] BIT NOT NULL,
	[Trajanje] INT NOT NULL,
	[Zastita] BIT NOT NULL,
	[Tip] NVARCHAR(250) NOT NULL,
	[Akutna] BIT NOT NULL,
	[Prioritet] INT NOT NULL
)
GO

CREATE TABLE [Instanca_Bolesti] (
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Lokacija_X] REAL NOT NULL,
	[Lokacija_Y] REAL NOT NULL,
	[Pol] NVARCHAR(1) NOT NULL,
	[Starost] INT NOT NULL,
	[Otkrivena] DATETIME NOT NULL,
	[Prijavljenja] DATETIME NOT NULL,
	[Okoncana] DATETIME NOT NULL,
	[Smrtni_Ishod] BIT NOT NULL,
	[Terapija] BIT NOT NULL,
	[Opis_Pojave] NVARCHAR(250) NOT NULL,
	[Bolest_Id] INT FOREIGN KEY REFERENCES [Bolest]([Id]) NOT NULL
)
GO

CREATE TABLE [Period_Javljanja] (
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Pocetak] DATETIME NOT NULL,
	[Kraj] DATETIME NOT NULL,
	[Bolest_Id] INT FOREIGN KEY REFERENCES [Bolest]([Id]) NOT NULL
)
GO

CREATE TABLE [Epidemiolog] (
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Licni_Broj] NVARCHAR(15) NOT NULL UNIQUE,
	[Ime] NVARCHAR(50) NOT NULL,
	[Prezime] NVARCHAR(50) NOT NULL,
	[Lozinka] NVARCHAR(50) NOT NULL
)
GO