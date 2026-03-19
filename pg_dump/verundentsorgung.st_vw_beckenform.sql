--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:33

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
-- TOC entry 12169 (class 1259 OID 39684955)
-- Name: st_vw_beckenform; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_beckenform (
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
-- Dependencies: 12169
-- Name: TABLE st_vw_beckenform; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_beckenform IS 'Stammdaten Beckenform';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12169
-- Name: COLUMN st_vw_beckenform.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenform.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39684955)
-- Dependencies: 12169
-- Data for Name: st_vw_beckenform; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_beckenform (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-05 09:55:01.890306+02	2100-01-01 00:00:00+01	2024-08-05 09:55:01.890306+02	unbekannt	2024-08-05 09:55:01.890306+02	unbekannt	00000000-0000-0000-0000-000000000001
5f5d2c91-2d53-446d-b739-71031c9def9d	unbekannt	1	rund	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
d0b4866d-8123-49c5-bc84-6bb47c09fc86	unbekannt	3	unregelmäßig	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
4c825bff-e4f8-4957-b597-f7caecbd966e	unbekannt	2	rechteckig	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
7444aa2c-5f02-4586-9fb3-4e0e8e040eb0	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
71c8a962-4e00-41ab-811d-9895c47cc630	unbekannt	1	rund	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
56e176d6-951f-4ba8-b4e2-fd1465c9e2f6	unbekannt	3	unregelmäßig	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
292c46f5-8d57-4d97-9c16-0316c26fa2ae	unbekannt	2	rechteckig	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687359)
-- Name: st_vw_beckenform pk_st_vw_beckenform; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenform
    ADD CONSTRAINT pk_st_vw_beckenform PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189811)
-- Name: st_vw_beckenform uk3_st_vw_beckenform_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenform
    ADD CONSTRAINT uk3_st_vw_beckenform_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189954)
-- Name: st_vw_beckenform uk4_st_vw_beckenform_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenform
    ADD CONSTRAINT uk4_st_vw_beckenform_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687963)
-- Name: st_vw_beckenform tr_a_d__st_vw_beckenform__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_beckenform__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_beckenform REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688099)
-- Name: st_vw_beckenform tr_a_i_or_u_or_d__st_vw_beckenform__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_beckenform__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beckenform FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688235)
-- Name: st_vw_beckenform tr_a_u__st_vw_beckenform__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_beckenform__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_beckenform REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688373)
-- Name: st_vw_beckenform tr_b_i_or_u_or_d__st_vw_beckenform__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_beckenform__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beckenform FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690093)
-- Name: st_vw_beckenform fk_st_vw_beckenform_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenform
    ADD CONSTRAINT fk_st_vw_beckenform_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:35

--
-- PostgreSQL database dump complete
--

