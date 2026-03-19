--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:12

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
-- TOC entry 12246 (class 1259 OID 39686538)
-- Name: st_vw_einlaufnummer; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_einlaufnummer (
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
-- Dependencies: 12246
-- Name: TABLE st_vw_einlaufnummer; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_einlaufnummer IS 'Stammdaten Einlaufnummer';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12246
-- Name: COLUMN st_vw_einlaufnummer.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einlaufnummer.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39686538)
-- Dependencies: 12246
-- Data for Name: st_vw_einlaufnummer; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_einlaufnummer (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-10-30 14:27:57.63907+01	2100-01-01 00:00:00+01	2024-10-30 14:27:57.63907+01	unbekannt	2024-10-30 14:27:57.63907+01	unbekannt	00000000-0000-0000-0000-000000000001
aa1c7159-fed3-436b-8254-d73db1c2e548	unbekannt	E1	E1	\N	001	2024-10-30 14:29:20.118457+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.118457+01	unbekannt	2024-10-30 14:29:20.118457+01	unbekannt	00000000-0000-0000-0000-000000000001
346ac5c6-0c03-4b81-8a00-c1e7f7af48be	unbekannt	E2	E2	\N	001	2024-10-30 14:29:20.122289+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.122289+01	unbekannt	2024-10-30 14:29:20.122289+01	unbekannt	00000000-0000-0000-0000-000000000001
97fed19c-5839-4e0e-a36a-292d4859d664	unbekannt	E3	E3	\N	001	2024-10-30 14:29:20.125191+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.125191+01	unbekannt	2024-10-30 14:29:20.125191+01	unbekannt	00000000-0000-0000-0000-000000000001
bc3bd196-9a9b-4784-a238-ad800d00000d	unbekannt	E4	E4	\N	001	2024-10-30 14:29:20.127896+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.127896+01	unbekannt	2024-10-30 14:29:20.127896+01	unbekannt	00000000-0000-0000-0000-000000000001
222995b1-98b1-4f71-b219-e03d409ef260	unbekannt	E5	E5	\N	001	2024-10-30 14:29:20.130449+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.130449+01	unbekannt	2024-10-30 14:29:20.130449+01	unbekannt	00000000-0000-0000-0000-000000000001
e8736a44-ea5d-4726-83ba-335932327ae5	unbekannt	E6	E6	\N	001	2024-10-30 14:29:20.133116+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.133116+01	unbekannt	2024-10-30 14:29:20.133116+01	unbekannt	00000000-0000-0000-0000-000000000001
a0366d0f-c583-4cb4-b877-082ddddb3603	unbekannt	E7	E7	\N	001	2024-10-30 14:29:20.135715+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.135715+01	unbekannt	2024-10-30 14:29:20.135715+01	unbekannt	00000000-0000-0000-0000-000000000001
0b42407d-56c5-4681-973c-e2341991d033	unbekannt	E8	E8	\N	001	2024-10-30 14:29:20.138181+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.138181+01	unbekannt	2024-10-30 14:29:20.138181+01	unbekannt	00000000-0000-0000-0000-000000000001
9b48c3cd-82a2-412f-975e-51b4406742dd	unbekannt	E9	E9	\N	001	2024-10-30 14:29:20.140646+01	2100-01-01 00:00:00+01	2024-10-30 14:29:20.140646+01	unbekannt	2024-10-30 14:29:20.140646+01	unbekannt	00000000-0000-0000-0000-000000000001
dd7dbd6a-c65c-4ea9-a17c-01c4775d138e	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4599a630-3d45-4d44-bca3-4aa790cc228b	unbekannt	E1	E1	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a7f410cc-232e-413e-9a9e-32d4888233cb	unbekannt	E2	E2	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
38e09fb4-e58b-4303-be8b-d2ac41b5d6b5	unbekannt	E3	E3	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1d772e18-2d99-4f60-8516-4eb982999c3a	unbekannt	E4	E4	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
108d231a-60bb-46e4-8c5b-3d7d56dfa8d8	unbekannt	E5	E5	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
28a0d57f-dc08-4f7e-bcaf-4f2e39358b94	unbekannt	E6	E6	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
bc2d7283-46ca-4ac5-b84c-3481ca0f2469	unbekannt	E7	E7	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
71d460de-f618-45f6-9e8b-8d2330845144	unbekannt	E8	E8	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1dd57397-caa1-4944-8b48-cc5fee10ab76	unbekannt	E9	E9	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687389)
-- Name: st_vw_einlaufnummer pk_st_vw_einlaufnummer; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einlaufnummer
    ADD CONSTRAINT pk_st_vw_einlaufnummer PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189841)
-- Name: st_vw_einlaufnummer uk3_st_vw_einlaufnummer_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einlaufnummer
    ADD CONSTRAINT uk3_st_vw_einlaufnummer_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189988)
-- Name: st_vw_einlaufnummer uk4_st_vw_einlaufnummer_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einlaufnummer
    ADD CONSTRAINT uk4_st_vw_einlaufnummer_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687978)
-- Name: st_vw_einlaufnummer tr_a_d__st_vw_einlaufnummer__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_einlaufnummer__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_einlaufnummer REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688114)
-- Name: st_vw_einlaufnummer tr_a_i_or_u_or_d__st_vw_einlaufnummer__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_einlaufnummer__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_einlaufnummer FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688250)
-- Name: st_vw_einlaufnummer tr_a_u__st_vw_einlaufnummer__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_einlaufnummer__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_einlaufnummer REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688388)
-- Name: st_vw_einlaufnummer tr_b_i_or_u_or_d__st_vw_einlaufnummer__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_einlaufnummer__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_einlaufnummer FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690173)
-- Name: st_vw_einlaufnummer fk_st_vw_einlaufnummer_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einlaufnummer
    ADD CONSTRAINT fk_st_vw_einlaufnummer_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:14

--
-- PostgreSQL database dump complete
--

