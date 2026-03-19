--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:59

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
-- TOC entry 12195 (class 1259 OID 39685422)
-- Name: st_vw_material; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_material (
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
-- Dependencies: 12195
-- Name: TABLE st_vw_material; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_material IS 'Stammdaten Material';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12195
-- Name: COLUMN st_vw_material.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_material.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685422)
-- Dependencies: 12195
-- Data for Name: st_vw_material; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_material (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
ec4367c6-8d21-44bd-b9f8-91f252903cb0	unbekannt	ACO Kerb Drain	ACO Kerb Drain	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
9387210f-e167-4200-a7bc-d75e8e74b032	unbekannt	AZ	Asbestzement	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
4675b9fc-7394-422b-8ad9-f068a56f83a2	unbekannt	B	Beton	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
f04be986-fb81-40b3-862b-5ca7feaa0f13	unbekannt	B/GFK	Beton/Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
f9ca8af2-d9eb-4222-979d-c219f8237b5c	unbekannt	BMR	Wandverstärkter Schwerlastbeton	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
64d4eebe-d11e-4068-9217-157a63f8a1af	unbekannt	BM_RINNE	Betonmuldenrinne	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
36362dd4-6aa0-48b8-88f8-5ee304793edc	unbekannt	CNS	Edelstahl	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
ef74f762-9c4c-4a64-bb36-aeba2aca1bbd	unbekannt	FLEX	FLEX	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
a624b2f7-b6fd-4d86-9b99-282e2e695a3c	unbekannt	GFK	Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
d3088508-5990-4076-a8ac-60177d01377a	unbekannt	GG	Grauguss	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
8b674c49-ea87-48e8-84fe-f5fa8860efe4	unbekannt	GGG	Duktiles Gusseisen	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
b1c7d9ca-9c71-4b5f-b617-430d91e68468	unbekannt	MIX	unterschiedliche Werkstoffe	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
c87f30fc-71ec-4c45-bb19-4c01263b4d91	unbekannt	P	Porosit	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
c0c083cf-ee38-4cf0-b3b6-f37ed3892a75	unbekannt	PE	Polyethylen	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
591055b8-fbdf-41d9-a2cb-12bb50633543	unbekannt	PE 100	Polyethylen 100	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
5933e709-efc4-48b0-b234-7e464b1e38ff	unbekannt	PE 100 RC	Polyethylen 100 RC	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
8c877494-5442-41c3-99f8-ccab90924e8e	unbekannt	PE 63	Polyethylen 63	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
c587eff9-5c4d-4b1c-82c5-8da5b1c605ba	unbekannt	PE 80	Polyethylen 80	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
664bc047-a608-4ed7-9c94-07dce8a5f2de	unbekannt	PE-HD	Polyethylen hoher Dichte	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
a3429c3b-de2e-4b20-b171-163909f16f45	unbekannt	PEX	PEX	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
c2422a48-6b3d-45cb-9e11-a8dd5dba7c83	unbekannt	PP	Polypropylen	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
44fd1c08-49ec-4cc3-84e3-8c3129892024	unbekannt	PVCU	Polyvinylchlorid hart	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
a5c6729f-216a-4bdf-b596-ce97e4858308	unbekannt	PVCU/GFK	Kunststoff/Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
607f0c63-9dbb-4ca1-a932-4d80f28b57f5	unbekannt	PVCU-Kokosdrain	Polyvinylchlorid mit Kokosdrain	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
82be17a5-a641-489a-95c7-def8d45c9d0b	unbekannt	SB	Stahlbeton	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
4da10f29-57e6-41ec-9aeb-0c6cb2387e5f	unbekannt	ST	Stahl	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
e66d3987-44f6-4ffd-b5b8-9914d41a2136	unbekannt	STZ	Steinzeug	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
878f8ef3-0788-4499-a1c9-6333aa8a20f9	unbekannt	STZ/GFK	Steinzeug/Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
8708171c-278f-4bc8-bf34-1773f86e90f0	unbekannt	TON	Ton	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
3696b3d7-f333-4c81-a0e4-d57a438ee126	unbekannt	TSR	doppelwandiges Kunststoffrohr	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
348e8257-620c-4c52-b884-1ce0c81425b8	unbekannt	MA	Mauerwerk	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001
d161167f-6201-4c9f-b8d2-faf254d9dc73	unbekannt	UPONOR	Uponor	noch keine Bemerkung	001	2024-04-22 11:55:54.710693+02	2100-01-01 00:00:00+01	2024-04-22 11:55:54.710693+02	unbekannt	2024-04-22 11:55:54.710693+02	unbekannt	00000000-0000-0000-0000-000000000001
8c4af9df-cc17-48cd-8fea-360ab7d231d4	unbekannt	Gusseisen und Beton	Gusseisen und Beton	\N	001	2024-07-23 10:39:09.82907+02	2100-01-01 00:00:00+01	2024-07-23 10:39:09.82907+02	unbekannt	2024-07-23 10:39:09.82907+02	unbekannt	00000000-0000-0000-0000-000000000001
8b2d7bff-1007-4edd-acc5-388709d250bc	unbekannt	Guss geschlitzt	Guss geschlitzt	\N	001	2024-07-23 10:39:09.82907+02	2100-01-01 00:00:00+01	2024-07-23 10:39:09.82907+02	unbekannt	2024-07-23 10:39:09.82907+02	unbekannt	00000000-0000-0000-0000-000000000001
1bbb23ee-368f-4a60-82a1-0939bac9ae43	unbekannt	Gusseisen	Gusseisen	\N	001	2024-07-23 10:39:09.82907+02	2100-01-01 00:00:00+01	2024-07-23 10:39:09.82907+02	unbekannt	2024-07-23 10:39:09.82907+02	unbekannt	00000000-0000-0000-0000-000000000001
9ad920df-c2f3-4998-9eb9-6cad0530bc38	unbekannt	Polyethylen High Density	Polyethylen High Density	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001
73615649-bfe1-4ba9-974f-f1f779efddd4	unbekannt	duktiles Gusseisen	duktiles Gusseisen	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001
b62b4c9a-82fd-495b-9a1d-2c386f7c0b38	unbekannt	vernetztes Polyethylen	vernetztes Polyethylen	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001
4082a12e-9b3f-4a37-91ff-0255a1720435	unbekannt	?	?	\N	001	2024-08-06 09:37:03.72369+02	2100-01-01 00:00:00+01	2024-08-06 09:37:03.72369+02	unbekannt	2024-08-06 09:37:03.72369+02	unbekannt	00000000-0000-0000-0000-000000000001
5100983d-d599-4441-8ac2-dd45bbbd6d49	unbekannt	2001	2001	\N	001	2024-08-06 13:15:57.678422+02	2100-01-01 00:00:00+01	2024-08-06 13:15:57.678422+02	unbekannt	2024-08-06 13:15:57.678422+02	unbekannt	00000000-0000-0000-0000-000000000001
79ca9902-8433-48bc-8d16-7765c6dac37a	unbekannt	1	1	\N	001	2024-08-06 13:15:57.678422+02	2100-01-01 00:00:00+01	2024-08-06 13:15:57.678422+02	unbekannt	2024-08-06 13:15:57.678422+02	unbekannt	00000000-0000-0000-0000-000000000001
7f1aeb3a-d75e-4ee1-9426-1b0b63e048fb	unbekannt	2010	2010	\N	001	2024-08-06 13:15:57.678422+02	2100-01-01 00:00:00+01	2024-08-06 13:15:57.678422+02	unbekannt	2024-08-06 13:15:57.678422+02	unbekannt	00000000-0000-0000-0000-000000000001
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	000	2022-12-20 23:48:44.323908+01	2100-01-01 00:00:00+01	2022-12-20 23:48:44.323908+01	unbekannt	2022-12-20 23:48:44.323908+01	zvgrh	00000000-0000-0000-0000-000000000001
8998a605-22b9-49a4-8adc-9e4d775a6292	unbekannt	PVC	Polyvinylchlorid	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001
659b2d02-8ea5-42b4-9675-b5eceebd988c	unbekannt	PC	Polymerbeton	\N	001	2025-02-25 09:19:18.479825+01	2100-01-01 00:00:00+01	2025-02-25 09:19:18.479825+01	unbekannt	2025-02-25 09:19:18.479825+01	unbekannt	00000000-0000-0000-0000-000000000001
93d75fe0-28a8-4276-a43a-ef6f620c128f	unbekannt	KMR	Kunststoffmantelrohr	noch keine Bemerkung	001	2025-08-29 07:40:28.238727+02	2100-01-01 00:00:00+01	2025-08-29 07:40:28.238727+02	unbekannt	2025-08-29 07:40:28.238727+02	unbekannt	00000000-0000-0000-0000-000000000001
a719009d-b54d-4c0a-9ef2-a8c6208dc8a2	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4f06c4cd-26bd-44a2-91ed-77a32da615f6	unbekannt	ACO Kerb Drain	ACO Kerb Drain	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
011e7c2e-04c4-4e4f-95b4-64ebdde6c6e2	unbekannt	AZ	Asbestzement	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
62e238c8-c65c-47f7-8595-84aa1ec317ea	unbekannt	B	Beton	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
30b2ba25-eeb6-4056-9d21-c0caebdb0075	unbekannt	B/GFK	Beton/Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2d3ee99a-0ade-47cf-b444-6020eace95e3	unbekannt	BMR	Wandverstärkter Schwerlastbeton	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
89fe3b20-eacc-44c0-b1f5-3437ed3c0f96	unbekannt	BM_RINNE	Betonmuldenrinne	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2205d371-ce65-4ed6-a8a5-a3cc5414b98f	unbekannt	CNS	Edelstahl	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c232bd82-1d28-49db-a18b-68357c68bcff	unbekannt	FLEX	FLEX	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9b73913c-1344-4cab-a45a-3c4f0c185967	unbekannt	GFK	Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9a545269-5209-436c-b0ef-2d15c3bb2d91	unbekannt	GG	Grauguss	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e01d95e7-3087-4940-a4f6-3e2a08bc9da6	unbekannt	GGG	Duktiles Gusseisen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2b64340e-f070-4591-bf3a-034a3bfe634d	unbekannt	MIX	unterschiedliche Werkstoffe	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6a12cda8-1c95-48cf-9065-92b6d300f0ca	unbekannt	P	Porosit	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2e8901a3-e468-4914-abbc-f3b08fac0721	unbekannt	PE	Polyethylen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
34d839b0-2321-4269-bcb9-0e9f8f7c68fa	unbekannt	PE 100	Polyethylen 100	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
187d6294-b099-45b6-a9b3-91e0262800c4	unbekannt	PE 100 RC	Polyethylen 100 RC	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7332c832-6e38-4007-9fb1-1b76463712c5	unbekannt	PE 63	Polyethylen 63	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
bb5254c5-1141-4916-a7df-1dcbfa96d94c	unbekannt	PE 80	Polyethylen 80	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
62aa6504-009a-470c-98f3-68f2db0cbdd3	unbekannt	PE-HD	Polyethylen hoher Dichte	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4ead5ac8-9408-420f-9529-29b03518e2c3	unbekannt	PEX	PEX	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d8388316-17f5-468e-b0c0-742021513122	unbekannt	PP	Polypropylen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
aa2acaa6-6d36-4e71-b028-dd0481757d27	unbekannt	PVCU	Polyvinylchlorid hart	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ec6cc26a-ac08-4172-9601-03363bdc3027	unbekannt	PVCU/GFK	Kunststoff/Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b6d8cf27-3977-451c-aea1-e54266685374	unbekannt	PVCU-Kokosdrain	Polyvinylchlorid mit Kokosdrain	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
170745ac-cde0-4628-813f-6d6482e788d2	unbekannt	SB	Stahlbeton	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a3229baf-e0ec-4c1a-8fdd-a4182b1e6c14	unbekannt	ST	Stahl	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d64c88d8-efe7-493a-9a7b-886193f56a24	unbekannt	STZ	Steinzeug	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ef6c4e8d-2267-4208-ab8e-1e2b6c392f05	unbekannt	STZ/GFK	Steinzeug/Glasfaserverstärkter Kunststoff	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b60639e6-a775-465d-8c4f-4e7914662895	unbekannt	TON	Ton	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5de6c389-4ba5-4477-99a4-c315fca23642	unbekannt	TSR	doppelwandiges Kunststoffrohr	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cb2f252c-73ee-447a-8eb0-7ce7e4a9a347	unbekannt	MA	Mauerwerk	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
22c384a0-8e59-46c2-9111-395354bb95e1	unbekannt	UPONOR	Uponor	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
28cfd137-cfa4-4f5d-a7d8-3a5982e2b0c3	unbekannt	Gusseisen und Beton	Gusseisen und Beton	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
69707490-11d8-4792-b1a5-247a31c0ab21	unbekannt	Guss geschlitzt	Guss geschlitzt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
42cab851-adc3-4440-81f7-0c181b037d2c	unbekannt	Gusseisen	Gusseisen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7da7dd83-1514-4fd6-84e2-fdfdca340a62	unbekannt	Kunstoff doppelwandig	Kunstoff doppelwandig	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
050a0907-9576-47d8-8cd5-9e121d8ee283	unbekannt	Polyethylen High Density	Polyethylen High Density	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ae8fc39e-a3d8-4903-a716-35aab662cb56	unbekannt	duktiles Gusseisen	duktiles Gusseisen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d6458ece-b984-484b-ad16-6001dfd2cc85	unbekannt	vernetztes Polyethylen	vernetztes Polyethylen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0a97e2bc-0d5b-4482-8f3f-1611e42a9949	unbekannt	?	?	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ca39a0b9-46cc-47ea-adfe-d8a1dcd44314	unbekannt	2001	2001	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
45207a19-4be6-4596-b5a3-3e77628c69f9	unbekannt	1	1	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a85c27c3-c84e-4867-a6da-824d19683992	unbekannt	2010	2010	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ad2ec890-2808-4dad-ae87-9aab11642739	unbekannt	PVC	Polyvinylchlorid	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
993ab9e3-24b8-43aa-9284-f464ee3c03df	unbekannt	PC	Polymerbeton	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
70d08f29-c262-4a9e-944f-6d71394e40b7	unbekannt	KMR	Kunststoffmantelrohr	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f3ee89c9-ea89-4135-9ea3-ec0b1a49a524	unbekannt	KWK	Kunstoff doppelwandig	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	zvgrh	00000000-0000-0000-0000-000000000001
7b3dc457-c3e9-42a1-8c02-d0779c7ba44f	unbekannt	BT	Bitumen	\N	001	2026-02-19 09:48:25.713841+01	2100-01-01 00:00:00+01	2026-02-19 09:48:25.713841+01	unbekannt	2026-02-19 09:48:25.713841+01	unbekannt	00000000-0000-0000-0000-000000000003
46a83026-627a-455a-acde-7672a39a3ed2	unbekannt	FZ	Faserzement	\N	001	2026-02-19 09:48:28.827191+01	2100-01-01 00:00:00+01	2026-02-19 09:48:28.827191+01	unbekannt	2026-02-19 09:48:28.827191+01	unbekannt	00000000-0000-0000-0000-000000000003
f808fc16-daae-46fb-a9ee-86521f44aaf0	unbekannt	KM	Kunststoffummanteltes Metall	\N	001	2026-02-19 09:48:34.357318+01	2100-01-01 00:00:00+01	2026-02-19 09:48:34.357318+01	unbekannt	2026-02-19 09:48:34.357318+01	unbekannt	00000000-0000-0000-0000-000000000003
f6eac807-14e0-43c0-9fcc-03edf6b5d33e	unbekannt	OB	Ortbeton	\N	001	2026-02-19 09:48:37.153775+01	2100-01-01 00:00:00+01	2026-02-19 09:48:37.153775+01	unbekannt	2026-02-19 09:48:37.153775+01	unbekannt	00000000-0000-0000-0000-000000000003
b7ba13e9-ab06-4026-8849-d12c67cbe497	unbekannt	PCC	Polymermodifizierter Zementbeton	\N	001	2026-02-19 09:48:40.305535+01	2100-01-01 00:00:00+01	2026-02-19 09:48:40.305535+01	unbekannt	2026-02-19 09:48:40.305535+01	unbekannt	00000000-0000-0000-0000-000000000003
6ce5e4a4-e84b-48c4-b22a-06cdaa0af691	unbekannt	PFL	Pflaster	\N	001	2026-02-19 09:48:44.756175+01	2100-01-01 00:00:00+01	2026-02-19 09:48:44.756175+01	unbekannt	2026-02-19 09:48:44.756175+01	unbekannt	00000000-0000-0000-0000-000000000003
6d7a32d0-b6b6-4cf4-8785-59c1c084c9a1	unbekannt	PH	Polyesterharz	\N	001	2026-02-19 09:48:47.760251+01	2100-01-01 00:00:00+01	2026-02-19 09:48:47.760251+01	unbekannt	2026-02-19 09:48:47.760251+01	unbekannt	00000000-0000-0000-0000-000000000003
ef0d0795-f47c-48ac-b6f9-2ae88639103b	unbekannt	RAS	Rasen	\N	001	2026-02-19 09:48:51.105325+01	2100-01-01 00:00:00+01	2026-02-19 09:48:51.105325+01	unbekannt	2026-02-19 09:48:51.105325+01	unbekannt	00000000-0000-0000-0000-000000000003
6b731fad-d7d9-451d-9a6e-8e2be399e5a2	unbekannt	SFB	Stahlfaserbeton	\N	001	2026-02-19 09:48:53.21888+01	2100-01-01 00:00:00+01	2026-02-19 09:48:53.21888+01	unbekannt	2026-02-19 09:48:53.21888+01	unbekannt	00000000-0000-0000-0000-000000000003
b3b4710d-d14f-47bb-8208-f1a24028a63d	unbekannt	SPB	Spannbeton	\N	001	2026-02-19 09:48:54.657772+01	2100-01-01 00:00:00+01	2026-02-19 09:48:54.657772+01	unbekannt	2026-02-19 09:48:54.657772+01	unbekannt	00000000-0000-0000-0000-000000000003
604d82d8-0c80-430c-a983-da9bdc5985d9	unbekannt	BOD	unbefestigt, anstehender Boden	\N	001	2026-02-19 09:44:13.766504+01	2100-01-01 00:00:00+01	2026-02-19 09:44:13.766504+01	unbekannt	2026-02-19 09:44:13.766504+01	unbekannt	00000000-0000-0000-0000-000000000001
5d558fe9-73a7-4265-8d7e-dd4da1f6df26	unbekannt	BT	Bitumen	\N	001	2026-02-19 09:44:14.887996+01	2100-01-01 00:00:00+01	2026-02-19 09:44:14.887996+01	unbekannt	2026-02-19 09:44:14.887996+01	unbekannt	00000000-0000-0000-0000-000000000001
440bbbb9-5606-428e-a033-236f428175ee	unbekannt	FZ	Faserzement	\N	001	2026-02-19 09:44:16.441673+01	2100-01-01 00:00:00+01	2026-02-19 09:44:16.441673+01	unbekannt	2026-02-19 09:44:16.441673+01	unbekannt	00000000-0000-0000-0000-000000000001
fc26e32e-b635-43e9-9c97-6def930f425b	unbekannt	SZB	Spritzbeton	\N	001	2026-02-19 09:48:57.931475+01	2100-01-01 00:00:00+01	2026-02-19 09:48:57.931475+01	unbekannt	2026-02-19 09:48:57.931475+01	unbekannt	00000000-0000-0000-0000-000000000003
9f6a053d-b90b-47d2-b103-c9bdb25f862e	unbekannt	KM	Kunststoffummanteltes Metall	\N	001	2026-02-19 09:44:25.98143+01	2100-01-01 00:00:00+01	2026-02-19 09:44:25.98143+01	unbekannt	2026-02-19 09:44:25.98143+01	unbekannt	00000000-0000-0000-0000-000000000001
c5cd4aa9-3b69-4bdc-8faa-20ff0c5077ae	unbekannt	OB	Ortbeton	\N	001	2026-02-19 09:44:28.033543+01	2100-01-01 00:00:00+01	2026-02-19 09:44:28.033543+01	unbekannt	2026-02-19 09:44:28.033543+01	unbekannt	00000000-0000-0000-0000-000000000001
a8d85cf2-2b84-4fca-aabb-8ed804389a6f	unbekannt	ZM	Zementmörtel	\N	001	2026-02-19 09:48:59.985494+01	2100-01-01 00:00:00+01	2026-02-19 09:48:59.985494+01	unbekannt	2026-02-19 09:48:59.985494+01	unbekannt	00000000-0000-0000-0000-000000000003
05770077-2724-4d11-8383-48f90fe45ce2	unbekannt	PCC	Polymermodifizierter Zementbeton	\N	001	2026-02-19 09:44:30.853771+01	2100-01-01 00:00:00+01	2026-02-19 09:44:30.853771+01	unbekannt	2026-02-19 09:44:30.853771+01	unbekannt	00000000-0000-0000-0000-000000000001
46367b31-27b2-4b94-a027-2d4f575e0734	unbekannt	PFL	Pflaster	\N	001	2026-02-19 09:44:33.768615+01	2100-01-01 00:00:00+01	2026-02-19 09:44:33.768615+01	unbekannt	2026-02-19 09:44:33.768615+01	unbekannt	00000000-0000-0000-0000-000000000001
3f88d13a-eb15-49b5-9087-839ed7d01f29	unbekannt	PH	Polyesterharz	\N	001	2026-02-19 09:44:34.836095+01	2100-01-01 00:00:00+01	2026-02-19 09:44:34.836095+01	unbekannt	2026-02-19 09:44:34.836095+01	unbekannt	00000000-0000-0000-0000-000000000001
aea37034-e230-409c-b446-c944b170c8d3	unbekannt	S/GFK	Stahl/Glasfaserverstärkter Kunststoff	\N	001	2026-02-19 09:49:05.668559+01	2100-01-01 00:00:00+01	2026-02-19 09:49:05.668559+01	unbekannt	2026-02-19 09:49:05.668559+01	unbekannt	00000000-0000-0000-0000-000000000003
fffd5cbd-86e3-4543-89bc-e9659b33b40e	unbekannt	RAS	Rasen	\N	001	2026-02-19 09:44:37.788873+01	2100-01-01 00:00:00+01	2026-02-19 09:44:37.788873+01	unbekannt	2026-02-19 09:44:37.788873+01	unbekannt	00000000-0000-0000-0000-000000000001
9e10caab-23a0-4257-8a4d-920cce67e2bd	unbekannt	SFB	Stahlfaserbeton	\N	001	2026-02-19 09:44:40.118045+01	2100-01-01 00:00:00+01	2026-02-19 09:44:40.118045+01	unbekannt	2026-02-19 09:44:40.118045+01	unbekannt	00000000-0000-0000-0000-000000000001
f82b50dc-51bb-440f-bd8e-44e5c528a052	unbekannt	SPB	Spannbeton	\N	001	2026-02-19 09:44:41.253351+01	2100-01-01 00:00:00+01	2026-02-19 09:44:41.253351+01	unbekannt	2026-02-19 09:44:41.253351+01	unbekannt	00000000-0000-0000-0000-000000000001
f808776b-5f62-440f-9b55-63e224252e23	unbekannt	SZB	Spritzbeton	\N	001	2026-02-19 09:44:44.581911+01	2100-01-01 00:00:00+01	2026-02-19 09:44:44.581911+01	unbekannt	2026-02-19 09:44:44.581911+01	unbekannt	00000000-0000-0000-0000-000000000001
15db0a70-b821-4a18-b526-778037060415	unbekannt	ZM	Zementmörtel	\N	001	2026-02-19 09:44:46.671313+01	2100-01-01 00:00:00+01	2026-02-19 09:44:46.671313+01	unbekannt	2026-02-19 09:44:46.671313+01	unbekannt	00000000-0000-0000-0000-000000000001
54cc040e-890f-4dda-8452-ea820153001e	unbekannt	S/GFK	Stahl/Glasfaserverstärkter Kunststoff	\N	001	2026-02-19 09:44:51.829004+01	2100-01-01 00:00:00+01	2026-02-19 09:44:51.829004+01	unbekannt	2026-02-19 09:44:51.829004+01	unbekannt	00000000-0000-0000-0000-000000000001
ef9fc4be-98c4-4354-bac9-124a39c3a6ee	unbekannt	BOD	unbefestigt, anstehender Boden	\N	001	2026-02-19 09:48:24.510156+01	2100-01-01 00:00:00+01	2026-02-19 09:48:24.510156+01	unbekannt	2026-02-19 09:48:24.510156+01	unbekannt	00000000-0000-0000-0000-000000000003
8e216c9a-077b-4a03-9f60-ebced25e07ce	unbekannt	UNBEK	UNBEK	\N	001	2026-03-02 01:13:26.3154+01	2100-01-01 00:00:00+01	2026-03-02 01:13:26.3154+01	unbekannt	2026-03-02 01:13:26.3154+01	unbekannt	00000000-0000-0000-0000-000000000001
\.


--
-- TOC entry 81946 (class 2606 OID 39687411)
-- Name: st_vw_material pk_st_vw_material; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_material
    ADD CONSTRAINT pk_st_vw_material PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189865)
-- Name: st_vw_material uk3_st_vw_material_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_material
    ADD CONSTRAINT uk3_st_vw_material_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190014)
-- Name: st_vw_material uk4_st_vw_material_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_material
    ADD CONSTRAINT uk4_st_vw_material_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687989)
-- Name: st_vw_material tr_a_d__st_vw_material__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_material__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_material REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688125)
-- Name: st_vw_material tr_a_i_or_u_or_d__st_vw_material__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_material__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_material FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688261)
-- Name: st_vw_material tr_a_u__st_vw_material__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_material__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_material REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688399)
-- Name: st_vw_material tr_b_i_or_u_or_d__st_vw_material__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_material__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_material FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690223)
-- Name: st_vw_material fk_st_vw_material_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_material
    ADD CONSTRAINT fk_st_vw_material_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:01

--
-- PostgreSQL database dump complete
--

