use oficina;

-- Recuperando total de carros em reparo
select count(*) from vehicle, serviceOrder
		where IdVehicle = IdOVehicle;

-- Recuperando nomes dos carros em reparo
select distinct Brand, Model, LicensePlate from vehicle v, serviceOrder o
		where v.IdVehicle = o.IdOVehicle
        order by LicensePlate;

-- Recuperando reparos feitos nos veículos
select Brand, Model, SDescription from vehicle v, service s, serviceOrder o
		where v.idVehicle = o.IdOVehicle and s.idService = o.IdOService;

-- Recuperando custo de manutenção de cada serviço
select SDescription as Manutenção, Cost as Valor from service;

-- Recuperando os carros e seus donos
select concat(Fname,' ',Lname) as Client_Name, Brand, Model from vehicle v, clients c
	where v.IdVClient = c.IdClient;

-- Recuperando endereço dos clientes
select concat(Fname,' ',Lname) as Client_Name, Street, Neighborhood, City, ZIPCode, Contact from clients, clientAddress
	where IdCAddress = IdAddress;

-- Recuperando os endereços dos fornecedores;
select Sname as Supplier_Name, Street, City, ZIPCode, Contact from supplier, supplierAddress
	where IdSAddress = IdAddress;

-- Recuperando as peças vendidas por cada forncedor
select distinct SDescription, SName, CNPJ from supplier
	inner join serviceOrder on idOSupplier = IdSupplier
    inner join service on idOService = IdService;

-- Recuperando o valor pago pelo cliente por cada serviço
select concat(Fname,' ',Lname) as Client_Name, Contact, SDescription, Cost from clients
	inner join vehicle on idClient = idVClient
    inner join serviceOrder on idVehicle = IdOVehicle
    inner join service on idOService = IdService;

-- Recuperando as datas de manutenção do veículo
select Brand, Model, LicensePlate, SDate from serviceOrder, vehicle
	where IdOVehicle = IdVehicle
    order by SDate;