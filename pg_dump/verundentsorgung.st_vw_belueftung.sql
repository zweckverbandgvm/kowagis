--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:44

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
-- TOC entry 12174 (class 1259 OID 39685045)
-- Name: st_vw_belueftung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_belueftung (
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
-- Dependencies: 12174
-- Name: TABLE st_vw_belueftung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_belueftung IS 'Stammdaten Belueftung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12174
-- Name: COLUMN st_vw_belueftung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_belueftung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685045)
-- Dependencies: 12174
-- Data for Name: st_vw_belueftung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_belueftung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-24 08:20:14.415918+02	2100-01-01 00:00:00+01	2024-07-24 08:20:14.415918+02	unbekannt	2024-07-24 08:20:14.415918+02	unbekannt	00000000-0000-0000-0000-000000000001
6c835081-a312-4580-a1dd-b87fb6f7ad22	unbekannt	mit Belüftungsöffnung	mit Belüftungsöffnung	\N	001	2024-07-24 08:22:39.657917+02	2100-01-01 00:00:00+01	2024-07-24 08:22:39.657917+02	unbekannt	2024-07-24 08:22:39.657917+02	unbekannt	00000000-0000-0000-0000-000000000001
dabf21ef-91a0-4ada-b043-4baa66cb7f41	unbekannt	mit Lüfter	mit Lüfter	\N	001	2024-07-24 08:22:39.657917+02	2100-01-01 00:00:00+01	2024-07-24 08:22:39.657917+02	unbekannt	2024-07-24 08:22:39.657917+02	unbekannt	00000000-0000-0000-0000-000000000001
c870c595-7090-43b5-94f3-3fb0ce4fc899	unbekannt	belüftet mit Wasserstopsystem	belüftet mit Wasserstopsystem	\N	001	2024-07-24 08:22:39.657917+02	2100-01-01 00:00:00+01	2024-07-24 08:22:39.657917+02	unbekannt	2024-07-24 08:22:39.657917+02	unbekannt	00000000-0000-0000-0000-000000000001
0ed23fb9-44b0-4a38-b88a-c9477c9f16b0	unbekannt	ohne Belüftungsöffnung	ohne Belüftungsöffnung	\N	001	2024-07-24 08:22:39.657917+02	2100-01-01 00:00:00+01	2024-07-24 08:22:39.657917+02	unbekannt	2024-07-24 08:22:39.657917+02	unbekannt	00000000-0000-0000-0000-000000000001
3de410b6-ccd7-488e-8920-219b04ed914a	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f2a7cb57-4a00-417c-b722-a8d0dfd35efd	unbekannt	mit Belüftungsöffnung	mit Belüftungsöffnung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0e0d24a9-179e-4ca7-804d-0e60ccf0ddb0	unbekannt	mit Lüfter	mit Lüfter	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b57603ce-b4bd-4633-8b2d-6100f18f3593	unbekannt	belüftet mit Wasserstopsystem	belüftet mit Wasserstopsystem	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4f4129c3-b9f1-4447-8c2c-d5e0687e4f11	unbekannt	ohne Belüftungsöffnung	ohne Belüftungsöffnung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687367)
-- Name: st_vw_belueftung pk_st_vw_belueftung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_belueftung
    ADD CONSTRAINT pk_st_vw_belueftung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189819)
-- Name: st_vw_belueftung uk3_st_vw_belueftung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_belueftung
    ADD CONSTRAINT uk3_st_vw_belueftung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189964)
-- Name: st_vw_belueftung uk4_st_vw_belueftung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_belueftung
    ADD CONSTRAINT uk4_st_vw_belueftung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687967)
-- Name: st_vw_belueftung tr_a_d__st_vw_belueftung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_belueftung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_belueftung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688103)
-- Name: st_vw_belueftung tr_a_i_or_u_or_d__st_vw_belueftung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_belueftung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_belueftung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688239)
-- Name: st_vw_belueftung tr_a_u__st_vw_belueftung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_belueftung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_belueftung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688377)
-- Name: st_vw_belueftung tr_b_i_or_u_or_d__st_vw_belueftung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_belueftung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_belueftung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690113)
-- Name: st_vw_belueftung fk_st_vw_belueftung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_belueftung
    ADD CONSTRAINT fk_st_vw_belueftung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:46

--
-- PostgreSQL database dump complete
--

