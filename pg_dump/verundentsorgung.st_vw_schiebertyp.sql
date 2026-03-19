--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:32

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
-- TOC entry 12208 (class 1259 OID 39685655)
-- Name: st_vw_schiebertyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schiebertyp (
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
-- TOC entry 83801 (class 0 OID 0)
-- Dependencies: 12208
-- Name: TABLE st_vw_schiebertyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schiebertyp IS 'Stammdaten Schiebertyp';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.id IS '  ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.ident_hist IS 'historische ID';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.langtext IS 'Langtext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12208
-- Name: COLUMN st_vw_schiebertyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schiebertyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83795 (class 0 OID 39685655)
-- Dependencies: 12208
-- Data for Name: st_vw_schiebertyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schiebertyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-23 11:07:20.516074+02	2100-01-01 00:00:00+01	2024-07-23 11:07:20.516074+02	unbekannt	2024-07-23 11:07:20.516074+02	unbekannt	00000000-0000-0000-0000-000000000001
bda881cd-bca9-4296-8db7-1f968d9eb3ef	unbekannt	HAPL	Ventilanbohrschelle	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
588cd100-df56-4606-b437-981b43292c86	unbekannt	HAS	Hausanschlussschieber	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
01969052-6073-45ef-a921-83f6fb6b90fc	unbekannt	HASOG	Hausanschlussschieber ohne Gestaenge	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
4c558403-cde1-4466-b407-de68cd064495	unbekannt	HLS	Schieber_wa	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
2c47a193-4549-4c99-aee0-31167723e40a	unbekannt	HLSOG	Schieber ohne Gestaenge	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
4de7af18-9d42-4ef2-9087-32cfb1d8b5ab	unbekannt	MOS	Motorschieber	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
ef4b9889-fa11-4a3c-a59d-4fa84291cf70	unbekannt	TREMO	Trennschieber mit Motor	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
e8dcfdc8-c9e4-4add-9b1f-4c65fe89a420	unbekannt	TSCH	Trennschieber	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
f153f067-8ffd-4d84-8f41-e42471ae3d23	unbekannt	VAOG	Ventilanbohrschelle ohne Gestaenge	\N	001	2024-08-29 11:02:31.000533+02	2100-01-01 00:00:00+01	2024-08-29 11:02:31.000533+02	unbekannt	2024-08-29 11:02:31.000533+02	unbekannt	00000000-0000-0000-0000-000000000001
50f10f1e-8a0d-4c6c-826e-18b20ae62651	unbekannt	12	Druckentlastung	\N	001	2024-08-29 11:19:06.614778+02	2100-01-01 00:00:00+01	2024-08-29 11:19:06.614778+02	unbekannt	2024-08-29 11:19:06.614778+02	unbekannt	00000000-0000-0000-0000-000000000001
62372dd5-f7ec-417d-b01d-e267693839b3	unbekannt	15	Absperr- und Ablaufventil	\N	001	2024-08-29 11:19:06.614778+02	2100-01-01 00:00:00+01	2024-08-29 11:19:06.614778+02	unbekannt	2024-08-29 11:19:06.614778+02	unbekannt	00000000-0000-0000-0000-000000000001
8880b91f-1167-48dc-a318-75f7d2ae34b2	unbekannt	7	Schieber	\N	001	2024-08-29 11:19:06.614778+02	2100-01-01 00:00:00+01	2024-08-29 11:19:06.614778+02	unbekannt	2024-08-29 11:19:06.614778+02	unbekannt	00000000-0000-0000-0000-000000000001
9abadf2d-ad1b-4f1f-b98f-9981c60a4bfc	unbekannt	SCHI	EINZELSCHIEBER	\N	001	2024-07-23 11:11:31.528689+02	2100-01-01 00:00:00+01	2024-07-23 11:11:31.528689+02	unbekannt	2024-07-23 11:11:31.528689+02	unbekannt	00000000-0000-0000-0000-000000000001
d32c82ba-176c-4af6-a032-7e778cf6a9b1	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c07ef0f0-6558-4b75-b20a-226df57bd034	unbekannt	HAPL	Ventilanbohrschelle	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
20761c1c-9c34-4477-8556-59b80d1bf7c6	unbekannt	HAS	Hausanschlussschieber	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e6a99f2e-c516-4370-9b21-04490cc05b3a	unbekannt	HASOG	Hausanschlussschieber ohne Gestaenge	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
396c0dd4-c945-4629-8eb3-5af144989ce7	unbekannt	HLS	Schieber_wa	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a87ca51a-8337-4d2a-94fa-0c9a81ef03be	unbekannt	HLSOG	Schieber ohne Gestaenge	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f0741007-6457-40e1-9589-1e9974d534c0	unbekannt	MOS	Motorschieber	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b3a835e6-1305-4d57-98b4-a5a71024136b	unbekannt	TREMO	Trennschieber mit Motor	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
13a5a1d9-2746-4aea-96e6-53ac5d3871f5	unbekannt	TSCH	Trennschieber	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2f585c66-aeeb-4861-a5bb-07046e2f6701	unbekannt	VAOG	Ventilanbohrschelle ohne Gestaenge	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
629a92f1-a7b2-4afc-9227-644c8fed2b78	unbekannt	12	Druckentlastung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
fa5546f8-7e7c-42b7-a10d-38b4d0bdb0e4	unbekannt	15	Absperr- und Ablaufventil	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f468fa5e-c676-4af7-9a6f-f8ef3ac3eac4	unbekannt	7	Schieber	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8e103fdf-d2b4-4cfb-8cd4-e0f7c4da9ed1	unbekannt	SCHI	EINZELSCHIEBER	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687439)
-- Name: st_vw_schiebertyp pk_st_vw_schiebertyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schiebertyp
    ADD CONSTRAINT pk_st_vw_schiebertyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189793)
-- Name: st_vw_schiebertyp uk3_st_vw_schiebertyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schiebertyp
    ADD CONSTRAINT uk3_st_vw_schiebertyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189936)
-- Name: st_vw_schiebertyp uk4_st_vw_schiebertyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schiebertyp
    ADD CONSTRAINT uk4_st_vw_schiebertyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81951 (class 2620 OID 39688003)
-- Name: st_vw_schiebertyp tr_a_d__st_vw_schiebertyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schiebertyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schiebertyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81952 (class 2620 OID 39688139)
-- Name: st_vw_schiebertyp tr_a_i_or_u_or_d__st_vw_schiebertyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schiebertyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schiebertyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81953 (class 2620 OID 39688275)
-- Name: st_vw_schiebertyp tr_a_u__st_vw_schiebertyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schiebertyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schiebertyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 39688413)
-- Name: st_vw_schiebertyp tr_b_i_or_u_or_d__st_vw_schiebertyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schiebertyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schiebertyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


-- Completed on 2026-03-18 15:15:33

--
-- PostgreSQL database dump complete
--

