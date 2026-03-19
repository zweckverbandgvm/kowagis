--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:41

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
-- TOC entry 12173 (class 1259 OID 39685027)
-- Name: st_vw_behaelter; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_behaelter (
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
-- Dependencies: 12173
-- Name: TABLE st_vw_behaelter; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_behaelter IS 'Stammdaten Behaelter';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12173
-- Name: COLUMN st_vw_behaelter.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_behaelter.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685027)
-- Dependencies: 12173
-- Data for Name: st_vw_behaelter; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_behaelter (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 09:55:05.441523+02	2100-01-01 00:00:00+01	2024-08-06 09:55:05.441523+02	unbekannt	2024-08-06 09:55:05.441523+02	unbekannt	00000000-0000-0000-0000-000000000001
ac5dfd36-2116-4a83-acda-63bd9a1bc485	unbekannt	EBH	Erdbehälter	\N	001	2024-08-06 10:02:23.100593+02	2100-01-01 00:00:00+01	2024-08-06 10:02:23.100593+02	unbekannt	2024-08-06 10:02:23.100593+02	unbekannt	00000000-0000-0000-0000-000000000001
feb0a55e-e5fc-4415-8ea5-910de024bdde	unbekannt	HBH	Hochbehälter	\N	001	2024-08-06 10:02:23.100593+02	2100-01-01 00:00:00+01	2024-08-06 10:02:23.100593+02	unbekannt	2024-08-06 10:02:23.100593+02	unbekannt	00000000-0000-0000-0000-000000000001
72633054-f928-49c4-956f-1f9defbaacb7	unbekannt	RWB	Reinwasserbehälter	\N	001	2024-08-06 10:02:23.100593+02	2100-01-01 00:00:00+01	2024-08-06 10:02:23.100593+02	unbekannt	2024-08-06 10:02:23.100593+02	unbekannt	00000000-0000-0000-0000-000000000001
445eb665-4a58-49cb-a874-792197614975	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7ac1d026-562d-4ba6-86ce-1239ddc54272	unbekannt	EBH	Erdbehälter	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
53fea133-55ba-4ab0-878e-a43f49f7b59a	unbekannt	HBH	Hochbehälter	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
54dc678c-3b7d-49de-8956-b0b3fe71673c	unbekannt	RWB	Reinwasserbehälter	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687365)
-- Name: st_vw_behaelter pk_st_vw_behaelter; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_behaelter
    ADD CONSTRAINT pk_st_vw_behaelter PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189817)
-- Name: st_vw_behaelter uk3_st_vw_behaelter_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_behaelter
    ADD CONSTRAINT uk3_st_vw_behaelter_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189962)
-- Name: st_vw_behaelter uk4_st_vw_behaelter_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_behaelter
    ADD CONSTRAINT uk4_st_vw_behaelter_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687966)
-- Name: st_vw_behaelter tr_a_d__st_vw_behaelter__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_behaelter__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_behaelter REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688102)
-- Name: st_vw_behaelter tr_a_i_or_u_or_d__st_vw_behaelter__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_behaelter__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_behaelter FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688238)
-- Name: st_vw_behaelter tr_a_u__st_vw_behaelter__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_behaelter__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_behaelter REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688376)
-- Name: st_vw_behaelter tr_b_i_or_u_or_d__st_vw_behaelter__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_behaelter__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_behaelter FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690108)
-- Name: st_vw_behaelter fk_st_vw_behaelter_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_behaelter
    ADD CONSTRAINT fk_st_vw_behaelter_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:43

--
-- PostgreSQL database dump complete
--

