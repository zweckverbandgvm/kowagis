--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:52

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
-- TOC entry 12216 (class 1259 OID 39685799)
-- Name: st_vw_verschluss; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_verschluss (
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
-- Dependencies: 12216
-- Name: TABLE st_vw_verschluss; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_verschluss IS 'Stammdaten Verschluss';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12216
-- Name: COLUMN st_vw_verschluss.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschluss.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685799)
-- Dependencies: 12216
-- Data for Name: st_vw_verschluss; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_verschluss (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-24 08:09:43.633741+02	2100-01-01 00:00:00+01	2024-07-24 08:09:43.633741+02	unbekannt	2024-07-24 08:09:43.633741+02	unbekannt	00000000-0000-0000-0000-000000000001
03bc7146-483d-4050-80c5-22a6df2ed52c	unbekannt	ohne Scharnier	ohne Scharnier	\N	001	2024-07-24 08:13:16.843753+02	2100-01-01 00:00:00+01	2024-07-24 08:13:16.843753+02	unbekannt	2024-07-24 08:13:16.843753+02	unbekannt	00000000-0000-0000-0000-000000000001
febbda2a-55a7-481f-8565-0d6761f33b45	unbekannt	mit Scharnier	mit Scharnier	\N	001	2024-07-24 08:13:16.843753+02	2100-01-01 00:00:00+01	2024-07-24 08:13:16.843753+02	unbekannt	2024-07-24 08:13:16.843753+02	unbekannt	00000000-0000-0000-0000-000000000001
8b9ae7ce-a74d-401c-9842-9864f86472f1	unbekannt	verschraubt	verschraubt	\N	001	2024-07-24 08:13:16.843753+02	2100-01-01 00:00:00+01	2024-07-24 08:13:16.843753+02	unbekannt	2024-07-24 08:13:16.843753+02	unbekannt	00000000-0000-0000-0000-000000000001
83615347-bed0-4ca1-a879-0fb8e4d4baa5	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5610ab0e-2121-44d3-8438-885323db070c	unbekannt	ohne Scharnier	ohne Scharnier	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
381b9f0e-cfb2-42f8-9891-e62630e4a331	unbekannt	mit Scharnier	mit Scharnier	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1e77e29c-d5c6-41c6-82f4-228f87c23ce2	unbekannt	verschraubt	verschraubt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687455)
-- Name: st_vw_verschluss pk_st_vw_verschluss; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschluss
    ADD CONSTRAINT pk_st_vw_verschluss PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189907)
-- Name: st_vw_verschluss uk3_st_vw_verschluss_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschluss
    ADD CONSTRAINT uk3_st_vw_verschluss_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190056)
-- Name: st_vw_verschluss uk4_st_vw_verschluss_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschluss
    ADD CONSTRAINT uk4_st_vw_verschluss_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688011)
-- Name: st_vw_verschluss tr_a_d__st_vw_verschluss__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_verschluss__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_verschluss REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688147)
-- Name: st_vw_verschluss tr_a_i_or_u_or_d__st_vw_verschluss__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_verschluss__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verschluss FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688283)
-- Name: st_vw_verschluss tr_a_u__st_vw_verschluss__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_verschluss__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_verschluss REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688421)
-- Name: st_vw_verschluss tr_b_i_or_u_or_d__st_vw_verschluss__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_verschluss__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verschluss FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690303)
-- Name: st_vw_verschluss fk_st_vw_verschluss_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschluss
    ADD CONSTRAINT fk_st_vw_verschluss_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:54

--
-- PostgreSQL database dump complete
--

