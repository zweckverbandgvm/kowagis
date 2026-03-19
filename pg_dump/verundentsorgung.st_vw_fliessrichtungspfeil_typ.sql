--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:21

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
-- TOC entry 16392 (class 1259 OID 44381395)
-- Name: st_vw_fliessrichtungspfeil_typ; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_fliessrichtungspfeil_typ (
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
-- Dependencies: 16392
-- Name: TABLE st_vw_fliessrichtungspfeil_typ; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_fliessrichtungspfeil_typ IS 'Stammdaten Fliessrichtungspfeil Typ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 16392
-- Name: COLUMN st_vw_fliessrichtungspfeil_typ.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_fliessrichtungspfeil_typ.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 44381395)
-- Dependencies: 16392
-- Data for Name: st_vw_fliessrichtungspfeil_typ; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_fliessrichtungspfeil_typ (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2025-03-19 10:58:41.086215+01	2100-01-01 00:00:00+01	2025-03-19 10:58:41.086215+01	unbekannt	2025-03-19 10:58:41.086215+01	unbekannt	00000000-0000-0000-0000-000000000001
97098735-bf81-467e-832d-5c9feaacd483	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 44381414)
-- Name: st_vw_fliessrichtungspfeil_typ pk_st_vw_fliessrichtungspfeil; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_fliessrichtungspfeil_typ
    ADD CONSTRAINT pk_st_vw_fliessrichtungspfeil PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189924)
-- Name: st_vw_fliessrichtungspfeil_typ uk3_st_vw_fliessrichtungspfeil_typ_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_fliessrichtungspfeil_typ
    ADD CONSTRAINT uk3_st_vw_fliessrichtungspfeil_typ_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189996)
-- Name: st_vw_fliessrichtungspfeil_typ uk4_st_vw_fliessrichtungspfeil_typ_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_fliessrichtungspfeil_typ
    ADD CONSTRAINT uk4_st_vw_fliessrichtungspfeil_typ_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 44381424)
-- Name: st_vw_fliessrichtungspfeil_typ tr_a_d__st_vw_fliessrichtungspfeil__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_fliessrichtungspfeil__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_fliessrichtungspfeil_typ REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 44381425)
-- Name: st_vw_fliessrichtungspfeil_typ tr_a_i_or_u_or_d__st_vw_fliessrichtungspfeil__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_fliessrichtungspfeil__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_fliessrichtungspfeil_typ FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 44381426)
-- Name: st_vw_fliessrichtungspfeil_typ tr_a_u__st_vw_fliessrichtungspfeil__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_fliessrichtungspfeil__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_fliessrichtungspfeil_typ REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 44381427)
-- Name: st_vw_fliessrichtungspfeil_typ tr_b_i_or_u_or_d__st_vw_fliessrichtungspfeil__tf_standard_befor; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_fliessrichtungspfeil__tf_standard_befor BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_fliessrichtungspfeil_typ FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 52279930)
-- Name: st_vw_fliessrichtungspfeil_typ fk_st_vw_fliessrichtungspfeil_typ_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_fliessrichtungspfeil_typ
    ADD CONSTRAINT fk_st_vw_fliessrichtungspfeil_typ_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:23

--
-- PostgreSQL database dump complete
--

