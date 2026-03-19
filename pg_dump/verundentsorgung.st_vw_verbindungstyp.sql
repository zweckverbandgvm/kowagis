--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:46

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
-- TOC entry 12213 (class 1259 OID 39685745)
-- Name: st_vw_verbindungstyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_verbindungstyp (
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
-- Dependencies: 12213
-- Name: TABLE st_vw_verbindungstyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_verbindungstyp IS 'Stammdaten Verbindungstyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12213
-- Name: COLUMN st_vw_verbindungstyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verbindungstyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685745)
-- Dependencies: 12213
-- Data for Name: st_vw_verbindungstyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_verbindungstyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
dbf3fc84-c2d0-4a34-b9b0-ed4b02104ae4	unbekannt	VA	Ventilanbohrschelle	\N	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-29 09:16:49.955301+02	2100-01-01 00:00:00+01	2024-08-29 09:16:49.955301+02	unbekannt	2024-08-29 09:16:49.955301+02	unbekannt	00000000-0000-0000-0000-000000000001
98ba8f12-8808-4304-b4a9-923a8f7399cf	unbekannt	LEIT	Leitungsende	\N	001	2024-08-30 08:14:13.202721+02	2100-01-01 00:00:00+01	2024-08-30 08:14:13.202721+02	unbekannt	2024-08-30 08:14:13.202721+02	unbekannt	00000000-0000-0000-0000-000000000001
84ddaef0-86f6-4694-9cad-468235e25ac6	unbekannt	SEINL1	Strasseneinlauf	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
dc342a4d-7868-4561-9dbc-fb853031a460	unbekannt	ABOR1	Abzweig oben rechts	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
b8f765d6-2ee2-41a0-bafc-3753ad0cd925	unbekannt	REVI	Revisionsöffnung	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
36352c37-44d8-48fc-b0f2-21729e61ab7f	unbekannt	ABST	Absturz	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
8738d24c-6699-4442-a6e4-7bc7fefe2d5f	unbekannt	SPKT	Scheitelpunkt	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
d4e8f506-a078-4f9a-8957-314997f6cc3c	unbekannt	ABOL1	Abzweig oben links	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
2381ead5-34c9-40c3-a87a-3b0cae1f385b	unbekannt	RFR	Regenfallrohr	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
7520c818-029f-497d-9f03-3fd1d5a1b5b2	unbekannt	TPK	Trassenpunkt_aw	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
e73bebde-b0e9-40f6-961f-dd61b2b3f744	unbekannt	RSCH	Rückschlagklappe	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
73453e4d-717a-4eed-b632-57951da49caf	unbekannt	NK	Netzknoten_aw	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
56886723-3de8-44ec-85b0-70fc23ab1964	unbekannt	WASS	Wasserstopper	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
a4c479a4-14f4-4673-ac96-d32fc85b2a00	unbekannt	ENDK	Endkappe	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
a9283b70-e854-49e8-a3e0-9fcd8aadc3e2	unbekannt	MAROA	Schutzrohr	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
37405b83-2d9f-46c1-a44a-1c632713913b	unbekannt	MUFFE	Muffe	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
dadaef06-be16-4945-b39f-fe92079892e8	unbekannt	UEB	Übergang_aw	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
23a4f311-cf12-415a-920b-cee7ef0eab59	unbekannt	SG	Netzknoten_wa	TW	001	2024-08-30 08:14:13.202721+02	2100-01-01 00:00:00+01	2024-08-30 08:14:13.202721+02	unbekannt	2024-08-30 08:14:13.202721+02	unbekannt	00000000-0000-0000-0000-000000000001
13f3ed31-9fc7-43f7-92a5-4ca235b87050	unbekannt	TPK2	Trassenpunkt_wa	TW	001	2024-08-30 08:14:13.202721+02	2100-01-01 00:00:00+01	2024-08-30 08:14:13.202721+02	unbekannt	2024-08-30 08:14:13.202721+02	unbekannt	00000000-0000-0000-0000-000000000001
5b32c0f2-5c58-4010-bba8-c42ae1a4d225	unbekannt	UE	Übergang_wa	TW	001	2024-08-30 08:14:13.202721+02	2100-01-01 00:00:00+01	2024-08-30 08:14:13.202721+02	unbekannt	2024-08-30 08:14:13.202721+02	unbekannt	00000000-0000-0000-0000-000000000001
7293b633-d2a3-4f93-aee5-3f8c55a9bd7a	unbekannt	ABOLZ	Abzweig oben links verschlossen	AW	001	2024-09-16 12:03:52.205394+02	2100-01-01 00:00:00+01	2024-09-16 12:03:52.205394+02	unbekannt	2024-09-16 12:03:52.205394+02	unbekannt	00000000-0000-0000-0000-000000000001
5e3295e0-3d38-4586-86c2-d0d5f856614b	unbekannt	VA	Ventilanbohrschelle	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9c1b34ec-99ce-49a9-a91f-e3544216888c	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
730ed9bf-102b-414d-a7df-8018770fda79	unbekannt	LEIT	Leitungsende	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
dc171727-79af-4159-ad0d-709dbd8eb350	unbekannt	SEINL1	Strasseneinlauf	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
71f44c3f-305f-426e-a6ac-5e46e00c7e6e	unbekannt	ABOR1	Abzweig oben rechts	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4205731f-4987-4ba0-82f9-29060a2b4444	unbekannt	REVI	Revisionsöffnung	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
757e69ae-cfa2-4d93-9bcc-6163576f5c49	unbekannt	ABST	Absturz	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b1f509c6-fde0-4281-ad33-29a1440476f1	unbekannt	SPKT	Scheitelpunkt	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e4e91d7b-3093-42ca-b854-fa637a07793c	unbekannt	ABOL1	Abzweig oben links	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
97ee98a1-c752-4dce-8843-d997e2b3bf52	unbekannt	RFR	Regenfallrohr	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6f115db5-d741-4324-a1a2-7e6591d1adb8	unbekannt	TPK	Trassenpunkt_aw	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ecfbf5a2-5d73-4da8-8019-9679cdbe72eb	unbekannt	DUFM	IDM - Durchflussmessung	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cc710495-9300-4b26-9947-3acadeb412f6	unbekannt	RSCH	Rückschlagklappe	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3d24c8bb-52bf-4658-ad17-5c1eef6bd394	unbekannt	NK	Netzknoten_aw	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f9e8b02a-e7c6-4675-a6b8-e52d7757cb5e	unbekannt	WASS	Wasserstopper	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
67cad6d4-d77a-4a91-a611-02fa002b8a8b	unbekannt	ENDK	Endkappe	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5ddf57f7-932f-4067-86af-f33d6f90eb24	unbekannt	MAROA	Schutzrohr	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4c5937c3-f6bf-4c28-a829-ab80c904e239	unbekannt	MUFFE	Muffe	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b5956c6c-6953-44a3-aa61-9c66cb7f78e7	unbekannt	UEB	Übergang_aw	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
41a88982-c1c2-403b-b449-9e552e796625	unbekannt	SG	Netzknoten_wa	TW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
057161dc-179a-4581-b69e-22489491bbe2	unbekannt	TPK2	Trassenpunkt_wa	TW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0fdda079-7f33-49ee-bc49-9647cd80f329	unbekannt	UE	Übergang_wa	TW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5dd1fe84-469f-4b46-88cb-151102559b70	unbekannt	ABOLZ	Abzweig oben links verschlossen	AW	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4b6c0ad0-dfb6-416e-919b-017a1427bb1c	unbekannt	DUFM	IDM - Durchflussmessung	AW	001	2024-08-30 07:56:49.915657+02	2100-01-01 00:00:00+01	2024-08-30 07:56:49.915657+02	unbekannt	2024-08-30 07:56:49.915657+02	unbekannt	00000000-0000-0000-0000-000000000001
\.


--
-- TOC entry 81946 (class 2606 OID 39687449)
-- Name: st_vw_verbindungstyp pk_st_vw_verbindungstyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verbindungstyp
    ADD CONSTRAINT pk_st_vw_verbindungstyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189901)
-- Name: st_vw_verbindungstyp uk3_st_vw_verbindungstyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verbindungstyp
    ADD CONSTRAINT uk3_st_vw_verbindungstyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190050)
-- Name: st_vw_verbindungstyp uk4_st_vw_verbindungstyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verbindungstyp
    ADD CONSTRAINT uk4_st_vw_verbindungstyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688008)
-- Name: st_vw_verbindungstyp tr_a_d__st_vw_verbindungstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_verbindungstyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_verbindungstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688144)
-- Name: st_vw_verbindungstyp tr_a_i_or_u_or_d__st_vw_verbindungstyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_verbindungstyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verbindungstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688280)
-- Name: st_vw_verbindungstyp tr_a_u__st_vw_verbindungstyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_verbindungstyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_verbindungstyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688418)
-- Name: st_vw_verbindungstyp tr_b_i_or_u_or_d__st_vw_verbindungstyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_verbindungstyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verbindungstyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690288)
-- Name: st_vw_verbindungstyp fk_st_vw_verbindungstyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verbindungstyp
    ADD CONSTRAINT fk_st_vw_verbindungstyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:48

--
-- PostgreSQL database dump complete
--

