--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:00

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
-- TOC entry 21064 (class 1259 OID 47750832)
-- Name: st_vw_dimension; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_dimension (
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
-- Dependencies: 21064
-- Name: TABLE st_vw_dimension; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_dimension IS 'Stammdaten Dimension';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 21064
-- Name: COLUMN st_vw_dimension.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dimension.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 47750832)
-- Dependencies: 21064
-- Data for Name: st_vw_dimension; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_dimension (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
1c69a9e8-a9ce-44ac-a96c-f26e29e117cc	unbekannt	0	0	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
a39a9ab1-0205-41bd-98c0-9c92c7b25cb2	unbekannt	DN 50	DN 50	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
3045a65d-cf74-4432-be81-3bf73854ac0d	unbekannt	DN 80	DN 80	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
b06f7350-1c4d-4a79-8230-1ecd0dc977c4	unbekannt	DN 40	DN 40	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
fb7c9f18-5b21-4b48-924d-dc1c446f0102	unbekannt	d180	d180	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
c4645e39-93fc-443f-86d7-a2d00b798a4e	unbekannt	DN 65	DN 65	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
e04300e8-e606-47ac-85b2-0e6a36f679fe	unbekannt	d110	d110	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
b7f860fa-dc9a-4f08-86cc-0adf1c3d8883	unbekannt	DN 100	DN 100	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
8fe14c81-6bb9-4b92-8a47-16badc6b8f12	unbekannt	DN 400	DN 400	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
4ae6f433-863c-4d63-8037-1bab941efb98	unbekannt	DN 20	DN 20	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
54f849fb-ca11-46af-92dd-d403194f4fbe	unbekannt	DN 150	DN 150	Nennweite	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
7d6991f7-d9ba-4a87-82d7-83de86955a85	unbekannt	10x2x0,8mm	10 x 2 x 0,8 mm	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
ca7ed3e5-bbf1-461f-8b8d-e4414d1455ba	unbekannt	19x1.5mm²	19 x1.5 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
b427b666-1ed8-42e5-b35d-8bcd71be5f49	unbekannt	1x120mm²	1 x 120 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
0018d539-4434-492a-a8e5-d254a573b096	unbekannt	1x95mm²	1 x 95 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
290df400-0c70-4886-bfff-82697c85acf7	unbekannt	20x1,5	20 x 1,5	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
a5cc72e1-6c2f-4168-b054-7a4fbffa375b	unbekannt	20x2x0,6	20 x 2 x 0,6	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
26122797-9b11-4436-b05a-83670231a5a1	unbekannt	20x2x0,8	20 x 2 x 0,8	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
69d6fdbc-0217-4f73-8204-366a7cf68817	unbekannt	4x120mm²	4 x 120 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
40c90b9a-026d-425e-ab4e-bca88cf3fed9	unbekannt	4x12/E9/125	4 x 12/E9/125	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
ec0f3e80-dcd3-4932-9cb4-37ae33b02187	unbekannt	4x150mm²	4 x 150 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
c22e8a6c-f97c-4c5e-b4ce-b37dc77aa833	unbekannt	4x25mm² Al	4 x 25 mm² Al	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
45deb7c3-910f-43b7-949b-47e1b5f6134e	unbekannt	4x2x0,8mm²	4 x 2 x 0,8 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
6df1b425-8b9e-4a4e-8ba3-4d72d4761f1e	unbekannt	4x35mm²	4 x 35 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
2135a1dc-ab0a-4d14-a3d8-e2a57296fd27	unbekannt	4x95mm²	4 x 95 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
83c0e0cd-0ec6-412c-b2b2-1be525c32fa4	unbekannt	50x2x0,8	50 x 2 x 0,8	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
b1503475-f86a-427b-9efa-899c275054c4	unbekannt	50x4,6	50 x 4,6	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
5de4dcb5-0343-4a40-b867-bb621b60a260	unbekannt	5x10mm²	5 x10 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
e00b4d17-2a07-4b7a-b86b-73b6f381f8a0	unbekannt	5x120	5 x120	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
2559946d-7dbb-41ad-b8dd-7f1333967fc0	unbekannt	5x1,5mm²	5 x1,5 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
61712725-451a-4b90-bbc0-78ee7e8414d2	unbekannt	5x16mm²	5 x16 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
973d7feb-a31d-45a6-839c-f95546c48e0f	unbekannt	5x25mm²	5 x 25 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
ea8c0eb8-7359-47a5-9622-cada422c0ad9	unbekannt	5x2,5mm²	5 x 2,5 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
c36655a8-5998-463e-9423-55d281bc7fc0	unbekannt	5x6mm²	5 x 6 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
bead5fec-a10a-445d-9029-129c21019e08	unbekannt	6x2x0,8	6 x 2 x 0,8	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
dc289ec0-3fec-4538-a0a3-6169d3b6ec98	unbekannt	7x1,5mm²	7 x 1,5 mm²	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
671d2cc0-5b19-4a40-bb26-b58c767b2802	unbekannt	DN 250	DN 250	Nennweite	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
c076fb4d-8cd1-4eac-a03b-20b4e10bf14f	unbekannt	DN 75	DN 75	Nennweite	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
06548efa-a2fc-444d-83f5-9f9a68bbd0fa	unbekannt	0	0	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
312b1a60-584a-4d3f-baca-55c43581fcf0	unbekannt	10x2x0,8mm	10 x 2 x 0,8 mm	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
33df8610-c637-41af-97d2-b1bf7554c539	unbekannt	19x1.5mm²	19 x1.5 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
872079ec-606f-4a70-8766-5a46bedb0c1d	unbekannt	1x120mm²	1 x 120 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e7d52203-9176-40e4-abd5-0a93f8e9142a	unbekannt	1x95mm²	1 x 95 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4c0c5e7d-7c4e-4f90-89ec-1ee7be71a7c3	unbekannt	20x1,5	20 x 1,5	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
429081fb-871a-4902-97fa-0b8affa529a5	unbekannt	20x2x0,6	20 x 2 x 0,6	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
917ccee8-9c29-4300-a458-81d3c904efac	unbekannt	20x2x0,8	20 x 2 x 0,8	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5bfb52bf-03c7-45f4-a592-8f6c0ca37682	unbekannt	4x120mm²	4 x 120 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
74fdfd48-d2a2-4308-9270-d818e3b36ac2	unbekannt	4x12/E9/125	4 x 12/E9/125	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b20b434b-091c-41fb-9637-bf8471aa3997	unbekannt	4x150mm²	4 x 150 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f2e23330-9eb0-4f5a-827e-12a95e765861	unbekannt	4x25mm² Al	4 x 25 mm² Al	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
78980f10-eddf-4a17-b65b-025a21fd3747	unbekannt	4x2x0,8mm²	4 x 2 x 0,8 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e1d50321-0c04-40ca-b1df-3d44be4f62a6	unbekannt	4x35mm²	4 x 35 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3aceffd3-e685-4e1e-936f-653f290480b9	unbekannt	4x95mm²	4 x 95 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
26b2e35c-dd1e-4acf-97b0-eac18af4acc3	unbekannt	50x2x0,8	50 x 2 x 0,8	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
773d1146-35d5-4f30-a468-cf820289c7c1	unbekannt	50x4,6	50 x 4,6	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7ea9fd26-020d-441b-8a87-5ec6175b5d23	unbekannt	5x10mm²	5 x10 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b73bc95a-06d2-40bf-80b8-ee53fc56cfef	unbekannt	5x120	5 x120	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6fdac35e-e6b6-44c0-ac67-e453ad04a54c	unbekannt	5x1,5mm²	5 x1,5 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b92c7166-fc9a-47a9-9202-91cde0f5fa79	unbekannt	5x16mm²	5 x16 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e77d4b35-44c7-4d6e-9362-fe6da077dd34	unbekannt	5x2,5mm²	5 x 2,5 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
209db901-c4ed-4ed0-a91d-6e4507ce0383	unbekannt	5x25mm²	5 x 25 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a0c6167b-229f-4ac4-beb3-f9cd2d3b7971	unbekannt	5x6mm²	5 x 6 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
37a1980b-ef41-439d-9d92-fc551b6a75b8	unbekannt	6x2x0,8	6 x 2 x 0,8	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3ef63e24-500d-48b1-a2d0-5ecab2528c0e	unbekannt	7x1,5mm²	7 x 1,5 mm²	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
49e59692-7532-45c8-83b3-5bb36379f5a8	unbekannt	d110	d110	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5767b77b-bad9-4f6c-81f6-8c5a240b8ba0	unbekannt	d180	d180	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3d82390e-1cbc-48f1-ad03-6bbc189cc80d	unbekannt	DN 100	DN 100	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b49e8c1e-7e7a-4bb2-9153-63feaf04584f	unbekannt	DN 150	DN 150	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c0daf639-c4b6-4b6e-b43d-ec64a8fdc069	unbekannt	DN 20	DN 20	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d58c69b2-d5d0-4475-ba4b-3d8481559fb2	unbekannt	DN 250	DN 250	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
fdae474b-f9d0-4c4a-adff-6b8cde3d7a84	unbekannt	DN 40	DN 40	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
05651322-5cba-4fad-ae5e-b52a91119fbd	unbekannt	DN 400	DN 400	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f3a64491-6a8f-4c93-8690-a68d6c8b82e0	unbekannt	DN 50	DN 50	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
edae03f8-e680-4890-ac4f-1248ddce4109	unbekannt	DN 65	DN 65	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
77146b95-d50f-463b-a923-58fad9c0babf	unbekannt	DN 75	DN 75	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
738a1311-991d-4912-a460-3f8143ce077e	unbekannt	DN 80	DN 80	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ba6caf2d-44c8-486a-94da-e71253754099	unbekannt	unbekannt	unbekannt	Nennweite	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
404aa1e2-63c6-4111-80d6-fda968ba2e2c	unbekannt	4 x 240 mm²	4x240 mm²	\N	001	2026-01-19 23:13:52.671456+01	2100-01-01 00:00:00+01	2026-01-19 23:13:52.671456+01	unbekannt	2026-01-19 23:13:52.671456+01	unbekannt	00000000-0000-0000-0000-000000000003
01bf33b3-8be9-4b52-9a61-7a3efe4954b4	unbekannt	6 x 2 x 0,6	6x2x0,6	\N	001	2026-02-06 14:14:53.360558+01	2100-01-01 00:00:00+01	2026-02-06 14:14:53.360558+01	unbekannt	2026-02-06 14:14:53.360558+01	unbekannt	00000000-0000-0000-0000-000000000001
\.


--
-- TOC entry 81946 (class 2606 OID 47750851)
-- Name: st_vw_dimension pk_st_vw_dimension; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_dimension
    ADD CONSTRAINT pk_st_vw_dimension PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189833)
-- Name: st_vw_dimension uk3_st_vw_dimension_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_dimension
    ADD CONSTRAINT uk3_st_vw_dimension_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189980)
-- Name: st_vw_dimension uk4_st_vw_dimension_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_dimension
    ADD CONSTRAINT uk4_st_vw_dimension_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 47750861)
-- Name: st_vw_dimension tr_a_d__st_vw_dimension__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_dimension__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_dimension REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 47750862)
-- Name: st_vw_dimension tr_a_i_or_u_or_d__st_vw_dimension__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_dimension__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_dimension FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 47750863)
-- Name: st_vw_dimension tr_a_u__st_vw_dimension__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_dimension__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_dimension REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 47750864)
-- Name: st_vw_dimension tr_b_i_or_u_or_d__st_vw_dimension__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_dimension__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_dimension FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 47750856)
-- Name: st_vw_dimension fk_st_vw_dimension_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_dimension
    ADD CONSTRAINT fk_st_vw_dimension_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:02

--
-- PostgreSQL database dump complete
--

