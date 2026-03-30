USE master
GO
IF EXISTS (SELECT name FROM sys.databases WHERE name='FINANCIERA')
	DROP DATABASE FINANCIERA
GO
CREATE DATABASE FINANCIERA
GO

USE FINANCIERA
GO

CREATE TABLE TiposCliente(
	ID		INT NOT NULL IDENTITY(1,1),
	Nombre	VARCHAR(20) NOT NULL,
	Activo	BIT
	CONSTRAINT PKTipoCliente PRIMARY KEY(ID),
)
GO

INSERT INTO TiposCliente(Nombre, Activo)
VALUES	('INDIVIDUAL', 1),
		('COMERCIAL', 1),
		('CORPORATIVO', 1),
		('PRIVADO', 1),
		('INSTITUCIONAL', 1)
GO

CREATE TABLE Clientes(
	ID				INT NOT NULL IDENTITY(1,1),
	Apellidos		VARCHAR(50),
	Nombres			VARCHAR(50),
	Direccion		VARCHAR(200),
	Telefono		VARCHAR(20),
	Email			VARCHAR(30),
	TipoClienteID	INT,
	Activo			BIT
	CONSTRAINT PKClientes PRIMARY KEY(ID),
	CONSTRAINT FKTipoCliente FOREIGN KEY(TipoClienteID) REFERENCES TiposCliente(ID)
)
GO

INSERT INTO Clientes (Apellidos, Nombres, Direccion, Telefono, Email, TipoClienteID, Activo)
VALUES 
('Quispe Gracía', 'Juan', 'Jr. Ayacucho 123, Cercado de Lima', '01-3456789', 'juan.quispeg@mail.com', 1, 1),
('Ramos Flores', 'Lucía', 'Av. Larco 456, Miraflores', '01-8765432', 'lucia.ramosf@mail.com', 2, 1),
('Condori Morales', 'Carlos', 'Calle Los Olivos 89, San Juan de Lurigancho', '01-2345678', 'carlos.condorim@mail.com', 3, 1),
('García Cruz', 'Andrea', 'Av. Brasil 320, Jesús María', '01-3425786', 'andrea.garciac@mail.com', 1, 1),
('Paredes Aguilar', 'Luis', 'Jr. Moquegua 112, Arequipa', '054-345678', 'luis.paredesa@mail.com', 2, 1),
('Vásquez Sánchez', 'María', 'Av. Javier Prado 500, San Borja', '01-3451234', 'maria.vasquezs@mail.com', 4, 1),
('Flores Quispe', 'José', 'Calle Real 100, Huancayo', '064-654321', 'jose.floresq@mail.com', 5, 1),
('Cruz Medina', 'Sofía', 'Av. Universitaria 742, Los Olivos', '01-2233445', 'sofia.cruzm@mail.com', 1, 1),
('Lopez Carranza', 'Diego', 'Jr. Amazonas 45, Iquitos', '065-332211', 'diego.lopezc@mail.com', 3, 1),
('Morales Espinoza', 'Camila', 'Av. El Sol 876, Cusco', '084-556677', 'camila.moralese@mail.com', 5, 1),
('Salazar Goméz', 'Fernando', 'Calle Lima 321, Trujillo', '044-776655', 'fernando.salazarg@mail.com', 2, 1),
('Mendoza Huamán', 'Valeria', 'Av. Grau 222, Piura', '073-998877', 'valeria.mendozah@mail.com', 4, 1),
('Reyes Ortiz', 'Ricardo', 'Jr. Callao 18, Chiclayo', '074-112233', 'ricardo.reyeso@mail.com', 1, 1),
('Aguilar Zambrano', 'Daniela', 'Calle Los Álamos 500, San Miguel', '01-4455667', 'daniela.aguilarz@mail.com', 2, 1),
('Ortega Vásquez', 'Miguel', 'Av. Túpac Amaru 1234, Comas', '01-7788990', 'miguel.ortegva@mail.com', 3, 1),
('Ruiz Torres', 'Fiorella', 'Av. El Ejército 567, Pueblo Libre', '01-3322110', 'fiorella.ruizt@mail.com', 4, 1),
('Chávez Mendoza', 'Martín', 'Jr. Cuzco 456, Tacna', '052-667788', 'martin.chavezm@mail.com', 5, 1),
('Silva Huamán', 'Laura', 'Calle Tarata 90, Miraflores', '01-5566778', 'laura.silvah@mail.com', 1, 1),
('Sánchez Condori', 'Pedro', 'Av. Colonial 123, Callao', '01-9988776', 'pedro.sanchezc@mail.com', 2, 1),
('Medina Gozáles', 'Karla', 'Jr. Puno 321, Juliaca', '051-443322', 'karla.medinag@mail.com', 3, 1),
('Castro Alvino', 'Gabriel', 'Av. Arequipa 740, Lince', '01-7788991', 'gabriel.castroa@mail.com', 4, 1),
('Torres Zapata', 'Elena', 'Jr. Progreso 100, Chimbote', '043-223344', 'elena.torresz@mail.com', 5, 1),
('Campos Benavente', 'Jorge', 'Av. La Marina 987, San Miguel', '01-3344556', 'jorge.camposb@mail.com', 1, 1),
('Peña Soto', 'Natalia', 'Calle Bolívar 210, Barranco', '01-1122334', 'natalia.penas@mail.com', 3, 1),
('Espinoza Jauregui', 'Sebastián', 'Jr. Independencia 432, Huacho', '01-5566443', 'sebastian.espinozaj@mail.com', 4, 1),
('Delgado Valenzuela', 'Luisa', 'Av. Venezuela 321, Breña', '01-8899775', 'luisa.delgadov@mail.com', 2, 1),
('Valverde Campo', 'Alan', 'Calle Cusco 654, Cusco', '084-445566', 'alan.valverdec@mail.com', 3, 1),
('Robles Cotrina', 'Patricia', 'Av. Angamos 909, Surquillo', '01-7788992', 'patricia.roblesc@mail.com', 5, 1),
('Huamán Rodriguez', 'Raúl', 'Jr. Los Cedros 345, Villa El Salvador', '01-1122443', 'raul.huamanr@mail.com', 1, 1),
('Carranza Orozco', 'Julieta', 'Av. San Luis 432, La Victoria', '01-5544332', 'julieta.carranzao@mail.com', 2, 1)
GO

CREATE TABLE TipoPrestamo(
	ID INT IDENTITY(1,1) NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	Tasa NUMERIC(5, 2) NOT NULL,
	CONSTRAINT PKTipoPrestamo PRIMARY KEY(ID)
 )
GO

INSERT INTO TipoPrestamo(Nombre, Tasa)
VALUES('Préstamo Personal', 35.00),
	('Préstamo Hipotecário', 25.00),
	('Préstamo Educativo', 15.00),
	('Préstamo MI-NEGOCIO', 14.50)
GO

CREATE TABLE Prestamos(
	ID				INT IDENTITY(1,1) NOT NULL,
	Fecha			DATETIME NULL CONSTRAINT DFFechaPrestamo  DEFAULT (getdate()),
	FechaDeposito	DATETIME NOT NULL,
	ClienteID		INT NOT NULL,
	TipoPrestamoID	INT NOT NULL,
	Moneda			CHAR(3) NOT NULL,
	Importe			NUMERIC(9, 2) NOT NULL,
	Plazo			INT NOT NULL,
	Tasa			NUMERIC(5, 2) NOT NULL,
	Estado			CHAR(1) NOT NULL,
	CONSTRAINT PKPrestamos PRIMARY KEY(ID),
	CONSTRAINT FKClientePrestamo FOREIGN KEY(ClienteID) REFERENCES Clientes(ID),
	CONSTRAINT FKTipoPrestamoPrestamo FOREIGN KEY(TipoPrestamoID) REFERENCES TipoPrestamo(ID),
	CONSTRAINT CHKEstadoPrestamo CHECK (Estado='C' OR Estado='A' OR Estado='P'),
	CONSTRAINT CHKImportePrestamo CHECK (Importe>=1000),
	CONSTRAINT CHKPlazoPrestamo CHECK (Plazo>=6)
)
GO

CREATE TABLE CuotasPrestamo(
	PrestamoID		INT NOT NULL,
	Numero			INT NOT NULL,
	Importe			NUMERIC(9, 2) NOT NULL,
	ImporteInteres	NUMERIC(9, 2) NOT NULL,
	FechaPago		DATETIME NOT NULL,
	Estado			CHAR(1) NULL,
	CONSTRAINT PKCuotaPrestamos PRIMARY KEY(PrestamoID ASC, Numero ASC),
	CONSTRAINT FKPrestamoIDPrestamo FOREIGN KEY(PrestamoID) REFERENCES dbo.Prestamos (ID),
	CONSTRAINT CHKEstadoCuotasPrestamo CHECK  ((Estado='C' OR Estado='V' OR Estado='P')),
	CONSTRAINT CHKImporteCuotasPrestamo CHECK  ((Importe>(0))),
	CONSTRAINT CHKImporteINTeresCuotasPrestamo CHECK  ((ImporteINTeres>=(0)))
)

GO


SELECT * FROM TiposCliente
SELECT * FROM Clientes
SELECT * FROM TipoPrestamo
SELECT * FROM Prestamos
SELECT * FROM CuotasPrestamo