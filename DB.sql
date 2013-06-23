--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-06-23 00:41:45 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 162 (class 3079 OID 11681)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1897 (class 0 OID 0)
-- Dependencies: 162
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 161 (class 1259 OID 16385)
-- Dependencies: 5
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cliente (
    nome character varying(255) NOT NULL,
    id integer NOT NULL,
    email character varying(255),
    cpf character varying(11)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 1889 (class 0 OID 16385)
-- Dependencies: 161 1890
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cliente (nome, id, email, cpf) FROM stdin;
afonso	1	afonsoinfo@gmail.com	10877111774
paulo	2	paulo@uniriotec.br	10877777765
\.


--
-- TOC entry 1888 (class 2606 OID 16396)
-- Dependencies: 161 161 1891
-- Name: id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 1896 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-06-23 00:41:45 BRT

--
-- PostgreSQL database dump complete
--

