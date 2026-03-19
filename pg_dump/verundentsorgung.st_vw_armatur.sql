--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:25

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
-- TOC entry 12167 (class 1259 OID 39684919)
-- Name: st_vw_armatur; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_armatur (
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
-- Dependencies: 12167
-- Name: TABLE st_vw_armatur; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_armatur IS 'Stammdaten Armatur';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12167
-- Name: COLUMN st_vw_armatur.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_armatur.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39684919)
-- Dependencies: 12167
-- Data for Name: st_vw_armatur; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_armatur (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 09:34:35.964463+02	2100-01-01 00:00:00+01	2024-08-06 09:34:35.964463+02	unbekannt	2024-08-06 09:34:35.964463+02	unbekannt	00000000-0000-0000-0000-000000000001
6230fff8-322e-4d44-a7cd-9f2fc9f9e361	unbekannt	FROK	Froschklappe	\N	001	2024-08-06 09:37:03.72369+02	2100-01-01 00:00:00+01	2024-08-06 09:37:03.72369+02	unbekannt	2024-08-06 09:37:03.72369+02	unbekannt	00000000-0000-0000-0000-000000000001
cf5d47cf-a4d7-4df9-b9c2-5bd6f653ff73	unbekannt	KUPP	Kupplung	\N	001	2024-08-06 09:37:03.72369+02	2100-01-01 00:00:00+01	2024-08-06 09:37:03.72369+02	unbekannt	2024-08-06 09:37:03.72369+02	unbekannt	00000000-0000-0000-0000-000000000001
bd61e0f7-d60a-4506-bc3a-dde6ee74b099	unbekannt	MUFFE	Muffe	\N	001	2024-08-06 09:37:03.72369+02	2100-01-01 00:00:00+01	2024-08-06 09:37:03.72369+02	unbekannt	2024-08-06 09:37:03.72369+02	unbekannt	00000000-0000-0000-0000-000000000001
73c219f8-cdc7-42cc-b235-c2776e2da4e7	unbekannt	X	Blindflansch	\N	001	2024-08-06 09:37:03.72369+02	2100-01-01 00:00:00+01	2024-08-06 09:37:03.72369+02	unbekannt	2024-08-06 09:37:03.72369+02	unbekannt	00000000-0000-0000-0000-000000000001
dbbd5acc-044e-49d2-b4e5-452bee8c5ac9	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5632e438-572d-44d1-9295-bf093032498e	unbekannt	FROK	Froschklappe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b9415501-315d-442e-b575-f978796162b5	unbekannt	KUPP	Kupplung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d49ac2fe-5bb7-4e28-bd50-99c9fc818da6	unbekannt	MUFFE	Muffe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8e166535-e6e6-4f7e-a316-440f5c979533	unbekannt	X	Blindflansch	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687351)
-- Name: st_vw_armatur pk_st_vw_armatur; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_armatur
    ADD CONSTRAINT pk_st_vw_armatur PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189805)
-- Name: st_vw_armatur uk3_st_vw_armatur_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_armatur
    ADD CONSTRAINT uk3_st_vw_armatur_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189948)
-- Name: st_vw_armatur uk4_st_vw_armatur_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_armatur
    ADD CONSTRAINT uk4_st_vw_armatur_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687959)
-- Name: st_vw_armatur tr_a_d__st_vw_armatur__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_armatur__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_armatur REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688095)
-- Name: st_vw_armatur tr_a_i_or_u_or_d__st_vw_armatur__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_armatur__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_armatur FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688231)
-- Name: st_vw_armatur tr_a_u__st_vw_armatur__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_armatur__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_armatur REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688369)
-- Name: st_vw_armatur tr_b_i_or_u_or_d__st_vw_armatur__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_armatur__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_armatur FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690073)
-- Name: st_vw_armatur fk_st_vw_armatur_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_armatur
    ADD CONSTRAINT fk_st_vw_armatur_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:27

--
-- PostgreSQL database dump complete
--

