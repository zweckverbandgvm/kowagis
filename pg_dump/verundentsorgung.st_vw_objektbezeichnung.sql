--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:11

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
-- TOC entry 12200 (class 1259 OID 39685512)
-- Name: st_vw_objektbezeichnung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_objektbezeichnung (
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
    table_schema text DEFAULT 'verundentsorgung'::text,
    table_name text,
    aktivstatus text DEFAULT '1'::text,
    name_number character varying
);


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12200
-- Name: TABLE st_vw_objektbezeichnung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_objektbezeichnung IS 'Stammdaten Objektbezeichnung';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.id IS '  ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.ident_hist IS 'historische ID';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.kurztext IS 'Kurztext ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.langtext IS 'Langtext ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.table_schema; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.table_schema IS 'Table Schema ';


--
-- TOC entry 83819 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.table_name; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.table_name IS 'Table Name ';


--
-- TOC entry 83820 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.aktivstatus; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.aktivstatus IS 'Aktivstatus ';


--
-- TOC entry 83821 (class 0 OID 0)
-- Dependencies: 12200
-- Name: COLUMN st_vw_objektbezeichnung.name_number; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_objektbezeichnung.name_number IS 'Nummer ';


--
-- TOC entry 83798 (class 0 OID 39685512)
-- Dependencies: 12200
-- Data for Name: st_vw_objektbezeichnung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_objektbezeichnung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, table_schema, table_name, aktivstatus, name_number) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	unbekannt	1	\N
99708376-a2ef-405f-98e5-230af3d1d0f0	unbekannt	v_wa_pump_s	wa_pkt_pumpwerk	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_pumpwerk	1	\N
ae39eba3-8e62-461e-9425-2c4a965e7900	unbekannt	v_wa_pressure_reduction_s	wa_pkt_druckminderer	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_druckminderer	1	\N
ffc32c06-8ce2-44bf-9dd3-c7647572a665	unbekannt	v_wa_armature_s	wa_pkt_armatur	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_armatur	1	\N
38dea46b-5dfb-4885-a0ed-e31b25fbdba0	unbekannt	v_ww_manhole_s	aw_pkt_schacht	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_schacht	1	\N
54efb464-b018-47c0-b76e-c72b71d65058	unbekannt	v_sg_wasserwerk_s	wa_pkt_wasserwerk	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_wasserwerk	1	\N
57131dd6-c225-4fb9-b10e-22e395baac27	unbekannt	v_wa_hydrant_s	wa_pkt_hydrant	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_hydrant	1	\N
0048b63e-a325-443f-be22-ef1abb2a8185	unbekannt	v_umlageflaechen	aw_fla_umlageflaeche	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_fla_umlageflaeche	1	\N
d22ebf13-23c4-4c3f-babf-c65ec1907462	unbekannt	v_ww_pump_s	aw_pkt_pumpwerk	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_pumpwerk	1	\N
72c47630-bd3f-4999-8a2b-15f88a97a10f	unbekannt	v_netzknoten_s	ka_pkt_kabelnetzknoten	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ka_pkt_kabelnetzknoten	1	\N
40cf2570-764b-4c04-8420-935e1f549e82	unbekannt	v_wa_manhole_s	wa_pkt_schacht	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_schacht	1	\N
c31890f0-4b91-403b-a9c2-7727189d498e	unbekannt	v_wa_pipe_s_concat	wa_lin_wasserleitung	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_lin_wasserleitung	1	\N
43c9fed7-2e82-45e8-a7d8-f152ba573317	unbekannt	v_gg_druckstation_s	wa_pkt_druckstation	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_druckstation	1	\N
ba2d11ef-77d7-49fd-ab29-1f262daee092	unbekannt	v_ww_section_s_concat	aw_lin_haltung	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_lin_haltung	1	\N
da1595be-a9ab-477e-a88a-a9e9780e3f06	unbekannt	v_gi_gitter_s	al_fla_koordinatenraster	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	al_fla_koordinatenraster	1	\N
8fa9873a-0440-4c81-b5c7-e9d0067e40b7	unbekannt	v_netz_s	ka_lin_kabelnetz	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ka_lin_kabelnetz	1	\N
d1aeff45-1972-4ba2-97ea-af589dac5f6c	unbekannt	v_wa_casing_s	wa_lin_schutzrohr	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_lin_schutzrohr	1	\N
f70f3426-e182-4cfc-91c9-d59d74a4b407	unbekannt	v_wa_cover_s	wa_pkt_schachtdeckel	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_schachtdeckel	1	\N
f1c82a68-fc8f-4ab1-8701-ed3da8ce8b1f	unbekannt	v_wa_house_connector_s	wa_pkt_hausanschlusspunkt	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_hausanschlusspunkt	1	\N
355a01ba-2c37-4072-9f8c-8f05f8886d64	unbekannt	v_wa_marker_s	wa_pkt_verschiedenes	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_verschiedenes	1	\N
0a21fc84-121e-4160-89b3-b60c3b9b8fae	unbekannt	v_wa_meter_s	wa_pkt_wasserzaehler	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_wasserzaehler	1	\N
07994ab1-91b2-4bf6-84c1-fa393f083f42	unbekannt	v_wa_source_s	wa_pkt_brunnen	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_brunnen	1	\N
63f0c549-5f24-4e69-90c6-33a2bf4513e4	unbekannt	v_wa_valve_s	wa_pkt_schieber	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_schieber	1	\N
f0f2c59c-4176-40b0-a282-911107e7bb9d	unbekannt	v_wa_vent_s	wa_pkt_entlueftung	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_entlueftung	1	\N
ef24ad4e-e41a-4dbc-ac29-8fb18b179499	unbekannt	v_ww_casing_s	aw_pkt_schutzrohr	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_schutzrohr	1	\N
fb66c593-1b6b-4c2f-bdfb-3c9822efd59a	unbekannt	v_ww_coalescence_sep_s	aw_pkt_koaleszenzabscheider	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_koaleszenzabscheider	1	\N
5fa42204-76d8-4587-98cd-0d11e72482f9	unbekannt	v_ww_cover_s	aw_pkt_schachtdeckel	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_schachtdeckel	1	\N
31ff9686-c314-4b55-a23a-721f2c70bb0a	unbekannt	v_ww_detention_facility_s	aw_pkt_loeschwasserentnahmestelle	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_loeschwasserentnahmestelle	1	\N
b4f27064-d818-4959-a903-d768d19b8cbd	unbekannt	v_ww_discharge_outfall_s	aw_pkt_einleit_auslauf_stellen	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_einleit_auslauf_stellen	1	\N
3f9b099d-fae6-4c27-afc8-15f75064443c	unbekannt	v_ww_discharge_s	aw_pkt_einleitungsstellen	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_einleitungsstellen	1	\N
2c491d08-ea29-4bf8-b0d3-49fed93ea66a	unbekannt	v_ww_fitting_s	aw_pkt_verbindungen	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_verbindungen	1	\N
e539c889-7331-4bd0-ab5e-bbbb2f60b08e	unbekannt	v_ww_grease_trap_s	aw_pkt_fettabscheider	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_fettabscheider	1	\N
308c414e-1402-49cf-aa5a-6716c27c59da	unbekannt	v_ww_intermediate_point_s	aw_pkt_zwischenpunkt	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_zwischenpunkt	1	\N
9a73a257-b9f5-4eeb-b62c-f23b14263c4a	unbekannt	v_ww_misc_plant_s	aw_pkt_sonstige_anlage	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_sonstige_anlage	1	\N
91ec0230-08fd-416b-ac8f-68ec4c357b3e	unbekannt	v_ww_oil_water_sep_s	aw_pkt_benzinabscheider	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_benzinabscheider	1	\N
7e081fd5-d024-4b94-8adb-dd803e466de2	unbekannt	v_ww_outfall_s	aw_pkt_auslauf	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_auslauf	1	\N
8b53ebc8-2091-4fb7-bf0c-8fb4ca7000da	unbekannt	v_ww_restrictor_s	aw_pkt_dueker	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_dueker	1	\N
684e1a37-3a3b-40fb-b5d3-7e53f75f9714	unbekannt	v_ww_septic_tank_s	aw_pkt_klaertank	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_klaertank	1	\N
bd947336-571e-475d-ab60-d0c20c9421bf	unbekannt	v_ww_spuehlhydrant_s	aw_pkt_spuehlhydrant	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_spuehlhydrant	1	\N
56fd958b-8e2b-486c-99cb-8107cc9326fb	unbekannt	v_ww_starch_s	aw_pkt_staerkeabscheider	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_staerkeabscheider	1	\N
4f532dd8-e7ea-48d8-9873-6e5f72b6f4d3	unbekannt	v_ww_treatment_plant_s	aw_pkt_klaeranlage	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_klaeranlage	1	\N
6a583623-5f05-48d4-bc06-de220cc1f522	unbekannt	v_ww_valve_s	aw_pkt_schieber	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_schieber	1	\N
531a29c7-f87a-455e-a42b-6234c7587f14	unbekannt	v_ww_weir_s	aw_pkt_wehr	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_wehr	1	\N
42c776e5-8748-423b-ac8a-73c9816f271d	unbekannt	v_wa_facility_line_s	wa_lin_bauwerkskante	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_lin_bauwerkskante	1	\N
c74eba4c-ed19-4200-a404-fa4944e835c3	unbekannt	v_wa_beprobungspunkt_s	wa_pkt_beprobungspunkt	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_beprobungspunkt	1	\N
45a8cd1c-a738-4234-841c-77b2fd9843e5	unbekannt	v_wa_damage_s	wa_pkt_wasserschaden	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_wasserschaden	1	\N
9f7be0bc-28e7-4753-adad-6a7fcb1ff752	unbekannt	v_flaechen_ta_s	ta_fla_anlagenflaechen	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ta_fla_anlagenflaechen	1	\N
5125b950-7204-4707-bae8-b292eb100995	unbekannt	v_ww_damage_s	aw_pkt_abwasserschaden	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_abwasserschaden	1	\N
996a5b3e-c39b-4f73-a74e-861afa12fd38	unbekannt	ww_section_observe_isy	aw_pkt_beobachtungspunkt	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_beobachtungspunkt	1	\N
ab489551-ad40-40dd-8674-446a7e515714	unbekannt	v_wa_tank_s	wa_pkt_behaelter	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_behaelter	1	\N
aacd98bc-296f-4349-828f-a0e675727fe9	unbekannt	v_ww_basin_s	aw_pkt_becken	noch keine Bemerkung	001	2025-06-05 10:43:46.767845+02	2100-01-01 00:00:00+01	2025-06-05 10:43:46.767845+02	unbekannt	2025-06-05 10:43:46.767845+02	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_becken	1	\N
d0a368f2-f577-400d-91ec-89db93b4ab21	unbekannt	v_netz_ta_s	ta_lin_netz	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ta_lin_netz	1	\N
3b9a4c6d-f786-4a07-b765-587e2e93f13d	unbekannt	v_netzknoten_ta_s	ta_pkt_netzknoten	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ta_pkt_netzknoten	1	\N
e43323c3-9403-4a60-878c-a8f882f01188	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	unbekannt	1	\N
36e23161-af70-46e2-88ea-2e83f0a25a73	unbekannt	aw_pkt_abscheider	aw_pkt_abscheider	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_pkt_abscheider	1	\N
03407c80-04f4-4acd-810f-92f8d1762fff	unbekannt	aw_lin_schutzrohr	aw_lin_schutzrohr	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	aw_lin_schutzrohr	1	\N
b4b690a9-5916-42e0-84c8-74965ddbbcb4	unbekannt	ta_lin_schutzrohr	ta_lin_schutzrohr	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ta_lin_schutzrohr	1	\N
434bf10f-b587-4344-b6c3-fd2e3adf6fdf	unbekannt	ka_lin_schutzrohr	ka_lin_schutzrohr	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	ka_lin_schutzrohr	1	\N
1b43644a-80ee-4908-b526-a20d6c10f051	unbekannt	v_wa_fitting_s	wa_pkt_verbindungen	noch keine Bemerkung	001	2022-12-21 16:49:46.472011+01	2100-01-01 00:00:00+01	2022-12-21 16:49:46.472011+01	unbekannt	2022-12-21 16:49:46.472011+01	unbekannt	00000000-0000-0000-0000-000000000001	verundentsorgung	wa_pkt_verbindungen	1	\N
e5ac6569-a923-491f-ba13-f7f0b00cfda5	unbekannt	v_wa_fitting_s	wa_pkt_verbindungen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_verbindungen	1	\N
5295bcdd-d92f-46cf-8ea7-43694278cef3	unbekannt	v_wa_pump_s	wa_pkt_pumpwerk	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_pumpwerk	1	\N
c97ec5b4-007f-404e-8912-827e3fb1c44f	unbekannt	v_wa_pressure_reduction_s	wa_pkt_druckminderer	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_druckminderer	1	\N
0c85f0ba-03e1-4eda-8f85-530b1ac93876	unbekannt	v_wa_armature_s	wa_pkt_armatur	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_armatur	1	\N
5ca2e497-9bd7-42bb-aaab-8bd2e9a958f3	unbekannt	v_ww_manhole_s	aw_pkt_schacht	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_schacht	1	\N
c0d23b88-d745-45dc-b1a5-810022d9c2e3	unbekannt	v_sg_wasserwerk_s	wa_pkt_wasserwerk	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_wasserwerk	1	\N
ee083853-9f78-4e56-a82a-f1ab749f8f1b	unbekannt	v_wa_hydrant_s	wa_pkt_hydrant	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_hydrant	1	\N
de913fe5-23a4-4c80-b2ef-10313d1a58ab	unbekannt	v_umlageflaechen	aw_fla_umlageflaeche	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_fla_umlageflaeche	1	\N
6e9836a7-ab3d-4514-9c66-100c3c7b7774	unbekannt	v_ww_pump_s	aw_pkt_pumpwerk	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_pumpwerk	1	\N
7f2c3c5e-c4bb-4744-9d89-e5ee97737e3d	unbekannt	v_netzknoten_s	ka_pkt_kabelnetzknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	ka_pkt_kabelnetzknoten	1	\N
c9adad8c-d6d2-449b-a211-19652f676e18	unbekannt	v_wa_manhole_s	wa_pkt_schacht	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_schacht	1	\N
18893f00-c47f-474f-8381-0ecb153fdf21	unbekannt	v_wa_pipe_s_concat	wa_lin_wasserleitung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_lin_wasserleitung	1	\N
531440bd-7445-44d1-b841-f9c767145427	unbekannt	v_gg_druckstation_s	wa_pkt_druckstation	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_druckstation	1	\N
963206c9-6101-44da-bc4e-ffcb3a3bf34e	unbekannt	v_ww_section_s_concat	aw_lin_haltung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_lin_haltung	1	\N
1cb098fc-39b1-492e-b58b-772ea597a3f7	unbekannt	v_gi_gitter_s	al_fla_koordinatenraster	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	al_fla_koordinatenraster	1	\N
481204fc-1702-44b7-b88b-833625d92509	unbekannt	v_netz_s	ka_lin_kabelnetz	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	ka_lin_kabelnetz	1	\N
e21dd3e6-c595-4a9a-a529-86dd78848332	unbekannt	v_wa_casing_s	wa_lin_schutzrohr	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_lin_schutzrohr	1	\N
76590fef-f134-4b32-bd76-ef9aa3bb98c6	unbekannt	v_wa_cover_s	wa_pkt_schachtdeckel	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_schachtdeckel	1	\N
7ecddc91-33ba-49d4-84f1-a10f97fc3955	unbekannt	v_wa_house_connector_s	wa_pkt_hausanschlusspunkt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_hausanschlusspunkt	1	\N
9d9effe1-42ac-4a4d-9c8e-6db2a4c68a6c	unbekannt	v_wa_marker_s	wa_pkt_verschiedenes	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_verschiedenes	1	\N
87aee177-366f-4c27-b534-ee0995ece9a9	unbekannt	v_wa_meter_s	wa_pkt_wasserzaehler	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_wasserzaehler	1	\N
67f88ba9-6e41-4c66-bf05-d7f0113cdd21	unbekannt	v_wa_source_s	wa_pkt_brunnen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_brunnen	1	\N
e6a71cad-0748-4557-a9cb-09eb1fa50031	unbekannt	v_wa_valve_s	wa_pkt_schieber	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_schieber	1	\N
e34e5188-2ba1-4399-8ace-f23bf42b5d24	unbekannt	v_wa_vent_s	wa_pkt_entlueftung	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_entlueftung	1	\N
72a3ea54-2a55-4250-b694-b8724d07ce18	unbekannt	v_ww_casing_s	aw_pkt_schutzrohr	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_schutzrohr	1	\N
91f65644-622e-4f33-9fbf-00c79221f506	unbekannt	v_ww_coalescence_sep_s	aw_pkt_koaleszenzabscheider	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_koaleszenzabscheider	1	\N
aacdaf73-7cd9-4505-9256-5dd94e9ef5f6	unbekannt	v_ww_cover_s	aw_pkt_schachtdeckel	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_schachtdeckel	1	\N
51ee2138-290e-4c24-a2c4-64665df35bc3	unbekannt	v_ww_detention_facility_s	aw_pkt_loeschwasserentnahmestelle	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_loeschwasserentnahmestelle	1	\N
c75d0d5e-7365-4ae9-957f-84aa16d78d10	unbekannt	v_ww_discharge_outfall_s	aw_pkt_einleit_auslauf_stellen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_einleit_auslauf_stellen	1	\N
533acac3-d6c5-4744-9424-e8f6d8f2f496	unbekannt	v_ww_discharge_s	aw_pkt_einleitungsstellen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_einleitungsstellen	1	\N
48db0644-896f-46fb-92ea-d32f766bb910	unbekannt	v_ww_fitting_s	aw_pkt_verbindungen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_verbindungen	1	\N
b25b636d-8e30-4d0d-b616-5463c3ac5b97	unbekannt	v_ww_grease_trap_s	aw_pkt_fettabscheider	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_fettabscheider	1	\N
f23059d6-dd22-412b-8bc6-96aa42b8d30d	unbekannt	v_ww_intermediate_point_s	aw_pkt_zwischenpunkt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_zwischenpunkt	1	\N
c3de878e-287f-4668-a54d-681a3c9b6e58	unbekannt	v_ww_misc_plant_s	aw_pkt_sonstige_anlage	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_sonstige_anlage	1	\N
e2d99a8f-1c9f-4b4d-a210-35e064bdd576	unbekannt	v_ww_oil_water_sep_s	aw_pkt_benzinabscheider	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_benzinabscheider	1	\N
149102ec-0b3d-4039-b4b0-ba70fcdb4c17	unbekannt	v_ww_outfall_s	aw_pkt_auslauf	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_auslauf	1	\N
e8a94900-7eb2-4f73-ba0d-0bea2e83d2dd	unbekannt	v_ww_restrictor_s	aw_pkt_dueker	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_dueker	1	\N
8c58f7fa-cb39-435a-bd38-b6e6a549138b	unbekannt	v_ww_septic_tank_s	aw_pkt_klaertank	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_klaertank	1	\N
7c45c554-0e88-4e8b-a6bf-df059961c8e2	unbekannt	v_ww_spuehlhydrant_s	aw_pkt_spuehlhydrant	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_spuehlhydrant	1	\N
e1514d3d-c6b3-4b67-824f-31c9faa0e4a3	unbekannt	v_ww_starch_s	aw_pkt_staerkeabscheider	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_staerkeabscheider	1	\N
46ad188c-6c3e-4a37-8ce3-080bc459e140	unbekannt	v_ww_treatment_plant_s	aw_pkt_klaeranlage	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_klaeranlage	1	\N
803c249f-76f0-4888-abf5-60695eac6de9	unbekannt	v_ww_valve_s	aw_pkt_schieber	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_schieber	1	\N
6a8f3e54-ba4f-4053-b16c-70aaab9da3c6	unbekannt	v_ww_weir_s	aw_pkt_wehr	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_wehr	1	\N
80bb6a88-e887-440c-87be-d6a809282c06	unbekannt	v_wa_facility_line_s	wa_lin_bauwerkskante	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_lin_bauwerkskante	1	\N
8a466022-be73-48c1-9d3d-144150269209	unbekannt	v_wa_beprobungspunkt_s	wa_pkt_beprobungspunkt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_beprobungspunkt	1	\N
ec5e97a0-1cf7-45c1-a1fe-0dbe5b9e7b4a	unbekannt	v_wa_damage_s	wa_pkt_wasserschaden	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_wasserschaden	1	\N
908c058d-923a-4fe3-b55d-1a2082a30ef1	unbekannt	v_flaechen_ta_s	ta_fla_anlagenflaechen	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	ta_fla_anlagenflaechen	1	\N
53dd7a77-6200-4ccc-8060-14e0d0e18587	unbekannt	v_ww_damage_s	aw_pkt_abwasserschaden	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_abwasserschaden	1	\N
c53589b6-a0da-48af-8a00-f2ae80ff8953	unbekannt	ww_section_observe_isy	aw_pkt_beobachtungspunkt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_beobachtungspunkt	1	\N
f08ccdeb-2a2f-45f8-8e9e-1446af186e4c	unbekannt	v_wa_tank_s	wa_pkt_behaelter	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	wa_pkt_behaelter	1	\N
49d2d839-2050-4767-9f67-368fd33f2fa7	unbekannt	v_ww_basin_s	aw_pkt_becken	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	aw_pkt_becken	1	\N
a80fdc96-3307-4d8c-a0b1-a412e765045f	unbekannt	v_netz_ta_s	ta_lin_netz	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	ta_lin_netz	1	\N
ff70a71b-c9e2-4f3b-9317-fb5234db387e	unbekannt	v_netzknoten_ta_s	ta_pkt_netzknoten	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	verundentsorgung	ta_pkt_netzknoten	1	\N
\.


--
-- TOC entry 81948 (class 2606 OID 39687421)
-- Name: st_vw_objektbezeichnung pk_st_vw_objektbezeichnung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_objektbezeichnung
    ADD CONSTRAINT pk_st_vw_objektbezeichnung PRIMARY KEY (id);


--
-- TOC entry 81950 (class 2606 OID 52189877)
-- Name: st_vw_objektbezeichnung uk3_st_vw_objektbezeichnung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_objektbezeichnung
    ADD CONSTRAINT uk3_st_vw_objektbezeichnung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81952 (class 2606 OID 52190026)
-- Name: st_vw_objektbezeichnung uk4_st_vw_objektbezeichnung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_objektbezeichnung
    ADD CONSTRAINT uk4_st_vw_objektbezeichnung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81954 (class 2620 OID 39687994)
-- Name: st_vw_objektbezeichnung tr_a_d__st_vw_objektbezeichnung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_objektbezeichnung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_objektbezeichnung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688130)
-- Name: st_vw_objektbezeichnung tr_a_i_or_u_or_d__st_vw_objektbezeichnung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_objektbezeichnung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_objektbezeichnung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81956 (class 2620 OID 39688266)
-- Name: st_vw_objektbezeichnung tr_a_u__st_vw_objektbezeichnung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_objektbezeichnung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_objektbezeichnung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81957 (class 2620 OID 39688404)
-- Name: st_vw_objektbezeichnung tr_b_i_or_u_or_d__st_vw_objektbezeichnung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_objektbezeichnung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_objektbezeichnung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81953 (class 2606 OID 39690248)
-- Name: st_vw_objektbezeichnung fk_st_vw_objektbezeichnung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_objektbezeichnung
    ADD CONSTRAINT fk_st_vw_objektbezeichnung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:13

--
-- PostgreSQL database dump complete
--

