--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:48

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
-- TOC entry 12176 (class 1259 OID 39685081)
-- Name: st_vw_beprobung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_beprobung (
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
-- Dependencies: 12176
-- Name: TABLE st_vw_beprobung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_beprobung IS 'Stammdaten Beprobung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12176
-- Name: COLUMN st_vw_beprobung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beprobung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685081)
-- Dependencies: 12176
-- Data for Name: st_vw_beprobung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_beprobung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 10:07:55.555903+02	2100-01-01 00:00:00+01	2024-08-06 10:07:55.555903+02	unbekannt	2024-08-06 10:07:55.555903+02	unbekannt	00000000-0000-0000-0000-000000000001
34fedfa7-b14b-4dfd-92e2-4c0ada47d31a	unbekannt	FREILAND	Freilandbeprobung	\N	001	2024-08-06 10:15:52.397934+02	2100-01-01 00:00:00+01	2024-08-06 10:15:52.397934+02	unbekannt	2024-08-06 10:15:52.397934+02	unbekannt	00000000-0000-0000-0000-000000000001
8d5c63bd-3cd7-4f54-8fee-656f1bc691b6	unbekannt	REIN	Reinwasserprobe	\N	001	2024-08-06 10:15:52.397934+02	2100-01-01 00:00:00+01	2024-08-06 10:15:52.397934+02	unbekannt	2024-08-06 10:15:52.397934+02	unbekannt	00000000-0000-0000-0000-000000000001
076140ad-51ec-471e-b9a9-7a620caf0121	unbekannt	ROH	Rohwasserprobe	\N	001	2024-08-06 10:15:52.397934+02	2100-01-01 00:00:00+01	2024-08-06 10:15:52.397934+02	unbekannt	2024-08-06 10:15:52.397934+02	unbekannt	00000000-0000-0000-0000-000000000001
2d427963-a437-46e8-9ba7-2c531e7e16aa	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6e78cc9f-db92-4b5d-9a8a-6a29786395a9	unbekannt	FREILAND	Freilandbeprobung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7b88e717-c565-45fe-bef4-2d87ee7424f1	unbekannt	REIN	Reinwasserprobe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ef908ff0-8066-48dd-ad89-1a4af1d636e0	unbekannt	ROH	Rohwasserprobe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687371)
-- Name: st_vw_beprobung pk_st_vw_beprobung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beprobung
    ADD CONSTRAINT pk_st_vw_beprobung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189823)
-- Name: st_vw_beprobung uk3_st_vw_beprobung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beprobung
    ADD CONSTRAINT uk3_st_vw_beprobung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189968)
-- Name: st_vw_beprobung uk4_st_vw_beprobung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beprobung
    ADD CONSTRAINT uk4_st_vw_beprobung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687969)
-- Name: st_vw_beprobung tr_a_d__st_vw_beprobung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_beprobung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_beprobung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688105)
-- Name: st_vw_beprobung tr_a_i_or_u_or_d__st_vw_beprobung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_beprobung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beprobung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688241)
-- Name: st_vw_beprobung tr_a_u__st_vw_beprobung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_beprobung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_beprobung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688379)
-- Name: st_vw_beprobung tr_b_i_or_u_or_d__st_vw_beprobung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_beprobung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beprobung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690123)
-- Name: st_vw_beprobung fk_st_vw_beprobung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beprobung
    ADD CONSTRAINT fk_st_vw_beprobung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:50

--
-- PostgreSQL database dump complete
--

