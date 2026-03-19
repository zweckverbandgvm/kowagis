--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:31

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
-- TOC entry 21063 (class 1259 OID 47750799)
-- Name: st_vw_kabeltyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_kabeltyp (
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
-- Dependencies: 21063
-- Name: TABLE st_vw_kabeltyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_kabeltyp IS 'Stammdaten Kabeltyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 21063
-- Name: COLUMN st_vw_kabeltyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_kabeltyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 47750799)
-- Dependencies: 21063
-- Data for Name: st_vw_kabeltyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_kabeltyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
475fe87b-f37b-46ea-902a-1222f5770e06	unbekannt	B	Beton	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
b83b0e3d-0ee6-4715-a950-690cae0a1057	unbekannt	KMR	KMR	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
8ae53c8f-c2df-4133-8e51-d5a510933b9b	unbekannt	PE	PE	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
95c0ce81-ee02-4d9a-a7c8-e04b92eca659	unbekannt	PE100	PE100	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
ecfc4e7a-b961-493f-9a48-23c10e6cd17c	unbekannt	PE-HD	PE-HD	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
2d37ef90-7c55-45b9-bb15-34bc78142145	unbekannt	ST	Stahl	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
86f99094-c050-42ac-b003-c1a28b4369af	unbekannt	GG	GG	\N	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
61bf6dea-5ad1-42ea-9291-c654b5975953	unbekannt	PVC	PVC	\N	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
6f77a46b-a017-480b-8f44-126337b2c84d	unbekannt	A2YF	A2YF	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
c0cbc2fa-7745-4169-b37d-a62fe5d20271	unbekannt	A2YF2Y	A2YF2Y	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
d307f595-fd2a-4cdf-ae4a-14a7a80eb5dd	unbekannt	A2YF(L)2Y	A2YF(L)2Y	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
b9dbe767-789a-458b-b85e-3b1dde118ac6	unbekannt	A2Y(L)2Y	A2Y(L)2Y	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
b567048c-6248-4240-9664-10a94bfb798f	unbekannt	A-DQ(ZN)B2Y	A-DQ(ZN)B2Y	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
29c3a585-9364-480a-8350-dee76bbfc957	unbekannt	AZYF(L)2Y	AZYF(L)2Y	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
8d15849f-f1be-47b3-b533-f17f24940c7a	unbekannt	AZY(L)2Y	AZY(L)2Y	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
2e50d84d-6cca-44dd-9caf-31fb396060c0	unbekannt	Kabuflex	Kabuflex	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
84d478eb-6b13-4976-ba14-3cbf40cb9a04	unbekannt	NAYY-J	NAYY-J	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
e7a309a9-23a8-466f-8b88-2bb7ba664773	unbekannt	NYCWY	NYCWY	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
7320998c-2c07-4929-8170-2ebefb4e846a	unbekannt	NYY-J	NYY-J	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
4443ff38-27f1-4df9-9376-70b0f8ce0630	unbekannt	NYY-JZ	NYY-JZ	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
38ed92f9-5397-4e91-bcba-92fadffef17e	unbekannt	NYY-O	NYY-O	Kabel	001	2025-07-14 09:30:26.299249+02	2100-01-01 00:00:00+01	2025-07-14 09:30:26.299249+02	unbekannt	2025-07-14 09:30:26.299249+02	unbekannt	00000000-0000-0000-0000-000000000001
fb50a5b0-4779-4f2a-9ea1-e25196dce047	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cd573480-8af3-4f39-bcd5-4bdfb32609d5	unbekannt	B	Beton	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5eaa39ca-04a8-49e2-b373-893bd2225573	unbekannt	KMR	KMR	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
67c4ad0c-c11d-46df-a93f-d0725afee106	unbekannt	PE	PE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6c0eadfa-29e0-4626-9f5e-7bc3fd564e43	unbekannt	PE100	PE100	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f5fa7626-3cba-4a16-b343-0b9988fb6f99	unbekannt	PE-HD	PE-HD	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
942d7056-8be5-4d73-8c40-67b1c0fd3a53	unbekannt	ST	Stahl	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
083a6109-c96b-4971-b5dc-900d50af3e25	unbekannt	GG	GG	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d7492274-4312-440c-90e2-77693e0b0684	unbekannt	PVC	PVC	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d7d6d191-7276-4a9e-ba47-3b35f82e654f	unbekannt	A2YF	A2YF	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ba65d961-2242-4e3a-9d66-8c408982be84	unbekannt	A2YF2Y	A2YF2Y	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
baadc9bd-f448-4874-bce1-8be700745193	unbekannt	A2YF(L)2Y	A2YF(L)2Y	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f773ffa4-5565-45ff-a320-2780d52277d8	unbekannt	A2Y(L)2Y	A2Y(L)2Y	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9005fad2-7840-4c3f-bda8-4a7c2784fdb4	unbekannt	A-DQ(ZN)B2Y	A-DQ(ZN)B2Y	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a9d35c0f-f4d0-4cc4-8775-b280078cf807	unbekannt	AZYF(L)2Y	AZYF(L)2Y	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a8dcf1cb-cf30-4bf4-ab28-183406bd9404	unbekannt	AZY(L)2Y	AZY(L)2Y	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
efbc8558-c4e2-47e7-b3d0-1500d5fc53bc	unbekannt	Kabuflex	Kabuflex	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1dfe2880-0822-4767-97d5-b9da2924ca5a	unbekannt	NAYY-J	NAYY-J	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5f8d30f0-2986-47f7-9cae-3bc0ce6c10c7	unbekannt	NYCWY	NYCWY	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5bff6626-f2e7-416c-bcce-c5732f15b972	unbekannt	NYY-J	NYY-J	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7657d0aa-635a-4acd-8377-d5b84bed8515	unbekannt	NYY-JZ	NYY-JZ	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
711b6576-da4a-447f-976b-29ef4408222b	unbekannt	NYY-O	NYY-O	Kabel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 47750818)
-- Name: st_vw_kabeltyp pk_st_vw_kabeltyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_kabeltyp
    ADD CONSTRAINT pk_st_vw_kabeltyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189855)
-- Name: st_vw_kabeltyp uk3_st_vw_kabeltyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_kabeltyp
    ADD CONSTRAINT uk3_st_vw_kabeltyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190004)
-- Name: st_vw_kabeltyp uk4_st_vw_kabeltyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_kabeltyp
    ADD CONSTRAINT uk4_st_vw_kabeltyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 47750828)
-- Name: st_vw_kabeltyp tr_a_d__st_vw_kabeltyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_kabeltyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_kabeltyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 47750829)
-- Name: st_vw_kabeltyp tr_a_i_or_u_or_d__st_vw_kabeltyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_kabeltyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_kabeltyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 47750830)
-- Name: st_vw_kabeltyp tr_a_u__st_vw_kabeltyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_kabeltyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_kabeltyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 47750831)
-- Name: st_vw_kabeltyp tr_b_i_or_u_or_d__st_vw_kabeltyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_kabeltyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_kabeltyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 47750823)
-- Name: st_vw_kabeltyp fk_st_vw_kabeltyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_kabeltyp
    ADD CONSTRAINT fk_st_vw_kabeltyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:33

--
-- PostgreSQL database dump complete
--

