drop table if exists public.throl;
CREATE TABLE public.throl(
	codrol int4 NOT NULL,
	namerole varchar null,
	status int4 DEFAULT 1,
	create_at timestamp DEFAULT CURRENT_TIMESTAMP,
	create_up timestamp NULL,
	CONSTRAINT rol_pkey PRIMARY KEY (codrol)
);

drop table if exists public.thlocation;
CREATE TABLE public.thlocation(
	codlocation int4 NOT NULL,
	namelocation varchar null,
	status int4 DEFAULT 1,
	create_at timestamp DEFAULT CURRENT_TIMESTAMP,
	create_up timestamp NULL,
	CONSTRAINT location_pkey PRIMARY KEY (codlocation)
);

drop table if exists public.thfarm;
CREATE TABLE public.thfarm (
	codfarm int4 NOT NULL,
	namefarm varchar NULL,
	owner_name varchar NULL,
	owner_mail varchar NULL,
	codlocation int4 NULL,
	status int4 DEFAULT 1,
	create_at timestamp DEFAULT CURRENT_TIMESTAMP,
	create_up timestamp NULL,
	CONSTRAINT farm_pkey PRIMARY KEY (codfarm),
	CONSTRAINT fk_codlocation FOREIGN KEY (codlocation) REFERENCES public.thlocation(codlocation)
);


/*
thFarm (Granja):

codFarm (clave primaria)
nameFarm
ownerName
ownerMail
status
createAt
createUp
thLocation (Ubicación):

codLocation (clave primaria)
nameLocation
status
createAt
createUp
thCrop (Cultivo):

codCrop (clave primaria)
nameCrop
codFarm (clave foránea a thFarm)
status
createAt
createUp
thAnimal (Animal):

codAnimal (clave primaria)
nameAnimal
type (por ejemplo, gallina, pez, etc.)
codFarm (clave foránea a thFarm)
status
createAt
createUp
thEmployee (Empleado):

codEmployee (clave primaria)
nameEmployee
email
role
status
createAt
createUp
thEmployeeSalary (Salario de Empleado):

codSalary (clave primaria)
codEmployee (clave foránea a thEmployee)
salaryType (tipo de salario: fijo, por producción, por contrato, etc.)
amount (monto del salario)
date (fecha del salario)
status
createAt
createUp
thEmployeeAssignment (Asignación de Empleado):

codAssignment (clave primaria)
codEmployee (clave foránea a thEmployee)
codActivity (código de la actividad, por ejemplo, limpieza, fumigación, etc.)
startDate
endDate
status
createAt
createUp
thSupply (Insumo):

codSupply (clave primaria)
name
type (tipo de insumo: abono, implemento, alimento, etc.)
price (precio unitario)
status
createAt
createUp
thAnimalFoodConsumption (Consumo de Alimento de Animal):

codConsumption (clave primaria)
codAnimal (clave foránea a thAnimal)
codSupply (clave foránea a thSupply)
quantity (cantidad consumida)
date
status
createAt
createUp
thExpense (Gasto):

codExpense (clave primaria)
description
amount
date
status
createAt
createUp
thUser (Usuario):

codUser (clave primaria)
username
password
status
createAt
createUp
thUserRole (Rol de Usuario):

codUserRole (clave primaria)
codUser (clave foránea a thUser)
role (rol del usuario, por ejemplo, administrador, empleado, etc.)
status
createAt
createUp
thHarvest (Cosecha):

codHarvest (clave primaria)
codEmployee (clave foránea a thEmployee)
codCrop (clave foránea a thCrop)
date (fecha de la cosecha)
kilosHarvested (cantidad de kilos de café cosechados)
status
createAt
createUp


Para obtener la cantidad de kilos de plátano o aguacate cosechados y el precio al que se vendieron, puedes considerar agregar una nueva tabla llamada thProductSale (Venta de Producto) que registre esta información. Aquí te muestro cómo podrías diseñar esta tabla:

thProductSale (Venta de Producto):

codSale (clave primaria)
codProduct (clave foránea a thCrop)
quantitySold (cantidad vendida en kilos)
salePricePerKilo (precio de venta por kilo)
date (fecha de la venta)
status
createAt
createUp


thUser (Usuario):

codUser (clave primaria)
username
password
status
createAt
createUp
thFarm (Granja):

codFarm (clave primaria)
nameFarm
ownerName
ownerMail
status
createAt
createUp
thUserFarm (Relación Usuario-Finca):

codUser (clave foránea a thUser)
codFarm (clave foránea a thFarm)

*/


