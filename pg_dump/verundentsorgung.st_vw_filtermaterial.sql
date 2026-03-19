--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:19

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
-- TOC entry 12187 (class 1259 OID 39685279)
-- Name: st_vw_filtermaterial; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_filtermaterial (
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
-- Dependencies: 12187
-- Name: TABLE st_vw_filtermaterial; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_filtermaterial IS 'Stammdaten Filtermaterial';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12187
-- Name: COLUMN st_vw_filtermaterial.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_filtermaterial.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685279)
-- Dependencies: 12187
-- Data for Name: st_vw_filtermaterial; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_filtermaterial (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-05 09:54:00.380891+02	2100-01-01 00:00:00+01	2024-08-05 09:54:00.380891+02	unbekannt	2024-08-05 09:54:00.380891+02	unbekannt	00000000-0000-0000-0000-000000000001
6a21e76c-2bc1-4b50-a03f-e03aa5791383	unbekannt	1	Kies	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
8ba8e9b6-7485-4686-946f-87914fef38a6	unbekannt	3	Sand	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
5062329d-9500-4e94-80c8-e20ede2649ee	unbekannt	5	kein Filtermaterial	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
b757805d-3745-4696-a6ff-3fd1091ddb2b	unbekannt	tbd	noch festzulegen	\N	001	2024-08-05 10:13:22.51112+02	2100-01-01 00:00:00+01	2024-08-05 10:13:22.51112+02	unbekannt	2024-08-05 10:13:22.51112+02	unbekannt	00000000-0000-0000-0000-000000000001
e5110c2f-7745-43dc-94a4-40a12a721355	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cc3eb94b-19ac-455e-bdf5-0b363121086b	unbekannt	1	Kies	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
28938262-15c1-4ebb-a1b8-cf5e680b685d	unbekannt	3	Sand	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e0c31f72-40c0-4294-977b-7014ee7b8f02	unbekannt	5	kein Filtermaterial	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
dcacd1f2-5b3e-499f-b3c8-f81e4cc1f126	unbekannt	tbd	noch festzulegen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687395)
-- Name: st_vw_filtermaterial pk_st_vw_filtermaterial; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_filtermaterial
    ADD CONSTRAINT pk_st_vw_filtermaterial PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189847)
-- Name: st_vw_filtermaterial uk3_st_vw_filtermaterial_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_filtermaterial
    ADD CONSTRAINT uk3_st_vw_filtermaterial_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189994)
-- Name: st_vw_filtermaterial uk4_st_vw_filtermaterial_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_filtermaterial
    ADD CONSTRAINT uk4_st_vw_filtermaterial_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687981)
-- Name: st_vw_filtermaterial tr_a_d__st_vw_filtermaterial__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_filtermaterial__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_filtermaterial REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688117)
-- Name: st_vw_filtermaterial tr_a_i_or_u_or_d__st_vw_filtermaterial__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_filtermaterial__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_filtermaterial FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688253)
-- Name: st_vw_filtermaterial tr_a_u__st_vw_filtermaterial__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_filtermaterial__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_filtermaterial REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688391)
-- Name: st_vw_filtermaterial tr_b_i_or_u_or_d__st_vw_filtermaterial__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_filtermaterial__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_filtermaterial FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690188)
-- Name: st_vw_filtermaterial fk_st_vw_filtermaterial_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_filtermaterial
    ADD CONSTRAINT fk_st_vw_filtermaterial_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:21

--
-- PostgreSQL database dump complete
--

