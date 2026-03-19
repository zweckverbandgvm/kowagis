--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:21

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
-- TOC entry 14214 (class 1259 OID 43599264)
-- Name: st_vw_abscheidertyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_abscheidertyp (
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
-- Dependencies: 14214
-- Name: TABLE st_vw_abscheidertyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_abscheidertyp IS 'Stammdaten Abscheidertyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 14214
-- Name: COLUMN st_vw_abscheidertyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_abscheidertyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 43599264)
-- Dependencies: 14214
-- Data for Name: st_vw_abscheidertyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_abscheidertyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt		001	2025-03-03 07:15:49.584281+01	2100-01-01 00:00:00+01	2025-03-03 07:15:49.584281+01	unbekannt	2025-03-03 07:15:49.584281+01	unbekannt	00000000-0000-0000-0000-000000000001
1a5c588b-9e86-4757-9b95-c781517f5803	unbekannt	VERS	VEREINIGUNGSSCHACHT	\N	912	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
24b83b10-e8d5-4ca1-98c9-cde35464dbee	unbekannt	SCHLAMMF	SCHLAMMFANG	\N	009	2025-07-18 06:44:32.786656+02	2100-01-01 00:00:00+01	2025-07-18 06:44:32.786656+02	unbekannt	2025-07-18 06:44:32.786656+02	unbekannt	00000000-0000-0000-0000-000000000001
b07f83e3-b22f-4ba2-a4eb-8eafb32ed2a3	unbekannt	MURI	RIGOLE	\N	906	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
2b0efb4b-024e-4487-938c-671f22a858c9	unbekannt	SIS	SICKERSCHACHT	\N	910	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
d5e1e8ec-0604-4493-8b95-82347dd19ba6	unbekannt	KSHL1	KONTROLLSCHACHT GRUNDSTÜCKSANSCHLUSS	\N	903	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
f6ae63f8-66b8-4ecb-9c92-bf2ab5e17f69	unbekannt	VAS	VAKUUMSCHACHT	\N	911	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
7acaf95d-bf92-40c2-856b-546c5ea11ed0	unbekannt	KOALABSCH	KOALESZENZABSCHEIDER	\N	003	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
a2aa7a74-b9e7-4559-ab6c-a1a693db9f37	unbekannt	PUS	PUMPSCHACHT	\N	904	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
c4e36fea-e9bb-4758-9686-35836060790d	unbekannt	FAABSCH	FARBMITTELABSCHEIDER	\N	007	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
93ccb320-c9ad-4bd3-9f24-568306f3769f	unbekannt	FEABSCH	FETTABSCHEIDER	\N	004	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
26437c53-826d-436a-854a-97643629dc53	unbekannt	KK	KOMBINATIONSSCHACHT	\N	903	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
2b6c84e3-5af4-4a58-9006-732b136f6b6c	unbekannt	SF	SANDFANG	\N	907	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
a54a1147-9a0c-461e-9ddf-e40039939752	unbekannt	ASS	ABSTURZSCHACHT	\N	912	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
cf4c40ae-1be1-40bc-adb7-6ccd6dcb08a7	unbekannt	RSHA1	REINIGUNGSSCHACHT	\N	905	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
ff7b6c40-f9a6-4636-a838-741f2db470c3	unbekannt	VDSCHA	SCHACHTBAUWERK, verdeckt	\N	909	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
bd166cae-cab9-4da5-be74-d9c4bd78a417	unbekannt	DUS	DRUCKUNTERBRECHERSCHACHT	\N	913	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
4bd6e257-2358-42d6-8d1a-5b94e49012cf	unbekannt	3SCHA	SCHACHTBAUWERK	\N	908	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
966dca6f-448d-4db7-8558-20c6fac960e8	unbekannt	LFABSCH	LEICHTFLUESSIGKEITSABSCHEIDER	\N	006	2025-03-17 10:05:23.154452+01	2100-01-01 00:00:00+01	2025-03-17 10:05:23.154452+01	unbekannt	2025-03-17 10:05:23.154452+01	unbekannt	00000000-0000-0000-0000-000000000001
e10adcf1-04b7-43bf-8643-79fe78074377	unbekannt	BEABSCH	BENZINABSCHEIDER	\N	002	2025-03-17 10:05:23.161106+01	2100-01-01 00:00:00+01	2025-03-17 10:05:23.161106+01	unbekannt	2025-03-17 10:05:23.161106+01	unbekannt	00000000-0000-0000-0000-000000000001
8611f90e-7eeb-4d15-9956-75f84876e62a	unbekannt	STABSCH	STAERKEMITTELABSCHEIDER	\N	005	2025-03-03 07:27:40.859859+01	2100-01-01 00:00:00+01	2025-03-03 07:27:40.859859+01	unbekannt	2025-03-03 07:27:40.859859+01	unbekannt	00000000-0000-0000-0000-000000000001
ef4bfb7f-8e45-4580-9f5d-927a67c9d806	unbekannt	EMUSA	EMULSIONSSPALTANLAGE	\N	008	2025-07-18 06:43:02.489654+02	2100-01-01 00:00:00+01	2025-07-18 06:43:02.489654+02	unbekannt	2025-07-18 06:43:02.489654+02	unbekannt	00000000-0000-0000-0000-000000000001
89f3c23b-e819-4919-953f-9f1a228b2281	unbekannt	STAPELB	STAPELBECKEN	\N	010	2025-07-18 06:46:19.762158+02	2100-01-01 00:00:00+01	2025-07-18 06:46:19.762158+02	unbekannt	2025-07-18 06:46:19.762158+02	unbekannt	00000000-0000-0000-0000-000000000001
8cc72a63-b4ba-476f-80bf-68cd14c5e024	unbekannt	SOBW	SONSTIGE BAUWERKSTEILE	\N	011	2025-07-18 06:47:16.477947+02	2100-01-01 00:00:00+01	2025-07-18 06:47:16.477947+02	unbekannt	2025-07-18 06:47:16.477947+02	unbekannt	00000000-0000-0000-0000-000000000001
8a3a8506-a4f8-427c-b469-07ce6293fd25	unbekannt	NEUTRAL	NEUTRALISATIONSANLAGEN	\N	012	2025-07-18 06:48:19.128405+02	2100-01-01 00:00:00+01	2025-07-18 06:48:19.128405+02	unbekannt	2025-07-18 06:48:19.128405+02	unbekannt	00000000-0000-0000-0000-000000000001
e742e749-8b63-4d6d-acb0-853b54901716	unbekannt	KOMBIANL	BAUWERK EINER KOMBINATIONSANLAGE	\N	013	2025-07-18 06:49:23.568359+02	2100-01-01 00:00:00+01	2025-07-18 06:49:23.568359+02	unbekannt	2025-07-18 06:49:23.568359+02	unbekannt	00000000-0000-0000-0000-000000000001
7f857539-4dff-41e3-9e3b-cd6b3da7075c	unbekannt	unbekannt	unbekannt		001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5b994b4a-fda5-499a-bab4-76176d2cfab1	unbekannt	VERS	VEREINIGUNGSSCHACHT	\N	912	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ad2d3dde-322f-407f-bc60-82da93c109c4	unbekannt	SCHLAMMF	SCHLAMMFANG	\N	009	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5ef1582f-baf2-48f8-81ff-451e39a52c2b	unbekannt	MURI	RIGOLE	\N	906	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7a7f6bc4-03ae-4614-81f8-a3abee27c3be	unbekannt	SIS	SICKERSCHACHT	\N	910	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5a6ad237-eff2-44b8-b5a7-e82b35d3fbb1	unbekannt	KSHL1	KONTROLLSCHACHT GRUNDSTÜCKSANSCHLUSS	\N	903	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
114a5746-1761-41fb-8c4e-54e5a8013a09	unbekannt	VAS	VAKUUMSCHACHT	\N	911	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
dd59bcaf-2e68-4619-ab0c-647e2820dc5e	unbekannt	KOALABSCH	KOALESZENZABSCHEIDER	\N	003	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4b432d90-b7f4-417a-a4dc-8f692b2388a3	unbekannt	PUS	PUMPSCHACHT	\N	904	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
99ad2934-2063-4b51-a6ca-adfc8a11a4c3	unbekannt	FAABSCH	FARBMITTELABSCHEIDER	\N	007	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b0155a05-a1e3-4f3c-bcfd-f35434f85777	unbekannt	FEABSCH	FETTABSCHEIDER	\N	004	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
32666da0-29f2-43fe-b006-1993619e145c	unbekannt	KK	KOMBINATIONSSCHACHT	\N	903	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4e58fbf4-e019-46a5-8ebf-ce5ad5a86c4c	unbekannt	SF	SANDFANG	\N	907	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
16e658b1-ba2c-4965-8b85-760167ce50f2	unbekannt	ASS	ABSTURZSCHACHT	\N	912	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
67828e89-ca5d-43fd-b4fa-c8e7fde778f9	unbekannt	RSHA1	REINIGUNGSSCHACHT	\N	905	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b18fa101-cb46-4cc1-997d-552c0535b2a6	unbekannt	VDSCHA	SCHACHTBAUWERK, verdeckt	\N	909	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6475b711-ce82-42c5-9c5a-d46836754bee	unbekannt	DUS	DRUCKUNTERBRECHERSCHACHT	\N	913	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b82ea40b-3b23-4cc8-a6d3-23b59329c91d	unbekannt	3SCHA	SCHACHTBAUWERK	\N	908	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0fd63abc-53e3-490e-bf15-577a321df972	unbekannt	LFABSCH	LEICHTFLUESSIGKEITSABSCHEIDER	\N	006	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
08992452-0078-499a-b073-016ff3c1c87e	unbekannt	BEABSCH	BENZINABSCHEIDER	\N	002	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a425e26a-f294-4c10-a0ff-098e8994e73b	unbekannt	STABSCH	STAERKEMITTELABSCHEIDER	\N	005	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f8618ffa-4694-494d-a84b-dad2d7feef29	unbekannt	EMUSA	EMULSIONSSPALTANLAGE	\N	008	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c3484fa9-6279-412f-94fb-b54710738eb5	unbekannt	STAPELB	STAPELBECKEN	\N	010	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ee872920-35de-456a-979c-09c9a5a26854	unbekannt	SOBW	SONSTIGE BAUWERKSTEILE	\N	011	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f027310c-2160-4a09-8d33-9c1205bb06cd	unbekannt	NEUTRAL	NEUTRALISATIONSANLAGEN	\N	012	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
29cb0902-dcea-4917-9208-5327a4e18bef	unbekannt	KOMBIANL	BAUWERK EINER KOMBINATIONSANLAGE	\N	013	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 43599283)
-- Name: st_vw_abscheidertyp pk_st_vw_abscheidertyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abscheidertyp
    ADD CONSTRAINT pk_st_vw_abscheidertyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189801)
-- Name: st_vw_abscheidertyp uk3_st_vw_abscheidertyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abscheidertyp
    ADD CONSTRAINT uk3_st_vw_abscheidertyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189944)
-- Name: st_vw_abscheidertyp uk4_st_vw_abscheidertyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abscheidertyp
    ADD CONSTRAINT uk4_st_vw_abscheidertyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 43599293)
-- Name: st_vw_abscheidertyp tr_a_d__st_vw_abscheidertyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_abscheidertyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_abscheidertyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 43599294)
-- Name: st_vw_abscheidertyp tr_a_i_or_u_or_d__st_vw_abscheidertyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_abscheidertyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_abscheidertyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 43599295)
-- Name: st_vw_abscheidertyp tr_a_u__st_vw_abscheidertyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_abscheidertyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_abscheidertyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 43599296)
-- Name: st_vw_abscheidertyp tr_b_i_or_u_or_d__st_vw_abscheidertyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_abscheidertyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_abscheidertyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 43599288)
-- Name: st_vw_abscheidertyp fk_st_vw_abscheidertyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_abscheidertyp
    ADD CONSTRAINT fk_st_vw_abscheidertyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:23

--
-- PostgreSQL database dump complete
--

