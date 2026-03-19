--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:54

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
-- TOC entry 12217 (class 1259 OID 39685817)
-- Name: st_vw_versiegelung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_versiegelung (
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
-- Dependencies: 12217
-- Name: TABLE st_vw_versiegelung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_versiegelung IS 'Stammdaten Versiegelung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12217
-- Name: COLUMN st_vw_versiegelung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_versiegelung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685817)
-- Dependencies: 12217
-- Data for Name: st_vw_versiegelung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_versiegelung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-15 10:44:57.080902+02	2100-01-01 00:00:00+01	2024-08-15 10:44:57.080902+02	unbekannt	2024-08-15 10:44:57.080902+02	unbekannt	00000000-0000-0000-0000-000000000001
3d50ba4e-f948-45af-b4f6-1cdc3f6c9f2b	unbekannt	TV	TEILVERSIEGELT	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
685fcab4-90ea-4459-ac71-0a5b174bd7e9	unbekannt	VV	VOLLVERSIEGELT	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001
5f1b4bb9-45a1-4a7b-9c3a-e0a01d54025b	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3c1aa7e8-b639-462e-af69-fbb0a5e97ef6	unbekannt	TV	TEILVERSIEGELT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9238aa0a-2509-4412-87b0-a57d450c91ca	unbekannt	VV	VOLLVERSIEGELT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687457)
-- Name: st_vw_versiegelung pk_st_vw_versiegelung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_versiegelung
    ADD CONSTRAINT pk_st_vw_versiegelung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189909)
-- Name: st_vw_versiegelung uk3_st_vw_versiegelung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_versiegelung
    ADD CONSTRAINT uk3_st_vw_versiegelung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190058)
-- Name: st_vw_versiegelung uk4_st_vw_versiegelung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_versiegelung
    ADD CONSTRAINT uk4_st_vw_versiegelung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688012)
-- Name: st_vw_versiegelung tr_a_d__st_vw_versiegelung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_versiegelung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_versiegelung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688148)
-- Name: st_vw_versiegelung tr_a_i_or_u_or_d__st_vw_versiegelung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_versiegelung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_versiegelung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688284)
-- Name: st_vw_versiegelung tr_a_u__st_vw_versiegelung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_versiegelung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_versiegelung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688422)
-- Name: st_vw_versiegelung tr_b_i_or_u_or_d__st_vw_versiegelung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_versiegelung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_versiegelung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690308)
-- Name: st_vw_versiegelung fk_st_vw_versiegelung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_versiegelung
    ADD CONSTRAINT fk_st_vw_versiegelung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:56

--
-- PostgreSQL database dump complete
--

