create table JefeDepartamentos
(
	[Id] int primary key identity(1,1),
	[Nombre] nvarchar(30) not null,
	[Apellido] nvarchar(40) not null
);

create table Departamentos
(
	[Id] int primary key identity(1,1),
	[Nombre] nvarchar(30) not null,
	[NumeroPiso] int not null,
	[JefeDepartamento] int references [JefeDepartamentos]([Id]) not null,
);

