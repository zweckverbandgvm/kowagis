--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:34

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
-- TOC entry 12209 (class 1259 OID 39685673)
-- Name: st_vw_sonstige_anlage_typ; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_sonstige_anlage_typ (
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
-- Dependencies: 12209
-- Name: TABLE st_vw_sonstige_anlage_typ; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_sonstige_anlage_typ IS 'Stammdaten Sonstige Anlage Typ';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.id IS '  ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.ident_hist IS 'historische ID';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.kurztext IS 'Kurztext ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.langtext IS 'Langtext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12209
-- Name: COLUMN st_vw_sonstige_anlage_typ.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_sonstige_anlage_typ.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83795 (class 0 OID 39685673)
-- Dependencies: 12209
-- Data for Name: st_vw_sonstige_anlage_typ; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_sonstige_anlage_typ (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-23 11:26:49.106243+02	2100-01-01 00:00:00+01	2024-07-23 11:26:49.106243+02	unbekannt	2024-07-23 11:26:49.106243+02	unbekannt	00000000-0000-0000-0000-000000000001
5b4c9d3d-8fff-42dd-9d6a-f7c8df6c7a99	unbekannt	DRUN	Steinschlucker	\N	001	2024-07-23 13:16:19.939058+02	2100-01-01 00:00:00+01	2024-07-23 13:16:19.939058+02	unbekannt	2024-07-23 13:16:19.939058+02	unbekannt	00000000-0000-0000-0000-000000000001
7caeeeca-755e-4d45-b84a-f242ddd68452	unbekannt	EE	Be- und Entlüftung	\N	001	2024-07-23 13:16:19.939058+02	2100-01-01 00:00:00+01	2024-07-23 13:16:19.939058+02	unbekannt	2024-07-23 13:16:19.939058+02	unbekannt	00000000-0000-0000-0000-000000000001
c062e37e-82f3-4e0d-bdc0-48e87172de58	unbekannt	ENT	Entleerung	\N	001	2024-07-23 13:16:19.939058+02	2100-01-01 00:00:00+01	2024-07-23 13:16:19.939058+02	unbekannt	2024-07-23 13:16:19.939058+02	unbekannt	00000000-0000-0000-0000-000000000001
2d4711a7-6d9e-46fd-9377-bfa8f8a2e8d8	unbekannt	TRA	Trafo	\N	001	2024-07-23 13:16:19.939058+02	2100-01-01 00:00:00+01	2024-07-23 13:16:19.939058+02	unbekannt	2024-07-23 13:16:19.939058+02	unbekannt	00000000-0000-0000-0000-000000000001
b6d0c90a-f6ac-4e9c-b88a-2162802a510a	unbekannt	WSP	Wasserspiegel	\N	001	2024-07-23 13:16:19.939058+02	2100-01-01 00:00:00+01	2024-07-23 13:16:19.939058+02	unbekannt	2024-07-23 13:16:19.939058+02	unbekannt	00000000-0000-0000-0000-000000000001
5e9716c2-633e-4105-b0fe-323d2f462997	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
53210bd4-1a52-450f-b56d-2cda7a6511de	unbekannt	DRUN	Steinschlucker	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e66381bc-b71e-411e-b9bf-c3f8f6f75d80	unbekannt	EE	Be- und Entlüftung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d9bfedc3-394f-4295-b614-f5f972a8aba1	unbekannt	ENT	Entleerung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
74d4766d-faed-44b6-9187-d6d03e69b220	unbekannt	TRA	Trafo	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
069ef9c1-c0c2-4d0e-bac0-4acc813a8af7	unbekannt	WSP	Wasserspiegel	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687441)
-- Name: st_vw_sonstige_anlage_typ pk_st_vw_sonstige_anlage_typ; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_sonstige_anlage_typ
    ADD CONSTRAINT pk_st_vw_sonstige_anlage_typ PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189795)
-- Name: st_vw_sonstige_anlage_typ uk3_st_vw_sonstige_anlage_typ_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_sonstige_anlage_typ
    ADD CONSTRAINT uk3_st_vw_sonstige_anlage_typ_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189938)
-- Name: st_vw_sonstige_anlage_typ uk4_st_vw_sonstige_anlage_typ_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_sonstige_anlage_typ
    ADD CONSTRAINT uk4_st_vw_sonstige_anlage_typ_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81951 (class 2620 OID 39688004)
-- Name: st_vw_sonstige_anlage_typ tr_a_d__st_vw_sonstige_anlage_typ__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_sonstige_anlage_typ__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_sonstige_anlage_typ REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81952 (class 2620 OID 39688140)
-- Name: st_vw_sonstige_anlage_typ tr_a_i_or_u_or_d__st_vw_sonstige_anlage_typ__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_sonstige_anlage_typ__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_sonstige_anlage_typ FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81953 (class 2620 OID 39688276)
-- Name: st_vw_sonstige_anlage_typ tr_a_u__st_vw_sonstige_anlage_typ__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_sonstige_anlage_typ__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_sonstige_anlage_typ REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 39688414)
-- Name: st_vw_sonstige_anlage_typ tr_b_i_or_u_or_d__st_vw_sonstige_anlage_typ__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_sonstige_anlage_typ__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_sonstige_anlage_typ FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


-- Completed on 2026-03-18 15:15:35

--
-- PostgreSQL database dump complete
--

