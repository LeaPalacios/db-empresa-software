
USE DB_EMPRESA_SOFTWARE;
INSERT INTO PROFESION (NOMBRE_PROFESION)
VALUES
('Administrador de Base de Datos'),
('Analista de Datos'),
('Desarrollador Backend'),
('Desarrollador Frontend'),
('Arquitecto de Software'),
('Ingeniero DevOps'),
('Analista QA'),
('Especialista en Ciberseguridad'),
('Administrador de Sistemas'),
('Gestor de Proyectos'),
('Ingeniero de Datos'),
('Cientifico de Datos'),
('Especialista ETL'),
('Administrador SQL Server'),
('Administrador Oracle'),
('Desarrollador C#'),
('Desarrollador Java'),
('Desarrollador Python'),
('Desarrollador PHP'),
('Ingeniero Cloud'),
('Especialista Power BI'),
('Analista Funcional'),
('Scrum Master'),
('Consultor Tecnologico'),
('Especialista Redes');


INSERT INTO ESTADO_PROYECTO (NOMBRE_ESTADO)
VALUES

('Planificado'),
('En Desarrollo'),
('En Pruebas'),
('Finalizado'),
('Suspendido'),
('Cancelado'),
('Pendiente de Aprobacion'),
('Analisis Inicial'),
('Diseño de Base de Datos'),
('Migracion de Datos'),
('Capacitacion Usuario'),
('Mantenimiento'),
('Cerrado');

INSERT INTO DEPARTAMENTO (NOMBRE_DEPARTAMENTO)
VALUES

('Base de Datos'),
('Desarrollo de Software'),
('Analisis y Diseño'),
('Calidad de Software'),
('Infraestructura'),
('Seguridad Informatica'),
('Gestion de Proyectos'),
('Inteligencia de Negocios'),
('Ingenieria de Datos'),
('Investigacion y Desarrollo'),
('Soporte Tecnico'),
('Consultoria'),
('Administracion');


INSERT INTO EMPRESA_CLIENTE
(
CIF_EMPRESA,
NOMBRE_EMPRESA,
DIRECCION,
TELEFONO,
CODIGO_INTERNO
)
VALUES

(100001,'Grupo Financiero Central','San Salvador','2222-1001',101),
(100002,'Soluciones Comerciales SV','Santa Tecla','2222-1002',102),
(100003,'Clinica Vida Integral','San Salvador','2222-1003',103),
(100004,'Distribuidora Nacional','Soyapango','2222-1004',104),
(100005,'Universidad Tecnologica Moderna','San Salvador','2222-1005',105),
(100006,'Logistica Internacional SV','La Libertad','2222-1006',106),
(100007,'Constructora Horizonte','San Salvador','2222-1007',107),
(100008,'Servicios Empresariales Globales','Antiguo Cuscatlan','2222-1008',108),
(100009,'Comercializadora Pacifico','San Miguel','2222-1009',109),
(100010,'Industria Alimentaria Nacional','Santa Ana','2222-1010',110),
(100011,'Tecnologias Avanzadas SA','San Salvador','2222-1011',111),
(100012,'Farmaceutica Moderna','Santa Tecla','2222-1012',112),
(100013,'Banco Regional SV','Antiguo Cuscatlan','2222-1013',113),
(100014,'Importadora Centroamericana','San Salvador','2222-1014',114),
(100015,'Servicios Medicos Especializados','Santa Ana','2222-1015',115),
(100016,'Grupo Educativo Internacional','San Miguel','2222-1016',116),
(100017,'Agroindustria Nacional','La Libertad','2222-1017',117),
(100018,'Comercial La Economia','Soyapango','2222-1018',118),
(100019,'Transportes Express SV','San Salvador','2222-1019',119),
(100020,'Hotelera Internacional','La Libertad','2222-1020',120),
(100021,'Energia Renovable SV','Santa Tecla','2222-1021',121),
(100022,'Manufacturas del Pacifico','Sonsonate','2222-1022',122),
(100023,'Seguros Centroamericanos','San Salvador','2222-1023',123),
(100024,'Consultores Empresariales','Antiguo Cuscatlan','2222-1024',124),
(100025,'Retail Digital SV','San Salvador','2222-1025',125);





INSERT INTO TARIFA
(
ID_PROFESION,
MONTO_HORA
)
VALUES

(1,35.00),
(2,28.00),
(3,30.00),
(4,25.00),
(5,45.00),
(6,40.00),
(7,22.00),
(8,50.00),
(9,32.00),
(10,38.00),
(11,42.00),
(12,55.00),
(13,38.00),
(14,45.00),
(15,48.00),
(16,32.00),
(17,35.00),
(18,37.00),
(19,29.00),
(20,50.00),
(21,36.00),
(22,33.00),
(23,40.00),
(24,60.00),
(25,34.00);


INSERT INTO EMPLEADO
(
ID_PROFESION,
ID_DEPARTAMENTO,
DNI_EMPLEADO,
NOMBRE_EMPLEADO,
APELLIDO_EMPLEADO
)
VALUES
(1,1,10000101,'Carlos','Ramirez'),
(2,11,10000102,'Maria','Hernandez'),
(3,2,10000103,'Jose','Martinez'),
(4,2,10000104,'Ana','Lopez'),
(5,3,10000105,'Luis','Garcia'),
(6,5,10000106,'Pedro','Castillo'),
(7,4,10000107,'Sofia','Morales'),
(8,6,10000108,'Daniel','Flores'),
(9,5,10000109,'Laura','Torres'),
(10,7,10000110,'Miguel','Rivas'),

(11,10,10000111,'Andrea','Mendoza'),
(12,11,10000112,'Ricardo','Cruz'),
(13,12,10000113,'Patricia','Vasquez'),
(14,1,10000114,'Fernando','Gomez'),
(15,5,10000115,'Oscar','Rivera'),
(16,2,10000116,'Javier','Sanchez'),
(17,2,10000117,'Karen','Martinez'),
(18,2,10000118,'Roberto','Diaz'),
(19,2,10000119,'Claudia','Alvarado'),
(20,5,10000120,'Eduardo','Pineda'),

(21,10,10000121,'Natalia','Herrera'),
(22,3,10000122,'Samuel','Molina'),
(23,7,10000123,'Monica','Reyes'),
(24,6,10000124,'Esteban','Ortega'),
(25,5,10000125,'Gabriela','Castro'),

(1,1,10000126,'Alejandro','Navarro'),
(2,11,10000127,'Valeria','Campos'),
(3,2,10000128,'Martin','Santos'),
(4,2,10000129,'Isabel','Fuentes'),
(5,3,10000130,'Victor','Mejia'),

(6,5,10000131,'Cristian','Ponce'),
(7,4,10000132,'Rosa','Mendez'),
(8,6,10000133,'Hector','Salazar'),
(9,5,10000134,'Elena','Reyes'),
(10,7,10000135,'Diego','Ruiz'),

(11,10,10000136,'Beatriz','Serrano'),
(12,11,10000137,'Manuel','Soto'),
(13,12,10000138,'Paola','Romero'),
(14,1,10000139,'Andres','Velasquez'),
(15,5,10000140,'Kevin','Mendez'),

(16,2,10000141,'Sara','Cortez'),
(17,2,10000142,'Julio','Espinoza'),
(18,2,10000143,'Veronica','Nunez'),
(19,2,10000144,'Marco','Aguilar'),
(20,5,10000145,'Melissa','Portillo'),
(21,10,10000146,'Ruben','Lopez'),
(22,3,10000147,'Diana','Zelaya'),
(23,7,10000148,'Pablo','Henriquez'),
(24,6,10000149,'Teresa','Figueroa'),
(25,5,10000150,'Adrian','Bonilla');


INSERT INTO PROYECTO
(
ID_EMPRESA_CLIENTE,
NOMBRE_PROYECTO,
FECHA_INICIO,
ID_ESTADO
)
VALUES
(1,'Sistema Bancario SQL Server','2025-01-10',2),
(2,'Sistema Inventario Empresarial','2025-02-15',3),
(3,'Base Datos Clinica','2025-03-01',2),
(4,'ERP Distribucion','2025-03-20',1),
(5,'Sistema Academico','2025-04-05',4),
(6,'Control Logistico','2025-04-15',2),
(7,'Gestion Construccion','2025-05-01',3),
(8,'CRM Empresarial','2025-05-10',2),
(9,'Sistema Ventas Online','2025-05-20',4),
(10,'Gestion Hotelera','2025-06-01',2),

(11,'Migracion Base Datos','2025-06-10',5),
(12,'Sistema Farmacia','2025-06-15',2),
(13,'Plataforma Financiera','2025-07-01',3),
(14,'Control Importaciones','2025-07-05',2),
(15,'Sistema Hospitalario','2025-07-15',1),
(16,'Portal Educativo','2025-08-01',2),
(17,'Gestion Agroindustrial','2025-08-10',3),
(18,'Comercio Electronico','2025-08-20',2),
(19,'Transporte Inteligente','2025-09-01',4),
(20,'Reservas Hotel','2025-09-15',2),

(21,'Sistema Energia','2025-09-20',3),
(22,'Manufactura ERP','2025-10-01',2),
(23,'Sistema Seguros','2025-10-10',4),
(24,'Consultoria Datos','2025-10-15',2),
(25,'Plataforma Retail','2025-11-01',1),

(1,'Optimización Consultas SQL','2025-11-10',4),
(2,'Data Warehouse Comercial','2025-11-15',2),
(3,'Dashboard BI Clinico','2025-12-01',3),
(4,'Migracion Oracle SQL','2025-12-10',2),
(5,'Base Datos Academica','2025-12-15',4),

(6,'ETL Logistica','2026-01-05',2),
(7,'Reportes Construccion','2026-01-10',3),
(8,'API CRM','2026-01-20',2),
(9,'Marketplace Online','2026-02-01',4),
(10,'Sistema Reservas','2026-02-15',2),

(11,'Auditoria Datos','2026-03-01',3),
(12,'Control Medicamentos','2026-03-10',2),
(13,'Analitica Financiera','2026-03-20',4),
(14,'Gestion Proveedores','2026-04-01',2),
(15,'Base Datos Pacientes','2026-04-15',1);


INSERT INTO DETALLE_PROYECTO
(
ID_EMPLEADO,
ID_PROYECTO,
ID_TARIFA,
HORAS_TRABAJADAS,
COSTO_HORA,
FECHA_VIGENTE
)
VALUES
-- PROYECTO 1
(1,1,1,120,35.00,'2025-01-31'),
(2,1,2,80,28.00,'2025-01-31'),
(26,1,1,60,35.00,'2025-01-31'),

-- PROYECTO 2
(3,2,3,150,30.00,'2025-02-28'),
(4,2,4,90,25.00,'2025-02-28'),
(16,2,16,70,32.00,'2025-02-28'),

-- PROYECTO 3
(5,3,5,110,45.00,'2025-03-31'),
(11,3,11,80,42.00,'2025-03-31'),

-- PROYECTO 4
(6,4,6,100,40.00,'2025-03-31'),
(15,4,15,75,48.00,'2025-03-31'),

-- PROYECTO 5
(7,5,7,75,22.00,'2025-04-30'),
(23,5,23,60,40.00,'2025-04-30'),

-- PROYECTO 6
(8,6,8,140,50.00,'2025-04-30'),
(33,6,8,85,50.00,'2025-04-30'),

-- PROYECTO 7
(9,7,9,95,32.00,'2025-05-31'),
(34,7,9,100,32.00,'2025-05-31'),

-- PROYECTO 8
(10,8,10,130,38.00,'2025-05-31'),
(35,8,10,90,38.00,'2025-05-31'),

-- PROYECTO 9
(12,9,12,100,55.00,'2025-06-30'),
(18,9,18,120,37.00,'2025-06-30'),

-- PROYECTO 10
(13,10,13,90,38.00,'2025-06-30'),
(20,10,20,140,50.00,'2025-06-30'),

-- PROYECTO 11
(14,11,14,160,45.00,'2025-07-31'),
(27,11,2,80,28.00,'2025-07-31'),

-- PROYECTO 12
(17,12,17,150,35.00,'2025-07-31'),
(28,12,3,100,30.00,'2025-07-31'),

-- PROYECTO 13
(19,13,19,95,29.00,'2025-08-31'),
(30,13,5,120,45.00,'2025-08-31'),

-- PROYECTO 14
(21,14,21,130,36.00,'2025-08-31'),
(31,14,6,90,40.00,'2025-08-31'),

-- PROYECTO 15
(22,15,22,150,33.00,'2025-09-30'),
(32,15,7,70,22.00,'2025-09-30'),

-- PROYECTO 16
(24,16,24,110,60.00,'2025-09-30'),
(36,16,11,100,42.00,'2025-09-30'),

-- PROYECTO 17
(25,17,25,95,34.00,'2025-10-31'),
(37,17,12,120,55.00,'2025-10-31'),

-- PROYECTO 18
(38,18,13,140,38.00,'2025-10-31'),
(39,18,14,100,45.00,'2025-10-31'),

-- PROYECTO 19
(40,19,15,90,48.00,'2025-11-30'),
(41,19,16,130,32.00,'2025-11-30'),

-- PROYECTO 20
(42,20,17,160,35.00,'2025-11-30'),
(43,20,18,80,37.00,'2025-11-30'),

--ADICIONAL
(44,21,19,120,29.00,'2025-12-31'),
(45,22,20,150,50.00,'2025-12-31'),
(46,23,21,90,36.00,'2026-01-31'),
(47,24,22,110,33.00,'2026-01-31'),
(48,25,23,140,40.00,'2026-02-28'),
(49,26,24,100,60.00,'2026-02-28'),
(50,27,25,130,34.00,'2026-03-31');