--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:05

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

SET default_table_access_method = heap;

--
-- TOC entry 12250 (class 1259 OID 39686892)
-- Name: qkan_kanalexport_exportfilter; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.qkan_kanalexport_exportfilter (
    id text NOT NULL,
    geometry public.geometry,
    anz_dokumente text,
    id_suche text,
    kanio_id text,
    dbschema text,
    fid numeric(10,0),
    fido numeric(10,0)
);


--
-- TOC entry 83781 (class 0 OID 0)
-- Dependencies: 12250
-- Name: TABLE qkan_kanalexport_exportfilter; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.qkan_kanalexport_exportfilter IS 'N Kanalexport Exportfilter';


--
-- TOC entry 83782 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.id IS '  ';


--
-- TOC entry 83783 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.geometry; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.geometry IS 'Geometry ';


--
-- TOC entry 83784 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.anz_dokumente; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.anz_dokumente IS 'Anzahl_Dokumente ';


--
-- TOC entry 83785 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.id_suche; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.id_suche IS 'ID Suche ';


--
-- TOC entry 83786 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.kanio_id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.kanio_id IS 'Kanio ID ';


--
-- TOC entry 83787 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.dbschema; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.dbschema IS 'Datenbankschema ';


--
-- TOC entry 83788 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.fid; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.fid IS 'FID';


--
-- TOC entry 83789 (class 0 OID 0)
-- Dependencies: 12250
-- Name: COLUMN qkan_kanalexport_exportfilter.fido; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.qkan_kanalexport_exportfilter.fido IS 'FID Objekt';


--
-- TOC entry 83775 (class 0 OID 39686892)
-- Dependencies: 12250
-- Data for Name: qkan_kanalexport_exportfilter; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.qkan_kanalexport_exportfilter (id, geometry, anz_dokumente, id_suche, kanio_id, dbschema, fid, fido) FROM stdin;
1	01060000000100000001030000000100000005000000BC35B0F5F8600E413C6BB77391CB56411D87338F05770E4149684BDA7DCB5641BD28B36192740E41890C2B26D3CA5641C28A1A0C2D5A0E41C3BB5C29DFCA5641BC35B0F5F8600E413C6BB77391CB5641	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 81934 (class 2606 OID 39687313)
-- Name: qkan_kanalexport_exportfilter pk_qkan_kanalexport_exportfilter; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.qkan_kanalexport_exportfilter
    ADD CONSTRAINT pk_qkan_kanalexport_exportfilter PRIMARY KEY (id);


-- Completed on 2026-03-18 15:13:07

--
-- PostgreSQL database dump complete
--

