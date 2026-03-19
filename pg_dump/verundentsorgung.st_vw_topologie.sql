--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:42

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
-- TOC entry 13446 (class 1259 OID 42016916)
-- Name: st_vw_topologie; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_topologie (
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
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000001'::uuid NOT NULL
);


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 13446
-- Name: TABLE st_vw_topologie; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_topologie IS 'Stammdaten Topologie';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 13446
-- Name: COLUMN st_vw_topologie.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_topologie.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 42016916)
-- Dependencies: 13446
-- Data for Name: st_vw_topologie; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_topologie (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
29320526-bbb2-4c3a-825f-4634f88306f7	unbekannt	aw_pkt_leichtfluessigkeitsabscheider	Leichtflüssigkeitsabscheider	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2025-01-28 23:01:26.790066+01	2100-01-01 00:00:00+01	2025-01-28 23:01:26.790066+01	unbekannt	2025-01-28 23:01:26.790066+01	unbekannt	00000000-0000-0000-0000-000000000001
f9b95ae1-c4c6-4426-a7d9-614c89c17354	unbekannt	aw_pkt_schacht	Schacht	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
ad6a39b5-f880-4fbd-99c3-791838bd1cf1	unbekannt	aw_pkt_schieber	Schieber	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
a29745fa-e025-4923-b399-0b0d5ac29ade	unbekannt	aw_pkt_schachtdeckel	Schachtdeckel	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
40807654-1115-4096-b7ad-fb3dff20d93c	unbekannt	aw_pkt_fettabscheider	Fettabscheider	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
80c36969-5d7b-4b33-a0ef-f1bb0dcb1f7c	unbekannt	aw_pkt_beobachtungspunkt	Beobachtungspunkt	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
0613ff33-8e66-4804-8e67-8ab5404bd31f	unbekannt	aw_pkt_dueker	Düker	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
ca9875e9-16c8-479c-b086-d372e7a868b7	unbekannt	aw_pkt_sonstige_anlage	Sonstige Anlage	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
053f07ac-9037-4dcc-b5f7-a6ef8aafcd62	unbekannt	aw_pkt_abscheider	Abscheider	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
d171d555-47af-492b-aade-9d07d705bb9e	unbekannt	aw_pkt_spuehlhydrant	Spühlhydrant	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
1e2eb519-1a6f-4f78-a98f-03aa8a3bdde6	unbekannt	aw_pkt_einleitungsstellen	Einleitungsstellen	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
02e3cded-7115-466b-9b93-2e1a6303e460	unbekannt	aw_pkt_pumpwerk	Pumpwerk	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
49006c42-9883-4007-86df-947c15b1af02	unbekannt	aw_pkt_klaertank	Klärtank	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
eea34159-ae39-41d6-90b8-65d0776646f0	unbekannt	aw_pkt_auslauf	Auslauf	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
dae53e7f-08d9-4f9c-815d-6226bcaeb28d	unbekannt	aw_pkt_klaeranlage	Kläranlage	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
36aaf204-f974-4ac0-b37f-21820f3a62da	unbekannt	aw_pkt_fließrichtungspfeil	Fließrichtungspfeil	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
0b3fdade-6362-494a-b63a-1733e7671c34	unbekannt	aw_pkt_abwasserschaden	Abwasserschaden	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
0185247c-c53f-4d80-ab35-c1b4813cb58c	unbekannt	aw_pkt_loeschwasserentnahmestelle	Löschwasserentnahmestelle	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
fbb88a30-0126-43b8-acbc-fd0b1bd8c2c1	unbekannt	aw_pkt_becken	Becken	\N	001	2025-01-28 23:05:55.703934+01	2000-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
97f23324-02ab-4a9b-a225-7e53a7df2471	unbekannt	aw_pkt_verbindungen	Verbindung	\N	001	2025-01-28 23:05:55.703934+01	2100-01-01 00:00:00+01	2025-01-28 23:05:55.703934+01	unbekannt	2025-01-28 23:05:55.703934+01	unbekannt	00000000-0000-0000-0000-000000000001
99d33d1e-02de-4816-a19e-537e9ccea4fa	unbekannt	wa_pkt_pumpwerk	Pumpwerk_wa	\N	001	2025-03-06 13:13:55.784943+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.784943+01	unbekannt	2025-03-06 13:13:55.784943+01	unbekannt	00000000-0000-0000-0000-000000000001
8f7e509b-6b1b-441c-8b89-6ffa350ea813	unbekannt	wa_pkt_schacht	Schacht_wa	\N	001	2025-03-06 13:13:55.787264+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.787264+01	unbekannt	2025-03-06 13:13:55.787264+01	unbekannt	00000000-0000-0000-0000-000000000001
8048c74c-ddfd-4d4e-bdc7-039f3dcc2d15	unbekannt	wa_pkt_schachtdeckel	Schachtdeckel_wa	\N	001	2025-03-06 13:13:55.788692+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.788692+01	unbekannt	2025-03-06 13:13:55.788692+01	unbekannt	00000000-0000-0000-0000-000000000001
efa7a631-467a-40fd-9bf2-555385f693bb	unbekannt	wa_pkt_schieber	Schieber_wa	\N	001	2025-03-06 13:13:55.790051+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.790051+01	unbekannt	2025-03-06 13:13:55.790051+01	unbekannt	00000000-0000-0000-0000-000000000001
05b778c0-f197-42d2-8ac6-340c72641747	unbekannt	wa_pkt_verbindungen	Verbindungen_wa	\N	001	2025-03-06 13:13:55.791938+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.791938+01	unbekannt	2025-03-06 13:13:55.791938+01	unbekannt	00000000-0000-0000-0000-000000000001
38ed1ff2-bbe0-4ba3-b1c2-847dd8018f17	unbekannt	wa_pkt_verschiedenes	Verschiedenes_wa	\N	001	2025-03-06 13:13:55.793578+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.793578+01	unbekannt	2025-03-06 13:13:55.793578+01	unbekannt	00000000-0000-0000-0000-000000000001
b43dd11c-a84b-45ed-a2c1-7cf0e96ce71c	unbekannt	wa_pkt_wasserschaden	Wasserschaden_wa	\N	001	2025-03-06 13:13:55.7948+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.7948+01	unbekannt	2025-03-06 13:13:55.7948+01	unbekannt	00000000-0000-0000-0000-000000000001
ef484cd4-ce6d-4598-9573-7f2a41148fd3	unbekannt	wa_pkt_wasserwerk	Wasserwerk_wa	\N	001	2025-03-06 13:13:55.796087+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.796087+01	unbekannt	2025-03-06 13:13:55.796087+01	unbekannt	00000000-0000-0000-0000-000000000001
807478aa-52ac-4e13-887e-07fce20580dc	unbekannt	wa_pkt_wasserzaehler	Wasserzaehler_wa	\N	001	2025-03-06 13:13:55.797233+01	2100-01-01 00:00:00+01	2025-03-06 13:13:55.797233+01	unbekannt	2025-03-06 13:13:55.797233+01	unbekannt	00000000-0000-0000-0000-000000000001
e6376740-0c93-4042-a12d-8e4de8cc6d91	unbekannt	wa_pkt_armatur	Armatur_wa	\N	001	2025-03-06 12:13:15.699114+01	2100-01-01 00:00:00+01	2025-03-06 12:13:15.699114+01	unbekannt	2025-03-06 12:13:15.699114+01	unbekannt	00000000-0000-0000-0000-000000000001
b0b27c02-34ed-4f8b-ad5f-cb48cb55469d	unbekannt	wa_pkt_behaelter	Behaelter_wa	\N	001	2025-03-06 12:14:00.466349+01	2100-01-01 00:00:00+01	2025-03-06 12:14:00.466349+01	unbekannt	2025-03-06 12:14:00.466349+01	unbekannt	00000000-0000-0000-0000-000000000001
c691fc17-0095-4249-9496-47af9397c026	unbekannt	wa_pkt_beprobungspunkt	Beprobungspunkt_wa	\N	001	2025-03-06 12:14:00.46826+01	2100-01-01 00:00:00+01	2025-03-06 12:14:00.46826+01	unbekannt	2025-03-06 12:14:00.46826+01	unbekannt	00000000-0000-0000-0000-000000000001
9bfba50f-190a-4198-b0f4-889d3d906163	unbekannt	wa_pkt_brunnen	Brunnen_wa	\N	001	2025-03-06 12:14:19.081892+01	2100-01-01 00:00:00+01	2025-03-06 12:14:19.081892+01	unbekannt	2025-03-06 12:14:19.081892+01	unbekannt	00000000-0000-0000-0000-000000000001
c1682ef7-fa7c-4590-a81c-8f446dd339d3	unbekannt	wa_pkt_druckminderer	Druckminderer_wa	\N	001	2025-03-06 12:17:48.840039+01	2100-01-01 00:00:00+01	2025-03-06 12:17:48.840039+01	unbekannt	2025-03-06 12:17:48.840039+01	unbekannt	00000000-0000-0000-0000-000000000001
f164ffe2-ef78-4688-8efe-1a189fd1662a	unbekannt	wa_pkt_druckstation	Druckstation_wa	\N	001	2025-03-06 12:17:48.842747+01	2100-01-01 00:00:00+01	2025-03-06 12:17:48.842747+01	unbekannt	2025-03-06 12:17:48.842747+01	unbekannt	00000000-0000-0000-0000-000000000001
7f66b5b7-17b4-4cb3-b7e4-8850f152c2d3	unbekannt	wa_pkt_entlueftung	Entlueftung_wa	\N	001	2025-03-06 12:17:48.844414+01	2100-01-01 00:00:00+01	2025-03-06 12:17:48.844414+01	unbekannt	2025-03-06 12:17:48.844414+01	unbekannt	00000000-0000-0000-0000-000000000001
54a5e00f-899b-4996-b9bb-8bb8b4a3c484	unbekannt	wa_pkt_hausanschlusspunkt	Hausanschlusspunkt_wa	\N	001	2025-03-06 12:20:23.584943+01	2100-01-01 00:00:00+01	2025-03-06 12:20:23.584943+01	unbekannt	2025-03-06 12:20:23.584943+01	unbekannt	00000000-0000-0000-0000-000000000001
f183b7d6-ab4d-40a0-a8e4-bee7e4170d3c	unbekannt	wa_pkt_hydrant	Hydrant_wa	\N	001	2025-03-06 12:20:23.58682+01	2100-01-01 00:00:00+01	2025-03-06 12:20:23.58682+01	unbekannt	2025-03-06 12:20:23.58682+01	unbekannt	00000000-0000-0000-0000-000000000001
6d4f7a36-1b0a-43cd-805c-54f8276711f0	unbekannt	aw_pkt_leichtfluessigkeitsabscheider	Leichtflüssigkeitsabscheider	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5c853494-d141-436d-b07c-a2c78e09bc33	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cce68c58-d798-4c50-a1b8-6ae8f9913d67	unbekannt	aw_pkt_schacht	Schacht	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f2cea84d-dc3f-4bf6-8808-5823897068e5	unbekannt	aw_pkt_schieber	Schieber	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
00be301c-0bc8-4831-8c4c-8df021d94216	unbekannt	aw_pkt_schachtdeckel	Schachtdeckel	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5949f2fc-8b28-4222-9e52-6a058c6f11ae	unbekannt	aw_pkt_fettabscheider	Fettabscheider	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8474ef14-53e2-4b80-99e7-de58d292ee7f	unbekannt	aw_pkt_beobachtungspunkt	Beobachtungspunkt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5cac54e4-be97-4f0e-945d-fe3fba7f3ab0	unbekannt	aw_pkt_dueker	Düker	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
249184cd-da3d-415b-b215-1a8285189566	unbekannt	aw_pkt_sonstige_anlage	Sonstige Anlage	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
948d8f91-fffa-4758-b247-6e00113d1d00	unbekannt	aw_pkt_abscheider	Abscheider	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5d16b475-9c99-495e-9985-25c2f0728650	unbekannt	aw_pkt_spuehlhydrant	Spühlhydrant	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
764a3e61-e273-490a-a0e0-539ce5db208d	unbekannt	aw_pkt_einleitungsstellen	Einleitungsstellen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
377fd3a4-0491-435e-8e94-c377a2b06beb	unbekannt	aw_pkt_pumpwerk	Pumpwerk	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b5fb01f7-731a-4dcd-a364-c2806f4deabf	unbekannt	aw_pkt_klaertank	Klärtank	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ec87220a-e103-4db5-b309-bd22e75581fe	unbekannt	aw_pkt_auslauf	Auslauf	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ff6d8d6e-4b5b-407d-9041-149d8fbbeb1b	unbekannt	aw_pkt_klaeranlage	Kläranlage	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cc337a59-b40c-4a1f-b511-7902fb1701f0	unbekannt	aw_pkt_fließrichtungspfeil	Fließrichtungspfeil	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b49eb913-0e17-44c1-9a2d-d7fb7eb7528b	unbekannt	aw_pkt_abwasserschaden	Abwasserschaden	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ef9324a5-c5fb-4ba0-8996-e69b6864d767	unbekannt	aw_pkt_loeschwasserentnahmestelle	Löschwasserentnahmestelle	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8fbac278-b726-4607-9297-a5129fc080df	unbekannt	aw_pkt_becken	Becken	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ec62ee87-a0cb-44d0-8579-9d9abe9a0cf9	unbekannt	aw_pkt_verbindungen	Verbindung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
096062b2-b00b-4ea7-a24b-23e7aeeb2d6c	unbekannt	wa_pkt_pumpwerk	Pumpwerk_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e6b92a9a-a6e1-419b-b26a-efafecc1099e	unbekannt	wa_pkt_schacht	Schacht_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
eea8824f-2829-46b9-b19c-e3d3ca10df13	unbekannt	wa_pkt_schachtdeckel	Schachtdeckel_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
824639e6-dfb4-4e9f-a0de-7ad63b3148d2	unbekannt	wa_pkt_schieber	Schieber_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
bdda8534-37b9-4f39-b763-39e5507ddcf7	unbekannt	wa_pkt_verbindungen	Verbindungen_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b3e6e17d-9c0f-4e58-b5e4-adde753289f5	unbekannt	wa_pkt_verschiedenes	Verschiedenes_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c0ed9995-a1b8-4e21-8021-39a4b78a1d7d	unbekannt	wa_pkt_wasserschaden	Wasserschaden_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
91c4b6bc-3615-4303-90d4-6fee4e41415f	unbekannt	wa_pkt_wasserwerk	Wasserwerk_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
69380968-9e83-427d-9c70-0837cb4364a6	unbekannt	wa_pkt_wasserzaehler	Wasserzaehler_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
fbd4316f-4a14-42e8-9b43-dba4ed91d4ca	unbekannt	wa_pkt_armatur	Armatur_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
20b3aace-9953-4a27-8b83-b2ebf284f3be	unbekannt	wa_pkt_behaelter	Behaelter_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f05bbea4-37fd-4c61-84f0-38d874a9d6a5	unbekannt	wa_pkt_beprobungspunkt	Beprobungspunkt_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
aeee0e12-1a0f-4d45-8cb1-563ef3f8572d	unbekannt	wa_pkt_brunnen	Brunnen_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
024e71b6-1d1d-4adb-8643-3ddb8561fc3e	unbekannt	wa_pkt_druckminderer	Druckminderer_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5e369db4-f4d0-4e64-978f-284a250a4364	unbekannt	wa_pkt_druckstation	Druckstation_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6ff1f13f-36ee-42b8-a398-5f4ca1bbe14e	unbekannt	wa_pkt_entlueftung	Entlueftung_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
da9a49b3-6145-4d40-b468-331e40613179	unbekannt	wa_pkt_hausanschlusspunkt	Hausanschlusspunkt_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ae0026a0-757d-4ec2-a9ea-ffac240cf09f	unbekannt	wa_pkt_hydrant	Hydrant_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 42016935)
-- Name: st_vw_topologie pk_st_vw_topologie; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_topologie
    ADD CONSTRAINT pk_st_vw_topologie PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189897)
-- Name: st_vw_topologie uk3_st_vw_topologie_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_topologie
    ADD CONSTRAINT uk3_st_vw_topologie_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190046)
-- Name: st_vw_topologie uk4_st_vw_topologie_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_topologie
    ADD CONSTRAINT uk4_st_vw_topologie_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 42016940)
-- Name: st_vw_topologie tr_a_d__st_vw_topologie__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_topologie__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_topologie REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 42016941)
-- Name: st_vw_topologie tr_a_i_or_u_or_d__st_vw_topologie__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_topologie__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_topologie FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 42016942)
-- Name: st_vw_topologie tr_a_u__st_vw_topologie__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_topologie__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_topologie REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 42016943)
-- Name: st_vw_topologie tr_b_i_or_u_or_d__st_vw_topologie__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_topologie__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_topologie FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 42016944)
-- Name: st_vw_topologie fk_st_vw_topologie_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_topologie
    ADD CONSTRAINT fk_st_vw_topologie_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:44

--
-- PostgreSQL database dump complete
--

