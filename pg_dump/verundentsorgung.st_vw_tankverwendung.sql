--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:40

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
-- TOC entry 12212 (class 1259 OID 39685727)
-- Name: st_vw_tankverwendung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_tankverwendung (
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
-- Dependencies: 12212
-- Name: TABLE st_vw_tankverwendung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_tankverwendung IS 'Stammdaten Tankverwendung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12212
-- Name: COLUMN st_vw_tankverwendung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_tankverwendung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685727)
-- Dependencies: 12212
-- Data for Name: st_vw_tankverwendung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_tankverwendung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-30 13:51:36.623263+02	2100-01-01 00:00:00+01	2024-07-30 13:51:36.623263+02	unbekannt	2024-07-30 13:51:36.623263+02	unbekannt	00000000-0000-0000-0000-000000000001
e1fba834-44e0-4a46-8a02-5737cd5a46e7	unbekannt	SBC	Sammelbehälter für Chemietoilette	\N	001	2024-07-30 13:56:49.954534+02	2100-01-01 00:00:00+01	2024-07-30 13:56:49.954534+02	unbekannt	2024-07-30 13:56:49.954534+02	unbekannt	00000000-0000-0000-0000-000000000001
c711a658-1ee5-4488-a58f-59aa5f9571fd	unbekannt	TOCO	Toilettencontainer	\N	001	2024-07-30 13:56:49.954534+02	2100-01-01 00:00:00+01	2024-07-30 13:56:49.954534+02	unbekannt	2024-07-30 13:56:49.954534+02	unbekannt	00000000-0000-0000-0000-000000000001
0cbcb70e-882e-4576-988f-f10d5a45de51	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7bb34bd4-a20f-4fb1-9896-1afb617712fb	unbekannt	SBC	Sammelbehälter für Chemietoilette	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
92d0ac5a-953a-43bb-ac59-dca040aa2ba0	unbekannt	TOCO	Toilettencontainer	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687447)
-- Name: st_vw_tankverwendung pk_st_vw_tankverwendung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_tankverwendung
    ADD CONSTRAINT pk_st_vw_tankverwendung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189895)
-- Name: st_vw_tankverwendung uk3_st_vw_tankverwendung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_tankverwendung
    ADD CONSTRAINT uk3_st_vw_tankverwendung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190044)
-- Name: st_vw_tankverwendung uk4_st_vw_tankverwendung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_tankverwendung
    ADD CONSTRAINT uk4_st_vw_tankverwendung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688007)
-- Name: st_vw_tankverwendung tr_a_d__st_vw_tankverwendung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_tankverwendung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_tankverwendung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688143)
-- Name: st_vw_tankverwendung tr_a_i_or_u_or_d__st_vw_tankverwendung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_tankverwendung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_tankverwendung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688279)
-- Name: st_vw_tankverwendung tr_a_u__st_vw_tankverwendung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_tankverwendung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_tankverwendung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688417)
-- Name: st_vw_tankverwendung tr_b_i_or_u_or_d__st_vw_tankverwendung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_tankverwendung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_tankverwendung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690283)
-- Name: st_vw_tankverwendung fk_st_vw_tankverwendung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_tankverwendung
    ADD CONSTRAINT fk_st_vw_tankverwendung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:42

--
-- PostgreSQL database dump complete
--

