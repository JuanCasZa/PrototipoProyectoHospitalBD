create table [JefeDepartamentos]
(
	[Id] int primary key identity(1,1),
	[Nombre] nvarchar(30) not null,
	[Apellido] nvarchar(40) not null
);

create table [Departamentos]
(
	[Id] int primary key identity(1,1),
	[Nombre] nvarchar(30) not null,
	[NumeroPiso] int not null,
	[JefeDepartamento] int references [JefeDepartamentos]([Id]) not null
);

create table [Medicos]
(
	[Id] int primary key identity(1,1),
	[Nombre] nvarchar(30) not null,
	[Apellido] nvarchar(40) not null,
	[Especialidad] nvarchar(40) not null,
	[Departamento] int references [Departamentos]([Id]) not null
);

create table [Pacientes]
(
	[Id] int primary key identity(1,1),
	[Nombre] nvarchar(30) not null,
	[Apellido] nvarchar(40) not null,
	[Direccion] nvarchar(200) not null
);

create table [HistoriasClinicas]
(
	[Id] int primary key identity(1,1),
	[Fecha] smalldatetime default getdate() not null,
	[Diagnostico] nvarchar(200) not null,
	[Tratamiento] nvarchar(200) not null,
	[Paciente] int references [Pacientes]([Id]) not null
);

create table [Citas]
(
	[Id] int primary key identity(1,1),
	[Fecha] smalldatetime default getdate(),
	[Medico] int references [Medicos]([Id]),
	[Paciente] int references [Pacientes]([Id])
);
