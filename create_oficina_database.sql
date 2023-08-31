create database if not exists oficina;
use oficina;

-- criando tabela endereço cliente
create table clientAddress(
		IdAddress int auto_increment primary key,
        ZIPCode char(9) not null,
        Street varchar(30),
        Neighborhood varchar(15),
        City varchar(30),
        UF char(2)
);
alter table clientAddress auto_increment=1;

-- criando tabela cliente
create table clients(
		IdClient int auto_increment primary key,
        IdCAddress int,
        CPF char(11) not null unique,
        Fname varchar(20),
        Lname varchar(20),
        Contact char(11),
        foreign key (IdCAddress) references clientAddress(IdAddress)
);
alter table clients auto_increment=1;

-- criando tabela veículo
create table vehicle(
		IdVehicle int auto_increment,
        IdVClient int,
		LicensePlate char(7) not null unique,
        Brand varchar(20),
        Model varchar(20),
        ReleasedYear year,
        primary key (IdVehicle, IdVClient),
        foreign key (IdVClient) references clients(IdClient)
);
alter table vehicle auto_increment=1;

-- criando tabela serviço
create table service(
		idService int auto_increment primary key,
        SDescription varchar(200),
        Cost float
);
alter table service auto_increment=1;

-- criando tabela endereço fornecedor
create table supplierAddress(
		IdAddress int auto_increment primary key,
        ZIPCode char(9) not null,
        Street varchar(30),
        City varchar(30),
        UF char(2)
);
alter table supplierAddress auto_increment=1;

-- criando tabela fornecedor
create table supplier(
		IdSupplier int auto_increment primary key,
        IdSAddress int,
        CNPJ char(14) not null unique,
        SName varchar(25),
        Contact char(11),
        foreign key (IdSAddress) references supplierAddress(IdAddress)
);
alter table supplier auto_increment=1;

-- criando tabela ordem de serviço
create table serviceOrder(
        SDate date,
        IdOVehicle int,
        IdOService int,
        IdOSupplier int,
        primary key (idOService, IdOVehicle),
        foreign key (IdOVehicle) references vehicle(IdVehicle),
        foreign key (IdOService) references service(idService),
        foreign key (IdOSupplier) references supplier(IdSupplier)
);