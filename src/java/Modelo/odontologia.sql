

create database facultad_odontologia;
use facultad_odontologia
	create table Maestro(
	id_empleado int primary key not null,
    nombre varchar(50) not null,
    apellido_paterno varchar(50) not null,
    apellido_materno varchar(50) not null,
    correo varchar(50) not null
);
	create table Maestro2(
		id_empleado int primary key not null,
        nombre_completo varchar(100),
        correo varchar(100)
    );
select * from usuarios

	create table maestro_materias(
		id_empleado int,
        nombre_completo varchar(100),
        usuario varchar(50),
        Materia varchar(50),
        grado varchar(5),
        grupo varchar(5),
        aÃ±o varchar(10),
        foreign key (id_empleado) 
        references Maestro2(id_empleado)
    );
    
select * from maestro_materias
select * from 
select Materia from maestro_materias where usuario='jordycan'

	create table alumnos(
		matricula int not null,
        nombre_completo varchar(50) not null,
        materia varchar(50) not null,
        semestre int not null,
        grupo varchar(10) not null,
        aÃ±o int not null,
        correo varchar(50) not null
   );
   select matricula, nombre_completo,materia,semestre,grupo,correo from alumnos where materia='Operatoria Dental';
   select * from alumnos
   
create table prueba(
materias varchar(50),
semestre int not null,
grupo varchar(50) not null,
aÃ±o int not null
);
	create table usuarios(
		id_empleado int not null,
        tipo int not null,
        usuario varchar(50),
        contraseÃ±a varchar(50)
    );
    
    create table encargada_clinica(
		id_empleado int primary key not null,
        nombre varchar(50),
        apellido_paterno varchar(50),
        apellido_materno varchar(50),
        clinica varchar(50),
        turno varchar(50)
    );	
    
    create table Tratamientos(
		id_tratamiento int primary key auto_increment ,
        tratamiento varchar(50)

    );
    
   -- nueva base--
     create table area_tratamientos(
		area int primary key auto_increment ,
        tratamiento varchar(50)

    );
    
    
    
    
    create table menu_tratamientos(
		id_menu int primary key auto_increment not null,
        id_tratamiento int not null,
        menu_tratamientos varchar(50) not null,
        foreign key (id_tratamiento) references
        tratamientos(id_tratamiento)
        
    );
    -- nueva base--
    create table menu_tratamientos(
		contador int primary key auto_increment not null,
        area_tratamiento int not null,
        name_tratamiento varchar(50) not null,
        foreign key (area_tratamiento) references
        area_tratamientos(area)
        
    );
    select * from menu_tratamientos where area_tratamiento = 2
    insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (1,'Amalgamas por unidad (De un pozuelo)')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (1,'Amalgamas por unidad (Sencilla 1ra Clase)')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (1,'Amalgamas por unidad (Compuesta)')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (1,'Recinas y/o Ionomero (Foto Curables)')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (1,'Blanqueamiento por arcada')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (1,'Compomeros (Clase V o 1 SUP)')

	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (2,'Tratamiento de Conductos (Monoradicular C/5 RAD)')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (2,'Tratamiento de Pulpotomias (RX aparte)')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (2,'Tratamiento de Recubrimientos Pulpares (RX)')

	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (3,'Cementacion por unidad')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (3,'Repeticion de Impresion con Alginato')
	insert into menu_tratamientos (id_tratamiento,menu_tratamientos) values (3,'Repeticion de Impresion Definitiva(Silicon')



   
	insert into area_tratamientos (area,tratamiento) values(1,'Operatoria Dental')
	insert into area_tratamientos (area,tratamiento) values(2,'Endodoncia')
	insert into area_tratamientos (area,tratamiento) values(3,'Otros')
    
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (1,'Amalgamas por unidad (De un pozuelo)')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (1,'Amalgamas por unidad (Sencilla 1ra Clase)')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (1,'Amalgamas por unidad (Compuesta)')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (1,'Recinas y/o Ionomero (Foto Curables)')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (1,'Blanqueamiento por arcada')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (1,'Compomeros (Clase V o 1 SUP)')

	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (2,'Tratamiento de Conductos (Monoradicular C/5 RAD)')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (2,'Tratamiento de Pulpotomias (RX aparte)')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (2,'Tratamiento de Recubrimientos Pulpares (RX)')

	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (3,'Cementacion por unidad')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (3,'Repeticion de Impresion con Alginato')
	insert into menu_tratamientos (area_tratamiento,name_tratamiento) values (3,'Repeticion de Impresion Definitiva(Silicon')

    
    select * from tratamientos
    create table alumnos(
		matricula int not null,
        nombre varchar(50) not null,
        apellido_paterno varchar(50) not null,
        apellido_materno varchar(50) not null,
        id_tratamiento int not null,
        fecha date not null,
        comentarios varchar(300)
        
        
        
    );
    select * from alumnos
    create table Bitacora_Recibos(
		folio int not null,
        alumno int not null,
        tratamiento int not null,
        cantidad int not null,
        fecha date not null,
        comentario varchar(100),
        sexo int not null,
        clinica int not null
    );
    select * from Bitacora_Recibos
    create table bitacora(
		folio int not null,
        matricula int not null,
		categoria varchar(50) not null,
        tratamiento varchar(50) not null,
        cantidad varchar(50) not null,
        alumno varchar (50) not null,
        fecha date not null,
        clinica varchar(50) not null,
        comentarios varchar(100) not null
    );
    
    
    select folio,matricula,alumno,tratamiento,comentarios FROM bitacora
    select folio,alumno,tratamiento,comentario FROM Bitacora_Recibos
    
    select * from bitacora	
    select * from usuarios
    select matricula,nombre,apellido_paterno,apellido_materno,id_tratamiento,fecha,comentarios FROM alumnos
    select * from encargada_clinica
    select * from usuarios
select id_empleado,nombre,apellido_paterno,apellido_materno,correo FROM Maestro
select * from encargada_clinica
insert into usuarios values(5493,3,'jordykan','1234')
select * from usuarios where usuario = "Pres" and contraseÃ±a="Can" and tipo=2
insert into usuarios values(3483,2,'jordy','1234');

select * from usuario
