--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:11

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
-- TOC entry 12153 (class 1259 OID 39684658)
-- Name: st_gemeinde; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_gemeinde (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    id_st_amt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    ident_hist text DEFAULT 'unbekannt'::text NOT NULL,
    alkis_gemshl text DEFAULT 'nicht zugewiesen'::text NOT NULL,
    gemeinde text DEFAULT 'nicht zugewiesen'::text NOT NULL,
    bemerkung text,
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
-- Dependencies: 12153
-- Name: TABLE st_gemeinde; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_gemeinde IS 'Stammdaten Gemeinde';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.id IS '  ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.id_st_amt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.id_st_amt IS 'ID st AMT';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.alkis_gemshl; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.alkis_gemshl IS 'ALKIS Gemarkungsschluessel ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.gemeinde; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.gemeinde IS 'Gemeinde ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12153
-- Name: COLUMN st_gemeinde.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_gemeinde.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83795 (class 0 OID 39684658)
-- Dependencies: 12153
-- Data for Name: st_gemeinde; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_gemeinde (id, id_st_amt, ident_hist, alkis_gemshl, gemeinde, bemerkung, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	00000000-0000-0000-0000-000000000000	00000000-0000-0000-0000-000000000000	nicht zugewiesen	unbekannt	noch keine Bemerkung	2024-04-12 07:54:28.989359+02	2100-01-01 00:00:00+01	2024-04-12 07:54:28.989359+02	unbekannt	2024-04-12 07:54:28.989359+02	unbekannt	00000000-0000-0000-0000-000000000001
8e1c7ac6-f449-4303-a307-beb235e0f5ec	3a29e1d2-473e-41e6-947b-8b8014270db3	5219	nicht zugewiesen	Bobitz	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
cc51a840-09c9-4b64-a1ca-92cb7e436568	196e87ea-252b-4fe9-84b2-e5cfc336aac5	30	nicht zugewiesen	Zierow	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
0f29c4ef-ff10-4f6c-bd83-cd9ce699378a	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	1	nicht zugewiesen	Upahl	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
bf9e804a-a331-497c-9159-27d6c3a40179	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	2	nicht zugewiesen	Rüting	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
480ef9e5-4d3a-4b22-9d6b-eefe9b39e93f	196e87ea-252b-4fe9-84b2-e5cfc336aac5	3	nicht zugewiesen	Kalkhorst	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
ef65e46d-77f8-43c2-a2cd-b73654069416	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	4	nicht zugewiesen	Roduchelstorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
c526ca48-77ca-4148-a09e-ef81a4c90ad7	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	5	nicht zugewiesen	Testorf-Steinfort	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
18cc50c9-c9b9-4ac7-be5b-8a3c80181a6e	fd488f48-14f1-4753-b111-ff7c9d53d700	6	nicht zugewiesen	Grevesmühlen, Stadt	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
67cff76b-78b1-46ef-8b49-a5e2e9f10d1e	196e87ea-252b-4fe9-84b2-e5cfc336aac5	7	nicht zugewiesen	Klütz, Stadt	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
48f6abd2-68ae-4068-9044-671ae4cec47d	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	8	nicht zugewiesen	Dassow, Stadt	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
edafa59c-fa2e-43c5-9504-69eaf828bbc2	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	9	nicht zugewiesen	Grieben	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
b055a65b-01fa-48ba-98b7-6316f8580a7c	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	11	nicht zugewiesen	Bernstorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
b3773bc1-3861-4dd7-a7a4-c9b565a3297b	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	13	nicht zugewiesen	Menzendorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
38054751-f2cb-466b-886f-b644bbdb63fd	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	14	nicht zugewiesen	Roggenstorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
5d187306-d2a8-4294-a45f-7fdf77889596	4da82335-2b19-4b90-b8d5-1cb0b9edf58f	18	nicht zugewiesen	Zülow	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
ddfc338d-20d4-4981-82f5-0d7a6278863a	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	20	nicht zugewiesen	Warnow	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
71bafcc6-2968-4099-844f-a7d37fa02cc1	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	21	nicht zugewiesen	Gägelow	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
28b78de2-4366-4539-9518-d4f5956b3cec	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	22	nicht zugewiesen	Lüdersdorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
ee1d52a5-1dd9-44c4-b776-8b5aa6b32522	196e87ea-252b-4fe9-84b2-e5cfc336aac5	23	nicht zugewiesen	Damshagen	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
d54655df-6ce8-4f7a-88cb-1fed07a69c68	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	24	nicht zugewiesen	Siemz-Niendorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
5e96b885-2f8a-41bf-9561-594f29a927a7	196e87ea-252b-4fe9-84b2-e5cfc336aac5	25	nicht zugewiesen	Boltenhagen	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
115da11a-4919-40da-9dfc-d1377b4ce528	196e87ea-252b-4fe9-84b2-e5cfc336aac5	26	nicht zugewiesen	Hohenkirchen	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
45d52102-8588-4f38-9b26-74256ec83bec	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	28	nicht zugewiesen	Selmsdorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
0fe557e3-bdc3-4fcc-b86e-b08064a2cf72	4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	29	nicht zugewiesen	Schönberg, Stadt	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
530de676-e8bc-4819-adb3-6f9e0f07640f	30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	32	nicht zugewiesen	Stepenitztal	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
5a947739-d80f-4d8a-a5da-924328017926	04dd6986-1902-4e02-bd52-122bb422c31c	5354	nicht zugewiesen	Passee	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
20135306-8f34-47cf-9b5d-5cb2b2f0ddea	a866286d-2421-4a18-a656-74b659f051e8	5243	nicht zugewiesen	Rehna, Stadt	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
ba4d6ff2-54c3-423c-8196-0b997888ae59	35b29209-cfd5-400b-adea-125cec4818e4	00000000-0000-0000-0000-000000000003	nicht zugewiesen	unbekannt	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
3e50bb92-14e3-4597-83c7-f2756641a6cc	8b46ece9-03ce-4b86-801b-79a49e5292f7	11952	nicht zugewiesen	Dömitz	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
b5b6ffc5-e5e9-406e-92ce-1491c7d3ff5a	8b46ece9-03ce-4b86-801b-79a49e5292f7	12041	nicht zugewiesen	Neu Kaliß	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
60bac875-1a4e-421e-8413-dcb39ff355ab	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	12108	nicht zugewiesen	Milow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
9b6f01bf-f1ef-4d00-bf5b-b93f6d7e527a	8b46ece9-03ce-4b86-801b-79a49e5292f7	12132	nicht zugewiesen	Malk Göhren	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
8ab39965-4317-4ea4-a43a-b688a60e0e9d	8b46ece9-03ce-4b86-801b-79a49e5292f7	12156	nicht zugewiesen	Malliß	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
ce285e77-7a56-479c-bf42-c653e7af080f	8b46ece9-03ce-4b86-801b-79a49e5292f7	12188	nicht zugewiesen	Grebs-Niendorf	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
47e6c3f5-4ada-45db-b23c-860285936d15	8b46ece9-03ce-4b86-801b-79a49e5292f7	12210	nicht zugewiesen	Karenz	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
19857077-5dff-4b4e-8e51-bb5e35a80a63	61e2638f-c2b5-4193-9517-144bc4c524f8	12220	nicht zugewiesen	Bresegard bei Eldena	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
3c03a4a5-76b7-4df2-8bd6-63bccc23cfef	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	12231	nicht zugewiesen	Eldena	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
cd81ad54-d35d-4610-a7db-51615b755225	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11700	nicht zugewiesen	Prislich	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
984cc7d6-39e5-49d9-8353-a3ab18252ba2	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11827	nicht zugewiesen	Dambeck	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
d8187ff9-5345-41b5-8be9-05fa04f696c8	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11833	nicht zugewiesen	Brunow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
8085f76b-e64e-4fdc-ac1c-b6e67ec0bf10	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11854	nicht zugewiesen	Muchow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
08f6bed0-4818-42dc-8813-58f801036ce6	3697346d-1080-4ec8-bbf2-e2da962a63f6	11862	nicht zugewiesen	Blievenstorf	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
55a7b583-1be9-4f89-9232-25976437fcc4	61e2638f-c2b5-4193-9517-144bc4c524f8	12574	nicht zugewiesen	Wöbbelin	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
17bdd333-2496-4ae5-94ea-fea466a78f4a	61e2638f-c2b5-4193-9517-144bc4c524f8	12597	nicht zugewiesen	Rastow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
ae153e87-1348-41dd-8e1f-d343e2afea52	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11805	nicht zugewiesen	Zierzow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
65593a63-1df7-43e7-812c-934f9961bba1	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11727	nicht zugewiesen	Kremmin	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
397bb0b4-0b95-4ed6-8c3e-4d559d95c957	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11728	nicht zugewiesen	Grabow, Stadt	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
b3a0398a-92e3-447b-a359-013f12c0a61e	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11765	nicht zugewiesen	Gorlosen	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
ae71a05e-18db-4a0a-b8b9-3082204ee0bf	8b46ece9-03ce-4b86-801b-79a49e5292f7	11879	nicht zugewiesen	Vielank	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
bdc39a0d-3071-4086-8274-6a192d8934b2	61e2638f-c2b5-4193-9517-144bc4c524f8	12278	nicht zugewiesen	Göhlen	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
e0af73fc-8782-4059-a0b0-397eb53b083c	fb3ee6d3-0801-4ba9-8758-8e134e4e4c23	12296	nicht zugewiesen	Ludwigslust, Stadt	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
35f447fa-854b-4e67-b6b1-705ca98e9bfc	61e2638f-c2b5-4193-9517-144bc4c524f8	12339	nicht zugewiesen	Alt Krenzlin	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
62a292d2-0dce-4afb-922b-33d16e11f46d	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11711	nicht zugewiesen	Balow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
197f7b80-0ec6-4aa6-9c50-cf4815e26137	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11726	nicht zugewiesen	Möllenbeck	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
caf8e582-2417-43dc-b657-bc061b5336df	61e2638f-c2b5-4193-9517-144bc4c524f8	12381	nicht zugewiesen	Warlow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
98610d93-cd2d-4258-b4ff-34e8ba375d46	61e2638f-c2b5-4193-9517-144bc4c524f8	12391	nicht zugewiesen	Lüblow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
24e39c8b-98a7-4f25-88d5-50f7479068c1	eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	12408	nicht zugewiesen	Karstädt	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
f5b4f09b-519d-4a0c-a20d-2562bcdd23e9	3697346d-1080-4ec8-bbf2-e2da962a63f6	12428	nicht zugewiesen	Brenz	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
2e36d0d6-40c4-4c01-b825-29553b211c72	3697346d-1080-4ec8-bbf2-e2da962a63f6	12438	nicht zugewiesen	Neustadt-Glewe	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687321)
-- Name: st_gemeinde pk_st_gemeinde; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_gemeinde
    ADD CONSTRAINT pk_st_gemeinde PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 39687593)
-- Name: st_gemeinde uk1_st_amt_st_gemeinde; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_gemeinde
    ADD CONSTRAINT uk1_st_amt_st_gemeinde UNIQUE (id_st_vw_projekt, gemeinde, id_st_amt);


--
-- TOC entry 81951 (class 2620 OID 39687944)
-- Name: st_gemeinde tr_a_d__st_gemeinde__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_gemeinde__tf_history_after AFTER DELETE ON verundentsorgung.st_gemeinde REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81952 (class 2620 OID 39688080)
-- Name: st_gemeinde tr_a_i_or_u_or_d__st_gemeinde__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_gemeinde__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_gemeinde FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81953 (class 2620 OID 39688216)
-- Name: st_gemeinde tr_a_u__st_gemeinde__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_gemeinde__tf_history_after AFTER UPDATE ON verundentsorgung.st_gemeinde REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 39688354)
-- Name: st_gemeinde tr_b_i_or_u_or_d__st_gemeinde__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_gemeinde__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_gemeinde FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81949 (class 2606 OID 39689983)
-- Name: st_gemeinde fk_st_gemeinde_st_amt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_gemeinde
    ADD CONSTRAINT fk_st_gemeinde_st_amt FOREIGN KEY (id_st_amt) REFERENCES verundentsorgung.st_amt(id);


--
-- TOC entry 81950 (class 2606 OID 39689988)
-- Name: st_gemeinde fk_st_gemeinde_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_gemeinde
    ADD CONSTRAINT fk_st_gemeinde_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:12

--
-- PostgreSQL database dump complete
--

