--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:25

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
-- TOC entry 12189 (class 1259 OID 39685315)
-- Name: st_vw_hersteller; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_hersteller (
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
-- Dependencies: 12189
-- Name: TABLE st_vw_hersteller; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_hersteller IS 'Stammdaten Hersteller';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12189
-- Name: COLUMN st_vw_hersteller.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_hersteller.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685315)
-- Dependencies: 12189
-- Data for Name: st_vw_hersteller; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_hersteller (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 14:30:41.495961+02	2100-01-01 00:00:00+01	2024-08-06 14:30:41.495961+02	unbekannt	2024-08-06 14:30:41.495961+02	unbekannt	00000000-0000-0000-0000-000000000001
d218c895-dd74-4697-bef8-e1fb8ffb800f	unbekannt	alter Hydrant	alter Hydrant	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
6c5213f1-5b44-4a00-a305-2c42cbd0c10a	unbekannt	EWE	EWE	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
869cf8fd-409d-41c6-b084-f823da9328e1	unbekannt	Hawle	Hawle	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
2d9af6d4-3038-41c6-9222-55ee2513b7f7	unbekannt	keine Angabe	keine Angabe	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
86eb8059-3cd4-4e78-9a91-88479616af76	unbekannt	MaW Magdeburg	MaW Magdeburg	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
822f2506-1940-4497-a71a-016942ed7d75	unbekannt	Mittelmann	Mittelmann	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
c7cd3e43-7f9b-4999-99ad-1488954095c6	unbekannt	Schmieding	Schmieding	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
af2bae79-8ffd-4327-b711-2086702e965e	unbekannt	VAG	VAG	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
bb3f1b0c-549c-4b8f-84f1-4e81682b5a04	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
792510d8-dab1-4380-adfe-3db872f5b2a8	unbekannt	alter Hydrant	alter Hydrant	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
839de0d6-770b-421a-874f-9a117989a3d5	unbekannt	EWE	EWE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ec98ba2d-bea9-4397-8230-4a15c703a52b	unbekannt	Hawle	Hawle	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8d4de84b-8483-411b-ad22-ee831fc3da83	unbekannt	keine Angabe	keine Angabe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cf43a2ab-0e2d-4df6-9a98-24978b1bcd3d	unbekannt	MaW Magdeburg	MaW Magdeburg	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f1f2af76-2974-4c65-bf8b-629af1fa72a3	unbekannt	Mittelmann	Mittelmann	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0a7b7a66-9cf4-43fa-a4df-890b30a9bbd5	unbekannt	Schmieding	Schmieding	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c7949a41-7647-49fe-9b8d-bbcd84bd81ad	unbekannt	VAG	VAG	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687399)
-- Name: st_vw_hersteller pk_st_vw_hersteller; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hersteller
    ADD CONSTRAINT pk_st_vw_hersteller PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189851)
-- Name: st_vw_hersteller uk3_st_vw_hersteller_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hersteller
    ADD CONSTRAINT uk3_st_vw_hersteller_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190000)
-- Name: st_vw_hersteller uk4_st_vw_hersteller_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hersteller
    ADD CONSTRAINT uk4_st_vw_hersteller_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687983)
-- Name: st_vw_hersteller tr_a_d__st_vw_hersteller__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_hersteller__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_hersteller REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688119)
-- Name: st_vw_hersteller tr_a_i_or_u_or_d__st_vw_hersteller__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_hersteller__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_hersteller FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688255)
-- Name: st_vw_hersteller tr_a_u__st_vw_hersteller__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_hersteller__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_hersteller REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688393)
-- Name: st_vw_hersteller tr_b_i_or_u_or_d__st_vw_hersteller__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_hersteller__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_hersteller FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690198)
-- Name: st_vw_hersteller fk_st_vw_hersteller_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hersteller
    ADD CONSTRAINT fk_st_vw_hersteller_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:27

--
-- PostgreSQL database dump complete
--

