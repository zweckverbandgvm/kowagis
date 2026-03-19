--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:17

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
-- TOC entry 12202 (class 1259 OID 39685547)
-- Name: st_vw_pumpwerkstyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_pumpwerkstyp (
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
-- TOC entry 83801 (class 0 OID 0)
-- Dependencies: 12202
-- Name: TABLE st_vw_pumpwerkstyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_pumpwerkstyp IS 'Stammdaten Pumpwerkstyp';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.id IS '  ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.ident_hist IS 'historische ID';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.langtext IS 'Langtext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12202
-- Name: COLUMN st_vw_pumpwerkstyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_pumpwerkstyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83795 (class 0 OID 39685547)
-- Dependencies: 12202
-- Data for Name: st_vw_pumpwerkstyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_pumpwerkstyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-23 09:39:59.234834+02	2100-01-01 00:00:00+01	2024-07-23 09:39:59.234834+02	unbekannt	2024-07-23 09:39:59.234834+02	unbekannt	00000000-0000-0000-0000-000000000001
e726e2a8-8a1c-4778-8dc8-eb0f6ca42397	unbekannt	APW	Abwasserpumpwerk	\N	001	2024-07-23 09:46:03.675268+02	2100-01-01 00:00:00+01	2024-07-23 09:46:03.675268+02	unbekannt	2024-07-23 09:46:03.675268+02	unbekannt	00000000-0000-0000-0000-000000000001
35f2797a-5075-430e-a484-3e466f6176ca	unbekannt	HaPW	Hauspumpwerk	\N	001	2024-07-23 09:46:03.675268+02	2100-01-01 00:00:00+01	2024-07-23 09:46:03.675268+02	unbekannt	2024-07-23 09:46:03.675268+02	unbekannt	00000000-0000-0000-0000-000000000001
f177aaf8-d3ac-4d96-98ad-31a2ef00d33c	unbekannt	PW	Hauptpumpwerk	\N	001	2024-07-23 09:46:03.675268+02	2100-01-01 00:00:00+01	2024-07-23 09:46:03.675268+02	unbekannt	2024-07-23 09:46:03.675268+02	unbekannt	00000000-0000-0000-0000-000000000001
fd7295d8-e537-46bf-9a42-b0b9423076e6	unbekannt	RPW	Regenwasserpumpwerk	\N	001	2025-02-25 09:19:18.479825+01	2100-01-01 00:00:00+01	2025-02-25 09:19:18.479825+01	unbekannt	2025-02-25 09:19:18.479825+01	unbekannt	00000000-0000-0000-0000-000000000001
ea0237bc-c4d5-4699-b451-78d248549fea	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
97c9c8a5-cfd6-4536-b03c-c3a7db213f8a	unbekannt	APW	Abwasserpumpwerk	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2a2cfae1-38bd-4aa4-a6b4-4d89972f86d2	unbekannt	HaPW	Hauspumpwerk	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c2b555ec-0feb-41bd-a51e-626708517ce8	unbekannt	PW	Hauptpumpwerk	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
55c7407b-4cbf-4db5-8be3-25f001dbeea4	unbekannt	RPW	Regenwasserpumpwerk	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687425)
-- Name: st_vw_pumpwerkstyp pk_st_vw_pumpwerkstyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_pumpwerkstyp
    ADD CONSTRAINT pk_st_vw_pumpwerkstyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189789)
-- Name: st_vw_pumpwerkstyp uk3_st_vw_pumpwerkstyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_pumpwerkstyp
    ADD CONSTRAINT uk3_st_vw_pumpwerkstyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189932)
-- Name: st_vw_pumpwerkstyp uk4_st_vw_pumpwerkstyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_pumpwerkstyp
    ADD CONSTRAINT uk4_st_vw_pumpwerkstyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81951 (class 2620 OID 39687996)
-- Name: st_vw_pumpwerkstyp tr_a_d__st_vw_pumpwerkstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_pumpwerkstyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_pumpwerkstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81952 (class 2620 OID 39688132)
-- Name: st_vw_pumpwerkstyp tr_a_i_or_u_or_d__st_vw_pumpwerkstyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_pumpwerkstyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_pumpwerkstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81953 (class 2620 OID 39688268)
-- Name: st_vw_pumpwerkstyp tr_a_u__st_vw_pumpwerkstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_pumpwerkstyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_pumpwerkstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 39688406)
-- Name: st_vw_pumpwerkstyp tr_b_i_or_u_or_d__st_vw_pumpwerkstyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_pumpwerkstyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_pumpwerkstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


-- Completed on 2026-03-18 15:15:19

--
-- PostgreSQL database dump complete
--

