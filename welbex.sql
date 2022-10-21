--
-- PostgreSQL database dump
--
-- Dumped from database version 13.8
-- Dumped by pg_dump version 13.8
-- Started on 2022-10-21 23:22:40
SET
    statement_timeout = 0;

SET
    lock_timeout = 0;

SET
    idle_in_transaction_session_timeout = 0;

SET
    client_encoding = 'UTF8';

SET
    standard_conforming_strings = on;

SELECT
    pg_catalog.set_config('search_path', '', false);

SET
    check_function_bodies = false;

SET
    xmloption = content;

SET
    client_min_messages = warning;

SET
    row_security = off;

SET
    default_tablespace = '';

SET
    default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16432)
-- Name: column_data; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.column_data (
    id integer NOT NULL,
    date_creation date,
    name_column character varying(255),
    count integer,
    distance integer
);

ALTER TABLE
    public.column_data OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16430)
-- Name: column_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.column_data_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE
    public.column_data_id_seq OWNER TO postgres;

--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 200
-- Name: column_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.column_data_id_seq OWNED BY public.column_data.id;

--
-- TOC entry 2850 (class 2604 OID 16435)
-- Name: column_data id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE
    ONLY public.column_data
ALTER COLUMN
    id
SET
    DEFAULT nextval('public.column_data_id_seq' :: regclass);

--
-- TOC entry 2984 (class 0 OID 16432)
-- Dependencies: 201
-- Data for Name: column_data; Type: TABLE DATA; Schema: public; Owner: postgres
--
COPY public.column_data (id, date_creation, name_column, count, distance)
FROM
    stdin;

1 2005 -06 -29 Yuy 10 100 2 2005 -05 -29 Yuy 10 100 3 2005 -05 -29 Yuy 10 100 4 2005 -05 -29 Yuy 10 100 5 2005 -05 -29 Yuy 10 100 6 2005 -05 -29 Yuy 10 100 7 2005 -05 -29 Yuy 10 100 8 2005 -05 -29 Yuy 10 100 9 2005 -05 -29 Yuy 10 100 10 2005 -05 -29 Yuy 10 100 11 2005 -05 -29 Yuy 10 100 12 2005 -05 -29 Yuy 10 100 13 2005 -05 -29 Yuy 10 100 14 2005 -05 -29 Yuy 10 100 15 2005 -05 -29 Yuy 10 100 16 2005 -05 -29 Yuy 10 100 17 2005 -05 -29 Yuy 10 100 18 2005 -05 -29 Yuy 10 100 19 2005 -05 -29 Yuy 10 100 20 2005 -05 -29 Yuy 10 100 21 2005 -05 -29 Yuy 10 100 22 2005 -05 -29 Yuy 10 100 23 2005 -05 -29 Yuy 10 100 24 2005 -05 -29 Yuy 10 100 25 2005 -05 -29 Yuy 10 100 26 2005 -05 -29 Yuy 10 100 27 2005 -05 -29 Yuy 10 100 28 2005 -05 -29 Yuy 10 100 29 2005 -05 -29 Yuy 10 100 30 2005 -05 -29 Yuy 10 100 31 2005 -05 -29 Yuy 10 100 32 2005 -05 -29 Yuy 10 100 33 2005 -05 -29 Yuy 10 100 34 2005 -05 -29 Yuy 10 100 35 2005 -05 -29 Yuy 10 100 36 2005 -05 -29 Yuy 10 100 37 2005 -05 -29 Yuy 10 100 38 2005 -05 -29 Yuy 10 100 39 2005 -05 -29 Yuy 10 100 40 2005 -05 -29 Yuy 10 100 41 2005 -05 -29 Yuy 10 100 \.--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 200
-- Name: column_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--
SELECT
    pg_catalog.setval('public.column_data_id_seq', 41, true);

--
-- TOC entry 2852 (class 2606 OID 16437)
-- Name: column_data column_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE
    ONLY public.column_data
ADD
    CONSTRAINT column_data_pkey PRIMARY KEY (id);

-- Completed on 2022-10-21 23:22:41
--
-- PostgreSQL database dump complete
--