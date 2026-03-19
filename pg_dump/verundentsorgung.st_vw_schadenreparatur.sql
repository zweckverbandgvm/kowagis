--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:25

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
-- TOC entry 12247 (class 1259 OID 39686576)
-- Name: st_vw_schadenreparatur; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schadenreparatur (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    ident_hist text DEFAULT 'unbekannt'::text NOT NULL,
    kurztext text DEFAULT 'unbekannt'::text NOT NULL,
    langtext text DEFAULT 'unbekannt'::text NOT NULL,
    bemerkung text,
    sortierreihenfolge text DEFAULT '001'::text NOT NULL,
    gueltig_von timestamp with time zone DEFAULT now() NOT NULL,
    gueltig_bis timestamp with time zone DEFAULT '2100-01-01 00:00:00+01'::timestamp with time zone NOT NULL,
    angelegt_am timestamp with time zone DEFAULT now() NOT NULL,
    angelegt_von text DEFAULT 'unbekannt'::text NOT NULL,
    geaendert_am timestamp with time zone DEFAULT now() NOT NULL,
    geaendert_von text DEFAULT 'unbekannt'::text NOT NULL,
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL
);


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12247
-- Name: TABLE st_vw_schadenreparatur; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schadenreparatur IS 'Stammdaten Schadenreparatur';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12247
-- Name: COLUMN st_vw_schadenreparatur.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenreparatur.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39686576)
-- Dependencies: 12247
-- Data for Name: st_vw_schadenreparatur; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schadenreparatur (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt		001	2024-11-13 10:39:50.731071+01	2100-01-01 00:00:00+01	2024-11-13 10:39:50.731071+01	unbekannt	2024-11-13 10:39:50.731071+01	unbekannt	00000000-0000-0000-0000-000000000001
21a7f154-0891-42b7-bf42-c17bbb2dea27	unbekannt	Hutprofil	Hutprofil	\N	001	2024-11-13 10:46:55.015732+01	2100-01-01 00:00:00+01	2024-11-13 10:46:55.015732+01	unbekannt	2024-11-13 10:46:55.015732+01	unbekannt	00000000-0000-0000-0000-000000000001
4ecf06d9-7863-4f75-a4ed-95a251b9c8e0	unbekannt	Kurzliner	Kurzliner	\N	001	2024-11-13 10:46:55.015732+01	2100-01-01 00:00:00+01	2024-11-13 10:46:55.015732+01	unbekannt	2024-11-13 10:46:55.015732+01	unbekannt	00000000-0000-0000-0000-000000000001
a43fe6c3-9c15-4fb7-be84-d83c487b3013	unbekannt	nicht angegeben	nicht angegeben	\N	001	2024-11-13 10:46:55.015732+01	2100-01-01 00:00:00+01	2024-11-13 10:46:55.015732+01	unbekannt	2024-11-13 10:46:55.015732+01	unbekannt	00000000-0000-0000-0000-000000000001
c40b3180-f5dd-4909-a4c5-7ea58dbda30a	unbekannt	Quick-Lock Manschette	Quick-Lock Manschette	\N	001	2024-11-13 10:46:55.015732+01	2100-01-01 00:00:00+01	2024-11-13 10:46:55.015732+01	unbekannt	2024-11-13 10:46:55.015732+01	unbekannt	00000000-0000-0000-0000-000000000001
fbc6783c-5920-480e-bbed-adc4deca1307	unbekannt	unbekannt	unbekannt		001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7cab62a8-ac03-4500-9a46-255995b58507	unbekannt	Hutprofil	Hutprofil	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
787c3cdb-56dd-4570-a81c-36ffcdc89b23	unbekannt	Kurzliner	Kurzliner	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
98a82cc3-f34d-4716-9388-769e98f19bf9	unbekannt	nicht angegeben	nicht angegeben	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4861d6e4-23a8-4a02-8f99-ddc170960144	unbekannt	Quick-Lock Manschette	Quick-Lock Manschette	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687433)
-- Name: st_vw_schadenreparatur pk_st_vw_schadenreparatur; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenreparatur
    ADD CONSTRAINT pk_st_vw_schadenreparatur PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189885)
-- Name: st_vw_schadenreparatur uk3_st_vw_schadenreparatur_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenreparatur
    ADD CONSTRAINT uk3_st_vw_schadenreparatur_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190034)
-- Name: st_vw_schadenreparatur uk4_st_vw_schadenreparatur_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenreparatur
    ADD CONSTRAINT uk4_st_vw_schadenreparatur_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688000)
-- Name: st_vw_schadenreparatur tr_a_d__st_vw_schadenreparatur__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schadenreparatur__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schadenreparatur REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688136)
-- Name: st_vw_schadenreparatur tr_a_i_or_u_or_d__st_vw_schadenreparatur__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schadenreparatur__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schadenreparatur FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688272)
-- Name: st_vw_schadenreparatur tr_a_u__st_vw_schadenreparatur__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schadenreparatur__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schadenreparatur REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688410)
-- Name: st_vw_schadenreparatur tr_b_i_or_u_or_d__st_vw_schadenreparatur__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schadenreparatur__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schadenreparatur FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690263)
-- Name: st_vw_schadenreparatur fk_st_vw_schadenreparatur_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenreparatur
    ADD CONSTRAINT fk_st_vw_schadenreparatur_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:27

--
-- PostgreSQL database dump complete
--

