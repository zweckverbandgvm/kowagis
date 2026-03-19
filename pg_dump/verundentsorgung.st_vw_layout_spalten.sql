--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:57

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
-- TOC entry 21033 (class 1259 OID 47086086)
-- Name: st_vw_layout_spalten; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_layout_spalten (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    kurztext text DEFAULT 'unbekannt'::text NOT NULL,
    langtext text DEFAULT 'unbekannt'::text NOT NULL,
    bemerkung text,
    gueltig_von timestamp with time zone DEFAULT now() NOT NULL,
    gueltig_bis timestamp with time zone DEFAULT '2100-01-01 00:00:00+01'::timestamp with time zone NOT NULL,
    angelegt_am timestamp with time zone DEFAULT now() NOT NULL,
    angelegt_von text DEFAULT 'unbekannt'::text NOT NULL,
    geaendert_am timestamp with time zone DEFAULT now() NOT NULL,
    geaendert_von text DEFAULT 'unbekannt'::text NOT NULL,
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    sortierreihenfolge text DEFAULT '001'::text NOT NULL,
    ident_hist text DEFAULT 'unbekannt'::text NOT NULL
);


--
-- TOC entry 83800 (class 0 OID 0)
-- Dependencies: 21033
-- Name: TABLE st_vw_layout_spalten; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_layout_spalten IS 'Stammdaten Layout Spalten';


--
-- TOC entry 83801 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.id IS '  ';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.kurztext IS 'Kurztext ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.langtext IS 'Langtext ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21033
-- Name: COLUMN st_vw_layout_spalten.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_layout_spalten.ident_hist IS 'historische ID';


--
-- TOC entry 83794 (class 0 OID 47086086)
-- Dependencies: 21033
-- Data for Name: st_vw_layout_spalten; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_layout_spalten (id, kurztext, langtext, bemerkung, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, sortierreihenfolge, ident_hist) FROM stdin;
e62f5a07-4946-40dd-a568-9bd871956b69	wa_pkt_armatur	id_st_vw_armatur	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
a921b4f8-d3be-425f-80f1-16b2ca8a8841	aw_pkt_klaeranlage	id_st_vw_klaeranlagen_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
a4ffe368-49f9-4393-a6a8-57221cf4bafa	wa_pkt_verschiedenes	id_st_vw_verschiedenes	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
91e70d6d-20d9-44c7-bdf4-14cecaa0922c	aw_pkt_speichereinrichtung	id_st_vw_speichereinrichtungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
358faae8-4b8b-4f3b-8297-b292a16a0e7f	wa_pkt_schacht	id_st_vw_schacht_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
fa02dd60-1231-49e2-b8e5-04dc0f165cb5	fw_pkt_netzknoten	id_st_vw_bauwerktyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
56e917e0-c6bd-4c6d-af4b-1717da197151	wa_pkt_verbindungen	id_st_vw_verbindungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
b569654a-9e36-4ef1-9120-66d779c48b36	fw_pkt_netzknoten	id_st_vw_druckminderungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
c8527d5b-a3ca-462a-94c3-fba96a45f4e2	wa_pkt_hydrant	id_st_vw_hydranttyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
50ca4446-0966-40f6-a959-f2c2d32870cd	wa_pkt_brunnen	id_st_vw_brunnentyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
4dd3ca30-c0d6-460f-946f-95720ab31bbe	aw_pkt_verbindungen	id_st_vw_verbindungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
21840545-a39b-45e8-807b-ef86619b549b	aw_pkt_abscheider	id_st_vw_abscheidertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
abe35099-1db0-40cc-9315-0b038cbf1ad4	wa_pkt_wasserschaden	id_st_vw_schadenstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
6313c13e-b1c1-4ac0-b6ac-9becf795ccec	wa_pkt_entlueftung	id_st_vw_entlueftungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
fe078644-bdb8-424a-88a0-93109f1bdeee	aw_pkt_becken	id_st_vw_beckentyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
1a915816-9c32-4310-9fec-6fa48836b1b6	aw_pkt_sonstige_anlage	id_st_vw_sonstige_anlage_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
cc04cea1-cb49-4537-b6b4-7ed16a2e6dcf	aw_pkt_klaertank	id_st_vw_tankverwendung	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
44d2cd88-88e4-4f73-bc30-05b8255c4815	wa_pkt_wasserspeicher	id_wa_pkt_wasserspeicher	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
08a6adc8-c0e3-43cb-b335-8b9c501bb2dd	wa_pkt_schieber	id_st_vw_schiebertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
9a31f674-9389-4327-9a12-4ba59203180f	aw_pkt_einleitungsstellen	id_st_vw_abwassereinleittyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
de235556-0a5a-4567-96fc-acf1fd731074	fw_pkt_netzknoten	id_st_vw_fernwaermenetzknotentyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
e27fa165-27a0-46a1-b937-34afa84ebed6	aw_pkt_schieber	id_st_vw_schiebertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
8c625bc0-173a-4455-8f29-35e47bf2227a	aw_pkt_deckel	id_st_vw_deckeltyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
70c93929-921a-4376-a12c-be9ba1efceb8	aw_pkt_pumpwerk	id_st_vw_pumpwerkstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
14596893-6e15-4c1a-8e2a-c5d336cf7b4a	wa_pkt_pumpe	id_st_vw_pumptyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
bed5f8a8-d7f9-4d77-b7d8-4bd6117677d5	fw_pkt_netzknoten	id_st_vw_sonstige_armaturtyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
9aef95ca-2bf4-44e5-be32-c49210cc927c	aw_pkt_auslauf	id_st_vw_auslauftyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
bedb9614-2e8e-40bd-baee-93548f4e12b1	wa_pkt_wasserzaehler	id_st_vw_zaehlertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
1c28d335-89b7-4eb8-a4d5-f90707afcdb3	fw_pkt_netzknoten	id_st_vw_entlueftungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
ff3f77f5-5035-481d-86b3-549047c28586	aw_pkt_fliesspfeil	id_st_vw_fliesspfeiltyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
63902430-72de-49f2-9aee-6c86ddb31b45	aw_pkt_schacht	id_st_vw_schacht_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
df8b702b-e510-4844-be7d-aaf10e5df817	aw_pkt_schachtdeckel	id_st_vw_schachtdeckeltyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
5d891ab0-d346-47df-806d-b89aa81f061c	aw_pkt_schutzrohr	id_st_vw_verbindungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
12b2dd8f-09ba-4914-8e80-ab11bc1720cc	ka_pkt_kabelnetzknoten	id_st_vw_bauteil	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
c210aef7-ca78-4530-8fe7-900dd076f52a	ka_pkt_schutzrohr	id_st_vw_bauteil	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
b68ee179-8edc-40b4-ae6d-d56f7e2bc244	ta_pkt_netzknoten	id_st_vw_bauteil	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
c9c47e1e-5224-4954-929c-536ac84bc2e1	wa_pkt_druckminderer	id_st_vw_druckminderertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	\N	2025-07-02 12:05:42.372893+02	2100-01-01 00:00:00+01	2025-07-02 12:05:42.372893+02	unbekannt	2025-07-02 12:05:42.372893+02	unbekannt	00000000-0000-0000-0000-000000000001	001	unbekannt
4b9544af-e2c3-406f-9ebc-1443a2b0aefc	wa_pkt_armatur	id_st_vw_armatur	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
63d5a56c-e677-4a82-9f27-e9929adfe658	aw_pkt_klaeranlage	id_st_vw_klaeranlagen_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
08a37d9d-4b98-4794-b28e-72b4ec6c85fd	wa_pkt_verschiedenes	id_st_vw_verschiedenes	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
a7a4f2b5-33bc-423f-8470-e4658e6c7fe5	aw_pkt_speichereinrichtung	id_st_vw_speichereinrichtungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
f99ec188-d61d-43c0-8b96-92e4833c4318	wa_pkt_schacht	id_st_vw_schacht_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
80620667-6dfb-4f32-92b7-1cdafde991bf	fw_pkt_netzknoten	id_st_vw_bauwerktyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
f83f3561-e29e-48fe-a3b0-ecd50e7ca211	wa_pkt_verbindungen	id_st_vw_verbindungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
96635682-c290-4b66-9a8f-e36ca54b4c34	fw_pkt_netzknoten	id_st_vw_druckminderungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
72f4bf47-0ddd-4f47-9f74-d6d0d428cd00	wa_pkt_hydrant	id_st_vw_hydranttyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
b2a0b3e2-48d1-4b63-acf9-f03fb0fcc247	wa_pkt_brunnen	id_st_vw_brunnentyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
c3274c29-f517-464c-86a2-3dabcdd217e2	aw_pkt_verbindungen	id_st_vw_verbindungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
9e7434f6-fa40-4379-847f-57c71243b4cb	aw_pkt_abscheider	id_st_vw_abscheidertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
ba41bfe1-e6e0-4d44-8453-efa1fc6674b8	wa_pkt_wasserschaden	id_st_vw_schadenstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
083e9b27-606a-4628-bdad-1b97acfea524	wa_pkt_entlueftung	id_st_vw_entlueftungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
c6467872-2220-4b4f-821b-937b5b54b4b3	aw_pkt_becken	id_st_vw_beckentyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
b071f03e-0390-481e-a1e1-3c6464ce8dc8	aw_pkt_sonstige_anlage	id_st_vw_sonstige_anlage_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
700c6d71-9310-48e3-91b5-0f92095a610b	aw_pkt_klaertank	id_st_vw_tankverwendung	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
228c3659-f2bd-4ec8-a56c-5e0273370bf0	wa_pkt_wasserspeicher	id_wa_pkt_wasserspeicher	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
5fd7a1e8-4548-4d03-abed-35980a9086f5	wa_pkt_schieber	id_st_vw_schiebertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
d583bba0-55b5-4ebf-9edd-623b536f784e	aw_pkt_einleitungsstellen	id_st_vw_abwassereinleittyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
c56e9096-4521-49f6-9b6e-026156f532d0	fw_pkt_netzknoten	id_st_vw_fernwaermenetzknotentyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
ee03d6d8-d0f4-48a8-bf2b-67662cefde85	aw_pkt_schieber	id_st_vw_schiebertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
9310ef3b-337c-4abb-91ff-490bbb251e1a	aw_pkt_deckel	id_st_vw_deckeltyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
ded95ce4-a70b-4a1b-8c14-3187d904c3d5	aw_pkt_pumpwerk	id_st_vw_pumpwerkstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
aea92a01-66d8-4972-9b36-6d62e5574707	wa_pkt_pumpe	id_st_vw_pumptyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
02bf3cfa-c75d-4135-9c9f-5c2489dc170e	fw_pkt_netzknoten	id_st_vw_sonstige_armaturtyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
9f43ae7d-f7e8-4f9b-be6a-24d62a1e5afe	aw_pkt_auslauf	id_st_vw_auslauftyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
7f45af7e-5446-4ec7-876e-058ca463bea1	wa_pkt_wasserzaehler	id_st_vw_zaehlertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
746261c0-81c9-4fb2-b38a-273c54abbd02	fw_pkt_netzknoten	id_st_vw_entlueftungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
ee7f9021-5dbf-4b57-9746-c48e43fa21ce	aw_pkt_fliesspfeil	id_st_vw_fliesspfeiltyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
54d7a98b-70f6-4097-8464-6c0cec2b9f7e	aw_pkt_schacht	id_st_vw_schacht_typ	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
97331c02-bbb5-417e-82b9-2b90d1d20b55	aw_pkt_schachtdeckel	id_st_vw_schachtdeckeltyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
3e281a7c-32f2-4718-adb3-295351c4cff0	aw_pkt_schutzrohr	id_st_vw_verbindungstyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
740efb9e-4572-4896-8b83-c80baf4f1012	ka_pkt_kabelnetzknoten	id_st_vw_bauteil	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
8fa5902e-8e0d-42e2-a8e8-8cc6446181cc	ka_pkt_schutzrohr	id_st_vw_bauteil	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
c96bd5ed-caf7-465a-b44b-89833d29b240	ta_pkt_netzknoten	id_st_vw_bauteil	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
1008aaa6-6bc9-4443-bc66-920ab9e51e17	wa_pkt_druckminderer	id_st_vw_druckminderertyp	\N	2025-06-13 09:40:22.447079+02	2100-01-01 00:00:00+01	2025-06-13 09:40:22.447079+02	unbekannt	2025-06-13 09:40:22.447079+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
9266c977-0344-43e9-83fe-99bd8df97150	unbekannt	unbekannt	\N	2025-07-02 12:05:42.372893+02	2100-01-01 00:00:00+01	2025-07-02 12:05:42.372893+02	unbekannt	2025-07-02 12:05:42.372893+02	unbekannt	00000000-0000-0000-0000-000000000003	001	unbekannt
\.


--
-- TOC entry 81946 (class 2606 OID 47086104)
-- Name: st_vw_layout_spalten pk_st_vw_layout_spalten; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_layout_spalten
    ADD CONSTRAINT pk_st_vw_layout_spalten PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52279944)
-- Name: st_vw_layout_spalten uk1u2_st_vw_layout_spalten_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_layout_spalten
    ADD CONSTRAINT uk1u2_st_vw_layout_spalten_kurztext UNIQUE (kurztext, langtext, id_st_vw_projekt);


--
-- TOC entry 81950 (class 2620 OID 47086110)
-- Name: st_vw_layout_spalten tr_a_d__st_vw_layout_spalten__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_layout_spalten__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_layout_spalten REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81951 (class 2620 OID 47086111)
-- Name: st_vw_layout_spalten tr_a_i_or_u_or_d__st_vw_layout_spalten__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_layout_spalten__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_layout_spalten FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81952 (class 2620 OID 47086112)
-- Name: st_vw_layout_spalten tr_a_u__st_vw_layout_spalten__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_layout_spalten__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_layout_spalten REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 47086113)
-- Name: st_vw_layout_spalten tr_b_i_or_u_or_d__st_vw_layout_spalten__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_layout_spalten__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_layout_spalten FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81949 (class 2606 OID 47086105)
-- Name: st_vw_layout_spalten fk_st_vw_layout_spalten_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_layout_spalten
    ADD CONSTRAINT fk_st_vw_layout_spalten_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:59

--
-- PostgreSQL database dump complete
--

