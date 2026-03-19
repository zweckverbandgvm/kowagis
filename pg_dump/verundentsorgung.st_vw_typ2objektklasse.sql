--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:44

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
-- TOC entry 16391 (class 1259 OID 44380726)
-- Name: st_vw_typ2objektklasse; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_typ2objektklasse (
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
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    table_schema text DEFAULT 'unbekannt'::text NOT NULL,
    table_name text DEFAULT 'unbekannt'::text NOT NULL
);


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 16391
-- Name: TABLE st_vw_typ2objektklasse; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_typ2objektklasse IS 'Stammdaten Typ2objektklasse';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.id IS '  ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.ident_hist IS 'historische ID';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.kurztext IS 'Kurztext ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.langtext IS 'Langtext ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.table_schema; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.table_schema IS 'Table Schema ';


--
-- TOC entry 83819 (class 0 OID 0)
-- Dependencies: 16391
-- Name: COLUMN st_vw_typ2objektklasse.table_name; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_typ2objektklasse.table_name IS 'Table Name ';


--
-- TOC entry 83798 (class 0 OID 44380726)
-- Dependencies: 16391
-- Data for Name: st_vw_typ2objektklasse; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_typ2objektklasse (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, table_schema, table_name) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2025-07-02 12:04:07.709598+02	2100-01-01 00:00:00+01	2025-07-02 12:04:07.709598+02	unbekannt	2025-07-02 12:04:07.709598+02	unbekannt	00000000-0000-0000-0000-000000000001	unbekannt	unbekannt
da171de5-0245-482d-9b6a-f993223ed605	unbekannt	id_st_vw_schacht_typ	st_vw_schacht_typ	\N	001	2025-03-18 10:21:24.53808+01	2100-01-01 00:00:00+01	2025-03-18 10:21:24.53808+01	unbekannt	2025-03-18 10:21:24.53808+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_schacht
8195af76-6bc4-421c-8aac-ae325e2631f2	unbekannt	unbekannt	unbekannt	\N	001	2025-07-02 12:04:07.709598+02	2100-01-01 00:00:00+01	2025-07-02 12:04:07.709598+02	unbekannt	2025-07-02 12:04:07.709598+02	unbekannt	00000000-0000-0000-0000-000000000003	unbekannt	unbekannt
4e24e9ba-9ac4-4098-a46d-b1261e531966	unbekannt	id_st_vw_schacht_typ	st_vw_schacht_typ	\N	001	2025-03-18 10:21:24.53808+01	2100-01-01 00:00:00+01	2025-03-18 10:21:24.53808+01	unbekannt	2025-03-18 10:21:24.53808+01	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_schacht
\.


--
-- TOC entry 81948 (class 2606 OID 44380747)
-- Name: st_vw_typ2objektklasse pk_st_vw_typ2objektklasse; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_typ2objektklasse
    ADD CONSTRAINT pk_st_vw_typ2objektklasse PRIMARY KEY (id);


--
-- TOC entry 81950 (class 2606 OID 52189899)
-- Name: st_vw_typ2objektklasse uk3_st_vw_typ2objektklasse_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_typ2objektklasse
    ADD CONSTRAINT uk3_st_vw_typ2objektklasse_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81952 (class 2606 OID 52190048)
-- Name: st_vw_typ2objektklasse uk4_st_vw_typ2objektklasse_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_typ2objektklasse
    ADD CONSTRAINT uk4_st_vw_typ2objektklasse_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81954 (class 2620 OID 44380752)
-- Name: st_vw_typ2objektklasse tr_a_d__st_vw_typ2objektklasse__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_typ2objektklasse__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_typ2objektklasse REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 44380753)
-- Name: st_vw_typ2objektklasse tr_a_i_or_u_or_d__st_vw_typ2objektklasse__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_typ2objektklasse__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_typ2objektklasse FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81956 (class 2620 OID 44380754)
-- Name: st_vw_typ2objektklasse tr_a_u__st_vw_typ2objektklasse__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_typ2objektklasse__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_typ2objektklasse REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81957 (class 2620 OID 44380755)
-- Name: st_vw_typ2objektklasse tr_b_i_or_u_or_d__st_vw_typ2objektklasse__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_typ2objektklasse__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_typ2objektklasse FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81953 (class 2606 OID 44380756)
-- Name: st_vw_typ2objektklasse fk_st_vw_typ2objektklasse_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_typ2objektklasse
    ADD CONSTRAINT fk_st_vw_typ2objektklasse_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:46

--
-- PostgreSQL database dump complete
--

