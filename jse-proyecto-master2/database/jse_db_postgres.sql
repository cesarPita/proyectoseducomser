----------------------------------
-- Base de datos para postgresql
----------------------------------
-- CREATE DATABASE jseproyecto;
----------------------------------
-- Creacion de tablas
----------------------------------
CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR(20) NOT NULL,
    descripcion VARCHAR(40) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp 
);


CREATE TABLE producto(
    id SERIAL PRIMARY KEY,
    id_categoria INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    unidad_medida VARCHAR(50) NULL,
    precio numeric NOT NULL,
    stock_actual INT NULL,
    stock_minimo INT NULL,
    fecha_vencimiento DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);

ALTER TABLE producto ADD FOREIGN KEY (id_categoria) REFERENCES categoria(id);


----------------------------------
-- Carga de los datos de prueba
----------------------------------

INSERT INTO categoria(categoria, descripcion) VALUES('GOLOSINAS','GALLETAS,CHOCOLATES,CARAMELOS,TOFFES');
INSERT INTO categoria(categoria, descripcion) VALUES('EMBUTIDOS','JAMONADAS,JAMONES,SALCHICHAS,CHORIZOS');
INSERT INTO categoria(categoria, descripcion) VALUES('HIGIENE PERSONAL','JABONES,P.DENTALES,SHAMPOOS,P.H.');
INSERT INTO categoria(categoria, descripcion) VALUES('LACTEOS','LECHES,YOGURES,QUESOS,MANTEQUILLAS');
INSERT INTO categoria(categoria, descripcion) VALUES('LICORES Y GASEOSAS','VINOS,WHISKIES,BEBIDAS GASIFICADAS');
INSERT INTO categoria(categoria, descripcion) VALUES('LIMPIEZA','DETERGENTES,DESINFECTANTES,ACCESORIOS');
INSERT INTO categoria(categoria, descripcion) VALUES('PANIFICADOS','PANES, PASTELES');

INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CARAMELOS BASTON VIENA ARCOR','PAQUETE 454 GR',1.50,200,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CARAMELOS SURTIDO DE FRUTAS','PAQUETE 450 GR',1.00,300,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CARAMELOS FRUTAS SURTIDA ARCOR','PAQUETE 520 GR',1.50,250,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CARAMELOS FRUTAS MASTICABLES','PAQUETE 454 GR',1.30,250,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHUPETES LOLY AMBROSOLI','KILOGRAMO',1.20,150,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'FRUNA SURTIDA DONOFRIO','PAQUETE X 24 UNIDADES',1.80,500,100,now() + ((random() * 30 + 1) * interval '1 day'));    
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE CUA CUA FIELD','PAQUETE X 6 UNIDADES',1.60,500,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'MELLOWS FAMILIAR FIELD','PAQUETE 454 GR',2.10,100,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'WAFER CHOCOLATE FIELD','PAQUETE X 9 UNIDADES',0.70,900,100,now() + ((random() * 30 + 1) * interval '1 day')); 
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE BARRA REGULAR','BARRA 2 ONZAS',0.40,350,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE MOSTRO FIELD','PAQUETE X 6 UNIDADES',1.50,250,100,now() + ((random() * 30 + 1) * interval '1 day'));       
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE BARRA MILKY WAY','BARRA 2.15 ONZAS',0.80,200,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'SNICKERS BAR KING SIZE','BARRA 3.7 ONZAS',1.20,100,10,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE BARRA MILK DOVE','UNIDAD',1.30,150,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE BARRA DARK DOVE','UNIDAD',1.30,250,100,now() + ((random() * 30 + 1) * interval '1 day')); 
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'MILKY WAY BAR KING SIZE','UNIDAD 3.6 ONZAS',5.00,100,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'GALLETAS CHIPS AHOY','PAQUETE X 6 UNIDADES',1.00,190,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'GALLETAS TUAREG COSTA','PAQUETE X 6 UNIDADES',1.20,700,100,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'GALLETAS VAINILLA COSTA','PAQUETE X 6 UNIDADES',1.20,120,100,now() + ((random() * 30 + 1) * interval '1 day'));       
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'GALLETAS SURTIDAS BUTTER COOKIES','ENVASE 16 ONZAS',2.50,200,50,now() + ((random() * 30 + 1) * interval '1 day')); 
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'CHOCOLATE LOVER CHIPS DELUXE','BARRA 16 ONZAS',1.30,230,100,now() + ((random() * 30 + 1) * interval '1 day'));       
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'FUDGE SHOPPE DELUXE GRAHAMS','UNIDAD',12.50,156,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'FUDGE SHOPPE STICKS KEEB','UNIDAD',8.50,250,50,now() + ((random() * 30 + 1) * interval '1 day'));        
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(1,'GALLETAS DELICE','PAQUETE 100 GR',2.30,120,100,now() + ((random() * 30 + 1) * interval '1 day'));

INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMONADA LAIVE','KILOGRAMO',12.50,80,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMONADA ESPECIAL LA SEGOVIANA','KILOGRAMO',10.50,55,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMONADA POLACA OTTO KUNZ','KILOGRAMO',12.50,90,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMONADA DE POLLO SAN FERNANDO','KILOGRAMO',10.00,80,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMONADA ESPECIAL OTTO KUNZ','KILOGRAMO',17.00,100,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMON INGLES SAN FERNANDO','KILOGRAMO',12.50,55,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMON INGLES LAIVE','KILOGRAMO',20.50,75,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMON LIGHT BRAEDT','KILOGRAMO',20.50,80,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMON YORK BRAEDT','KILOGRAMO',22.50,75,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMON INGLES LA SEGOVIANA','KILOGRAMO',11.50,55,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'JAMON YORK SALCHICHERIA ALEMANA','KILOGRAMO',21.50,50,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'HOT DOG LAIVE PELADO','KILOGRAMO',5.50,120,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'HOT DOG LA SEGOVIANA','KILOGRAMO',6.80,120,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'HOT DOG AMERICANO OTTO KUNZ','KILOGRAMO',7.50,125,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'HOTDOG AMERICANO BRAEDT','KILOGRAMO',9.50,100,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'SALCHICHA DE HUACHO','KILOGRAMO',10.50,80,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'HOT DOG EXTRA SAN FERNANDO','KILOGRAMO',9.50,90,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'CHORIZO PARRILLERO LAIVE','KILOGRAMO',11.50,55,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'CHORIZO PARRILLERO OTTO KUNZ','KILOGRAMO',10.50,60,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'CHORIZO PARRILLERO BRAEDT','KILOGRAMO',15.50,90,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'CHORIZO ITALIANO OTTO KUNZ','KILOGRAMO',15.00,55,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'CHORIZO NURENBERG BRAEDT','KILOGRAMO',12.00,65,50,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(2,'CHORIZO PARRILLERO CATALANES','KILOGRAMO',10.50,70,50,now() + ((random() * 30 + 1) * interval '1 day'));

INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE BABY JOHNSONS C/ALOE Y VIT. E','FRASCO 100 ML',3.90,175,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE JOHNSONS','FRASCO 100 ML',3.90,123,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE BABY JOHNSONS','FRASCO 300 ML',7.95,75,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE BABY JOHNSONS C/ALOE Y VIT. E','FRASCO 300 ML',7.95,130,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE P/BEBES DR. ZAIDMAN','FRASCO 120 ML',4.30,89,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE JOHNSONS CREMOSO','FRASCO 200 ML',4.10,125,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE P/BEBES NINET','FRASCO 230 ML',8.00,97,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'ACEITE P/BEBES CHICCO','FRASCO 200 ML',12.00,120,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'CEPILLO ODONTOLOGICA EXTRA MEDIANO','UNIDAD',1.35,75,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'CEPILLO ODONTOLOGICA EXTRA SUAVE','UNIDAD',1.35,120,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'CEPILLO DENTAL FLEX ADULTO','CAJA X 2 UNIDADES',4.70,150,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'CEPILLO ADVANTAGE-60 CONTROL','UNIDAD',4.60,200,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'CEPILLO MASTER ADULTO','UNIDAD',1.30,150,100,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'JABON DOVE BLANCO','UNIDAD X 100 GR',2.00,7500,5000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'JABON ROSAS Y LIMON BLANCO','UNIDAD X 105 GR',0.50,7000,5000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'JABON ROSAS Y LIMON ROSADO','UNIDAD X 105 GR',0.50,4900,5000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL A/S ULTRA MENTA','TUBO 75 ML',2.20,1200,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL KOLYNOS SUPER BLANCO','TUBO 75 ML',1.40,1000,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL ULTRA FRESCA GEL','TUBO 75 ML',2.90,950,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL CLOSE UP ANTISARRO','TUBO 75 ML',2.80,1300,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL CLOSE UP VERDE','TUBO 75 ML',2.80,1350,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL KOLYNOS KIDS','TUBO 39 ML',2.80,750,500,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'PASTA DENTAL CLOSE UP MICRO PARTICULAS','TUBO 90 GR',1.30,1200,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. BLANCO SUAVE (ROJA)','PAQUETE X 4 UNIDADES',1.10,750,500,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. BLANCO SUAVE DOBLE HOJA (AZUL)','PAQUETE X 4 UNIDADES',2.70,800,500,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. BLANCO ROLL KLEENEX','PAQUETE X 2 UNIDADES',0.80,1200,1000,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. BLANCO ROLL KLEENEX','PAQUETE X 12 UNIDADES',3.50,350,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. ELITE DOBLE HOJA','PAQUETE X 4 UNIDADES',2.15,1200,500,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. ELITE BLANCO EXTRA','PAQUETE X 4 UNIDADES',1.65,1000,500,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. SANIT','PAQUETE X 4 UNIDADES',1.80,1300,500,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'P.H. ELITE BLANCO EXTRA','PAQUETE x 12 UNIDADES',5.05,300,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO HERBAL CABELLO SECO','FRASCO 355 ML',7.90,300,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO HERBAL CABELLO NORMAL','FRASCO 355 ML',7.90,250,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO ALBERTO VO5 CABELLO NORMAL','FRASCO 15 ONZAS',5.50,350,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO HERBAL CABELLO FINO','FRASCO 355 ML',7.90,150,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO ALBERTO VO5 JOJOBA','FRASCO 15 ONZAS',5.50,200,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO HERBAL CABELLO GRASO','FRASCO 355 ML',6.90,350,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO SEDAL CERAMIDAS 2 EN 1','FRASCO 315 ML',5.90,200,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO PANTENE CABELLO NORMAL','FRASCO 400 ML',10.90,30,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO SEDAL DUO','FRASCO 315 ML',5.90,450,200,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(3,'SHAMPOO PANTENE CABELLO GRASO','FRASCO 400 ML',10.90,300,200,now() + ((random() * 30 + 1) * interval '1 day'));


INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'CREMA DE LECHE LAIVE','ENVASE 160 GR',2.00,250,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'CREMA DE LECHE DUPRE','ENVASE 236 CC',2.10,340,230,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'CREMA DE LECHE NESTLE','ENVASE 100 GR',1.80,250,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'YOGURT GLORIA FRESA','ENVASE 1 LT',2.00,450,240,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'YOGURT YOLEIT FRESA','ENVASE 1 LT',1.50,340,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'YOGURT LAIVE FRESA','ENVASE 1 LT',2.00,350,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'CREAM CHESSE LAIVE','POTE 227 GR',3.00,700,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'CREMA DE QUESO LAIVE','POTE 100 GR',3.00,255,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'QUESO CREMA MILKITO','POTE 270 GR',2.00,255,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'MANTEQUILLA LAIVE C/SAL','PAQUETE 0.5 LB',0.50,250,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'MANTEQUILLA LAIVE','PAQUETE 114 GR',0.50,275,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'MANTEQUILLA FERM C/SAL','PAQUETE 227 GR',0.50,250,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'MANTEQUILLA DANESSA','PAQUETE 100 GR',1.50,550,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'MARGARINA ASTRA','PAQUETE 230 GR',0.50,450,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'DORINA CLASICA','POTE 225 GR',0.50,550,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'LECHE CULTIVADA YOLEIT VAINILLA','ENVASE 1 LT',5.00,450,250,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(4,'LECHE CULTIVADA MILKITO FRESA','ENVASE 1 LT',6.00,450,250,now() + ((random() * 30 + 1) * interval '1 day'));

INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'COCA COLA DIET DESCARTABLE','BOTELLA 1.5 LT',2.56,486,300,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'COCA COLA DESCARTABLE','BOTELLA 1.5 LT',2.56,562,380,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'COCA COLA DIET','BOTELLA 500 ML',1.36,562,380,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'COCA COLA PLASTIFORMA DESCARTABLE','BOTELLA 500 ML',1.36,658,450,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'SPRITE DESCARTABLE','BOTELLA 2 LT',2.80,256,175,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'SPRITE CONTOUR','BOTELLA 500 ML',1.36,320,220,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'SPRITE DESCARTABLE','BOTELLA 1.5 LT',2.40,261,175,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'SPRITE RETORNABLE','BOTELLA 2 LT',2.40,325,220,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'TRIPLE DIET NO RETORNABLE','BOTELLA 1.5 LT',2.04,412,280,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'7 UP DESCARTABLE','BOTELLA 1.5 LT',2.24,389,265,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'WHISKY JOHNNIE WALKER ETIQUETA ROJA','BOTELLA 750 ML',12.56,105,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'WHISKY JOHNNIE WALKER ETIQUETA NEGRA','BOTELA 750 ML',23.12,120,80,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'WHISKY SOMETHING SPECIAL','BOTELLA 750 ML',13.76,98,65,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'WHISKY CHIVAS REGAL','BOTELLA 750 ML',24.40,110,75,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(5,'WHISKY YE MONKS','BOTELLA 750 ML',10.00,106,70,now() + ((random() * 30 + 1) * interval '1 day'));

INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE C/BLANQUEADOR ARIEL','BOLSA 225 GR',2.00,5000,3400,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE LIMON ARIEL','BOLSA 250 GR',2.00,5000,3400,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE LIMON ECOLOGICO MAGIA BLANCA','BOLSA 250 GR',1.48,5000,3400,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE PODER LIMON ACE','BOLSA 250 GR',1.80,5000,3400,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE LIMON ARIEL','BOLSA 1 KG',7.56,3500,2380,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE LIMON ARIEL','BOLSA 500 GR',3.76,2600,1700,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE LIMON INVICTO','BOLSA 225 GR',1.20,5800,3950,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE C/BLANQUEADOR ARIEL','BOLSA 900 GR',7.56,3480,2370,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'DETERGENTE LIMON OPAL','BOLSA 250 GR',1.40,5000,3400,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'PASTILLAS VAPE VERDE','CAJA X 20 UNIDADES',11.76,680,465,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'INSECTICIDA CUCARACHAS Y HORMIGAS','ENVASE 440 CC',11.60,120,85,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'INSECTICIDA MATA POLILLAS RAID','ENVASE 440 CC',11.60,260,175,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'INSECTICIDA MATA CUCARACHAS RAID','ENVASE 630 CC',17.04,430,290,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'INSECTICIDA CASA Y JARDIN BAYERN','ENVASE 400 CC',10.64,430,290,now() + ((random() * 30 + 1) * interval '1 day'));
INSERT INTO producto (id_categoria, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento) VALUES(6,'INSECTICIDA CASA Y JARDIN RAID','ENVASE 440 CC',11.60,256,175,now() + ((random() * 30 + 1) * interval '1 day'));



