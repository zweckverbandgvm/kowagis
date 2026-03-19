--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:58

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
-- TOC entry 12218 (class 1259 OID 39685835)
-- Name: st_vw_vorgangart; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_vorgangart (
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
    id_st_vw_objektbezeichnung uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL
);


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12218
-- Name: TABLE st_vw_vorgangart; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_vorgangart IS 'Stammdaten Vorgangart';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.id IS '  ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.ident_hist IS 'historische ID';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.kurztext IS 'Kurztext ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.langtext IS 'Langtext ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.id_st_vw_objektbezeichnung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.id_st_vw_objektbezeichnung IS 'ID st vw Objektbezeichnung';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 12218
-- Name: COLUMN st_vw_vorgangart.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_vorgangart.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83798 (class 0 OID 39685835)
-- Dependencies: 12218
-- Data for Name: st_vw_vorgangart; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_vorgangart (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_objektbezeichnung, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000000	00000000-0000-0000-0000-000000000001
777256da-fcda-4e52-aa06-cf8a0ff49b44	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000000	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81947 (class 2606 OID 39687461)
-- Name: st_vw_vorgangart pk_st_vw_vorgangart_id; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_vorgangart
    ADD CONSTRAINT pk_st_vw_vorgangart_id PRIMARY KEY (id);


--
-- TOC entry 81949 (class 2606 OID 52189930)
-- Name: st_vw_vorgangart uk3_st_vw_vorgangart_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_vorgangart
    ADD CONSTRAINT uk3_st_vw_vorgangart_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81951 (class 2606 OID 52190062)
-- Name: st_vw_vorgangart uk4_st_vw_vorgangart_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_vorgangart
    ADD CONSTRAINT uk4_st_vw_vorgangart_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81954 (class 2620 OID 39688014)
-- Name: st_vw_vorgangart tr_a_d__st_vw_vorgangart__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_vorgangart__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_vorgangart REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688150)
-- Name: st_vw_vorgangart tr_a_i_or_u_or_d__st_vw_vorgangart__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_vorgangart__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_vorgangart FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81956 (class 2620 OID 39688286)
-- Name: st_vw_vorgangart tr_a_u__st_vw_vorgangart__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_vorgangart__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_vorgangart REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81957 (class 2620 OID 39688424)
-- Name: st_vw_vorgangart tr_b_i_or_u_or_d__st_vw_vorgangart__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_vorgangart__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_vorgangart FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81952 (class 2606 OID 39690318)
-- Name: st_vw_vorgangart fk_st_vw_vorgangart_st_vw_objektbezeichnung; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_vorgangart
    ADD CONSTRAINT fk_st_vw_vorgangart_st_vw_objektbezeichnung FOREIGN KEY (id_st_vw_objektbezeichnung) REFERENCES verundentsorgung.st_vw_objektbezeichnung(id);


--
-- TOC entry 81953 (class 2606 OID 39690323)
-- Name: st_vw_vorgangart fk_st_vw_vorgangart_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_vorgangart
    ADD CONSTRAINT fk_st_vw_vorgangart_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:16:00

--
-- PostgreSQL database dump complete
--

