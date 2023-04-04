CREATE DATABASE certificaciones;

USE certificaciones;

CREATE TABLE admin(
    id_admin int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cedula varchar(11) UNIQUE KEY,
    apellido varchar(80),
    nombre varchar(80),
    pass varchar(50),
    foto varchar(10)
);

INSERT INTO
    admin
SET
    cedula = 'admin',
    apellido = 'admin',
    nombre = 'admin',
    pass = 'admin',
    foto = 'user.png';

CREATE TABLE informacion(
    id_informacion int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    institucion_nombre varchar(80),
    institucion_siglas varchar(20),
    institucion_ciudad varchar(50),
    institucion_rector_nombre varchar(80),
    institucion_rector_nivel_nombre varchar(80),
    institucion_rector_nivel_siglas varchar(20),
    pagina_nombre varchar(80),
    copyright longtext,
    ubicacion text
);

INSERT INTO
    informacion
SET
    institucion_nombre = '';

UPDATE
    informacion
SET
    institucion_nombre = 'Instituto Superior Tecnologico Sucua';

UPDATE
    informacion
SET
    institucion_siglas = 'ISTS';

UPDATE
    informacion
SET
    institucion_ciudad = 'Macas';

UPDATE
    informacion
SET
    institucion_rector_nombre = 'Maria Clara Mueses';

UPDATE
    informacion
SET
    institucion_rector_nivel_nombre = 'Magister';

UPDATE
    informacion
SET
    institucion_rector_nivel_siglas = 'Mgs';

UPDATE
    informacion
SET
    pagina_nombre = 'Educacion Continua';

UPDATE
    informacion
SET
    copyright = '
<p>&nbsp;</p><h3><strong>POL&Iacute;TICA DE PRIVACIDAD</strong></h3>
<p>&nbsp;</p><p>El presente Pol&iacute;tica de Privacidad establece los t&eacute;rminos en que la pagina de inscripci&oacute;n a cursos del <strong>INSTITUTO SUPERIOR TECNOL&Oacute;GICO SUCUA</strong> usa y protege la informaci&oacute;n que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compa&ntilde;&iacute;a est&aacute; comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de informaci&oacute;n personal con la cual usted pueda ser identificado, lo hacemos asegurando que s&oacute;lo se emplear&aacute; de acuerdo con los t&eacute;rminos de este documento. Sin embargo esta Pol&iacute;tica de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta p&aacute;gina para asegurarse que est&aacute; de acuerdo con dichos cambios.</p>
<p>&nbsp;</p><p><strong>Informaci&oacute;n que es recogida</strong></p>
<p>&nbsp;</p><p>Nuestro sitio web podr&aacute; recoger informaci&oacute;n personal por ejemplo: Nombre, informaci&oacute;n de contacto como su direcci&oacute;n de correo electr&oacute;nica e informaci&oacute;n demogr&aacute;fica. As&iacute; mismo cuando sea necesario podr&aacute; ser requerida informaci&oacute;n espec&iacute;fica para procesar alg&uacute;n pedido.</p>
<p>&nbsp;</p><p><strong>Uso de la informaci&oacute;n recogida</strong></p>
<p>&nbsp;</p><p>Nuestro sitio web emplea la informaci&oacute;n con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios y mejorar nuestros productos y servicios. Es posible que sean enviados correos electr&oacute;nicos peri&oacute;dicamente a trav&eacute;s de nuestro sitio con informaci&oacute;n sobre nuestros cursos, nuevos productos y otra informaci&oacute;n publicitaria que consideremos relevante para usted o que pueda brindarle alg&uacute;n beneficio, estos correos electr&oacute;nicos ser&aacute;n enviados a la direcci&oacute;n que usted proporcione y podr&aacute;n ser cancelados en cualquier momento.</p>
<p><strong>INSTITUTO SUPERIOR TECNOL&Oacute;GICO SUCUA</strong> est&aacute; altamente comprometido para cumplir con el compromiso de mantener su informaci&oacute;n segura. Usamos los sistemas m&aacute;s avanzados y los actualizamos constantemente para asegurarnos que no exista ning&uacute;n acceso no autorizado.</p>
<p>&nbsp;</p><p><strong>Cookies</strong></p>
<p>&nbsp;</p><p>Una cookie se refiere a un fichero que es enviado con la finalidad de solicitar permiso para almacenarse en su ordenador, al aceptar dicho fichero se crea y la cookie sirve entonces para tener informaci&oacute;n respecto al tr&aacute;fico web, y tambi&eacute;n facilita las futuras visitas a una web recurrente. Otra funci&oacute;n que tienen las cookies es que con ellas las web pueden reconocerte individualmente y por tanto brindarte el mejor servicio personalizado de su web.</p>
<p>Usted puede eliminar las cookies en cualquier momento desde su ordenador. Sin embargo las cookies ayudan a proporcionar un mejor servicio de los sitios web, est&aacute;s no dan acceso a informaci&oacute;n de su ordenador ni de usted, a menos de que usted as&iacute; lo quiera y la proporcione directamente. Usted puede aceptar o negar el uso de cookies, sin embargo la mayor&iacute;a de navegadores aceptan cookies autom&aacute;ticamente pues sirve para tener un mejor servicio web. Tambi&eacute;n usted puede cambiar la configuraci&oacute;n de su ordenador para declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de nuestros servicios.</p>
<p>&nbsp;</p><p><strong>Enlaces a Terceros</strong></p>
<p>&nbsp;</p><p>Este sitio web pudiera contener en laces a otros sitios que pudieran ser de su inter&eacute;s. Una vez que usted de clic en estos enlaces y abandone nuestra p&aacute;gina, ya no tenemos control sobre al sitio al que es redirigido y por lo tanto no somos responsables de los t&eacute;rminos o privacidad ni de la protecci&oacute;n de sus datos en esos otros sitios terceros. Dichos sitios est&aacute;n sujetos a sus propias pol&iacute;ticas de privacidad por lo cual es recomendable que los consulte para confirmar que usted est&aacute; de acuerdo con estas.</p>
<p>&nbsp;</p><p><strong>Control de su informaci&oacute;n personal</strong></p>
<p>&nbsp;</p><p>En cualquier momento usted puede restringir la recopilaci&oacute;n o el uso de la informaci&oacute;n personal que es proporcionada a nuestro sitio web. Cada vez que se le solicite rellenar un formulario, como el de suscripci&oacute;n como participante de un curso, puede aceptar o negar el registro de su informaci&oacute;n en nuestra base de datos. En caso de que haya aceptado el guardado de informaci&oacute;n es probable que le enviemos correos para proporcionarle informaci&oacute;n sobre su suscripci&oacute;n.</p>
<p>Esta instituci&oacute;n no vender&aacute;, ceder&aacute; ni distribuir&aacute; la informaci&oacute;n personal que es recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden judicial.</p>
<p>&nbsp;</p><p><strong>INSTITUTO SUPERIOR TECNOL&Oacute;GICO SUCUA</strong> Se reserva el derecho de cambiar los t&eacute;rminos de la presente Pol&iacute;tica de Privacidad en cualquier momento.</p>
<p>&nbsp;</p>
';

UPDATE
    informacion
SET
    ubicacion = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3986.1614976544975!2d-78.1683791!3d-2.4532747999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91cdf6f099827ed5%3A0x8b8278b0770ed1af!2sITSS%20Instituto%20Superior%20Sucua!5e0!3m2!1ses!2sec!4v1567285467082!5m2!1ses!2sec" frameborder="0" style="border:0;" allowfullscreen=""></iframe>';

CREATE TABLE contacto(
    id_contacto int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre varchar(80),
    url varchar(100),
    logo varchar(10)
);

CREATE TABLE instituciones(
    id_instituciones int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre varchar(150),
    siglas varchar(50),
    logo varchar(10)
);

CREATE TABLE area(
    id_area int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    codigo varchar(2),
    descripcion text
);

CREATE TABLE especificacion(
    id_especificacion int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    codigo varchar(2),
    descripcion text,
    id_area int,
    FOREIGN KEY (id_area) REFERENCES area(id_area)
);

CREATE TABLE alineacion(
    id_alineacion int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text
);

CREATE TABLE tipo_participante(
    id_tipo_participante int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text
);

CREATE TABLE modalidad(
    id_modalidad int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text
);

CREATE TABLE duracion(
    id_duracion int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text
);

CREATE TABLE profesor(
    id_profesor int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cedula varchar(11) UNIQUE KEY,
    apellido varchar(80),
    nombre varchar(80),
    indice_dactilar varchar(50),
    pass varchar(50),
    foto varchar(10),
    firma varchar(10)
);

/*TABLA CENTRAL "CURSO" / INICIO*/
CREATE TABLE modelo_curso(
    id_modelo_curso int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre varchar(50),
    hora_teorica int,
    hora_practica int,
    id_area int,
    id_alineacion int,
    id_tipo_participante int,
    id_modalidad int,
    id_duracion int,
    id_profesor int,
    FOREIGN KEY (id_area) REFERENCES area(id_area),
    FOREIGN KEY (id_alineacion) REFERENCES alineacion(id_alineacion),
    FOREIGN KEY (id_tipo_participante) REFERENCES tipo_participante(id_tipo_participante),
    FOREIGN KEY (id_modalidad) REFERENCES modalidad(id_modalidad),
    FOREIGN KEY (id_duracion) REFERENCES duracion(id_duracion),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor)
);

CREATE TABLE curso(
    id_curso int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre varchar(50),
    fecha_inicio varchar(50),
    fecha_fin varchar(50),
    numero_cupos int,
    foto varchar(10),
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE participante(
    id_participante int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cedula varchar(11) UNIQUE KEY,
    apellido varchar(80),
    nombre varchar(80),
    sexo varchar(10),
    nivel_instruccion varchar(10),
    direccion varchar(100),
    email varchar(50),
    celular varchar(15),
    telefono varchar(15),
    descripcion text,
    empresa_nombre varchar(80),
    empresa_actividad varchar(80),
    empresa_direccion varchar(100),
    empresa_telefono varchar(15)
);

CREATE TABLE matricula(
    id_matricula int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    estado varchar(15),
    id_participante int,
    id_curso int,
    certificado_nombre_participante varchar(100),
    certificado_cedula_participante varchar(15),
    certificado_nombre_curso varchar(80),
    certificado_nombre_institucion varchar(50),
    certificado_ciudad_institucion varchar(50),
    certificado_rector_institucion varchar(100),
    certificado_cordinador_institucion varchar(100),
    certificado_fecha_curso varchar(50),
    certificado_horas_curso int,
    certificado_lugar_fecha_emision varchar(100),
    certificado_codigo varchar(100),
    FOREIGN KEY (id_participante) REFERENCES participante(id_participante),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE tipo_certificado(
    id_tipo_certificado int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre varchar(80)
);

CREATE TABLE certificado(
    id_certificado int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cedula varchar(11),
    apellido varchar(80),
    nombre varchar(80),
    codigo varchar(50),
    foto varchar(10),
    id_tipo_certificado int,
    id_participante int,
    FOREIGN KEY (id_tipo_certificado) REFERENCES tipo_certificado(id_tipo_certificado),
    FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);

/*TABLA CENTRAL "CURSO" / FIN*/
/*DEPENDIENTES DE CURSO / INICIO*/
CREATE TABLE requisito(
    id_requisito int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE objetivo(
    id_objetivo int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE contenido_primario(
    id_contenido_primario int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE contenido_secundario(
    id_contenido_secundario int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE contenido_transversal(
    id_contenido_transversal int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE estrategia(
    id_estrategia int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE evaluacion_diagnostica(
    id_evaluacion_diagnostica int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tecnica varchar(100),
    instrumento varchar(100),
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE evaluacion_formativa(
    id_evaluacion_formativa int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tecnica varchar(100),
    instrumento varchar(100),
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE evaluacion_final(
    id_evaluacion_final int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tecnica varchar(100),
    instrumento varchar(100),
    descripcion text,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE bibliografia(
    id_bibliografia int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion longtext,
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

CREATE TABLE entorno_aprendizaje(
    id_entorno_aprendizaje int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    instalaciones varchar(100),
    teorica varchar(100),
    practica varchar(100),
    id_modelo_curso int,
    FOREIGN KEY (id_modelo_curso) REFERENCES modelo_curso(id_modelo_curso)
);

/*DEPENDIENTES DE CURSO / FIN*/
/*INDEPENDIENTES / INICIO*/
CREATE TABLE contenido_historial(
    id_contenido_historial int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion text
);

/*INDEPENDIENTES / FIN*/