-- Database: lmc

-- DROP DATABASE lmc;

CREATE DATABASE lmc
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'pt_BR.UTF-8'
       LC_CTYPE = 'pt_BR.UTF-8'
       CONNECTION LIMIT = -1;
       
       
-- Table: public.usuario

-- DROP TABLE public.usuario;

CREATE TABLE public.usuario
(
  email character varying(100),
  senha character varying(32),
  id integer NOT NULL DEFAULT nextval('usuario_id_seq'::regclass),
  CONSTRAINT usuario_pkey PRIMARY KEY (id),
  CONSTRAINT email_unique UNIQUE (email)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.usuario
  OWNER TO postgres;

-- Table: public.funcionario

-- DROP TABLE public.funcionario;

CREATE TABLE public.funcionario
(
  id integer NOT NULL DEFAULT nextval('funcionario_id_seq'::regclass),
  nome character varying(150),
  telefone character varying(50),
  "dataNascimento" date,
  email character varying(50),
  rg character varying(35),
  sexo character varying(50),
  "dataCadastro" date,
  cpf character varying(50),
  cep character varying(50),
  logradouro character varying(100),
  numero character varying(30),
  bairro character varying(100),
  cidade character varying(100),
  uf character varying(100),
  CONSTRAINT funcionario_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.funcionario
  OWNER TO postgres;