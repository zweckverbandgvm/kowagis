--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:19

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
-- TOC entry 12203 (class 1259 OID 39685565)
-- Name: st_vw_schacht_typ; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schacht_typ (
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
-- Dependencies: 12203
-- Name: TABLE st_vw_schacht_typ; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schacht_typ IS 'Stammdaten Schacht Typ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12203
-- Name: COLUMN st_vw_schacht_typ.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schacht_typ.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685565)
-- Dependencies: 12203
-- Data for Name: st_vw_schacht_typ; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schacht_typ (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	1	unbekannt	unbekannt	\N	001	2024-07-18 14:16:42.378218+02	2100-01-01 00:00:00+01	2024-07-18 14:16:42.378218+02	unbekannt	2024-07-18 14:16:42.378218+02	unbekannt	00000000-0000-0000-0000-000000000001
ea9dec0d-35c1-494d-9468-18daef3d559b	10004	DUS	DRUCKUNTERBRECHERSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
31d8bb96-3d09-4aa9-b976-31545b83231d	10009	KK	KOMBINATIONSSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
375301db-91ad-4122-97a7-07c8f78f95dd	10010	KSHL1	KONTROLLSCHACHT GRUNDSTÜCKSANSCHLUSS	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
3b3e7428-7f37-4a7c-b8fc-d9ede887fe1f	10012	RSHA1	REINIGUNGSSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
771ee2a9-70a4-42fe-a71d-e97632d422a9	10025	PUS	PUMPSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
8713a5d2-a2ac-4799-948f-43d08046082b	10014	SF	SANDFANG	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
a7ca9c62-bfb7-4682-8e77-e5e7fbbcadeb	10016	3SCHA	SCHACHTBAUWERK	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
871055ed-8e38-4c45-b645-34b9f45234f6	10019	SIS	SICKERSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
778cb92d-50b1-44ee-adc3-0a82acb67e5a	10020	VAS	VAKUUMSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
1e37aa7d-82ee-458b-a71a-a3f8fd92c25b	45	VERS	VEREINIGUNGSSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
21d38797-1c11-4500-9c08-033b05f583d8	10021	SHY	SPÜLHYDRANT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
6c38a6c9-55b5-4d50-b5a0-e84192ac886b	10024	MURI	RIGOLE	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
b34446ba-697f-4b55-9d73-525f68d2c623	10026	ASS	ABSTURZSCHACHT	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
b02af487-e532-4b2f-996f-dc9d35e0f8de	10031	VDSCHA	SCHACHTBAUWERK, verdeckt	\N	001	2024-07-18 14:21:49.780023+02	2100-01-01 00:00:00+01	2024-07-18 14:21:49.780023+02	unbekannt	2024-07-18 14:21:49.780023+02	unbekannt	00000000-0000-0000-0000-000000000001
77aa048b-42ed-4669-8d99-71c33e038cf0	unbekannt	FAABSCH	FARBMITTELABSCHEIDER	\N	001	2025-06-11 07:40:07.990706+02	2100-01-01 00:00:00+01	2025-06-11 07:40:07.990706+02	unbekannt	2025-06-11 07:40:07.990706+02	unbekannt	00000000-0000-0000-0000-000000000001
34f578dc-faaa-4a75-8588-f26929067112	unbekannt	FEABSCH	FETTABSCHEIDER	\N	001	2025-06-11 07:40:07.990706+02	2100-01-01 00:00:00+01	2025-06-11 07:40:07.990706+02	unbekannt	2025-06-11 07:40:07.990706+02	unbekannt	00000000-0000-0000-0000-000000000001
37bfeb28-3e66-4e59-bf9f-97ad705f6c40	unbekannt	KOALABSCH	KOALESZENZABSCHEIDER	\N	001	2025-06-11 07:40:07.990706+02	2100-01-01 00:00:00+01	2025-06-11 07:40:07.990706+02	unbekannt	2025-06-11 07:40:07.990706+02	unbekannt	00000000-0000-0000-0000-000000000001
7c29ee57-f87b-48a5-80d8-276c637119ec	unbekannt	STABSCH	STÄRKEMITTELABSCHEIDER	\N	001	2025-06-11 07:40:07.990706+02	2100-01-01 00:00:00+01	2025-06-11 07:40:07.990706+02	unbekannt	2025-06-11 07:40:07.990706+02	unbekannt	00000000-0000-0000-0000-000000000001
99ac6ed5-f05b-43d7-8bd3-762cf1c14434	1	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
87c008b7-df08-4ef9-b4b0-1cb01a6cfae6	10004	DUS	DRUCKUNTERBRECHERSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
69f798cc-a8a3-452a-85ac-719866f9da15	10009	KK	KOMBINATIONSSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8b5174a1-3b02-40a9-a327-04032c03263e	10010	KSHL1	KONTROLLSCHACHT GRUNDSTÜCKSANSCHLUSS	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d4f5da5c-92df-4596-8b13-3db2114b6486	10012	RSHA1	REINIGUNGSSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e1d6c192-0c59-405c-ad53-3914fd81ee5b	10025	PUS	PUMPSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
51adf11e-85e4-4c81-bd26-9cb92e3b8c0c	10014	SF	SANDFANG	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2d497326-5054-4949-894f-6108485b23ee	10016	3SCHA	SCHACHTBAUWERK	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
08e2c480-69a0-418c-ae01-25ea8cf99427	10019	SIS	SICKERSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
346cc442-b190-4fb7-ba13-f4f9641a6331	10020	VAS	VAKUUMSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1ea6d4b2-5b9b-4044-9feb-656c4e03d653	45	VERS	VEREINIGUNGSSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5e178670-b9d7-4f97-89d7-db6597e7aeff	10021	SHY	SPÜLHYDRANT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9aa65673-c4f5-4893-be33-387251bf6482	10024	MURI	RIGOLE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
09a2a8c2-3c2e-4eeb-ab2a-71a8d0c9e4b6	10026	ASS	ABSTURZSCHACHT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
234fae11-28dc-4066-a4e1-9f7f4d14008e	10031	VDSCHA	SCHACHTBAUWERK, verdeckt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
bda8c32e-f48f-4c36-bd93-41266094fe75	unbekannt	FAABSCH	FARBMITTELABSCHEIDER	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e8e49e63-32d5-46d0-96b5-12cc94e8773d	unbekannt	FEABSCH	FETTABSCHEIDER	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d33eedef-01b2-47a1-a738-d22d070cc1b3	unbekannt	KOALABSCH	KOALESZENZABSCHEIDER	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
99dbc203-b091-4820-ba05-7aef1974418c	unbekannt	STABSCH	STÄRKEMITTELABSCHEIDER	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687427)
-- Name: st_vw_schacht_typ pk_st_vw_schacht_typ; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schacht_typ
    ADD CONSTRAINT pk_st_vw_schacht_typ PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189881)
-- Name: st_vw_schacht_typ uk3_st_vw_schacht_typ_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schacht_typ
    ADD CONSTRAINT uk3_st_vw_schacht_typ_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190030)
-- Name: st_vw_schacht_typ uk4_st_vw_schacht_typ_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schacht_typ
    ADD CONSTRAINT uk4_st_vw_schacht_typ_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687997)
-- Name: st_vw_schacht_typ tr_a_d__st_vw_schacht_typ__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schacht_typ__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schacht_typ REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688133)
-- Name: st_vw_schacht_typ tr_a_i_or_u_or_d__st_vw_schacht_typ__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schacht_typ__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schacht_typ FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688269)
-- Name: st_vw_schacht_typ tr_a_u__st_vw_schacht_typ__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schacht_typ__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schacht_typ REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688407)
-- Name: st_vw_schacht_typ tr_b_i_or_u_or_d__st_vw_schacht_typ__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schacht_typ__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schacht_typ FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690253)
-- Name: st_vw_schacht_typ fk_st_vw_schacht_typ_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schacht_typ
    ADD CONSTRAINT fk_st_vw_schacht_typ_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:21

--
-- PostgreSQL database dump complete
--

