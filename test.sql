
insert into departamentos (ID_dto, nombre_dto, NSS_director) values (1, 'Legal', null);
insert into departamentos (ID_dto, nombre_dto, NSS_director) values (2, 'Research and Development', null);
insert into departamentos (ID_dto, nombre_dto, NSS_director) values (3, 'Services', null);
insert into departamentos (ID_dto, nombre_dto, NSS_director) values (4, 'Training', null);

select * from departamentos;

insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('323-53-4150', 'Stéphanie', 'Libri', false, 4);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('380-88-0188', 'Tán', 'Crowder', true, 1);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('126-99-1355', 'Maëlla', 'Jeacocke', false, 2);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('812-04-3471', 'Océanne', 'Kollach', false, 3);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('878-59-9491', 'Gösta', 'Gunson', true, 1);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('769-14-1278', 'Maëlyss', 'Tebbut', true, 3);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('798-57-6227', 'Yénora', 'Fronsek', true, 2);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('625-10-7240', 'Eliès', 'Jersch', true, 3);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('204-01-4181', 'Pénélope', 'Harrop', true, 3);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('509-67-6610', 'Pénélope', 'Lillee', false, 1);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('586-12-2718', 'Ruò', 'Lebond', false, 3);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('105-31-2897', 'Françoise', 'Quigley', false, 1);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('859-43-6041', 'Gösta', 'Bram', false, 3);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('263-84-5812', 'Lài', 'Skuse', false, 4);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('520-94-2667', 'Kallisté', 'Orleton', false, 2);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('462-51-9048', 'Camélia', 'Testro', true, 4);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('505-60-4565', 'Mylène', 'Childrens', false, 2);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('353-64-3323', 'Dà', 'Rubinow', true, 4);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('444-88-5183', 'Cléopatre', 'Depke', false, 2);
insert into elfos (NSS_elfo, nombre_elfo, apellido_elfo, tipo_contrato, ID_dto) values ('507-30-4250', 'Dorothée', 'Piccop', false, 3);


select * from elfos;

insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Tammy', 'Isoldi', '21° 42′ N, 71° 17′ W', '2016-06-14', '126-99-1355');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Prissie', 'Adaway', '84° 23′ N, 71° 12′ W', '2014-09-02', '812-04-3471');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Agnesse', 'Maps', '27° 33′ N, 71° 52′ W', '2016-12-11', '798-57-6227');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Inez', 'Odeson', '43° 23′ N, 43° 12′ W', '2015-07-19', '204-01-4181');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Corabella', 'Askham', '64° 43′ N, 72° 12′ W', '2015-02-28', '509-67-6610');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Ferrell', 'Liggett', '64° 41′ N, 82° 22′ W', '2014-05-02', '105-31-2897');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Culver', 'Gear', '43° 23′ N, 43° 12′ W', '2020-07-30', '263-84-5812');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Elka', 'Gillow', '14° 23′ N, 72° 12′ W', '2017-10-04', '462-51-9048');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Aimee', 'Stenhouse', '39° 17′ N, 76° 36′ W', '2014-12-24', '353-64-3323');
insert into niños (nombre_niño, apellido_niño, coordenadas_niño, fecha_nacimiento, NSS_elfo) values ('Reese', 'Alliott', '39° 17′ N, 76° 36′ W', '2013-04-03', '507-30-4250');

select * from niños;

insert into parentescos (nombre_niño1, apellido_niño1, coordenadas_niño1, nombre_niño2, apellido_niño2, coordenadas_niño2, tipo_hermandad) values ('Tammy', 'Isoldi', '21° 42′ N, 71° 17′ W', 'Prissie', 'Adaway', '84° 23′ N, 71° 12′ W', true);
insert into parentescos (nombre_niño1, apellido_niño1, coordenadas_niño1, nombre_niño2, apellido_niño2, coordenadas_niño2, tipo_hermandad) values ('Agnesse', 'Maps', '27° 33′ N, 71° 52′ W', 'Inez', 'Odeson', '43° 23′ N, 43° 12′ W', false);
insert into parentescos (nombre_niño1, apellido_niño1, coordenadas_niño1, nombre_niño2, apellido_niño2, coordenadas_niño2, tipo_hermandad) values ('Corabella', 'Askham', '64° 43′ N, 72° 12′ W', 'Ferrell', 'Liggett', '64° 41′ N, 82° 22′ W', true);
insert into parentescos (nombre_niño1, apellido_niño1, coordenadas_niño1, nombre_niño2, apellido_niño2, coordenadas_niño2, tipo_hermandad) values ('Culver', 'Gear', '43° 23′ N, 43° 12′ W', 'Elka', 'Gillow', '14° 23′ N, 72° 12′ W', true);
delete from parentescos where nombre_niño1 = 'Culver';
-- Introducimos un nombre sin orden alfabético para comporbar el trigger orde_parentesco
insert into parentescos (nombre_niño1, apellido_niño1, coordenadas_niño1, nombre_niño2, apellido_niño2, coordenadas_niño2, tipo_hermandad) values ('Elka', 'Gillow', '14° 23′ N, 72° 12′ W', 'Culver', 'Gear', '43° 23′ N, 43° 12′ W', true);

select * from parentescos;

insert into mascotas (nombre_niño, apellido_niño, coordenadas_niño, nombre_mascota, especie, año_nacimiento) values ('Tammy', 'Isoldi', '21° 42′ N, 71° 17′ W', 'Cal', 'Anhinga rufa', '2018-08-30');
insert into mascotas (nombre_niño, apellido_niño, coordenadas_niño, nombre_mascota, especie, año_nacimiento) values ('Corabella', 'Askham', '64° 43′ N, 72° 12′ W', 'Kelsy', 'Nasua nasua', '2022-09-22');
insert into mascotas (nombre_niño, apellido_niño, coordenadas_niño, nombre_mascota, especie, año_nacimiento) values ('Culver', 'Gear', '43° 23′ N, 43° 12′ W', 'Shantee', 'unavailable', null);

select * from mascotas;

insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('0615-0532', 'Andalax', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 24, 0, 41);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('20276-165', 'Andalax', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 2, 1, 37);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('64679-937', 'Zoolab', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 25, 15, 61);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('50790-200', 'Overhold', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 11, 9, 63);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('36987-1600', 'Opela', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 6, 12, 76);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('64942-1112', 'Redhold', 'Aliquam sit amet diam in magna bibendum imperdiet.', 3, 0, 39);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('47781-206', 'Ronstring', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 37, 3, 53);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('65342-1379', 'Tresom', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 16, 10, 40);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('42023-170', 'Duobam', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.', 34, 7, 21);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('76484-948', 'Temp', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 3, 10, 76);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('67544-373', 'Asoka', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 39, 3, 21);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('59148-021', 'Flowdesk', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 18, 8, 68);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('64942-1053', 'Cardify', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 32, 3, 90);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('55154-6922', 'Prodder', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 12, 12, 52);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('63029-811', 'Voltsillam', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 9, 0, 20);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('68405-014', 'Tin', 'Maecenas pulvinar lobortis est.', 29, 2, 29);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('65601-776', 'Latlux', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 8, 8, 20);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('11716-0103', 'Rank', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 38, 10, 80);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('17772-102', 'Solarbreeze', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 4, 7, 15);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('37205-336', 'Holdlamis', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 14, 10, 17);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('0519-1344', 'Regrant', 'Proin eu mi.', 5, 16, 78);
insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('67046-139', 'Vagram', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 39, 15, 51);

-- Insertamos un juguete que tenga unos límites de edad incongruentes (el mímino es mayor que el máximo), para que salte la restricción check_edad_para_juguete
-- insert into juguetes (EAN, nombre_juguete, descripcion_juguete, duracion, edad_min, edad_max) values ('61958-1101', 'Trippledex', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 40, 14, 6);

select * from juguetes;

-- Los niños piden regalos (muchos dan error porque el niño no tiene la edad adecuada)
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Tammy', 'Isoldi', '21° 42′ N, 71° 17′ W', '0615-0532');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Tammy', 'Isoldi', '21° 42′ N, 71° 17′ W', '36987-1600');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Prissie', 'Adaway', '84° 23′ N, 71° 12′ W', '37205-336');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Prissie', 'Adaway', '84° 23′ N, 71° 12′ W', '63029-811');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Agnesse', 'Maps', '27° 33′ N, 71° 52′ W', '0615-0532');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Inez', 'Odeson', '43° 23′ N, 43° 12′ W', '36987-1600');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Inez', 'Odeson', '43° 23′ N, 43° 12′ W', '37205-336');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Corabella', 'Askham', '64° 43′ N, 72° 12′ W', '36987-1600');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Corabella', 'Askham', '64° 43′ N, 72° 12′ W', '37205-336');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Ferrell', 'Liggett', '64° 41′ N, 82° 22′ W', '67046-139');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Ferrell', 'Liggett', '64° 41′ N, 82° 22′ W', '17772-102');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Culver', 'Gear', '43° 23′ N, 43° 12′ W', '67046-139');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Culver', 'Gear', '43° 23′ N, 43° 12′ W', '17772-102');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Elka', 'Gillow', '14° 23′ N, 72° 12′ W', '63029-811');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Elka', 'Gillow', '14° 23′ N, 72° 12′ W', '36987-1600');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Aimee', 'Stenhouse', '39° 17′ N, 76° 36′ W', '59148-021');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Aimee', 'Stenhouse', '39° 17′ N, 76° 36′ W', '42023-170');

insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Reese', 'Alliott', '39° 17′ N, 76° 36′ W', '47781-206');
insert into pedidos (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Reese', 'Alliott', '39° 17′ N, 76° 36′ W', '36987-1600');

select * from pedidos
group by nombre_niño;

insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Agnesse', 'Maps', '27° 33′ N, 71° 52′ W', '0615-0532');
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Aimee', 'Stenhouse', '39° 17′ N, 76° 36′ W', '42023-170');
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Elka', 'Gillow', '14° 23′ N, 72° 12′ W', '63029-811');
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Ferrell', 'Liggett', '64° 41′ N, 82° 22′ W', '17772-102');
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Prissie', 'Adaway', '84° 23′ N, 71° 12′ W', '63029-811');
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Reese', 'Alliott', '39° 17′ N, 76° 36′ W', '47781-206');
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Tammy', 'Isoldi', '21° 42′ N, 71° 17′ W', '0615-0532');
-- Intentamos insertar un regalo entregado que NO ha sido pedido
insert into entregados (nombre_niño, apellido_niño, coordenadas_niño, EAN) values ('Agnesse', 'Maps', '27° 33′ N, 71° 52′ W', '42023-170');

select * from entregados;

-- Ejemplo consulta: ver todos los niños que ha pedido un regalo inadecuado para su edad. Mostramos el EAN y el nombre del niño
SELECT EAN, nombre_niño, (year(curdate()) - year(niños.fecha_nacimiento)) as edad, edad_min, edad_max
FROM juguetes JOIN niños on ((year(curdate()) - year(niños.fecha_nacimiento)) < juguetes.edad_min OR (year(curdate()) - year(niños.fecha_nacimiento)) > juguetes.edad_max);

select * from parciales;
select * from completos;

-- Por último asigno tareas a los elfos parciales 
insert into tareas(NSS_elfo, nombre_tarea) VALUES('105-31-2897', 'Fregar');
insert into tareas(NSS_elfo, nombre_tarea) VALUES('126-99-1355', 'Fregar');
insert into tareas(NSS_elfo, nombre_tarea) VALUES('126-99-1355', 'Tiro al arco');

-- Hago una inserción erronea (intento asignar una tarea a un elfo contratado a tiempo completo)
insert into tareas(NSS_elfo, nombre_tarea) VALUES('380-88-0188', 'Holgazanear');

select * from tareas;

