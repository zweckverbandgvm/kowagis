--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:40

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
-- TOC entry 12172 (class 1259 OID 39685009)
-- Name: st_vw_beckentyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_beckentyp (
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
-- Dependencies: 12172
-- Name: TABLE st_vw_beckentyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_beckentyp IS 'Stammdaten Beckentyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12172
-- Name: COLUMN st_vw_beckentyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckentyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685009)
-- Dependencies: 12172
-- Data for Name: st_vw_beckentyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_beckentyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-29 13:25:05.842221+02	2100-01-01 00:00:00+01	2024-07-29 13:25:05.842221+02	unbekannt	2024-07-29 13:25:05.842221+02	unbekannt	00000000-0000-0000-0000-000000000001
b35a3a52-ef84-41a8-b715-ba3befb7232f	unbekannt	RRB	Regenrückhaltebecken	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
90cf6891-86f3-4f46-80d0-458e12fbecd0	unbekannt	TEI	Teich	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
7a7a2848-1712-4f66-820e-581ef73b3fc0	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
19abf012-7242-4769-be1b-082e623b73ef	unbekannt	RRB	Regenrückhaltebecken	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d9128a36-ec36-421a-8f3b-e5637047bce0	unbekannt	TEI	Teich	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687363)
-- Name: st_vw_beckentyp pk_st_vw_beckentyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckentyp
    ADD CONSTRAINT pk_st_vw_beckentyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189815)
-- Name: st_vw_beckentyp uk3_st_vw_beckentyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckentyp
    ADD CONSTRAINT uk3_st_vw_beckentyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189960)
-- Name: st_vw_beckentyp uk4_st_vw_beckentyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckentyp
    ADD CONSTRAINT uk4_st_vw_beckentyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687965)
-- Name: st_vw_beckentyp tr_a_d__st_vw_beckentyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_beckentyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_beckentyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688101)
-- Name: st_vw_beckentyp tr_a_i_or_u_or_d__st_vw_beckentyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_beckentyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beckentyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688237)
-- Name: st_vw_beckentyp tr_a_u__st_vw_beckentyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_beckentyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_beckentyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688375)
-- Name: st_vw_beckentyp tr_b_i_or_u_or_d__st_vw_beckentyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_beckentyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beckentyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690103)
-- Name: st_vw_beckentyp fk_st_vw_beckentyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckentyp
    ADD CONSTRAINT fk_st_vw_beckentyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:41

--
-- PostgreSQL database dump complete
--

