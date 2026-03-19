--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:01

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
-- TOC entry 12196 (class 1259 OID 39685440)
-- Name: st_vw_medium; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_medium (
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
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    richtungspfeil text,
    richtungspfeil_abstand numeric
);


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12196
-- Name: TABLE st_vw_medium; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_medium IS 'Stammdaten Medium';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12196
-- Name: COLUMN st_vw_medium.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_medium.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685440)
-- Dependencies: 12196
-- Data for Name: st_vw_medium; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_medium (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, richtungspfeil, richtungspfeil_abstand) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-20 23:51:09.192732+01	2100-01-01 00:00:00+01	2022-12-20 23:51:09.192732+01	unbekannt	2022-12-20 23:51:09.192732+01	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
198a678f-b144-4fe9-82ee-b5d301935490	unbekannt	ADL_GAL	Schmutzwasserdruckanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
b4e1cd86-9cce-444c-a2a0-a02815e43817	unbekannt	GW	Gewässer	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
626b30a3-f895-4a3a-8b51-ed91412021f6	unbekannt	KR_DRGL	Regenwasserdrainageanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
02b065a1-fe04-4cce-9db5-a3fc4571b149	unbekannt	KR_GRL	Regenwassergraben	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
0bbb0c27-d1c8-413a-9ae3-8b8b2a6224f0	unbekannt	KR_SEL_MU	Entwässerungsmulde	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
42ce5b56-05e1-436b-b9ba-1f48c853ad9e	unbekannt	KR_SEL_RI	Entwässerungsrinne	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
fbef9b4f-afe1-4926-8808-50e05719737b	unbekannt	KR_SIGL	Regenwasserversickerungsanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
a69b6d9e-fe15-4231-9b6c-19a64148cfaa	unbekannt	KR_SOL	fiktiver Verlauf der Regenwasserleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
a465b7cf-6b35-4336-80ae-14d444d1409e	unbekannt	KR_TEIL	Begrenzungslinie eines Regenwasserteiches	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
3960b766-011d-411b-b790-6a8e343605de	unbekannt	KS_TEIL	Teichumrisslinie Schmutzwasser	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
9c11f5a0-a6f2-488a-bd56-6ee75d89d53a	unbekannt	RDL_GAL	Regenwasserdruckanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
1d50f7e1-624a-4e69-aeb6-ce0759701c07	unbekannt	VS_GAL	Vakuumschmutzwasseranschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
b44bd7f1-4a40-470e-a464-87b5b4cb814a	unbekannt	VS_TRL	Vakuum Schmutz	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
bf228dc4-edfa-410b-b8ee-cd10dcd24e50	unbekannt	ADL_GAK	Schmutzwasserdruckanschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
54fbeb0f-8dcb-48fc-8bfd-d1ed4a7ab3b4	unbekannt	ADL_K	Schmutzwasserdruckleitungsknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
d0885ee2-f6c4-482a-95f6-525150db1276	unbekannt	KM_GAK	Mischwasserkanalanschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
4f61dedd-bab7-4278-ba41-6e07ae751bd9	unbekannt	KM_TRK	Mischwasserkanalknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
787e85fc-9824-418c-9562-b7c1b6a9b6d2	unbekannt	KR_DRGK	Regenwasserdrainageanschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
efa8cce9-8a42-4075-a13a-4a9a7d3a700e	unbekannt	KR_DRK	Regenwasserdrainageknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
c49fd2e7-6a06-448d-b948-6b493b3dba08	unbekannt	KR_GAK	Regenwasserkanalanschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
cd690384-1a19-49fc-be15-bbd530ca77a6	unbekannt	KR_GRK	Regenwassergrabenknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
0d24f776-3a7e-4865-929c-f8a11a4e28e0	unbekannt	KR_SEK	Straßenentwässerungsknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
dfcab014-0e53-4c2d-9a0f-33e5770b57e3	unbekannt	KR_SIGK	Regenwasserversickerungsanschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
3ec2e0b1-a238-4abd-a261-c14af617d831	unbekannt	KR_SIK	Regenwasserversickerungsknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
dd3cf66b-aaec-47c2-b9fe-002965905cf2	unbekannt	KR_TEIK	Begrenzungsknoten eines Regenwasserteiches	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
632dfd79-ec9a-4c1e-897d-27d8ae003b37	unbekannt	KR_TRK	Regenwasserkanalknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
0a3e833e-7dc0-4de9-8b20-6261fa4b692a	unbekannt	KS_GAK	Schmutzwasserkanalanschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
79d53356-11ce-487d-ad97-c1c6220eeea8	unbekannt	KS_TRK	Schmutzwasserkanalknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
343d85fb-486f-40e4-acfd-37a20f274675	unbekannt	VS_GAK	Vakuumschmutzwasseranschlussknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
69fbcc21-d426-4810-b27e-1b7d25d429fd	unbekannt	KR_DRL	Regenwasserdrainagerohr	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIRW	30
76aa8031-814a-41a8-b0a5-66ec41d10e39	unbekannt	KR_GAL	Regenwasserkanalanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIRW	30
7122bc0a-70a2-49c3-9f9b-3b812478e14b	unbekannt	ADL	Schmutzwasserdruckleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIDR	5
54f3dd60-5eea-49cb-9a15-a07939c4190d	unbekannt	KM_GAL	Mischwasserkanalanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIMW	5
f03d896a-7868-4366-83a3-3b32412a2798	unbekannt	KM_TRL	Mischwasserkanal	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIMW	5
3576d2aa-607d-4a53-9bfb-3ce584077286	unbekannt	VS_TRK	Vakuumschmutzwasserknoten	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
a950a190-2e77-4ffd-ba2f-72549bba388c	unbekannt	GW_NUP	Gewässer nicht unterhaltungspflichtig	noch keine Bemerkung	001	2024-06-04 11:31:32.194383+02	2100-01-01 00:00:00+01	2024-06-04 11:31:32.194383+02	unbekannt	2024-06-04 11:31:32.194383+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
d8521122-4c12-4941-a643-85213963cad4	unbekannt	RDL_GAK	Regenwasserdruckanschlussknoten	\N	001	2024-06-06 14:48:13.639721+02	2100-01-01 00:00:00+01	2024-06-06 14:48:13.639721+02	unbekannt	2024-06-06 14:48:13.639721+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
559e35fa-34a5-41a0-9f2a-035bfa97accc	unbekannt	RDL_K	Regenwasserdruckleitungsknoten	\N	001	2024-06-06 14:48:13.639721+02	2100-01-01 00:00:00+01	2024-06-06 14:48:13.639721+02	unbekannt	2024-06-06 14:48:13.639721+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
fa7cc21b-c96d-4383-ab85-b0d2a6a30adb	unbekannt	KR_SOK	fiktiver Regenwasserleitungsknoten	\N	001	2024-07-16 07:30:33.329457+02	2100-01-01 00:00:00+01	2024-07-16 07:30:33.329457+02	unbekannt	2024-07-16 07:30:33.329457+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
603be0b7-6e3b-41d5-8718-b0a8a53aad32	unbekannt	KR_VFK	Regenwasservorflutknoten	\N	001	2024-07-16 07:30:33.329457+02	2100-01-01 00:00:00+01	2024-07-16 07:30:33.329457+02	unbekannt	2024-07-16 07:30:33.329457+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
1376b1b6-33ad-4f76-bae6-4681d3a3b8e8	unbekannt	KS_TEIK	Teichkläranlage	\N	001	2024-07-17 14:09:13.377229+02	2100-01-01 00:00:00+01	2024-07-17 14:09:13.377229+02	unbekannt	2024-07-17 14:09:13.377229+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
21f5d69f-3591-4bd2-956e-09f8cf21f46a	unbekannt	AW	Anschlußleitung	\N	001	2024-08-06 11:29:42.323028+02	2100-01-01 00:00:00+01	2024-08-06 11:29:42.323028+02	unbekannt	2024-08-06 11:29:42.323028+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
aecb19f5-59cb-402c-ba29-06ec4f222aa4	unbekannt	BRA_VL	Brauchwasser	\N	001	2024-08-06 11:29:42.323028+02	2100-01-01 00:00:00+01	2024-08-06 11:29:42.323028+02	unbekannt	2024-08-06 11:29:42.323028+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
93125649-1538-479e-bf81-c2514e6b869a	unbekannt	nz	nicht zugewiesen	\N	001	2024-08-06 11:29:42.323028+02	2100-01-01 00:00:00+01	2024-08-06 11:29:42.323028+02	unbekannt	2024-08-06 11:29:42.323028+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
84a90f91-8e05-4661-b1cb-5642cfd259a7	unbekannt	ROH_AL	Rohwasseranschluss	\N	001	2024-08-06 11:29:42.323028+02	2100-01-01 00:00:00+01	2024-08-06 11:29:42.323028+02	unbekannt	2024-08-06 11:29:42.323028+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
fca19916-8d75-46bd-b431-38c96d709a7b	unbekannt	ROH_VL	Rohwasser	\N	001	2024-08-06 11:29:42.323028+02	2100-01-01 00:00:00+01	2024-08-06 11:29:42.323028+02	unbekannt	2024-08-06 11:29:42.323028+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
e7930a5a-2457-4acc-8170-7572899a9f8a	unbekannt	VW	Versorgungsleitung	\N	001	2024-08-06 11:29:42.323028+02	2100-01-01 00:00:00+01	2024-08-06 11:29:42.323028+02	unbekannt	2024-08-06 11:29:42.323028+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
0037884a-65eb-4212-84d3-3d2ba715f6f7	unbekannt	RDL	Regenwasserdruckleitung	\N	001	2024-08-30 10:58:19.708541+02	2100-01-01 00:00:00+01	2024-08-30 10:58:19.708541+02	unbekannt	2024-08-30 10:58:19.708541+02	unbekannt	00000000-0000-0000-0000-000000000001	\N	\N
71363a50-a1a4-4060-b22b-16ff219f5e33	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
e5dee10b-81aa-41ca-863f-4b7d5e0f272a	unbekannt	ADL_GAL	Schmutzwasserdruckanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
8d35f800-e155-41d8-944a-fec8e7f96cfb	unbekannt	GW	Gewässer	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
9ead015f-6726-4484-b8d8-2524cd1961c1	unbekannt	KR_DRGL	Regenwasserdrainageanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
92866b64-93f2-4652-afc6-cf68fe570902	unbekannt	KR_GRL	Regenwassergraben	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
499f2b6d-f05c-4b15-ad6b-ef2f1f3e3b60	unbekannt	KR_SEL_MU	Entwässerungsmulde	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
76f1e8ad-5370-49ff-b15c-f5e0863686b4	unbekannt	KR_SEL_RI	Entwässerungsrinne	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
4cd832f7-bc48-45ba-8d38-26c1bf6bae8d	unbekannt	KR_SIGL	Regenwasserversickerungsanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
8d6ac035-b904-4841-91f3-7bf729eb0691	unbekannt	KR_SOL	fiktiver Verlauf der Regenwasserleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
00f7021d-914c-4261-99b0-4eb09facee00	unbekannt	KR_TEIL	Begrenzungslinie eines Regenwasserteiches	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
7d709527-eac5-4d59-a6db-325f09a4cde0	unbekannt	KS_TEIL	Teichumrisslinie Schmutzwasser	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
5a90e74e-699a-4da2-a9a6-1cd0c3263787	unbekannt	RDL_GAL	Regenwasserdruckanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
59b26281-2286-47d0-9350-c29a9d19d742	unbekannt	VS_GAL	Vakuumschmutzwasseranschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
033fb7be-45b1-43fe-916b-bf5108d07dbe	unbekannt	VS_TRL	Vakuum Schmutz	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
4c3a9103-45ef-48c6-904f-bdea1d15b24a	unbekannt	ADL_GAK	Schmutzwasserdruckanschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
eb8b488f-db92-4467-b29e-8002677c3f11	unbekannt	ADL_K	Schmutzwasserdruckleitungsknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
87df7ff2-eb69-465f-95c2-0cb9adc9212e	unbekannt	KM_GAK	Mischwasserkanalanschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
e726d18a-0725-43e8-b6aa-2701d3df3cb1	unbekannt	KM_TRK	Mischwasserkanalknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
cd266d31-55ed-4ee3-84ec-f49ee5d1afc8	unbekannt	KR_DRL	Regenwasserdrainagerohr	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIRW	30
9c89a9b0-2786-4ed8-828b-0b14b48bbe5f	unbekannt	KR_GAL	Regenwasserkanalanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIRW	30
cee76734-4334-46d5-8965-fdd75e2c6bd6	unbekannt	ADL	Schmutzwasserdruckleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIDR	5
e92624c0-26da-4f92-8e2c-cd7724f502e3	unbekannt	KM_GAL	Mischwasserkanalanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIMW	5
c62bb7f8-b002-4753-a8b3-cf484110d8db	unbekannt	KM_TRL	Mischwasserkanal	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIMW	5
403a0516-6901-4d6f-8d29-4a9cca3fe3b8	unbekannt	KR_DRGK	Regenwasserdrainageanschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
f5ea6467-c4cd-4286-b65c-739c5f385a33	unbekannt	KR_DRK	Regenwasserdrainageknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
f9a9d54e-fd62-416b-9e6d-ddf865cc7719	unbekannt	KR_GAK	Regenwasserkanalanschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
5e002ad6-1346-4a03-aed6-d671103ffe9e	unbekannt	KR_GRK	Regenwassergrabenknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
6a04499c-8541-4964-8e01-ccb8b9729b0d	unbekannt	KR_SEK	Straßenentwässerungsknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
f373f75a-cec2-4a5f-be7e-a9e4b533b025	unbekannt	KR_SIGK	Regenwasserversickerungsanschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
481117f7-9806-41c7-a857-ac03a9b4f02b	unbekannt	KR_SIK	Regenwasserversickerungsknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
bb0e477b-b9cc-4b43-aa7a-3c9f783412a1	unbekannt	KR_TEIK	Begrenzungsknoten eines Regenwasserteiches	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
0ae1f067-568d-43b8-8c5d-fd872a967986	unbekannt	KR_TRK	Regenwasserkanalknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
be57a9c4-b085-4a73-889b-387aa2522403	unbekannt	KS_GAK	Schmutzwasserkanalanschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
c02be6b1-10ab-42ab-b663-4b7360d501f2	unbekannt	KS_TRK	Schmutzwasserkanalknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
ac039370-118a-4395-a124-993e1cd72e43	unbekannt	VS_GAK	Vakuumschmutzwasseranschlussknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
4cbe5b33-60ca-4943-b6e1-ba476f6ceba0	unbekannt	VS_TRK	Vakuumschmutzwasserknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
c9273de0-d56b-4b37-9842-6216437c0cde	unbekannt	GW_NUP	Gewässer nicht unterhaltungspflichtig	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
dbe3ba82-6140-4744-8a3a-4e2b0e9abd65	unbekannt	RDL_GAK	Regenwasserdruckanschlussknoten	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
15e55d52-be8b-4d45-9785-a8c8ff80edf7	unbekannt	RDL_K	Regenwasserdruckleitungsknoten	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
72c860f7-99e6-4850-99b4-6d30334df039	unbekannt	KR_SOK	fiktiver Regenwasserleitungsknoten	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
3f077d0f-e102-4221-a1dd-15f859c8f733	unbekannt	KR_VFK	Regenwasservorflutknoten	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
ae010b1f-8343-4ab8-9aee-447df42c699b	unbekannt	KS_TEIK	Teichkläranlage	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
c04462fe-1269-47b0-871a-9ec04b80ebc1	unbekannt	AW	Anschlußleitung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
5f6b1a17-75d6-4233-a161-80b49bc09b49	unbekannt	BRA_VL	Brauchwasser	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
be80d2ff-aa7b-456a-a5f4-7b329f37d252	unbekannt	nz	nicht zugewiesen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
f72237b3-2b2b-4dd8-95cb-d29fe20b7b78	unbekannt	ROH_AL	Rohwasseranschluss	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
cc2ed896-63e7-4669-8922-6ac988654cc3	unbekannt	ROH_VL	Rohwasser	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
d226f8ba-fc72-4128-98d5-5b17e9cb75b2	unbekannt	VW	Versorgungsleitung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
2df0e30f-bead-4935-8964-ace848b89284	unbekannt	RDL	Regenwasserdruckleitung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N	\N
762bff43-568e-4355-a572-177d274f7043	unbekannt	KS_GAL	Schmutzwasserkanalanschlussleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEISW	30
679a1c1e-9020-4d25-9547-6e627802e46b	unbekannt	KS_TRL	Schmutzwasserkanal	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEISW	30
b9a3d1ce-58ce-4d25-819f-d2cfa75b62a1	unbekannt	KS_GAL	Schmutzwasserkanalanschlussleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEISW	30
260db7b2-ba4a-4e61-b16f-cf8db17d36b8	unbekannt	KS_TRL	Schmutzwasserkanal	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEISW	30
94a1ead2-0a44-460a-9678-48c29a8b9154	unbekannt	KR_SEL	Straßenentwässerungsleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIRW	30
bc1a97cd-34e5-4947-be28-48ff1e261897	unbekannt	KR_SIL	Regenwasserversickerungsleitung	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIRW	30
cd4e69d0-1339-4a53-9504-0ec9c03a6781	unbekannt	KR_TRL	Regenwasserkanal	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	RIPFEIRW	30
4e1d4eb6-e43d-4821-8cf3-9234f136b7ab	unbekannt	KR_SEL	Straßenentwässerungsleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIRW	30
8928a78e-d9e7-466f-8fc8-94db2dbc89d5	unbekannt	KR_SIL	Regenwasserversickerungsleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIRW	30
49f3d092-1bfd-4122-bb75-d6fa333e5c67	unbekannt	KR_TRL	Regenwasserkanal	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	RIPFEIRW	30
\.


--
-- TOC entry 81946 (class 2606 OID 39687413)
-- Name: st_vw_medium pk_st_vw_medium; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_medium
    ADD CONSTRAINT pk_st_vw_medium PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189867)
-- Name: st_vw_medium uk3_st_vw_medium_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_medium
    ADD CONSTRAINT uk3_st_vw_medium_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190016)
-- Name: st_vw_medium uk4_st_vw_medium_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_medium
    ADD CONSTRAINT uk4_st_vw_medium_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687990)
-- Name: st_vw_medium tr_a_d__st_vw_medium__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_medium__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_medium REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688126)
-- Name: st_vw_medium tr_a_i_or_u_or_d__st_vw_medium__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_medium__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_medium FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688262)
-- Name: st_vw_medium tr_a_u__st_vw_medium__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_medium__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_medium REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688400)
-- Name: st_vw_medium tr_b_i_or_u_or_d__st_vw_medium__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_medium__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_medium FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690228)
-- Name: st_vw_medium fk_st_vw_medium_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_medium
    ADD CONSTRAINT fk_st_vw_medium_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:03

--
-- PostgreSQL database dump complete
--

