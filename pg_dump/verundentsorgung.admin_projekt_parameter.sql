--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:01

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
-- TOC entry 12118 (class 1259 OID 39683715)
-- Name: admin_projekt_parameter; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.admin_projekt_parameter (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    kurztext text DEFAULT 'unbekannt'::text NOT NULL,
    langtext text DEFAULT 'unbekannt'::text NOT NULL,
    notiz text DEFAULT 'unbekannt'::text NOT NULL,
    fehlermeldung text DEFAULT 'unbekannt'::text NOT NULL,
    bemerkung text,
    wert_numerisch numeric DEFAULT 0 NOT NULL,
    wert_text text DEFAULT 'unbekannt'::text,
    wert_timestamptz timestamp with time zone DEFAULT now() NOT NULL,
    wert_aktivstatus integer DEFAULT 1 NOT NULL,
    sortierreihenfolge text DEFAULT '001'::text NOT NULL,
    ident_hist text DEFAULT 'unbekannt'::text NOT NULL,
    gueltig_von timestamp with time zone DEFAULT now() NOT NULL,
    gueltig_bis timestamp with time zone DEFAULT '2100-01-01 00:00:00+01'::timestamp with time zone NOT NULL,
    angelegt_am timestamp with time zone DEFAULT now() NOT NULL,
    angelegt_von text DEFAULT 'unbekannt'::text NOT NULL,
    geaendert_am timestamp with time zone DEFAULT now() NOT NULL,
    geaendert_von text DEFAULT 'unbekannt'::text NOT NULL,
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    wert_aktivstatus_bei_migration integer DEFAULT 0
);


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12118
-- Name: TABLE admin_projekt_parameter; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.admin_projekt_parameter IS 'Admin Projekt Parameter';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.id IS '  ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.kurztext IS 'Kurztext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.langtext IS 'Langtext ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.notiz; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.notiz IS 'Notiz ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.fehlermeldung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.fehlermeldung IS 'Fehlermeldung ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.wert_numerisch; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.wert_numerisch IS 'Wert Numerisch ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.wert_text; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.wert_text IS 'Wert Text ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.wert_timestamptz; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.wert_timestamptz IS 'Wert Timestamptz ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.wert_aktivstatus; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.wert_aktivstatus IS 'Wert Aktivstatus ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.ident_hist IS 'historische ID';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83819 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83820 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83821 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83822 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83823 (class 0 OID 0)
-- Dependencies: 12118
-- Name: COLUMN admin_projekt_parameter.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_projekt_parameter.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83798 (class 0 OID 39683715)
-- Dependencies: 12118
-- Data for Name: admin_projekt_parameter; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.admin_projekt_parameter (id, kurztext, langtext, notiz, fehlermeldung, bemerkung, wert_numerisch, wert_text, wert_timestamptz, wert_aktivstatus, sortierreihenfolge, ident_hist, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, wert_aktivstatus_bei_migration) FROM stdin;
75103e27-6802-4ea3-8761-b7f40d2b2cbb	wa_schachtdeckelerstellung	WA Schachtdeckel Erstellung	WA Schachtdeckel wurde erstellt.	Fehler bei AW Schachtdeckel Erstellung.	wenn wert_aktivstatus = 1 werden bei Erstellung eines Schachtes, Schachtdeckel mit erstellt.	0	unbekannt	2025-09-15 10:58:57.034159+02	0	001	unbekannt	2025-09-15 10:58:57.034159+02	2100-01-01 00:00:00+01	2025-09-15 10:58:57.034159+02	unbekannt	2025-09-15 10:58:57.034159+02	unbekannt	00000000-0000-0000-0000-000000000001	0
bcdfb23a-f95f-4408-b5e6-e723132ef0ee	verbindung_ABO_Winkel	verbindung_ABO_Winkel	verbindung_ABO_Winkel	Fehler bei Berechnung des AW Verbindung Winkel	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
c9694da8-b220-45f7-81f4-902ce48b8481	name_number	name_number	name_number wurde geschrieben.	Fehler bei Zuweisung der name_number!	wenn wert_aktivstatus = 1 wird die name_number bei insert, update und delete entsprechend durch den Trigger tf_standard_before()  geführt	1	unbekannt	2024-11-05 23:32:59.696027+01	0	003	unbekannt	2024-11-05 23:32:59.696027+01	2100-01-01 00:00:00+01	2024-11-05 23:32:59.696027+01	unbekannt	2024-11-05 23:32:59.696027+01	unbekannt	00000000-0000-0000-0000-000000000001	0
299641d5-8aa3-436c-baa2-cef5848a6a33	ka_lin_schutzrohr_punkte	ka_lin_schutzrohr_punkte	ka_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:14:49.334766+01	1	001	unbekannt	2026-01-05 12:14:49.334766+01	2100-01-01 00:00:00+01	2026-01-05 12:14:49.334766+01	unbekannt	2026-01-05 12:14:49.334766+01	unbekannt	00000000-0000-0000-0000-000000000003	0
37efe47b-e871-412b-836b-994d2b399898	ta_lin_netz_knoten_oben_unten	ta_lin_netz_knoten_oben_unten	Knoten oben und unten fuer ta	Fehler bei knoten ta	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:16:58.482529+01	1	001	unbekannt	2026-01-05 12:16:58.482529+01	2100-01-01 00:00:00+01	2026-01-05 12:16:58.482529+01	unbekannt	2026-01-05 12:16:58.482529+01	unbekannt	00000000-0000-0000-0000-000000000003	0
ec71c2ed-7788-4cbe-84a5-c8e345b5de23	ta_lin_schutzrohr_punkte	ta_lin_schutzrohr_punkte	ta_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:17:55.41178+01	1	001	unbekannt	2026-01-05 12:17:55.41178+01	2100-01-01 00:00:00+01	2026-01-05 12:17:55.41178+01	unbekannt	2026-01-05 12:17:55.41178+01	unbekannt	00000000-0000-0000-0000-000000000003	0
aa22e5ef-df11-4f7f-8856-4272fa51db42	wa_pkt_topologie_v_mv_refresh	wa_pkt_topologie_v_mv Refresh	Refresh von wa_pkt_topologie_v_mv ist erfolgt.	Fehler bei Refresh von wa_pkt_topologie_v_mv.	wenn wert_aktivstatus = 1 erhält Tabelle wa_pkt_topologie_v_mv ein Update.	0	unbekannt	2025-10-07 08:17:37.098011+02	1	001	unbekannt	2025-10-07 08:17:37.098011+02	2100-01-01 00:00:00+01	2025-10-07 08:17:37.098011+02	unbekannt	2025-10-07 08:17:37.098011+02	unbekannt	00000000-0000-0000-0000-000000000003	0
001c6aa6-ad33-4d99-a8c2-b9ef91277a96	wa_lin_wasserleitung_knoten_oben_unten	wa_lin_wasserleitung_knoten_oben_unten	WA Knoten unten und oben wurden berechnet.	Fehler bei Berechnung der AW Knoten unten oder oben.	wenn wert_aktivstatus = 1 werden Knoten oben und unten zur Haltung berechnet.	1	unbekannt	2026-01-05 14:04:22.335064+01	1	001	unbekannt	2026-01-05 14:04:22.335064+01	2100-01-01 00:00:00+01	2026-01-05 14:04:22.335064+01	unbekannt	2026-01-05 14:04:22.335064+01	unbekannt	00000000-0000-0000-0000-000000000003	0
adaa4a7e-d507-43c2-b256-86b98c7a5540	aw_lin_haltung_connector	aw_lin_haltung_connector	AW Konnektor wurde berechnet	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0.5	unbekannt	2025-02-11 15:24:36.870788+01	1	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000003	0
d9b95d87-3628-4187-b27a-6bf208d9896d	id	id	id wurde geschrieben.	Fehler bei Zuweisung der id!	wenn wert_aktivstatus = 1 wird die id bei insert entsprechend durch den Trigger tf_standard_before() bestimmt	0	unbekannt	2024-11-26 08:01:18.428621+01	1	001	unbekannt	2024-11-26 08:01:18.428621+01	2100-01-01 00:00:00+01	2024-11-26 08:01:18.428621+01	unbekannt	2024-11-26 08:01:18.428621+01	unbekannt	00000000-0000-0000-0000-000000000003	1
1f38fe7a-2c7f-408e-b10e-ce951d6b1b51	id_st_strasse	id_st_strasse	Automatische Strassenzuweisung ist erfolgt.	Fehler bei automatischer Strassenzuweisung!	wenn wert_aktivstatus = 1 wird automitsch der Strassenschlüssel der benachbarten Haltung eingetragen.	1	unbekannt	2025-02-14 18:13:00.862853+01	1	004	unbekannt	2025-02-14 18:13:00.862853+01	2100-01-01 00:00:00+01	2025-02-14 18:13:00.862853+01	unbekannt	2025-02-14 18:13:00.862853+01	unbekannt	00000000-0000-0000-0000-000000000003	0
bc3126f2-5cf0-4536-849b-2eb539f26eae	aw_pkt_topologie_default_insert	AW Auswahlknoten	AW Auswahlknoten wurden erstellt.	Fehler bei Erstellung der AW Auswahlknoten!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der AW Topologie erstellt.	0	unbekannt	2025-02-03 22:15:53.563059+01	1	007	unbekannt	2025-02-03 22:15:53.563059+01	2100-01-01 00:00:00+01	2025-02-03 22:15:53.563059+01	unbekannt	2025-02-03 22:15:53.563059+01	unbekannt	00000000-0000-0000-0000-000000000003	0
18b112df-8213-4085-ad0c-e454ea2a3064	wa_schachtdeckelerstellung	WA Schachtdeckel Erstellung	WA Schachtdeckel wurde erstellt.	Fehler bei AW Schachtdeckel Erstellung.	wenn wert_aktivstatus = 1 werden bei Erstellung eines Schachtes, Schachtdeckel mit erstellt.	0	unbekannt	2026-01-05 14:06:16.846216+01	1	001	unbekannt	2026-01-05 14:06:16.846216+01	2100-01-01 00:00:00+01	2026-01-05 14:06:16.846216+01	unbekannt	2026-01-05 14:06:16.846216+01	unbekannt	00000000-0000-0000-0000-000000000003	0
f680ea3c-08d4-4f9f-a686-e001e027dba3	aw_lin_haltung_knoten_oben_unten	aw_lin_haltung_knoten_oben_unten	AW Knoten unten und oben wurden berechnet.	Fehler bei Berechnung der AW Knoten unten oder oben.	wenn wert_aktivstatus = 1 werden Knoten oben und unten zur Haltung berechnet.	1	unbekannt	2025-02-11 15:36:32.798866+01	1	010	unbekannt	2025-02-11 15:36:32.798866+01	2100-01-01 00:00:00+01	2025-02-11 15:36:32.798866+01	unbekannt	2025-02-11 15:36:32.798866+01	unbekannt	00000000-0000-0000-0000-000000000003	0
b9a46d53-9e56-44fc-b10c-dab7043be722	aw_fliessrichtungspfeilerstellung	aw_richtungspfeilerstellung	AW Richtungspfeil wurde ggf. erstellt.	Fehler bei Erstellung des AW Richtungspfeils!	wenn wert_aktivstatus = 1 wird bei insert durch Trigger tf_standard_before() ein Richtungspfeil erstellt.	0	unbekannt	2025-04-30 12:27:46.832941+02	1	001	unbekannt	2025-04-30 12:27:46.832941+02	2100-01-01 00:00:00+01	2025-04-30 12:27:46.832941+02	unbekannt	2025-04-30 12:27:46.832941+02	unbekannt	00000000-0000-0000-0000-000000000003	0
77dd0159-99d9-4158-95a4-6925a34dc9df	ta_pkt_knoten_insert	TA Knoten	TA Knoten wird erstellt.	Fehler bei Erstellung des TA Knotens!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der TA Knoten Tabelle erstellt.	0	unbekannt	2025-03-06 14:48:09.637475+01	1	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000003	0
6fe75afa-9a69-4a26-83e6-67869e3f7e8c	historie	Historienführung	Historie wurde geschrieben.	Fehler bei Historienführung!	wenn wert_aktivstatus = 1 wird die Historie durch den Trigger tf_standard_before() geführt	2	unbekannt	2024-04-17 11:35:17.737811+02	0	001	unbekannt	2024-04-17 11:35:17.737811+02	2100-01-01 00:00:00+01	2024-04-17 11:35:17.737811+02	unbekannt	2024-04-17 11:35:17.737811+02	unbekannt	00000000-0000-0000-0000-000000000001	0
74ede048-8b0f-43d1-b81b-dc59baf9ae8c	gefaelle	Gefälleberechnung	Gefälle wurde berechnet.	Fehler bei Gefälleberechnung!	wenn wert_aktivstatus = 1 wird das Gefälle berechnet und gerundet auf wert_numerisch Nachkommastellen durch den Trigger tf_standard_before()	1	unbekannt	2024-04-17 09:39:53.515074+02	1	006	unbekannt	2024-04-17 09:39:53.515074+02	2100-01-01 00:00:00+01	2024-04-17 09:39:53.515074+02	unbekannt	2024-04-17 09:39:53.515074+02	unbekannt	00000000-0000-0000-0000-000000000003	0
e8e636f1-1628-497a-8e46-489e3c37725e	migrationsort	migrationsort	migrationsort	Fehler bei Migrationsort!	wenn wert_aktivstatus = 1 wird bei der Migration auf den Ort in wert_text eingeschränkt	0	%	2024-08-05 12:07:08.430063+02	1	001	unbekannt	2024-08-05 12:07:08.430063+02	2100-01-01 00:00:00+01	2024-08-05 12:07:08.430063+02	unbekannt	2024-08-05 12:07:08.430063+02	unbekannt	00000000-0000-0000-0000-000000000003	0
06bfc837-2ebe-4ab7-9842-6604cf340bda	aw_label_delete	aw_label_delete	AW Label wurde ggf. gelöcht.	Fehler beim Löschen des Labels!	wenn wert_aktivstatus = 1 wird Label mit dem Mutterobjekt mit gelöscht	0	unbekannt	2025-12-03 22:40:21.377549+01	1	001	unbekannt	2025-12-03 22:40:21.377549+01	2100-01-01 00:00:00+01	2025-12-03 22:40:21.377549+01	unbekannt	2025-12-03 22:40:21.377549+01	unbekannt	00000000-0000-0000-0000-000000000003	0
06b5eb09-12e5-4525-b117-95b10bbe7bdf	ka_lin_kabelnetz_knoten_oben_unten	ka_lin_kabelnetz_knoten_oben_unten	Knoten oben und unten fuer ka	Fehler bei knoten ka	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:13:35.125135+01	1	001	unbekannt	2026-01-05 12:13:35.125135+01	2100-01-01 00:00:00+01	2026-01-05 12:13:35.125135+01	unbekannt	2026-01-05 12:13:35.125135+01	unbekannt	00000000-0000-0000-0000-000000000003	0
ef4c32fe-a98e-4493-be70-a9a26b227ff2	aw_labeltextupdate	aw_labeltextupdate	AW Laybeltext wurde ggf. geupdatet.	Fehler bei Labeltextupdate!	wenn wert_aktivstatus = 1 wird bei update durch Trigger tf_standard_before() der Labeltext aktualisiert.	0	unbekannt	2025-04-30 13:32:40.464036+02	0	001	unbekannt	2025-04-30 13:32:40.464036+02	2100-01-01 00:00:00+01	2025-04-30 13:32:40.464036+02	unbekannt	2025-04-30 13:32:40.464036+02	unbekannt	00000000-0000-0000-0000-000000000001	0
43e73dc2-04ef-4ef6-979e-cb14daddf3ac	aw_plausibilitaet_deckelhoehe_sohlhoehe	aw_plausibilitaet_deckelhoehe_sohlhoehe	aw_plausibilitaet_deckelhoehe_sohlhoehe	Fehler in Plausibilität Deckelhöhe Sohlhöhe.	wenn wert_aktivstatus = 1 wird die Plausibilitätskontrolle Deckelhöhe Sohlhöhe aktiviert.	0	unbekannt	2025-12-03 08:37:31.38967+01	0	001	unbekannt	2025-12-03 08:37:31.38967+01	2100-01-01 00:00:00+01	2025-12-03 08:37:31.38967+01	unbekannt	2025-12-03 08:37:31.38967+01	unbekannt	00000000-0000-0000-0000-000000000001	0
fc0107a9-04a2-430d-ba5f-957a56437469	write_errorlog	ErrorLog	ErrorLog wurde geschrieben.	Fehler bei Schreiben der ErrorLog!	wenn wert_aktivstatus = 1 wird eine Errorlog geschrieben	0	unbekannt	2024-11-06 22:18:51.813189+01	0	001	unbekannt	2024-11-06 22:18:51.813189+01	2100-01-01 00:00:00+01	2024-11-06 22:18:51.813189+01	unbekannt	2024-11-06 22:18:51.813189+01	unbekannt	00000000-0000-0000-0000-000000000001	0
64719801-450d-4729-8601-fb74608bcf88	wa_pkt_topologie_default_update	WA Topologieobjekterstellung	WA default Topologieobjekterstellung wurde ausgelöst.	Fehler bei der WA Topologieobjekterstellung!	wenn wert_aktivstatus = 1 wird ein WA Topologieobjekte erstellt.	0	unbekannt	2025-03-07 12:36:55.271917+01	0	001	unbekannt	2025-03-07 12:36:55.271917+01	2100-01-01 00:00:00+01	2025-03-07 12:36:55.271917+01	unbekannt	2025-03-07 12:36:55.271917+01	unbekannt	00000000-0000-0000-0000-000000000001	0
e1da133d-59fd-43cf-98e8-0bcbf5113984	ka_lin_kabelnetz_knoten_oben_unten	ka_lin_kabelnetz_knoten_oben_unten	Knoten oben und unten fuer ka	Fehler bei knoten ka	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
aa1f8855-acce-4ea9-ac6b-e3c86586b322	aw_lin_topologie_update	aw_lin_topologie_update	AW Topologie Update wurde ausgeführt.	Fehler bei AW Topologie Update!	wenn wert_aktivstatus = 1 wird bei insert und update durch Trigger tf_standard_before() die AW Topologie aktualisiert.	0	unbekannt	2025-05-04 20:00:30.429805+02	1	001	unbekannt	2025-05-04 20:00:30.429805+02	2100-01-01 00:00:00+01	2025-05-04 20:00:30.429805+02	unbekannt	2025-05-04 20:00:30.429805+02	unbekannt	00000000-0000-0000-0000-000000000003	0
ce1b1b5e-5a22-47e0-9773-ea0ae7495ea5	wa_pkt_topologie_default_update	WA Topologieobjekterstellung	WA default Topologieobjekterstellung wurde ausgelöst.	Fehler bei der WA Topologieobjekterstellung!	wenn wert_aktivstatus = 1 wird ein WA Topologieobjekte erstellt.	0	unbekannt	2025-03-07 12:36:55.271917+01	1	001	unbekannt	2025-03-07 12:36:55.271917+01	2100-01-01 00:00:00+01	2025-03-07 12:36:55.271917+01	unbekannt	2025-03-07 12:36:55.271917+01	unbekannt	00000000-0000-0000-0000-000000000003	0
356aef93-7ee5-47a0-a6de-6f52be628536	fid_hist	ID Kurzwert	fid_hist wurde geschrieben.	Fehler bei fid_hist!	wenn wert_aktivstatus = 1 wird die fid_hist bei insert, update und delete entsprechend durch den Trigger tf_standard_before() geführt	0	unbekannt	2024-04-24 09:43:38.751396+02	0	001	unbekannt	2024-04-24 09:43:38.751396+02	2100-01-01 00:00:00+01	2024-04-24 09:43:38.751396+02	unbekannt	2024-04-24 09:43:38.751396+02	unbekannt	00000000-0000-0000-0000-000000000001	0
3cc2ce5b-9654-4935-8b4e-fabd329ebaee	wa_pkt_topologie_default_insert	WA Auswahlknoten	WA Auswahlknoten wurden erstellt.	Fehler bei Erstellung der WA Auswahlknoten!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der WA Topologie erstellt.	0	unbekannt	2025-03-06 14:48:09.637475+01	0	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000001	0
f24c4576-e3a3-4677-b007-b178e153050f	wa_schacht2deckel_update	WA Schacht 2 Deckel	WA Schacht Attribute wurden auf Deckel übertragen.	Fehler bei Übertragung der AW Schacht Attribute zum Deckel.	wenn wert_aktivstatus = 1 werden Attribute vom AW Schacht auf den Schachtdeckel übertragen.	0	unbekannt	2025-09-17 14:56:40.563214+02	0	001	unbekannt	2025-09-17 14:56:40.563214+02	2100-01-01 00:00:00+01	2025-09-17 14:56:40.563214+02	unbekannt	2025-09-17 14:56:40.563214+02	unbekannt	00000000-0000-0000-0000-000000000001	0
783f2e33-79ca-4593-abb8-0a982b5da372	aw_lin_topologie_update_richtungspfeil	aw_lin_topologie_update_richtungspfeil	AW Topologie Richtungspfeilerstellung wurde ausgeführt.	Fehler bei AW Topologie Richtungspfeilerstellung!	wenn wert_aktivstatus = 1 wird bei insert durch Trigger tf_standard_before() die AW Richtungspfeilerstellung durchgeführt.	0	unbekannt	2025-05-04 20:04:43.249611+02	0	001	unbekannt	2025-05-04 20:04:43.249611+02	2100-01-01 00:00:00+01	2025-05-04 20:04:43.249611+02	unbekannt	2025-05-04 20:04:43.249611+02	unbekannt	00000000-0000-0000-0000-000000000001	0
71516694-03a1-40ef-9768-5b1e85c961fb	wa_schacht2deckel_update	WA Schacht 2 Deckel	WA Schacht Attribute wurden auf Deckel übertragen.	Fehler bei Übertragung der AW Schacht Attribute zum Deckel.	wenn wert_aktivstatus = 1 werden Attribute vom AW Schacht auf den Schachtdeckel übertragen.	0	unbekannt	2026-01-05 14:05:24.157186+01	1	001	unbekannt	2026-01-05 14:05:24.157186+01	2100-01-01 00:00:00+01	2026-01-05 14:05:24.157186+01	unbekannt	2026-01-05 14:05:24.157186+01	unbekannt	00000000-0000-0000-0000-000000000003	0
5aa3f8f1-aabc-4055-b3a1-5ae7223751b6	aw_lin_topologie_update_richtungspfeil	aw_lin_topologie_update_richtungspfeil	AW Topologie Richtungspfeilerstellung wurde ausgeführt.	Fehler bei AW Topologie Richtungspfeilerstellung!	wenn wert_aktivstatus = 1 wird bei insert durch Trigger tf_standard_before() die AW Richtungspfeilerstellung durchgeführt.	0	unbekannt	2025-05-04 20:04:43.249611+02	1	001	unbekannt	2025-05-04 20:04:43.249611+02	2100-01-01 00:00:00+01	2025-05-04 20:04:43.249611+02	unbekannt	2025-05-04 20:04:43.249611+02	unbekannt	00000000-0000-0000-0000-000000000003	0
15dce353-efae-4258-870a-80e8404578ad	aw_label_delete	aw_label_delete	AW Label wurde ggf. gelöcht.	Fehler beim Löschen des Labels!	wenn wert_aktivstatus = 1 wird Label mit dem Mutterobjekt mit gelöscht	0	unbekannt	2026-01-05 12:09:57.30731+01	0	001	unbekannt	2026-01-05 12:09:57.30731+01	2100-01-01 00:00:00+01	2026-01-05 12:09:57.30731+01	unbekannt	2026-01-05 12:09:57.30731+01	unbekannt	00000000-0000-0000-0000-000000000001	0
00cad01f-2f7d-461c-bc9a-7b86946cf058	aw_labelerstellung	aw_labelerstellung	AW Laybel wurde ggf. erstellt.	Fehler bei AW Labelerstellung!	wenn wert_aktivstatus = 1 wird bei insert durch Trigger tf_standard_before() ein Label erstellt.	0	unbekannt	2025-04-30 12:27:46.829421+02	0	001	unbekannt	2025-04-30 12:27:46.829421+02	2100-01-01 00:00:00+01	2025-04-30 12:27:46.829421+02	unbekannt	2025-04-30 12:27:46.829421+02	unbekannt	00000000-0000-0000-0000-000000000001	0
a8c8e12f-84aa-48dd-b31b-934664847fe8	aw_lin_topologie_update	aw_lin_topologie_update	AW Topologie Update wurde ausgeführt.	Fehler bei AW Topologie Update!	wenn wert_aktivstatus = 1 wird bei insert und update durch Trigger tf_standard_before() die AW Topologie aktualisiert.	0	unbekannt	2025-05-04 20:00:30.429805+02	0	001	unbekannt	2025-05-04 20:00:30.429805+02	2100-01-01 00:00:00+01	2025-05-04 20:00:30.429805+02	unbekannt	2025-05-04 20:00:30.429805+02	unbekannt	00000000-0000-0000-0000-000000000001	0
31993b0b-c5cd-4a3d-8ea7-5f83c2a1876a	dokument_unterstuetzung	dokument_unterstuetzung	dokument_unterstuetzung wurde ausgelöst.	Fehler bei dokument_unterstuetzung!	wenn wert_aktivstatus = 1 wird dokument_unterstuetzung aktiviert.	0	unbekannt	2025-08-04 22:03:00.424417+02	0	001	unbekannt	2025-08-04 22:03:00.424417+02	2100-01-01 00:00:00+01	2025-08-04 22:03:00.424417+02	unbekannt	2025-08-04 22:03:00.424417+02	unbekannt	00000000-0000-0000-0000-000000000001	0
25864ed5-5930-4836-a2eb-b24458ab211a	id_st_strasse	id_st_strasse	Automatische Strassenzuweisung ist erfolgt.	Fehler bei automatischer Strassenzuweisung!	wenn wert_aktivstatus = 1 wird automitsch der Strassenschlüssel der benachbarten Haltung eingetragen.	1	unbekannt	2025-02-14 18:13:00.862853+01	0	004	unbekannt	2025-02-14 18:13:00.862853+01	2100-01-01 00:00:00+01	2025-02-14 18:13:00.862853+01	unbekannt	2025-02-14 18:13:00.862853+01	unbekannt	00000000-0000-0000-0000-000000000001	0
2822eb18-f470-44e8-827c-2c4b641b6c1d	label_loeschen	Label loeschen	Label wird mit Objekt geloescht.	Fehler beim Label loeschen.	wenn wert_aktivstatus = 1 werden beim loeschen das Label geloescht	0	unbekannt	2025-03-06 14:48:09.637475+01	0	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000001	0
dc07dbaa-29ca-4eb8-86d2-e872065ceea8	migrationsort	migrationsort	migrationsort	Fehler bei Migrationsort!	wenn wert_aktivstatus = 1 wird bei der Migration auf den Ort in wert_text eingeschränkt	0	%	2024-08-05 12:07:08.430063+02	0	001	unbekannt	2024-08-05 12:07:08.430063+02	2100-01-01 00:00:00+01	2024-08-05 12:07:08.430063+02	unbekannt	2024-08-05 12:07:08.430063+02	unbekannt	00000000-0000-0000-0000-000000000001	0
2b5465cc-de7b-43a1-b6cc-41e81321c97f	ta_lin_netz_knoten_oben_unten	ta_lin_netz_knoten_oben_unten	Knoten oben und unten fuer ta	Fehler bei knoten ta	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
71567457-47c7-47c1-946a-136b9a8109c4	fid_hist	ID Kurzwert	fid_hist wurde geschrieben.	Fehler bei fid_hist!	wenn wert_aktivstatus = 1 wird die fid_hist bei insert, update und delete entsprechend durch den Trigger tf_standard_before() geführt	0	unbekannt	2024-04-24 09:43:38.751396+02	1	001	unbekannt	2024-04-24 09:43:38.751396+02	2100-01-01 00:00:00+01	2024-04-24 09:43:38.751396+02	unbekannt	2024-04-24 09:43:38.751396+02	unbekannt	00000000-0000-0000-0000-000000000003	0
5e842ff5-262a-4709-a649-4dda52a0befb	aw_pkt_topologie_v_mv_refresh	aw_pkt_topologie_v_mv Refresh	Refresh von aw_pkt_topologie_v_mv ist erfolgt.	Fehler bei Refresh von aw_pkt_topologie_v_mv.	wenn wert_aktivstatus = 1 erhält Tabelle aw_pkt_topologie_v_mv ein Update.	0	unbekannt	2025-10-07 08:13:23.49043+02	1	001	unbekannt	2025-10-07 08:13:23.49043+02	2100-01-01 00:00:00+01	2025-10-07 08:13:23.49043+02	unbekannt	2025-10-07 08:13:23.49043+02	unbekannt	00000000-0000-0000-0000-000000000003	0
92b234af-d204-491e-a802-551c0078199c	wa_lin_schutzrohr_punkte	wa_lin_schutzrohr_punkte	wa_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
e3b79af1-24b1-48aa-b654-006ce5ce3edc	aw_labeltextupdate	aw_labeltextupdate	AW Laybeltext wurde ggf. geupdatet.	Fehler bei Labeltextupdate!	wenn wert_aktivstatus = 1 wird bei update durch Trigger tf_standard_before() der Labeltext aktualisiert.	0	unbekannt	2025-04-30 13:32:40.464036+02	1	001	unbekannt	2025-04-30 13:32:40.464036+02	2100-01-01 00:00:00+01	2025-04-30 13:32:40.464036+02	unbekannt	2025-04-30 13:32:40.464036+02	unbekannt	00000000-0000-0000-0000-000000000003	0
d5c8f7e8-3013-4b02-809c-c4fad2d00fe4	ka_pkt_knoten_insert	KA Knoten	KA Knoten wird erstellt.	Fehler bei Erstellung des KA Knotens!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der KA Knoten Tabelle erstellt.	0	unbekannt	2025-03-06 14:48:09.637475+01	1	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000003	0
c3a08494-1bbf-4bab-a3ed-dcfcc6cd2734	laenge	Längenberechnung	Länge wurde berechnet.	Fehler bei Längenberechnung!	wenn wert_aktivstatus = 1 wird die Länge gerundet auf wert_numerisch Nachkommastellen durch den Trigger tf_standard_before()	1	unbekannt	2024-04-17 09:39:51.969843+02	1	005	unbekannt	2024-04-17 09:39:51.969843+02	2100-01-01 00:00:00+01	2024-04-17 09:39:51.969843+02	unbekannt	2024-04-17 09:39:51.969843+02	unbekannt	00000000-0000-0000-0000-000000000001	1
9c6a6629-2cb8-43dd-9c13-ac9877af9d6b	label_update	label_update	Update für label	Label wurde nicht geupdatet	wenn wert_aktivstatus = 1 werden label geupdatet	0	unbekannt	2025-05-04 20:04:43.249611+02	0	001	unbekannt	2025-05-04 20:04:43.249611+02	2100-01-01 00:00:00+01	2025-05-04 20:04:43.249611+02	unbekannt	2025-05-04 20:04:43.249611+02	unbekannt	00000000-0000-0000-0000-000000000001	0
33574617-ed20-472d-b599-f4f4c5570bb3	aw_lin_haltung_knoten_oben_unten	aw_lin_haltung_knoten_oben_unten	AW Knoten unten und oben wurden berechnet.	Fehler bei Berechnung der AW Knoten unten oder oben.	wenn wert_aktivstatus = 1 werden Knoten oben und unten zur Haltung berechnet.	1	unbekannt	2025-02-11 15:36:32.798866+01	0	010	unbekannt	2025-02-11 15:36:32.798866+01	2100-01-01 00:00:00+01	2025-02-11 15:36:32.798866+01	unbekannt	2025-02-11 15:36:32.798866+01	unbekannt	00000000-0000-0000-0000-000000000001	0
65768c91-2833-4d50-97e1-83212e861c11	ka_pkt_knoten_insert	KA Knoten	KA Knoten wird erstellt.	Fehler bei Erstellung des KA Knotens!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der KA Knoten Tabelle erstellt.	0	unbekannt	2025-03-06 14:48:09.637475+01	0	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000001	0
082158b0-7122-4236-aa7f-8a71971adf26	wa_lin_wasserleitung_connector	wa_lin_wasserleitung_connector	WA Konnektor wurde berechnet	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0.5	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
a53bb14d-7ac5-4a18-a595-61f952c770e3	ka_lin_schutzrohr_punkte	ka_lin_schutzrohr_punkte	ka_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
fe3f564a-cfea-4bcb-b614-2f1b6c35925a	write_errorlog	ErrorLog	ErrorLog wurde geschrieben.	Fehler bei Schreiben der ErrorLog!	wenn wert_aktivstatus = 1 wird eine Errorlog geschrieben	0	unbekannt	2024-11-06 22:18:51.813189+01	0	001	unbekannt	2024-11-06 22:18:51.813189+01	2100-01-01 00:00:00+01	2024-11-06 22:18:51.813189+01	unbekannt	2024-11-06 22:18:51.813189+01	unbekannt	00000000-0000-0000-0000-000000000003	0
ca6144e9-f123-4f3d-af1e-1d92dd7b41fa	wa_lin_wasserleitung_connector	wa_lin_wasserleitung_connector	WA Konnektor wurde berechnet	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0.5	unbekannt	2026-01-05 12:21:08.270263+01	1	001	unbekannt	2026-01-05 12:21:08.270263+01	2100-01-01 00:00:00+01	2026-01-05 12:21:08.270263+01	unbekannt	2026-01-05 12:21:08.270263+01	unbekannt	00000000-0000-0000-0000-000000000003	0
5657b5fc-034d-443f-b0d1-d62870d781de	id	id	id wurde geschrieben.	Fehler bei Zuweisung der id!	wenn wert_aktivstatus = 1 wird die id bei insert entsprechend durch den Trigger tf_standard_before() bestimmt	0	unbekannt	2024-11-26 08:01:18.428621+01	1	001	unbekannt	2024-11-26 08:01:18.428621+01	2100-01-01 00:00:00+01	2024-11-26 08:01:18.428621+01	unbekannt	2024-11-26 08:01:18.428621+01	unbekannt	00000000-0000-0000-0000-000000000001	1
9437c8f7-9da0-4af2-be76-7743c4b13bc5	aw_fliessrichtungspfeilerstellung	aw_richtungspfeilerstellung	AW Richtungspfeil wurde ggf. erstellt.	Fehler bei Erstellung des AW Richtungspfeils!	wenn wert_aktivstatus = 1 wird bei insert durch Trigger tf_standard_before() ein Richtungspfeil erstellt.	0	unbekannt	2025-04-30 12:27:46.832941+02	0	001	unbekannt	2025-04-30 12:27:46.832941+02	2100-01-01 00:00:00+01	2025-04-30 12:27:46.832941+02	unbekannt	2025-04-30 12:27:46.832941+02	unbekannt	00000000-0000-0000-0000-000000000001	0
0defdb0b-a135-4a1b-b37c-fca9919e7c06	aw_pkt_topologie_default_insert	AW Auswahlknoten	AW Auswahlknoten wurden erstellt.	Fehler bei Erstellung der AW Auswahlknoten!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der AW Topologie erstellt.	0	unbekannt	2025-02-03 22:15:53.563059+01	0	007	unbekannt	2025-02-03 22:15:53.563059+01	2100-01-01 00:00:00+01	2025-02-03 22:15:53.563059+01	unbekannt	2025-02-03 22:15:53.563059+01	unbekannt	00000000-0000-0000-0000-000000000001	0
3ecdb36d-127d-452a-a24b-69b5d06a0c58	ta_pkt_knoten_insert	TA Knoten	TA Knoten wird erstellt.	Fehler bei Erstellung des TA Knotens!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der TA Knoten Tabelle erstellt.	0	unbekannt	2025-03-06 14:48:09.637475+01	0	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000001	0
17deacaf-31e4-451e-9cda-20e5d2862ce5	aw_lin_schutzrohr_punkte	aw_lin_schutzrohr_punkte	aw_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
563a0a49-f8eb-4368-9424-746284354e94	wa_lin_wasserleitung_knoten_oben_unten	wa_lin_wasserleitung_knoten_oben_unten	WA Knoten unten und oben wurden berechnet.	Fehler bei Berechnung der AW Knoten unten oder oben.	wenn wert_aktivstatus = 1 werden Knoten oben und unten zur Haltung berechnet.	1	unbekannt	2025-02-11 15:36:32.798866+01	0	010	unbekannt	2025-02-11 15:36:32.798866+01	2100-01-01 00:00:00+01	2025-02-11 15:36:32.798866+01	unbekannt	2025-02-11 15:36:32.798866+01	unbekannt	00000000-0000-0000-0000-000000000001	0
ab0d6891-d059-41c8-b5c4-aea5c4de58e2	aw_pkt_topologie_v_mv_refresh	aw_pkt_topologie_v_mv Refresh	Refresh von aw_pkt_topologie_v_mv ist erfolgt.	Fehler bei Refresh von aw_pkt_topologie_v_mv.	wenn wert_aktivstatus = 1 erhält Tabelle aw_pkt_topologie_v_mv ein Update.	0	unbekannt	2025-10-07 08:13:23.485163+02	0	001	unbekannt	2025-10-07 08:13:23.485163+02	2100-01-01 00:00:00+01	2025-10-07 08:13:23.485163+02	unbekannt	2025-10-07 08:13:23.485163+02	unbekannt	00000000-0000-0000-0000-000000000001	0
47c821af-d89a-43ba-ac10-7acf438c0dad	aw_schacht2deckel_update	AW Schacht 2 Deckel	AW Schacht Attribute wurden auf Deckel übertragen.	Fehler bei Übertragung der AW Schacht Attribute zum Deckel.	wenn wert_aktivstatus = 1 werden Attribute vom AW Schacht auf den Schachtdeckel übertragen.	0	unbekannt	2025-09-17 14:56:40.563214+02	0	001	unbekannt	2025-09-17 14:56:40.563214+02	2100-01-01 00:00:00+01	2025-09-17 14:56:40.563214+02	unbekannt	2025-09-17 14:56:40.563214+02	unbekannt	00000000-0000-0000-0000-000000000001	0
165e35bd-a85a-4f4a-9958-c74a2976bd7c	aw_lin_haltung_connector	aw_lin_haltung_connector	AW Konnektor wurde berechnet	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0.5	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
968acd55-9be6-498f-b495-8be84a6155d0	aw_schachttiefe_update	aw_schachttiefe_update	Schachttiefe wurde berechnet.	Fehler beim Update der Schachttiefe!	wenn wert_aktivstatus = 1 wird die Schachttiefe berechnet.	0	unbekannt	2025-12-03 22:22:57.968197+01	0	001	unbekannt	2025-12-03 22:22:57.968197+01	2100-01-01 00:00:00+01	2025-12-03 22:22:57.968197+01	unbekannt	2025-12-03 22:22:57.968197+01	unbekannt	00000000-0000-0000-0000-000000000001	0
c1715e2b-e200-4d83-a6d2-819827948601	aw_plausibilitaet_deckelhoehe_sohlhoehe	aw_plausibilitaet_deckelhoehe_sohlhoehe	aw_plausibilitaet_deckelhoehe_sohlhoehe	Fehler in Plausibilität Deckelhöhe Sohlhöhe.	wenn wert_aktivstatus = 1 wird die Plausibilitätskontrolle Deckelhöhe Sohlhöhe aktiviert.	0	unbekannt	2025-12-03 08:37:31.397089+01	0	001	unbekannt	2025-12-03 08:37:31.397089+01	2100-01-01 00:00:00+01	2025-12-03 08:37:31.397089+01	unbekannt	2025-12-03 08:37:31.397089+01	unbekannt	00000000-0000-0000-0000-000000000003	0
5690cc2c-05e6-4fd4-93a0-622590fae131	historie	Historienführung	Historie wurde geschrieben.	Fehler bei Historienführung!	wenn wert_aktivstatus = 1 wird die Historie durch den Trigger tf_standard_before() geführt	2	unbekannt	2024-04-17 11:35:17.737811+02	0	001	unbekannt	2024-04-17 11:35:17.737811+02	2100-01-01 00:00:00+01	2024-04-17 11:35:17.737811+02	unbekannt	2024-04-17 11:35:17.737811+02	unbekannt	00000000-0000-0000-0000-000000000003	0
6e017e8e-5ee3-4a66-84fe-6217e881794e	insert_werte_nach_update_beibehalten	insert_werte_nach_update_beibehalten	Werte, wie angelegt_von, angelegt_am, id, name_number usw. beibehalten wurde umgesetzt.	Fehler bei Umsetzung Werte, wie angelegt_von, angelegt_am, id, name_number usw. beibehalten.	wenn wert_aktivstatus = 1 werden statische insertwerte bei Updates automitsch beibehalten.	0	unbekannt	2025-02-17 07:20:42.504202+01	1	002	unbekannt	2025-02-17 07:20:42.504202+01	2100-01-01 00:00:00+01	2025-02-17 07:20:42.504202+01	unbekannt	2025-02-17 07:20:42.504202+01	unbekannt	00000000-0000-0000-0000-000000000001	1
c2a874f5-b64c-416c-9109-203b39725d00	layout	layout	Automatische Erstellung der Layoutparameter.	Fehler bei automatischer Erstellung der Layoutparameter.	wenn wert_aktivstatus = 1 wird automatische die Erstellung der Layoutparameter ermittelt und geschrieben.	0	unbekannt	2025-02-19 14:33:34.030933+01	1	011	unbekannt	2025-02-19 14:33:34.030933+01	2100-01-01 00:00:00+01	2025-02-19 14:33:34.030933+01	unbekannt	2025-02-19 14:33:34.030933+01	unbekannt	00000000-0000-0000-0000-000000000001	1
331d3047-8995-48c0-9086-9d79ef6c2add	db_benutzer	db_benutzer	db_benutzer wurde gespeichert.	Fehler bei Schreiben des Datenbankbenutzers!!	wenn wert_aktivstatus = 1 wird der Datenbankbenutzer in angelegt_von und geaendert_von geschrieben.	0	unbekannt	2025-08-19 10:19:22.228056+02	0	001	unbekannt	2025-08-19 10:19:22.228056+02	2100-01-01 00:00:00+01	2025-08-19 10:19:22.228056+02	unbekannt	2025-08-19 10:19:22.228056+02	unbekannt	00000000-0000-0000-0000-000000000001	0
10f892b2-b5d4-4488-905d-ec6a1edc6e2c	aw_lin_schutzrohr_punkte	aw_lin_schutzrohr_punkte	aw_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:11:49.270536+01	1	001	unbekannt	2026-01-05 12:11:49.270536+01	2100-01-01 00:00:00+01	2026-01-05 12:11:49.270536+01	unbekannt	2026-01-05 12:11:49.270536+01	unbekannt	00000000-0000-0000-0000-000000000003	0
14775c06-b94b-4f9e-8267-6927fcc38b6c	label_update	label_update	Update für label	Label wurde nicht geupdatet	wenn wert_aktivstatus = 1 werden label geupdatet	0	unbekannt	2025-05-04 20:04:43.249611+02	1	001	unbekannt	2025-05-04 20:04:43.249611+02	2100-01-01 00:00:00+01	2025-05-04 20:04:43.249611+02	unbekannt	2025-05-04 20:04:43.249611+02	unbekannt	00000000-0000-0000-0000-000000000003	0
6ee4fbee-c291-4f5c-a9d5-409aa196bc87	wa_lin_schutzrohr_punkte	wa_lin_schutzrohr_punkte	wa_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:19:55.183079+01	1	001	unbekannt	2026-01-05 12:19:55.183079+01	2100-01-01 00:00:00+01	2026-01-05 12:19:55.183079+01	unbekannt	2026-01-05 12:19:55.183079+01	unbekannt	00000000-0000-0000-0000-000000000003	0
cd4f2dd7-58f1-4faa-ae6d-83f18043e238	aw_labelerstellung	aw_labelerstellung	AW Laybel wurde ggf. erstellt.	Fehler bei AW Labelerstellung!	wenn wert_aktivstatus = 1 wird bei insert durch Trigger tf_standard_before() ein Label erstellt.	0	unbekannt	2025-04-30 12:27:46.829421+02	1	001	unbekannt	2025-04-30 12:27:46.829421+02	2100-01-01 00:00:00+01	2025-04-30 12:27:46.829421+02	unbekannt	2025-04-30 12:27:46.829421+02	unbekannt	00000000-0000-0000-0000-000000000003	0
e983be48-d76d-42d0-82a2-a744d4514351	verbindung_ABO_Winkel	verbindung_ABO_Winkel	verbindung_ABO_Winkel	Fehler bei Berechnung des AW Verbindung Winkel	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2026-01-05 12:18:52.69205+01	1	001	unbekannt	2026-01-05 12:18:52.69205+01	2100-01-01 00:00:00+01	2026-01-05 12:18:52.69205+01	unbekannt	2026-01-05 12:18:52.69205+01	unbekannt	00000000-0000-0000-0000-000000000003	0
e54396b0-8c3f-4272-a6f5-352d8606c813	aw_schachttiefe_update	aw_schachttiefe_update	Schachttiefe wurde berechnet.	Fehler beim Update der Schachttiefe!	wenn wert_aktivstatus = 1 wird die Schachttiefe berechnet.	0	unbekannt	2025-12-03 22:22:57.983423+01	1	001	unbekannt	2025-12-03 22:22:57.983423+01	2100-01-01 00:00:00+01	2025-12-03 22:22:57.983423+01	unbekannt	2025-12-03 22:22:57.983423+01	unbekannt	00000000-0000-0000-0000-000000000003	0
1be8613e-61d1-4bee-bf36-f2810666d788	db_benutzer	db_benutzer	db_benutzer wurde gespeichert.	Fehler bei Schreiben des Datenbankbenutzers!!	wenn wert_aktivstatus = 1 wird der Datenbankbenutzer in angelegt_von und geaendert_von geschrieben.	0	unbekannt	2025-08-19 10:19:22.228056+02	1	001	unbekannt	2025-08-19 10:19:22.228056+02	2100-01-01 00:00:00+01	2025-08-19 10:19:22.228056+02	unbekannt	2025-08-19 10:19:22.228056+02	unbekannt	00000000-0000-0000-0000-000000000003	0
a8b0341b-42b2-4285-b82e-1dc703b4d001	aw_pkt_topologie_default_update	AW Topologieobjekterstellung	AW default Topologieobjekterstellung wurde ausgelöst.	Fehler bei der AW Topologieobjekterstellung!	wenn wert_aktivstatus = 1 wird ein AW Topologieobjekte erstellt.	0	unbekannt	2025-02-04 16:24:07.708848+01	1	008	unbekannt	2025-02-04 16:24:07.708848+01	2100-01-01 00:00:00+01	2025-02-04 16:24:07.708848+01	unbekannt	2025-02-04 16:24:07.708848+01	unbekannt	00000000-0000-0000-0000-000000000003	0
304eab62-c26a-4c6e-9459-34102fc5cb77	laenge	Längenberechnung	Länge wurde berechnet.	Fehler bei Längenberechnung!	wenn wert_aktivstatus = 1 wird die Länge gerundet auf wert_numerisch Nachkommastellen durch den Trigger tf_standard_before()	1	unbekannt	2024-04-17 09:39:51.969843+02	1	005	unbekannt	2024-04-17 09:39:51.969843+02	2100-01-01 00:00:00+01	2024-04-17 09:39:51.969843+02	unbekannt	2024-04-17 09:39:51.969843+02	unbekannt	00000000-0000-0000-0000-000000000003	1
0be8e376-b273-4e5f-bef0-8b3bb6dbdce1	layout	layout	Automatische Erstellung der Layoutparameter.	Fehler bei automatischer Erstellung der Layoutparameter.	wenn wert_aktivstatus = 1 wird automatische die Erstellung der Layoutparameter ermittelt und geschrieben.	0	unbekannt	2025-02-19 14:33:34.030933+01	1	011	unbekannt	2025-02-19 14:33:34.030933+01	2100-01-01 00:00:00+01	2025-02-19 14:33:34.030933+01	unbekannt	2025-02-19 14:33:34.030933+01	unbekannt	00000000-0000-0000-0000-000000000003	1
61835e25-d205-4972-9f62-520c2f80b314	insert_werte_nach_update_beibehalten	insert_werte_nach_update_beibehalten	Werte, wie angelegt_von, angelegt_am, id, name_number usw. beibehalten wurde umgesetzt.	Fehler bei Umsetzung Werte, wie angelegt_von, angelegt_am, id, name_number usw. beibehalten.	wenn wert_aktivstatus = 1 werden statische insertwerte bei Updates automitsch beibehalten.	0	unbekannt	2025-02-17 07:20:42.504202+01	1	002	unbekannt	2025-02-17 07:20:42.504202+01	2100-01-01 00:00:00+01	2025-02-17 07:20:42.504202+01	unbekannt	2025-02-17 07:20:42.504202+01	unbekannt	00000000-0000-0000-0000-000000000003	1
cb22cf0f-ba22-4eb4-922f-2a8c72157341	aw_schachtdeckelerstellung	AW Schachtdeckel Erstellung	AW Schachtdeckel wurde erstellt.	Fehler bei AW Schachtdeckel Erstellung.	wenn wert_aktivstatus = 1 werden bei Erstellung eines Schachtes, Schachtdeckel mit erstellt.	0	unbekannt	2025-09-15 10:58:57.034159+02	0	001	unbekannt	2025-09-15 10:58:57.034159+02	2100-01-01 00:00:00+01	2025-09-15 10:58:57.034159+02	unbekannt	2025-09-15 10:58:57.034159+02	unbekannt	00000000-0000-0000-0000-000000000001	0
f320f38c-5f43-4ed9-81ea-f6a4fd43935f	label_loeschen	Label loeschen	Label wird mit Objekt geloescht.	Fehler beim Label loeschen.	wenn wert_aktivstatus = 1 werden beim loeschen das Label geloescht	0	unbekannt	2025-03-06 14:48:09.637475+01	1	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000003	0
1ee84cbf-ecf4-4325-9851-6131097e788d	aw_pkt_topologie_default_update	AW Topologieobjekterstellung	AW default Topologieobjekterstellung wurde ausgelöst.	Fehler bei der AW Topologieobjekterstellung!	wenn wert_aktivstatus = 1 wird ein AW Topologieobjekte erstellt.	0	unbekannt	2025-02-04 16:24:07.708848+01	0	008	unbekannt	2025-02-04 16:24:07.708848+01	2100-01-01 00:00:00+01	2025-02-04 16:24:07.708848+01	unbekannt	2025-02-04 16:24:07.708848+01	unbekannt	00000000-0000-0000-0000-000000000001	0
67e98080-7b71-45ca-a331-b0864887c6c5	gefaelle	Gefälleberechnung	Gefälle wurde berechnet.	Fehler bei Gefälleberechnung!	wenn wert_aktivstatus = 1 wird das Gefälle berechnet und gerundet auf wert_numerisch Nachkommastellen durch den Trigger tf_standard_before()	1	unbekannt	2024-04-17 09:39:53.515074+02	0	006	unbekannt	2024-04-17 09:39:53.515074+02	2100-01-01 00:00:00+01	2024-04-17 09:39:53.515074+02	unbekannt	2024-04-17 09:39:53.515074+02	unbekannt	00000000-0000-0000-0000-000000000001	0
4500364f-aaec-45b8-889f-74f2bffc955b	wa_pkt_topologie_v_mv_refresh	wa_pkt_topologie_v_mv Refresh	Refresh von wa_pkt_topologie_v_mv ist erfolgt.	Fehler bei Refresh von wa_pkt_topologie_v_mv.	wenn wert_aktivstatus = 1 erhält Tabelle wa_pkt_topologie_v_mv ein Update.	0	unbekannt	2025-10-07 08:17:37.09565+02	0	001	unbekannt	2025-10-07 08:17:37.09565+02	2100-01-01 00:00:00+01	2025-10-07 08:17:37.09565+02	unbekannt	2025-10-07 08:17:37.09565+02	unbekannt	00000000-0000-0000-0000-000000000001	0
5e4f3006-7aea-43eb-929a-82557e4a70cf	ta_lin_schutzrohr_punkte	ta_lin_schutzrohr_punkte	ta_lin_schutzrohr_punkte	Fehler bei Berechnung des AW Konnektors!	wenn wert_aktivstatus = 1 wird der Konnektor für AL berechnet	0	unbekannt	2025-02-11 15:24:36.870788+01	0	009	unbekannt	2025-02-11 15:24:36.870788+01	2100-01-01 00:00:00+01	2025-02-11 15:24:36.870788+01	unbekannt	2025-02-11 15:24:36.870788+01	unbekannt	00000000-0000-0000-0000-000000000001	0
03ce53de-1c5b-4c7f-957d-5004b54fc027	name_number	name_number	name_number wurde geschrieben.	Fehler bei Zuweisung der name_number!	wenn wert_aktivstatus = 1 wird die name_number bei insert, update und delete entsprechend durch den Trigger tf_standard_before()  geführt	1	unbekannt	2024-11-05 23:32:59.696027+01	1	003	unbekannt	2024-11-05 23:32:59.696027+01	2100-01-01 00:00:00+01	2024-11-05 23:32:59.696027+01	unbekannt	2024-11-05 23:32:59.696027+01	unbekannt	00000000-0000-0000-0000-000000000003	0
d10530e0-38fd-4e3c-9124-58488fd2b392	wa_pkt_topologie_default_insert	WA Auswahlknoten	WA Auswahlknoten wurden erstellt.	Fehler bei Erstellung der WA Auswahlknoten!	wenn wert_aktivstatus = 1 werden Knoten zur Erstellung der WA Topologie erstellt.	0	unbekannt	2025-03-06 14:48:09.637475+01	1	001	unbekannt	2025-03-06 14:48:09.637475+01	2100-01-01 00:00:00+01	2025-03-06 14:48:09.637475+01	unbekannt	2025-03-06 14:48:09.637475+01	unbekannt	00000000-0000-0000-0000-000000000003	0
3b27ae24-8fdc-4c5e-bc8c-3a9349ebc313	aw_schachtdeckelerstellung	AW Schachtdeckel Erstellung	AW Schachtdeckel wurde erstellt.	Fehler bei AW Schachtdeckel Erstellung.	wenn wert_aktivstatus = 1 werden bei Erstellung eines Schachtes, Schachtdeckel mit erstellt.	0	unbekannt	2025-09-15 11:00:48.533201+02	1	001	unbekannt	2025-09-15 11:00:48.533201+02	2100-01-01 00:00:00+01	2025-09-15 11:00:48.533201+02	unbekannt	2025-09-15 11:00:48.533201+02	unbekannt	00000000-0000-0000-0000-000000000003	0
bbfc0451-f5d9-4188-a259-9d3598359263	aw_schacht2deckel_update	AW Schacht 2 Deckel	AW Schacht Attribute wurden auf Deckel übertragen.	Fehler bei Übertragung der AW Schacht Attribute zum Deckel.	wenn wert_aktivstatus = 1 werden Attribute vom AW Schacht auf den Schachtdeckel übertragen.	0	unbekannt	2025-09-17 14:56:40.634149+02	1	001	unbekannt	2025-09-17 14:56:40.634149+02	2100-01-01 00:00:00+01	2025-09-17 14:56:40.634149+02	unbekannt	2025-09-17 14:56:40.634149+02	unbekannt	00000000-0000-0000-0000-000000000003	0
5432307f-641b-4e72-a496-01fd1c24ddd0	dokument_unterstuetzung	dokument_unterstuetzung	dokument_unterstuetzung wurde ausgelöst.	Fehler bei dokument_unterstuetzung!	wenn wert_aktivstatus = 1 wird dokument_unterstuetzung aktiviert.	0	unbekannt	2025-08-04 22:03:00.430803+02	1	001	unbekannt	2025-08-04 22:03:00.430803+02	2100-01-01 00:00:00+01	2025-08-04 22:03:00.430803+02	unbekannt	2025-08-04 22:03:00.430803+02	unbekannt	00000000-0000-0000-0000-000000000003	0
\.


--
-- TOC entry 81953 (class 2606 OID 39687239)
-- Name: admin_projekt_parameter ck_admin_projekt_parameter_kurztext_id_st_vw_projekt; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_projekt_parameter
    ADD CONSTRAINT ck_admin_projekt_parameter_kurztext_id_st_vw_projekt UNIQUE (kurztext, id_st_vw_projekt);


--
-- TOC entry 81956 (class 2606 OID 39687243)
-- Name: admin_projekt_parameter pk_admin_projekt_parameter; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_projekt_parameter
    ADD CONSTRAINT pk_admin_projekt_parameter PRIMARY KEY (id);


--
-- TOC entry 81954 (class 1259 OID 57121749)
-- Name: idx_admin_projekt_parameter_kurztext_projekt; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_admin_projekt_parameter_kurztext_projekt ON verundentsorgung.admin_projekt_parameter USING btree (kurztext, id_st_vw_projekt);


--
-- TOC entry 81957 (class 2606 OID 39688463)
-- Name: admin_projekt_parameter fk_admin_projekt_parameter_id_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_projekt_parameter
    ADD CONSTRAINT fk_admin_projekt_parameter_id_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:03

--
-- PostgreSQL database dump complete
--

