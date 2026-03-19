--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:10

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
-- TOC entry 12184 (class 1259 OID 39685225)
-- Name: st_vw_eigentuemer; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_eigentuemer (
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
    kurztext_layout character varying
);


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12184
-- Name: TABLE st_vw_eigentuemer; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_eigentuemer IS 'Stammdaten Eigentuemer';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.id IS '  ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.ident_hist IS 'historische ID';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.kurztext IS 'Kurztext ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.langtext IS 'Langtext ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 12184
-- Name: COLUMN st_vw_eigentuemer.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_eigentuemer.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83799 (class 0 OID 39685225)
-- Dependencies: 12184
-- Data for Name: st_vw_eigentuemer; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_eigentuemer (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, kurztext_layout) FROM stdin;
448dc14e-1ab5-462f-9a75-8396b6a64b70	unbekannt	ZKWAL	ZWECKVERBAND LUDWIGSLUST	\N	001	2025-06-16 14:24:23.316419+02	2100-01-01 00:00:00+01	2025-06-16 14:24:23.316419+02	unbekannt	2025-06-16 14:24:23.316419+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
17be7ccc-1579-45a9-9c66-7b5ac11679ce	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
51a2c944-0e58-4a2a-8856-298aef03bde6	unbekannt	BUND	BUND	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
325ff214-a552-4ecc-9080-822876dce681	unbekannt	GEMEINDE	GEMEINDE	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
2b823c94-6f41-4b0f-a421-b0af97c45a63	unbekannt	GRUNDSTCKEIG	GRUNDSTUECKSEIGENTUEMER	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
ee242250-e055-4be3-9db1-1f8b73b47178	unbekannt	LANDKREIS	LANDKREIS NWM	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
f0478155-c593-4de6-b34f-852150cc0470	unbekannt	LAND MV	LAND MECKLENBURG VORPOMMERN	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
8f19739a-f842-49d0-91d1-ce68afb6aa95	unbekannt	SBA	STRAßENBAUAMT	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
c250fbee-4a72-4090-84a5-4ed5fe1003c5	unbekannt	WBV	WBV	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
a15f3099-6d1f-4a86-8610-4895fb84b656	unbekannt	ZVG	ZWECKVERBAND GREVESMÜHLEN	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
6f8cc8ef-94ba-465d-8997-61696ba3b7f1	unbekannt	ZVG_GEMEINDE	ZVG UND GEMEINDE	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
5108daf8-b112-460a-9c69-3319aa7dce42	unbekannt	ZVG_LK	ZVG und Landkreis	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
d6030265-f06d-42d6-a6cc-61432e92a7d0	unbekannt	ZVG_SBA	ZVG und SBA	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
2c963439-4b94-4759-8440-28682382faf0	unbekannt	ZVW	ZWECKVERBAND WISMAR	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
f2ce0208-9af9-4919-866e-123fe4ff5fa2	unbekannt	pr	Privat	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
a879b1f1-f5b8-48d9-ae14-a33d1ff1c9d0	unbekannt	PRIVAT	privat	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
132dd5b0-415f-4ee7-9f1e-1a941c404b7b	unbekannt	KEINE ZUW	KEINE ZUWEISUNG	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
462d2cda-006a-4260-a33d-5a26dae5f591	unbekannt	KIRCHE	KIRCHE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	\N
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000001	U
3b501af4-d3d8-444e-b9e0-cbbe628043d2	unbekannt	BUND	BUND	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
dc7341a8-969c-43f0-8b69-92341f641d2c	unbekannt	GEMEINDE	GEMEINDE	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
4dd90b40-450b-418c-b625-6fff14ec7056	unbekannt	GRUNDSTCKEIG	GRUNDSTUECKSEIGENTUEMER	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
149aa3c7-0eb3-444d-a2e3-1d140bc16533	unbekannt	LANDKREIS	LANDKREIS NWM	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
76cdae74-2dd6-4475-bb2e-1f1ad5ec8940	unbekannt	LAND MV	LAND MECKLENBURG VORPOMMERN	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
8d8383db-8855-42a6-8c90-fed81cc55356	unbekannt	SBA	STRAßENBAUAMT	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
635086fb-262a-46b3-8646-f8cd91b9ad32	unbekannt	WBV	WBV	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
a0a79391-649c-40d8-a96d-8377d2a3f790	unbekannt	ZVG	ZWECKVERBAND GREVESMÜHLEN	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	Z
33fd0370-f568-4bd6-b280-c6bbd4611582	unbekannt	ZVG_GEMEINDE	ZVG UND GEMEINDE	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	Z
df59e6fa-6db9-4cd5-8ce0-518413dca5d2	unbekannt	ZVG_LK	ZVG und Landkreis	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	Z
33a5ffcb-c6bb-410e-aa8d-9f850a70f2de	unbekannt	ZVG_SBA	ZVG und SBA	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	Z
befc07f5-7380-4eb9-b417-1500b20e3425	unbekannt	ZVW	ZWECKVERBAND WISMAR	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
a1a2da41-2e9a-4309-ba79-5f0b61aacef8	unbekannt	pr	Privat	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001	U
25092d0e-ee3c-4800-ad1b-b3c4d00d36b9	unbekannt	PRIVAT	privat	\N	001	2024-08-13 15:48:55.173961+02	2100-01-01 00:00:00+01	2024-08-13 15:48:55.173961+02	unbekannt	2024-08-13 15:48:55.173961+02	unbekannt	00000000-0000-0000-0000-000000000001	U
dbe32b00-ba08-4436-a55f-cd0ac7bd929a	unbekannt	KEINE ZUW	KEINE ZUWEISUNG	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001	U
aefe3846-fbff-4c56-bb95-c876d3de6660	unbekannt	KIRCHE	KIRCHE	\N	001	2024-08-20 11:53:48.71413+02	2100-01-01 00:00:00+01	2024-08-20 11:53:48.71413+02	unbekannt	2024-08-20 11:53:48.71413+02	unbekannt	00000000-0000-0000-0000-000000000001	U
e795983a-ac18-492e-a114-c7b24712523a	unbekannt	ZKWAL	ZKWAL	\N	001	2026-02-09 12:03:01.642763+01	2100-01-01 00:00:00+01	2026-02-09 12:03:01.642763+01	unbekannt	2026-02-09 12:03:01.642763+01	unbekannt	00000000-0000-0000-0000-000000000001	Z
9a32aa38-1bda-4d34-9571-e963decb6264	unbekannt	ZVG_SBA_Gemeinde	ZVG_SBA_Gemeinde	\N	001	2026-03-18 11:57:57.994604+01	2100-01-01 00:00:00+01	2026-03-18 11:57:57.994604+01	unbekannt	2026-03-18 11:57:57.994604+01	unbekannt	00000000-0000-0000-0000-000000000001	\N
\.


--
-- TOC entry 81949 (class 2606 OID 39687387)
-- Name: st_vw_eigentuemer pk_st_vw_eigentuemer; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_eigentuemer
    ADD CONSTRAINT pk_st_vw_eigentuemer PRIMARY KEY (id);


--
-- TOC entry 81951 (class 2606 OID 52189839)
-- Name: st_vw_eigentuemer uk3_st_vw_eigentuemer_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_eigentuemer
    ADD CONSTRAINT uk3_st_vw_eigentuemer_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81953 (class 2606 OID 52189986)
-- Name: st_vw_eigentuemer uk4_st_vw_eigentuemer_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_eigentuemer
    ADD CONSTRAINT uk4_st_vw_eigentuemer_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81945 (class 1259 OID 59068302)
-- Name: idx_st_vw_eigentuemer_kurztext_layout; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_eigentuemer_kurztext_layout ON verundentsorgung.st_vw_eigentuemer USING btree (kurztext_layout);


--
-- TOC entry 81946 (class 1259 OID 59068300)
-- Name: idx_st_vw_eigentuemer_proj_id; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_eigentuemer_proj_id ON verundentsorgung.st_vw_eigentuemer USING btree (id_st_vw_projekt, id);


--
-- TOC entry 81947 (class 1259 OID 59068303)
-- Name: idx_st_vw_eigentuemer_proj_layout; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_eigentuemer_proj_layout ON verundentsorgung.st_vw_eigentuemer USING btree (id_st_vw_projekt, kurztext_layout);


--
-- TOC entry 81955 (class 2620 OID 39687977)
-- Name: st_vw_eigentuemer tr_a_d__st_vw_eigentuemer__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_eigentuemer__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_eigentuemer REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81956 (class 2620 OID 39688113)
-- Name: st_vw_eigentuemer tr_a_i_or_u_or_d__st_vw_eigentuemer__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_eigentuemer__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_eigentuemer FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81957 (class 2620 OID 39688249)
-- Name: st_vw_eigentuemer tr_a_u__st_vw_eigentuemer__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_eigentuemer__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_eigentuemer REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81958 (class 2620 OID 39688387)
-- Name: st_vw_eigentuemer tr_b_i_or_u_or_d__st_vw_eigentuemer__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_eigentuemer__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_eigentuemer FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81954 (class 2606 OID 39690168)
-- Name: st_vw_eigentuemer fk_st_vw_eigentuemer_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_eigentuemer
    ADD CONSTRAINT fk_st_vw_eigentuemer_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:12

--
-- PostgreSQL database dump complete
--

