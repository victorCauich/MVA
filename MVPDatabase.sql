drop database if exists oda;
create database oda;
use oda;


create table objetoaprendizaje(
	id_objetoaprendizaje int not null primary key auto_increment,
    nombre_objetoaprendizaje varchar(100) not null,
    duracion_objetoaprendizaje time not null,
    objetivo_objetoaprendizaje varchar (500),
    descripcion_objetoaprendizaje varchar (500),
    enlace_objetoaprendizaje varchar (150)
);

insert into objetoaprendizaje (nombre_objetoaprendizaje,duracion_objetoaprendizaje, objetivo_objetoaprendizaje, descripcion_objetoaprendizaje, enlace_objetoaprendizaje) values
("Bases de Datos",
"00:01:55",
"Explicar un ejemplo de base de datos",
"Explica que es una base de datos",
"Https://itunes.apple.com/mx/podcast/base-de-datos/id1180668436?i=1000378351409&mt=2"),

("Modelo Entidad Relación",
"00:10:06",
"Representar una BD con el modelo entidad-relación",
"Representaremos una bd haciendo uso del modelo entidad relación",
"Https://itunes.apple.com/mx/podcast/modelo-entidad-relaci%c3%b3n/id1180668436?i=1000378352375&mt=2"),

("Método simplex",
"00:13:47",
"Entender en que consiste el método simplex",
"Explicación de la problemática que resuelve el método simplex",
"Htps://itunes.apple.com/mx/podcast/metodosimplex/id882794482?i1000330495052&mt=2"),

("Ordenamiento Heapsort",
"00:05:00",
"Entender en que consiste el Ordenamiento Heapsort",
"Explicación del problema que soluciona el algoritmo de ordenamiento heapsort",
"Https://itunes.apple.com/mx/podcast/ordenamiento-heapsort/id882794482?i=1000330494796&mt=2"),

("Definición de una Base de Datos",
"00:29:18",
"Realizar la construcción de las tablas de una BD en SQL server 2014",
"Se realizará la construcción de una base de datos ","Https://itunes.apple.com/mx/podcast/definici%c3%b3n-de-una-base-de-datos/id1180668436?i=100037835259"),

("SQL server 2014",
"00:07:55",
"Realizar una interfaz en SQL-Server-2014 para una Base de Datos",
"Presenta la interfaz de un sistema de administración y análisis de bases de datos",
"Https://itunes.apple.com/mx/podcast/sql-server-2014/id1180668436?i=1000378437978&mt=2"),

("Orígenes de la Investigación de Operaciones",
"00:02:14",
"Entender cuáles fueron los factores que dieron inicio a la Investigación de Operaciones",
"Explicación breve de los orígenes y áreas en donde es aplicada la IO",
"Https://itunes.apple.com/mx/podcast/origenes/id966583239?i=1000396558477&mt=2"),

("Factores de la Investigación de Operaciones",
"00:01:47",
"Entender cuáles fueron los orígenes que dieron paso a la evolución de la Investigación de Operaciones.",
"Describe la historia y áreas de la investigación de operaciones, exponiendo los factores que dieron origen a la IO",
"Https://itunes.apple.com/mx/podcast/factores/id966583239?i=1000396558480&mt=2"),

("Estilos de normas internacionales para citar referencias bibliográficas.",
"00:04:49",
"Explicar los estilos para citar referencias bibliográficas",
"Se explica la importancia de los diferentes estilos para citar referencias bibliográficas.",
"Https://itunes.apple.com/mx/podcast/estilos-normas-internacionales-para-citar-referencias/id882794482?i=1000418728083&mt=2"),

("Diseño, alcance y Tratamiento de Datos de la Investigación",
"00:07:18",
"Explicar las principales características de la investigación cuantitativa.",
"Se explica y define que es la muestra y sus tipos, procedimiento, selección y tamaño óptimo de esta.",
"Https://itunes.apple.com/mx/podcast/dise%c3%b1o-alcance-y-tratamiento-datos-la-investigaci%c3%b3n/id882794482?i=1000418727950&mt=2"),

("Método de mapeo y por índices.",
"00:04:18",
"Explicar los alcances de la investigación cuantitativa dentro del marco teórico.",
"Se explica y ejemplifica el tema de fundamentos y alcances de la investigación cuantitativa.",
"Https://itunes.apple.com/mx/podcast/m%c3%a9todo-de-mapeo-y-por-indices/id882794482?i=1000418732817&mt=2"),

("Enfoques y conceptos de la investigación científica",
"00:05:31",
"Explicar los fundamentos de la investigación científica.",
"Se define y narra los diferentes enfoques de la investigación científica.",
"Https://itunes.apple.com/mx/podcast/enfoques-y-conceptos-de-la-inv-cientifica/id882794482?i=1000418733014&mt=2"),

("Definición de modelos de simulación ",
"00:05:03",
"Entender los principales modelos de simulación.",
"Este objeto representa los modelos de simulación por medio de sus elementos.",
"Https://itunes.apple.com/mx/podcast/definici%c3%b3n-de-modelos-de-simulaci%c3%b3n/id882794482?i=1000418727593&mt=2"),

("Consultas",
"00:56:56",
"Implementar las Funciones básicas de SQL server 2014.",
"Las consultas pueden realizar diversas funciones, estas emplean un lenguaje llamado SQL",
"Https://itunes.apple.com/mx/podcast/consultas-parte-1/id1180668436?i=1000378352802&mt=2"),

("Relaciones",
"00:06:06",
"Crear tablas de relación usando SQL server 2014.",
"Haciendo uso del sistema de administración y análisis de bases de datos SQL server 2014 se realizará",
"Https://itunes.apple.com/mx/podcast/relaciones/id1180668436?i=1000378352590&mt=2"),

("Transacciones en una base de datos",
"00:01:54",
"conocer las transacciones en una base de datos.",
"conocer los estados, propiedades y fallas comunes de las transacciones.",
"https://itunes.apple.com/mx/podcast/transacciones-en-una-base-de-datos/id1180668436?i=1000395515415&mt=2"),

("Algoritmos",
"00:03:52",
"Entender que es un algoritmo",
"Se describe que es un algoritmo, cuáles son sus características y se expone un ejemplo.",
"Https://itunes.apple.com/mx/podcast/algoritmos/id882794482?i=1000395515751&mt=2"),

("Base de Datos: tercera y cuarta forma",
"00:02:55",
"Entender las tercera y cuarta forma normal.",
"Este video se enfoca en la tercera y cuarta formal normal.",
"Https://itunes.apple.com/mx/podcast/base-de-datos-tercera-y-cuarta-forma/id882794482?i=1000363607313&mt=2"),

("Buffers",
"00:01:53",
"Entender el funcionamiento del buffer de archivos.",
"Muestra al usuario una definición del buffer en relación a los archivos.",
"Https://itunes.apple.com/mx/podcast/buffers/id882794482?i=1000395516339&mt=2"),

("Clasificación de Archivos por su Tipo de Acceso",
"00:02:48",
"Explicar los diferentes tipos de acceso a los archivos.",
"Muestra al usuario la clasificación de los archivos según el tipo de acceso que pueden utilizar.",
"Https://itunes.apple.com/mx/podcast/clasificaci%c3%b3n-de-archivos-por-su-tipo-de-acceso/id882794482?i=1000395516143&mt=2"),

("Clasificación de los Textos",
"00:04:37",
"Explicar cada tipo de texto, así como sus características.",
"Muestra la clasificación de los diferentes tipos de textos.",
"Https://itunes.apple.com/mx/podcast/clasificaci%c3%b3n-de-los-textos/id882794482?i=1000393429909&mt=2"),

("Contadores",
"00:02:41",
"Aprender a crear un contador.",
"Explicación de que es un contador y materiales para crear uno.",
"Https://itunes.apple.com/mx/podcast/contadores/id882794482?i=1000393429298&mt=2"),

("Descuento por Volumen",
"00:06:15",
"Explicar el método de descuento por volumen.",
"Método de Descuento por Volumen",
"Https://itunes.apple.com/mx/podcast/descuento-por-volumen/id882794482?i=1000363429628&mt=2"),

("Estructura de Iteración",
"00:10:04",
"Definir los cuatro ciclos más usados para iterar.",
"Se explica la función de cada tipo de ciclo de iteración.",
"Https://itunes.apple.com/mx/podcast/estructura-de-iteracion/id882794482?i=1000393431984&mt=2"),

("Investigación de Operaciones",
"00:04:36",
"Explicar una introducción a la investigación de operaciones.",
"Introducción a la investigación de operaciones.",
"Https://itunes.apple.com/mx/podcast/investigaci%c3%b3n-de-operaciones/id882794482?i=1000352428218&mt=2"),

("Método Congruencial Mixto",
"00:07:24",
"Explicar el método congruencia mixto.",
"Este método es un generador congruencia lineal que genera una secuencia de números pseudoaleatorio",
"Https://itunes.apple.com/mx/podcast/m%c3%a9todo-congruencial-mixto/id882794482?i=1000368181702&mt=2");




create procedure proc_obtenerODA (in objetoAprendizaje varchar (500))
	select nombre_objetoaprendizaje, descripcion_objetoaprendizaje,enlace_objetoaprendizaje
	from objetoaprendizaje
	where nombre_objetoaprendizaje like concat('%',objetoAprendizaje,'%');

call proc_obtenerODA("base");

select * from objetoaprendizaje;