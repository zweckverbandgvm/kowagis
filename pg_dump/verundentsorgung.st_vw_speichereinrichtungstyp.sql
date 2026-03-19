--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:36

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
-- TOC entry 12210 (class 1259 OID 39685691)
-- Name: st_vw_speichereinrichtungstyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_speichereinrichtungstyp (
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
-- Dependencies: 12210
-- Name: TABLE st_vw_speichereinrichtungstyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_speichereinrichtungstyp IS 'Stammdaten Speichereinrichtungstyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12210
-- Name: COLUMN st_vw_speichereinrichtungstyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_speichereinrichtungstyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685691)
-- Dependencies: 12210
-- Data for Name: st_vw_speichereinrichtungstyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_speichereinrichtungstyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-23 09:16:39.481333+02	2100-01-01 00:00:00+01	2024-07-23 09:16:39.481333+02	unbekannt	2024-07-23 09:16:39.481333+02	unbekannt	00000000-0000-0000-0000-000000000001
c85245df-d952-44d1-8dbb-308bd40a50eb	BRU	Brunnen	Brunnen	\N	001	2024-07-23 09:19:58.9579+02	2100-01-01 00:00:00+01	2024-07-23 09:19:58.9579+02	unbekannt	2024-07-23 09:19:58.9579+02	unbekannt	00000000-0000-0000-0000-000000000001
cc252f72-85cd-45e8-8c79-fe27f43a0f5f	OGW	offenes Gewässer	offenes Gewässer	\N	001	2024-07-23 09:19:58.9579+02	2100-01-01 00:00:00+01	2024-07-23 09:19:58.9579+02	unbekannt	2024-07-23 09:19:58.9579+02	unbekannt	00000000-0000-0000-0000-000000000001
602cf3ee-1e33-44a4-b053-7cc9ee87dbff	RRB	Rückhaltebecken	Rückhaltebecken	\N	001	2024-07-23 09:19:58.9579+02	2100-01-01 00:00:00+01	2024-07-23 09:19:58.9579+02	unbekannt	2024-07-23 09:19:58.9579+02	unbekannt	00000000-0000-0000-0000-000000000001
8a0136c5-e50a-4925-91ca-028ef22622e2	ZIS	Zisterne	Zisterne	\N	001	2024-07-23 09:19:58.9579+02	2100-01-01 00:00:00+01	2024-07-23 09:19:58.9579+02	unbekannt	2024-07-23 09:19:58.9579+02	unbekannt	00000000-0000-0000-0000-000000000001
9c5f5480-9e21-4b1c-8ac5-677edcd05d25	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e0a1f670-9d9d-4fa8-8357-f865994f83be	BRU	Brunnen	Brunnen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0db8d30f-461e-4316-b411-eed7a8a60b46	OGW	offenes Gewässer	offenes Gewässer	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8daa566b-6592-436d-8b90-634c8777ece5	RRB	Rückhaltebecken	Rückhaltebecken	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ea115d68-a224-4059-8c8e-da29f0619f48	ZIS	Zisterne	Zisterne	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687443)
-- Name: st_vw_speichereinrichtungstyp pk_st_vw_speichereinrichtungstyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_speichereinrichtungstyp
    ADD CONSTRAINT pk_st_vw_speichereinrichtungstyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189891)
-- Name: st_vw_speichereinrichtungstyp uk3_st_vw_speichereinrichtungstyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_speichereinrichtungstyp
    ADD CONSTRAINT uk3_st_vw_speichereinrichtungstyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190040)
-- Name: st_vw_speichereinrichtungstyp uk4_st_vw_speichereinrichtungstyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_speichereinrichtungstyp
    ADD CONSTRAINT uk4_st_vw_speichereinrichtungstyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688005)
-- Name: st_vw_speichereinrichtungstyp tr_a_d__st_vw_speichereinrichtungstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_speichereinrichtungstyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_speichereinrichtungstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688141)
-- Name: st_vw_speichereinrichtungstyp tr_a_i_or_u_or_d__st_vw_speichereinrichtungstyp__tf_standard_af; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_speichereinrichtungstyp__tf_standard_af AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_speichereinrichtungstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688277)
-- Name: st_vw_speichereinrichtungstyp tr_a_u__st_vw_speichereinrichtungstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_speichereinrichtungstyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_speichereinrichtungstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688415)
-- Name: st_vw_speichereinrichtungstyp tr_b_i_or_u_or_d__st_vw_speichereinrichtungstyp__tf_standard_be; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_speichereinrichtungstyp__tf_standard_be BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_speichereinrichtungstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690143)
-- Name: st_vw_speichereinrichtungstyp fk_st_vw_betriebsstatus_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_speichereinrichtungstyp
    ADD CONSTRAINT fk_st_vw_betriebsstatus_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:37

--
-- PostgreSQL database dump complete
--

