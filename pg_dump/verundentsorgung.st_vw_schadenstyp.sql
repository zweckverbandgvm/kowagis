--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:27

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
-- TOC entry 12206 (class 1259 OID 39685619)
-- Name: st_vw_schadenstyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schadenstyp (
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
-- Dependencies: 12206
-- Name: TABLE st_vw_schadenstyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schadenstyp IS 'Stammdaten Schadenstyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12206
-- Name: COLUMN st_vw_schadenstyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schadenstyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685619)
-- Dependencies: 12206
-- Data for Name: st_vw_schadenstyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schadenstyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-26 08:02:55.400775+02	2100-01-01 00:00:00+01	2024-08-26 08:02:55.400775+02	unbekannt	2024-08-26 08:02:55.400775+02	unbekannt	00000000-0000-0000-0000-000000000001
4ce0518a-d4d4-49a4-8f31-7d20d8734b78	unbekannt	Loch	Loch	\N	001	2024-08-26 09:20:39.39266+02	2100-01-01 00:00:00+01	2024-08-26 09:20:39.39266+02	unbekannt	2024-08-26 09:20:39.39266+02	unbekannt	00000000-0000-0000-0000-000000000001
470af3d8-4d41-4966-961a-21e158e33cfc	unbekannt	ROHRS	Rohrschaden	\N	001	2024-08-26 09:20:39.39266+02	2100-01-01 00:00:00+01	2024-08-26 09:20:39.39266+02	unbekannt	2024-08-26 09:20:39.39266+02	unbekannt	00000000-0000-0000-0000-000000000001
d1ee241a-a476-456b-aa9d-eb5e3a6c3f54	unbekannt	Verbund	Verbindung undicht	\N	001	2024-08-26 09:20:39.39266+02	2100-01-01 00:00:00+01	2024-08-26 09:20:39.39266+02	unbekannt	2024-08-26 09:20:39.39266+02	unbekannt	00000000-0000-0000-0000-000000000001
d0a8023b-ca26-4eef-84ce-f14754f337ac	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0edaf774-33c1-4429-b7dd-6159b4ef4818	unbekannt	Loch	Loch	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
750a0495-aa9d-41cf-a84f-d7ef032c4439	unbekannt	ROHRS	Rohrschaden	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3d1478c0-0199-4f9b-aff7-4a5e11100e13	unbekannt	Verbund	Verbindung undicht	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687435)
-- Name: st_vw_schadenstyp pk_st_vw_schadenstyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenstyp
    ADD CONSTRAINT pk_st_vw_schadenstyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189887)
-- Name: st_vw_schadenstyp uk3_st_vw_schadenstyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenstyp
    ADD CONSTRAINT uk3_st_vw_schadenstyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190036)
-- Name: st_vw_schadenstyp uk4_st_vw_schadenstyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenstyp
    ADD CONSTRAINT uk4_st_vw_schadenstyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688001)
-- Name: st_vw_schadenstyp tr_a_d__st_vw_schadenstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schadenstyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schadenstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688137)
-- Name: st_vw_schadenstyp tr_a_i_or_u_or_d__st_vw_schadenstyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schadenstyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schadenstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688273)
-- Name: st_vw_schadenstyp tr_a_u__st_vw_schadenstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schadenstyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schadenstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688411)
-- Name: st_vw_schadenstyp tr_b_i_or_u_or_d__st_vw_schadenstyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schadenstyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schadenstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690268)
-- Name: st_vw_schadenstyp fk_st_vw_schadenstyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schadenstyp
    ADD CONSTRAINT fk_st_vw_schadenstyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:29

--
-- PostgreSQL database dump complete
--

