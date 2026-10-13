--**********************************************
--EJERCICIO modulo 3 empresa de Ventas- VERONICA TORRES
--**********************************************
create table Clientes(
id_Cliente int identity(1,1) primary key,
nombre varchar(100),
perfil_bio text,
fecha_registro date);
-- el tipo de dato se eligió en funcion a la necesidad descripta. Para Id_cliente numero entero ya que es el identificador único
--para nombre se usó varchar porque tiene limite de caracters, para perfil_bio se eligió text porque no sabemos cuanto podemos llegar a necesitar y
--para fecha_registro se utilizó date porque con guardar el día delregistro de cliente ya es suficiente, no necesitamos la hora.

create table Productos(
id_producto int identity(1,1) primary key,
descripción varchar(255),
precio decimal(10,2),
esta_activo bit default 1);
-- se eligio para id_producto int porque permite establecer en este dato la clave primaria.
--para descripcion varchar porque es un texto con limite de caracteres
--para precio se utiliza decimal porque es la regla estandar para dinero respetando los caracteres del requerimiento
--para esta_activo se elgio bit porque permite setear los datos en verdadero o falso.