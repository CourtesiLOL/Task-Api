CREATE USER taskuser WITH PASSWORD '8Bk0Yk-J5#rgJO';
CREATE DATABASE taskapidb OWNER taskuser;


 -- Conectar a la base de datos taskapidb
 \c taskapidb;


--Create tables

CREATE TABLE public.users (
    email character varying(50) PRIMARY KEY ,
    password VARCHAR(255) NOT NULL
);

-- Otorgar todos los privilegios sobre la base de datos
GRANT ALL PRIVILEGES ON DATABASE taskapidb TO taskuser;

-- Otorgar todos los privilegios en todas las tablas del esquema 'public'
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO taskuser;

-- Otorgar todos los privilegios en todas las secuencias del esquema 'public'
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO taskuser;

-- Otorgar todos los privilegios en todas las funciones del esquema 'public'
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO taskuser;

-- Asegurar que los futuros objetos creados en el esquema 'public' también tengan permisos
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO taskuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO taskuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO taskuser;


