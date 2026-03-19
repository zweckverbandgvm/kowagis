--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:19

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
-- TOC entry 12165 (class 1259 OID 39684883)
-- Name: st_vw_abrechnung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_abrechnung (
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
-- Dependencies: 12165
-- Name: TABLE st_vw_abrechnung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_abrechnung IS 'Stammdaten Abrechnung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12165
-- Name: COLUMN st_vw_abrechnung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abrechnung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39684883)
-- Dependencies: 12165
-- Data for Name: st_vw_abrechnung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_abrechnung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-15 10:45:48.769618+02	2100-01-01 00:00:00+01	2024-08-15 10:45:48.769618+02	unbekannt	2024-08-15 10:45:48.769618+02	unbekannt	00000000-0000-0000-0000-000000000001
01a44adc-a0ba-43e7-a6cb-d14d8d4047c7	unbekannt	F	das ist keine Umlagefläche	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
70c48982-1f7b-44d6-933d-273773095993	unbekannt	G	Gebühr	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
56db459d-d6de-4f8e-9819-3c17cfd1109a	unbekannt	K	keine Unterhaltung durch ZVG	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
8e3d828a-355f-4f93-9934-5e41cc688cd5	unbekannt	O	ohne Zuweisung	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
91971489-68ac-4b2b-970d-2c4833b99a5a	unbekannt	U	Umlage	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
8cc2f05a-798b-486a-9897-d10a2ec73339	unbekannt	Z	Unterhaltung durch ZVG	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
23c15ad9-9f6b-4c0c-9da5-f3b26514c950	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6472dc5a-e46a-42f1-9584-31c4864d4972	unbekannt	F	das ist keine Umlagefläche	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
bedc6e8a-ec9e-48d8-9589-400a316de71f	unbekannt	G	Gebühr	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b57079f4-65c4-4596-b8cf-75b154f366ef	unbekannt	K	keine Unterhaltung durch ZVG	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
eb4ebd6d-5500-445f-b63b-4a58882f8ac4	unbekannt	O	ohne Zuweisung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
495061e0-5fc7-4312-a183-37759501041b	unbekannt	U	Umlage	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0195ce23-8ffc-4832-a454-85d96fc1085b	unbekannt	Z	Unterhaltung durch ZVG	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687347)
-- Name: st_vw_abrechnung pk_st_vw_abrechnung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abrechnung
    ADD CONSTRAINT pk_st_vw_abrechnung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189799)
-- Name: st_vw_abrechnung uk3_st_vw_abrechnung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abrechnung
    ADD CONSTRAINT uk3_st_vw_abrechnung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189942)
-- Name: st_vw_abrechnung uk4_st_vw_abrechnung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abrechnung
    ADD CONSTRAINT uk4_st_vw_abrechnung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687957)
-- Name: st_vw_abrechnung tr_a_d__st_vw_abrechnung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_abrechnung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_abrechnung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688093)
-- Name: st_vw_abrechnung tr_a_i_or_u_or_d__st_vw_abrechnung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_abrechnung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_abrechnung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688229)
-- Name: st_vw_abrechnung tr_a_u__st_vw_abrechnung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_abrechnung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_abrechnung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688367)
-- Name: st_vw_abrechnung tr_b_i_or_u_or_d__st_vw_abrechnung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_abrechnung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_abrechnung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690063)
-- Name: st_vw_abrechnung fk_st_vw_abrechnung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abrechnung
    ADD CONSTRAINT fk_st_vw_abrechnung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:21

--
-- PostgreSQL database dump complete
--

