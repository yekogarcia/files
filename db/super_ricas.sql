--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categorias; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre character varying(100),
    descripcion text,
    usuario character varying(100),
    fecha_modificacion timestamp without time zone,
    fecha_creacion timestamp without time zone
);


ALTER TABLE public.categorias OWNER TO yekog;

--
-- Name: categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_id_seq OWNER TO yekog;

--
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;


--
-- Name: centers; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.centers (
    id integer NOT NULL,
    name character varying(100),
    cell_phone bigint,
    address text,
    company integer NOT NULL
);


ALTER TABLE public.centers OWNER TO yekog;

--
-- Name: centers_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.centers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.centers_id_seq OWNER TO yekog;

--
-- Name: centers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.centers_id_seq OWNED BY public.centers.id;


--
-- Name: company; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.company (
    id integer NOT NULL,
    name character varying(100),
    nit character varying(100),
    phone bigint,
    address text
);


ALTER TABLE public.company OWNER TO yekog;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO yekog;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;


--
-- Name: inventario_zonas; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.inventario_zonas (
    id integer NOT NULL,
    id_zona integer,
    fecha_modificacion timestamp without time zone,
    fecha_creacion timestamp without time zone,
    fecha_dia date,
    usuario character varying(100),
    estado character varying(100)
);


ALTER TABLE public.inventario_zonas OWNER TO yekog;

--
-- Name: inventario_zonas_det; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.inventario_zonas_det (
    id integer NOT NULL,
    id_producto integer,
    id_zona integer,
    cantidad integer,
    fecha_modificacion timestamp without time zone,
    fecha_creacion timestamp without time zone,
    precio_unidad character varying(100),
    precio_total character varying(100),
    codigo_producto character varying(100),
    usuario character varying(100),
    id_inventario integer,
    porcen_comision integer,
    iva integer,
    estado character varying(100),
    fecha_salida timestamp without time zone,
    cantidad_salida character varying(10),
    valor_venta double precision,
    valor_comision double precision
);


ALTER TABLE public.inventario_zonas_det OWNER TO yekog;

--
-- Name: inventario_zonas_det_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.inventario_zonas_det_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_zonas_det_id_seq OWNER TO yekog;

--
-- Name: inventario_zonas_det_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.inventario_zonas_det_id_seq OWNED BY public.inventario_zonas_det.id;


--
-- Name: inventario_zonas_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.inventario_zonas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_zonas_id_seq OWNER TO yekog;

--
-- Name: inventario_zonas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.inventario_zonas_id_seq OWNED BY public.inventario_zonas.id;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(100),
    id_categoria integer,
    codigo_barras text,
    precio double precision,
    porcen_comision double precision,
    iva double precision,
    factor character varying(100),
    unidad_medida integer,
    descripcion text,
    fecha_creacion timestamp without time zone,
    estado character varying(100),
    usuario character varying(100),
    fecha_modificacion timestamp without time zone,
    codigo character varying(100)
);


ALTER TABLE public.productos OWNER TO yekog;

--
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_seq OWNER TO yekog;

--
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    name character varying(100),
    company integer NOT NULL,
    type character varying(50)
);


ALTER TABLE public.profiles OWNER TO yekog;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO yekog;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    user_login character varying(100),
    password text,
    cell_phone bigint,
    create_datetime timestamp without time zone,
    activate_datetime timestamp without time zone,
    company integer NOT NULL,
    code_referred character varying(15),
    state character varying(50),
    referral_code character varying(50),
    token text,
    id_plans integer,
    id_center integer,
    id_profile integer
);


ALTER TABLE public.users OWNER TO yekog;

--
-- Name: users_company; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.users_company (
    id integer NOT NULL,
    user_id integer,
    profile integer,
    company integer
);


ALTER TABLE public.users_company OWNER TO yekog;

--
-- Name: users_company_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.users_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_company_id_seq OWNER TO yekog;

--
-- Name: users_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.users_company_id_seq OWNED BY public.users_company.id;


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO yekog;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: yk_tables_dinamyc; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.yk_tables_dinamyc (
    id integer NOT NULL,
    name character varying(100),
    table_name character varying(100),
    date_time timestamp without time zone
);


ALTER TABLE public.yk_tables_dinamyc OWNER TO yekog;

--
-- Name: yk_tables_dinamyc_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.yk_tables_dinamyc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yk_tables_dinamyc_id_seq OWNER TO yekog;

--
-- Name: yk_tables_dinamyc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.yk_tables_dinamyc_id_seq OWNED BY public.yk_tables_dinamyc.id;


--
-- Name: zonas; Type: TABLE; Schema: public; Owner: yekog
--

CREATE TABLE public.zonas (
    id integer NOT NULL,
    nombre character varying(100),
    descripcion text,
    fecha_creacion timestamp without time zone,
    fecha_modificacion timestamp without time zone,
    usuario character varying(100)
);


ALTER TABLE public.zonas OWNER TO yekog;

--
-- Name: zonas_id_seq; Type: SEQUENCE; Schema: public; Owner: yekog
--

CREATE SEQUENCE public.zonas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zonas_id_seq OWNER TO yekog;

--
-- Name: zonas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yekog
--

ALTER SEQUENCE public.zonas_id_seq OWNED BY public.zonas.id;


--
-- Name: categorias id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- Name: centers id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.centers ALTER COLUMN id SET DEFAULT nextval('public.centers_id_seq'::regclass);


--
-- Name: company id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);


--
-- Name: inventario_zonas id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.inventario_zonas ALTER COLUMN id SET DEFAULT nextval('public.inventario_zonas_id_seq'::regclass);


--
-- Name: inventario_zonas_det id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.inventario_zonas_det ALTER COLUMN id SET DEFAULT nextval('public.inventario_zonas_det_id_seq'::regclass);


--
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_company id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users_company ALTER COLUMN id SET DEFAULT nextval('public.users_company_id_seq'::regclass);


--
-- Name: yk_tables_dinamyc id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.yk_tables_dinamyc ALTER COLUMN id SET DEFAULT nextval('public.yk_tables_dinamyc_id_seq'::regclass);


--
-- Name: zonas id; Type: DEFAULT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.zonas ALTER COLUMN id SET DEFAULT nextval('public.zonas_id_seq'::regclass);


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.categorias (id, nombre, descripcion, usuario, fecha_modificacion, fecha_creacion) FROM stdin;
10	Empaquetados	\N	yekog	\N	2022-10-28 17:51:55
11	Promoción	\N	yekog	\N	2022-10-28 17:52:11
12	Temporada	\N	yekog	\N	2022-10-28 17:52:33
13	prueba	\N	yekog	\N	2022-10-29 11:06:02
14	Todo Rico	\N	yekog	\N	2022-10-29 11:24:40
\.


--
-- Data for Name: centers; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.centers (id, name, cell_phone, address, company) FROM stdin;
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.company (id, name, nit, phone, address) FROM stdin;
\.


--
-- Data for Name: inventario_zonas; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.inventario_zonas (id, id_zona, fecha_modificacion, fecha_creacion, fecha_dia, usuario, estado) FROM stdin;
34	22	2022-11-14 12:10:36	2022-11-14 11:46:19	2022-11-14	\N	SALIDA
35	24	2022-11-15 09:09:03	2022-11-14 12:21:49	2022-11-14	\N	INGRESADA
37	24	2022-11-15 14:21:32	2022-11-15 14:21:13	2022-11-15	\N	INGRESADA
\.


--
-- Data for Name: inventario_zonas_det; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.inventario_zonas_det (id, id_producto, id_zona, cantidad, fecha_modificacion, fecha_creacion, precio_unidad, precio_total, codigo_producto, usuario, id_inventario, porcen_comision, iva, estado, fecha_salida, cantidad_salida, valor_venta, valor_comision) FROM stdin;
67	11	24	8	2022-11-15 09:09:03	2022-11-14 12:21:49	150000	1.200.000	4578	\N	35	1	1	INGRESADA	2022-11-15 09:09:03	7	1050000	10500
66	9	24	10	2022-11-15 09:09:03	2022-11-14 12:21:49	15000	150.000	4518	\N	35	1	1	SALIDA	2022-11-15 09:09:03	10	150000	1500
68	10	24	10	2022-11-15 09:09:03	2022-11-14 12:22:20	15000	150000	4554	\N	35	1	19	SALIDA	2022-11-15 09:09:03	10	150000	1500
70	10	24	20	2022-11-15 14:21:32	2022-11-15 14:21:13	15000	300000	4554	\N	37	1	19	INGRESADA	2022-11-15 14:21:32	0	\N	\N
71	9	24	15	2022-11-15 14:21:32	2022-11-15 14:21:13	15000	225000	4518	\N	37	1	1	INGRESADA	2022-11-15 14:21:32	0	\N	\N
72	11	24	10	\N	2022-11-15 14:21:32	150000	1500000	4578	\N	37	1	1	INGRESADA	\N	0	\N	\N
63	9	22	15	2022-11-14 12:10:36	2022-11-14 11:46:19	15000	225000	4518	\N	34	1	1	SALIDA	2022-11-14 12:10:36	15	\N	\N
64	10	22	10	2022-11-14 12:10:36	2022-11-14 11:46:19	15000	150000	4554	\N	34	1	19	SALIDA	2022-11-14 12:10:36	10	\N	\N
65	11	22	7	2022-11-14 12:10:36	2022-11-14 11:57:25	150000	1050000	4578	\N	34	1	1	SALIDA	2022-11-14 12:10:36	7	\N	\N
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.productos (id, nombre, id_categoria, codigo_barras, precio, porcen_comision, iva, factor, unidad_medida, descripcion, fecha_creacion, estado, usuario, fecha_modificacion, codigo) FROM stdin;
8	cheetos	10		15000	10	19	\N	\N	asasas	2022-10-27 21:27:25	ACTIVO	yekog	2022-10-28 17:55:51	1545
10	papas	11	\N	15000	1	19	\N	\N	sdsdsds 	2022-10-29 11:10:55	ACTIVO	yekog	\N	4554
9	Doritos	10	\N	15000	1	1	\N	\N	saasas sasas	2022-10-28 20:57:57	ACTIVO	yekog	2022-11-09 20:13:23	4518
11	choclitos	11	\N	150000	1	1	\N	\N	prueba	2022-11-09 20:14:14	ACTIVO	yekog	\N	4578
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.profiles (id, name, company, type) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.users (id, name, email, user_login, password, cell_phone, create_datetime, activate_datetime, company, code_referred, state, referral_code, token, id_plans, id_center, id_profile) FROM stdin;
1	maria	diegoj@gmail.com	USER	$2b$10$Tep5ODSS3SCFGtT4qcXqH.rplG5bhpcUgXPAMdLPBMymXwdFD/6.6	31221234	2022-11-05 19:27:16	2022-11-05 19:27:16	1	\N	ACTIVO	\N	\N	\N	\N	1
2	yeko	yekogarcia@yahoo.com	yeko	$2b$10$cBd8CqFhydAYNVLzUliitOMHq.XKSQCPiJDjPdNU7VOHd2DCpgi/6	31221234	2022-11-05 19:28:34	2022-11-05 19:28:34	1	\N	ACTIVO	\N	\N	\N	\N	1
\.


--
-- Data for Name: users_company; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.users_company (id, user_id, profile, company) FROM stdin;
\.


--
-- Data for Name: yk_tables_dinamyc; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.yk_tables_dinamyc (id, name, table_name, date_time) FROM stdin;
\.


--
-- Data for Name: zonas; Type: TABLE DATA; Schema: public; Owner: yekog
--

COPY public.zonas (id, nombre, descripcion, fecha_creacion, fecha_modificacion, usuario) FROM stdin;
22	Juan Sanchez	\N	2022-10-28 17:53:05	\N	yekog
24	Ender Garcia	\N	2022-10-28 17:53:31	\N	yekog
23	Diego Joya	prueba	2022-10-28 17:53:14	2022-10-28 19:39:34	yekog
\.


--
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.categorias_id_seq', 14, true);


--
-- Name: centers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.centers_id_seq', 1, false);


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.company_id_seq', 1, false);


--
-- Name: inventario_zonas_det_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.inventario_zonas_det_id_seq', 72, true);


--
-- Name: inventario_zonas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.inventario_zonas_id_seq', 37, true);


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.productos_id_seq', 11, true);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, false);


--
-- Name: users_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.users_company_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: yk_tables_dinamyc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.yk_tables_dinamyc_id_seq', 1, false);


--
-- Name: zonas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yekog
--

SELECT pg_catalog.setval('public.zonas_id_seq', 24, true);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);


--
-- Name: centers centers_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.centers
    ADD CONSTRAINT centers_pkey PRIMARY KEY (id);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: inventario_zonas inventario_zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.inventario_zonas
    ADD CONSTRAINT inventario_zonas_pkey PRIMARY KEY (id);


--
-- Name: inventario_zonas_det invetario_zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.inventario_zonas_det
    ADD CONSTRAINT invetario_zonas_pkey PRIMARY KEY (id);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: users_company users_company_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT users_company_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: yk_tables_dinamyc yk_tables_dinamyc_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.yk_tables_dinamyc
    ADD CONSTRAINT yk_tables_dinamyc_pkey PRIMARY KEY (id);


--
-- Name: zonas zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.zonas
    ADD CONSTRAINT zonas_pkey PRIMARY KEY (id);


--
-- Name: fki_id_user; Type: INDEX; Schema: public; Owner: yekog
--

CREATE INDEX fki_id_user ON public.users_company USING btree (user_id);


--
-- Name: fki_profile; Type: INDEX; Schema: public; Owner: yekog
--

CREATE INDEX fki_profile ON public.users_company USING btree (profile);


--
-- Name: centers company; Type: FK CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.centers
    ADD CONSTRAINT company FOREIGN KEY (company) REFERENCES public.company(id);


--
-- Name: users_company company; Type: FK CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT company FOREIGN KEY (company) REFERENCES public.company(id);


--
-- Name: users id_center; Type: FK CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT id_center FOREIGN KEY (id_center) REFERENCES public.centers(id);


--
-- Name: users_company profile; Type: FK CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT profile FOREIGN KEY (profile) REFERENCES public.profiles(id);


--
-- Name: users_company user_id; Type: FK CONSTRAINT; Schema: public; Owner: yekog
--

ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

