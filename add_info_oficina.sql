use oficina;

-- ZIPCode, Street, Neighborhood, City, UF
insert into clientAddress (ZIPCode, Street, Neighborhood, City, UF) values
		('13201-000','Rua Rangel Pestana','Centro','Jundiaí','SP'),
		('13201-002','Rua Marechal Deodoro','Centro','Jundiaí','SP'),
		('13201-004','Rua Prudente de Moraes','Centro','Jundiaí','SP'),
        ('13201-017','Rua Senador Fonseca','Centro','Jundiaí','SP'),
		('13206-305','Rua Bom Jesus','Vila Rami','Jundiaí','SP'); 

-- IdCAddress, CPF, Fname, Lname, Contact
insert into clients (IdCAddress, CPF, Fname, Lname, Contact) values
		(1,12345678912,'João','Silva','11987654321'),
        (2,98765432198,'Maria','Santos','21987345612'),
        (3,33256424678,'Eusébio','Sanchez','21998755632'),
        (4,25698748512,'Regina','Santana','21987425111'),
        (5,68745921533,'Josué','Ferreira','21999454661');

-- IdVClient, LicensePlate, Brand, Model, ReleasedYear
insert into vehicle (IdVClient, LicensePlate, Brand, Model, ReleasedYear) values
		(1,'ABC1234','Fiat','Uno',2010),
        (2,'XYZ9876','Volkswagen','Gol',2012),
        (3,'ASD5846','Toyota','Prius',2012),
        (4,'BOB3321','Mitsubishi','Pajero',2014),
        (5,'XUM6891','Hyundai','HB20',2015);

-- SDescription, Cost
insert into service (SDescription, Cost) values
		('Troca de óleo', 100.00),
        ('Alinhamento e balanceamento', 150.00),
        ('Recalibração do medidor de combustível', 100.00),
        ('Substituição de velas de ignição', 220.00),
        ('Troca de bateria', 150.00);

-- ZIPCode, Street, City, UF
insert into supplierAddress (ZIPCode, Street, City, UF) values
		('01032-322','Rua Dona Eulália','São Paulo','SP'),
        ('02003-151','Avenida Cândido Silva','São Paulo','SP'),
        ('12233-400','Avenida Ouro Fino','São José dos Campos','SP');

-- IdSAddress, CNPJ, SName, Contact
insert into supplier (IdSAddress, CNPJ, SName, Contact) values
		(3,12345678000190,'Auto Peças Silva','11966555423'),
        (2,98765432000121,'Pneus Brasil','11966551428'),
        (1,45678901000123,'Motors & Motors','12922124577');

--  SDate, IdOVehicle, IdOService, IdOSupplier
insert into serviceOrder (SDate, IdOVehicle, IdOService, IdOSupplier) values
		('2023-08-30',5,1,1),
        ('2023-06-18',2,1,1),
        ('2023-08-31',1,2,3),
        ('2023-07-12',3,3,2),
        ('2023-08-31',4,5,3),
        ('2023-07-27',5,4,3);
