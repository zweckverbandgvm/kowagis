--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:24

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
-- TOC entry 12205 (class 1259 OID 39685601)
-- Name: st_vw_schachtform; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schachtform (
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
-- Dependencies: 12205
-- Name: TABLE st_vw_schachtform; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schachtform IS 'Stammdaten Schachtform';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12205
-- Name: COLUMN st_vw_schachtform.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtform.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685601)
-- Dependencies: 12205
-- Data for Name: st_vw_schachtform; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schachtform (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-05 07:44:10.170837+02	2100-01-01 00:00:00+01	2024-08-05 07:44:10.170837+02	unbekannt	2024-08-05 07:44:10.170837+02	unbekannt	00000000-0000-0000-0000-000000000001
26fb7987-e36d-4d8d-8a13-532118167dda	unbekannt	Z	andere	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
19a4bf0b-544c-4398-b8d7-1c794cb2906b	unbekannt	Q	quadratisch	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
ee0f8a56-0482-403a-9632-12feb9eee0f4	unbekannt	R	rund	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
8aa6767f-f4aa-474c-9997-2eca2c2ea3ce	unbekannt	S	Sonderform	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
d7beb355-f1af-4fae-8b29-5b5784d0849b	unbekannt	REE	rechteckig	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
486c0c20-34fa-4422-9a00-e31e9ac52210	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
20023b12-0036-4216-b5b4-041874190134	unbekannt	Z	andere	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
aa301b9e-79c8-40f7-b661-428d6b641276	unbekannt	Q	quadratisch	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
42314b63-b070-407c-b58a-4b3b374ab9ad	unbekannt	R	rund	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2c50583e-e399-4686-a15d-b89113fdf25d	unbekannt	S	Sonderform	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c38e7f02-27ca-4131-8118-e5829cb23d77	unbekannt	REE	rechteckig	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687431)
-- Name: st_vw_schachtform pk_st_vw_schachtform; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtform
    ADD CONSTRAINT pk_st_vw_schachtform PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189883)
-- Name: st_vw_schachtform uk3_st_vw_schachtform_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtform
    ADD CONSTRAINT uk3_st_vw_schachtform_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190032)
-- Name: st_vw_schachtform uk4_st_vw_schachtform_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtform
    ADD CONSTRAINT uk4_st_vw_schachtform_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687999)
-- Name: st_vw_schachtform tr_a_d__st_vw_schachtform__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schachtform__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schachtform REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688135)
-- Name: st_vw_schachtform tr_a_i_or_u_or_d__st_vw_schachtform__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schachtform__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schachtform FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688271)
-- Name: st_vw_schachtform tr_a_u__st_vw_schachtform__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schachtform__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schachtform REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688409)
-- Name: st_vw_schachtform tr_b_i_or_u_or_d__st_vw_schachtform__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schachtform__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schachtform FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690258)
-- Name: st_vw_schachtform fk_st_vw_schachtform_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtform
    ADD CONSTRAINT fk_st_vw_schachtform_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:25

--
-- PostgreSQL database dump complete
--

