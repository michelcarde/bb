CREATE TABLE facultad (
    id integer primary key auto_increment,
    nombre varchar(100),
    codigo varchar(4)
);

CREATE TABLE programa (
    id integer primary key auto_increment,
    nombre varchar(100),
    sigla varchar(4),
    codigo varchar(4),
    idfacultad integer,
    FOREIGN KEY (idfacultad) REFERENCES facultad(id)
);

CREATE TABLE asignatura (
    id integer primary key auto_increment,
    nombre varchar(100),
    creditos integer(1),
    codigo varchar(100),
    horas integer(2)
);

CREATE TABLE malla (
id integer primary key auto_increment,
FOREIGN KEY (idasignatura) REFERENCES asignatura(id),
FOREIGN KEY (idprograma) REFERENCES programa(id)
);

CREATE TABLE estudiante (
id integer primary key auto_increment,
nombres varchar(100),
documento integer(12),
codigo varchar(12),
jornada varchar(3),
fechamatricula date,
creditosaprobados integer(2)
);

CREATE TABLE asignaturamatriculadas (
id integer primary key auto_increment,
FOREIGN KEY (idestudiante) REFERENCES estudiante(id),
FOREIGN KEY (idasignaturamatriculada) REFERENCES asignatura(id)
);

CREATE TABLE tabulado (
id integer primary key auto_increment,
FOREIGN KEY (idestudiantetabulado) REFERENCES asignaturamatriculadas(idestudiante), 
FOREIGN KEY (idasignaturatabulada) REFERENCES asignaturamatriculadas(idasignaturamatriculada),
);