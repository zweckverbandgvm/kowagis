--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:23

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
-- TOC entry 12166 (class 1259 OID 39684901)
-- Name: st_vw_abwassereinleittyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_abwassereinleittyp (
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
-- Dependencies: 12166
-- Name: TABLE st_vw_abwassereinleittyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_abwassereinleittyp IS 'Stammdaten Abwassereinleittyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12166
-- Name: COLUMN st_vw_abwassereinleittyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abwassereinleittyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39684901)
-- Dependencies: 12166
-- Data for Name: st_vw_abwassereinleittyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_abwassereinleittyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
ca963e5c-b33b-48e2-8c5b-3cc933ae0e98	10002	EG1O	EINLEITSTELLE IN GEWÄSSER 1. ORDNUNG 	\N	001	2024-07-22 09:30:09.772454+02	2100-01-01 00:00:00+01	2024-07-22 09:30:09.772454+02	unbekannt	2024-07-22 09:30:09.772454+02	unbekannt	00000000-0000-0000-0000-000000000001
0d8cbf98-66c0-42e2-9ed3-f07cb462eedd	10003	EG2O	EINLEITSTELLE IN GEWÄSSER 2. ORDNUNG 	\N	001	2024-07-22 09:30:12.137625+02	2100-01-01 00:00:00+01	2024-07-22 09:30:12.137625+02	unbekannt	2024-07-22 09:30:12.137625+02	unbekannt	00000000-0000-0000-0000-000000000001
e0b3aeb5-e563-4012-8621-a137cde9704c	10004	EINL	EINLAUF	\N	001	2024-07-22 09:30:13.708674+02	2100-01-01 00:00:00+01	2024-07-22 09:30:13.708674+02	unbekannt	2024-07-22 09:30:13.708674+02	unbekannt	00000000-0000-0000-0000-000000000001
d556e3c6-bb54-4431-8537-9f32ac682cda	10005	ESGW	EINLEITSTELLE IN DAS GRUNDWASSER     	\N	001	2024-07-22 09:30:15.433706+02	2100-01-01 00:00:00+01	2024-07-22 09:30:15.433706+02	unbekannt	2024-07-22 09:30:15.433706+02	unbekannt	00000000-0000-0000-0000-000000000001
287a4468-5585-4e98-8648-b3e4808cee6c	10006	ESOG	EINLEITSTELLE OBERIDISCHES GEWÄSSER  	\N	001	2024-07-22 09:30:17.280569+02	2100-01-01 00:00:00+01	2024-07-22 09:30:17.280569+02	unbekannt	2024-07-22 09:30:17.280569+02	unbekannt	00000000-0000-0000-0000-000000000001
33597397-959b-43f4-bbff-fd5718621633	10007	ZS	ZULEITUNGSSTELLE	\N	001	2024-07-22 09:30:22.040534+02	2100-01-01 00:00:00+01	2024-07-22 09:30:22.040534+02	unbekannt	2024-07-22 09:30:22.040534+02	unbekannt	00000000-0000-0000-0000-000000000001
7f4a1ac9-bfcb-453e-bcd8-5f5476c54e70	10002	EG1O	EINLEITSTELLE IN GEWÄSSER 1. ORDNUNG 	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1156cebe-9ce4-4e0b-8b24-0b6c2733ecef	10003	EG2O	EINLEITSTELLE IN GEWÄSSER 2. ORDNUNG 	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3b1b35e3-59e9-41ce-a11a-c7575f450c85	10004	EINL	EINLAUF	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
eca9d850-89af-43a0-a2d2-d03333cca749	10005	ESGW	EINLEITSTELLE IN DAS GRUNDWASSER     	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
82a8bcd2-fbf3-4046-b0fd-ca08603abefb	10006	ESOG	EINLEITSTELLE OBERIDISCHES GEWÄSSER  	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c38efd43-1ce4-4d54-886a-ce4f0a5e5dc3	10007	ZS	ZULEITUNGSSTELLE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
00000000-0000-0000-0000-000000000000	1	unbekannt	unbekannt	\N	001	2024-07-22 09:30:19.248228+02	2100-01-01 00:00:00+01	2024-07-22 09:30:19.248228+02	unbekannt	2024-07-22 09:30:19.248228+02	unbekannt	00000000-0000-0000-0000-000000000001
9986dad0-a6ae-4499-a1e0-bc43a7cdb04a	1	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687349)
-- Name: st_vw_abwassereinleittyp pk_st_vw_abwassereinleittyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abwassereinleittyp
    ADD CONSTRAINT pk_st_vw_abwassereinleittyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189803)
-- Name: st_vw_abwassereinleittyp uk3_st_vw_abwassereinleittyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abwassereinleittyp
    ADD CONSTRAINT uk3_st_vw_abwassereinleittyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189946)
-- Name: st_vw_abwassereinleittyp uk4_st_vw_abwassereinleittyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abwassereinleittyp
    ADD CONSTRAINT uk4_st_vw_abwassereinleittyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687958)
-- Name: st_vw_abwassereinleittyp tr_a_d__st_vw_abwassereinleittyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_abwassereinleittyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_abwassereinleittyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688094)
-- Name: st_vw_abwassereinleittyp tr_a_i_or_u_or_d__st_vw_abwassereinleittyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_abwassereinleittyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_abwassereinleittyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688230)
-- Name: st_vw_abwassereinleittyp tr_a_u__st_vw_abwassereinleittyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_abwassereinleittyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_abwassereinleittyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688368)
-- Name: st_vw_abwassereinleittyp tr_b_i_or_u_or_d__st_vw_abwassereinleittyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_abwassereinleittyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_abwassereinleittyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690068)
-- Name: st_vw_abwassereinleittyp fk_st_vw_abwassereinleittyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abwassereinleittyp
    ADD CONSTRAINT fk_st_vw_abwassereinleittyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:25

--
-- PostgreSQL database dump complete
--

