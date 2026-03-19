--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:03

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
-- TOC entry 16382 (class 1259 OID 43990160)
-- Name: admin_symbole; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.admin_symbole (
    ogc_fid integer NOT NULL,
    zeile character varying,
    projekt character varying,
    medium character varying,
    anzeige character varying,
    symbolname character varying,
    symbolname_langtext character varying,
    objekttyp character varying,
    nutzergruppe character varying,
    objektklasse character varying,
    field_10 character varying,
    symbolname_alt character varying
);


--
-- TOC entry 83783 (class 0 OID 0)
-- Dependencies: 16382
-- Name: TABLE admin_symbole; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.admin_symbole IS 'Admin Symbole';


--
-- TOC entry 83784 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.ogc_fid; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.ogc_fid IS 'OGC FID';


--
-- TOC entry 83785 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.zeile; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.zeile IS 'Zeile ';


--
-- TOC entry 83786 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.projekt IS 'Projekt ';


--
-- TOC entry 83787 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.medium; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.medium IS 'Medium ';


--
-- TOC entry 83788 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.anzeige; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.anzeige IS 'Anzeige ';


--
-- TOC entry 83789 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.symbolname; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.symbolname IS 'Symbolname ';


--
-- TOC entry 83790 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.symbolname_langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.symbolname_langtext IS 'Symbolname langtext ';


--
-- TOC entry 83791 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.objekttyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.objekttyp IS 'Objekttyp ';


--
-- TOC entry 83792 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.nutzergruppe; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.nutzergruppe IS 'Nutzergruppe ';


--
-- TOC entry 83793 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.objektklasse; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.objektklasse IS 'Objektklasse ';


--
-- TOC entry 83794 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.field_10; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.field_10 IS 'Field 11';


--
-- TOC entry 83795 (class 0 OID 0)
-- Dependencies: 16382
-- Name: COLUMN admin_symbole.symbolname_alt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_symbole.symbolname_alt IS 'Symbolname Alt ';


--
-- TOC entry 16381 (class 1259 OID 43990158)
-- Name: admin_symbole_ogc_fid_seq; Type: SEQUENCE; Schema: verundentsorgung; Owner: -
--

CREATE SEQUENCE verundentsorgung.admin_symbole_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 83796 (class 0 OID 0)
-- Dependencies: 16381
-- Name: admin_symbole_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: verundentsorgung; Owner: -
--

ALTER SEQUENCE verundentsorgung.admin_symbole_ogc_fid_seq OWNED BY verundentsorgung.admin_symbole.ogc_fid;


--
-- TOC entry 81933 (class 2604 OID 43990163)
-- Name: admin_symbole ogc_fid; Type: DEFAULT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_symbole ALTER COLUMN ogc_fid SET DEFAULT nextval('verundentsorgung.admin_symbole_ogc_fid_seq'::regclass);


--
-- TOC entry 83777 (class 0 OID 43990160)
-- Dependencies: 16382
-- Data for Name: admin_symbole; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.admin_symbole (ogc_fid, zeile, projekt, medium, anzeige, symbolname, symbolname_langtext, objekttyp, nutzergruppe, objektklasse, field_10, symbolname_alt) FROM stdin;
1	1	ZVG	WW		BEABSCH	Benzinabscheider	st_vw_abscheidertyp	ZV-Grevesmühlen	aw_pkt_abscheider		BEABSCH
2	2	ZVG	WW		FAABSCH	Farbmittelabscheider	st_vw_abscheidertyp	ZV-Grevesmühlen	aw_pkt_abscheider		FAABSCH
3	3	ZVG	WW		FEABSCH	Fettabscheider	st_vw_abscheidertyp	ZV-Grevesmühlen	aw_pkt_abscheider		FEABSCH
4	4	ZVG	WW		KOALABSCH	Koaleszenzabscheider	st_vw_abscheidertyp	ZV-Grevesmühlen	aw_pkt_abscheider		KOALABSCH
5	5	ZVG	WW		LFABSCH	Leichtflüssigkeitsabscheider	st_vw_abscheidertyp	ZV-Grevesmühlen	aw_pkt_abscheider		LFABSCH
6	6	ZVG	WW		STABSCH	Stärkemittelabscheider	st_vw_abscheidertyp	ZV-Grevesmühlen	aw_pkt_abscheider		STABSCH
7	7	ZVG	WW		AUSL	Auslauf	st_vw_auslautyp	ZV-Grevesmühlen	aw_pkt_auslauf		AUSLAUF
8	8	ZVG	WW		RHB	Rückhaltebecken	st_vw_beckentyp	ZV-Grevesmühlen	aw_pkt_becken		RRB
9	9	ZVG	WW		TEICH	Teich	st_vw_beckentyp	ZV-Grevesmühlen	aw_pkt_becken		TEI
10	10	ZVG	WW		DECK	Schachtdeckel	st_vw_deckeltyp	ZV-Grevesmühlen	aw_pkt_schachtdeckel		Standard Deckel
18	18	ZVG	WW		KKA	Abflusslose Grube	st_vw_klaeranlagetyp	ZV-Grevesmühlen	aw_pkt_klaeranlage		AGRU
19	19	ZVG	WW		KA	Kläranlage	st_vw_klaeranlagetyp	ZV-Grevesmühlen	aw_pkt_klaeranlage		KA
20	20	ZVG	WW		KKA	Klärgrube	st_vw_klaeranlagetyp	ZV-Grevesmühlen	aw_pkt_klaeranlage		KLG
21	21	ZVG	WW		KKA	Kleinkläranlage	st_vw_klaeranlagetyp	ZV-Grevesmühlen	aw_pkt_klaeranlage		KKA
22	22	ZVG	WW		KKA	Vorklärung	st_vw_klaeranlagetyp	ZV-Grevesmühlen	aw_pkt_klaeranlage		VORK
23	23	ZVG	WW		KLT	Klärtank 	st_vw_klaertanktyp	ZV-Grevesmühlen	aw_pkt_klaertank		KLT
24	24	ZVG	WW		SFC	Sammelbehälter für Chemietoilette	st_vw_klaertanktyp	ZV-Grevesmühlen	aw_pkt_klaertank		SFC
25	25	ZVG	WW		APW	Abwasserpumpwerk	st_vw_pumpwerktyp	ZV-Grevesmühlen	aw_pkt_pumpwerk		APW
26	26	ZVG	WW		PW	Hauptpumpwerk	st_vw_pumpwerktyp	ZV-Grevesmühlen	aw_pkt_pumpwerk		PW
27	27	ZVG	WW		HaPW	Hauspumpwerk	st_vw_pumpwerktyp	ZV-Grevesmühlen	aw_pkt_pumpwerk		HaPW
28	28	ZVG	WW		RPW	Regenwasserpumpwerk	st_vw_pumpwerktyp	ZV-Grevesmühlen	aw_pkt_pumpwerk		RPW
34	34	ZVG	WW		RIPFEIDR	Vakuumwasserrichtungspfeil	st_vw_fliesspfeiltyp	ZV-Grevesmühlen	aw_pkt_fliessrichtungspfeil		RIPFEIDR
12	12	ZVG	WW		ZS	Zuleitungsstelle	st_vw_einleitstelletyp	ZV-Grevesmühlen	aw_pkt_einleitungsstellen		ZS
13	13	ZVG	WW		EINL	Einlauf	st_vw_einleitstelletyp	ZV-Grevesmühlen	aw_pkt_einleitungsstellen		EINL
14	14	ZVG	WW		EG1O	Einleitstelle in das Gewässer 1. Ordnung	st_vw_einleitstelletyp	ZV-Grevesmühlen	aw_pkt_einleitungsstellen		EG1O
15	15	ZVG	WW		EG2O	Einleitstelle in das Gewässer 2. Ordnung	st_vw_einleitstelletyp	ZV-Grevesmühlen	aw_pkt_einleitungsstellen		EG2O
29	29	ZVG	WW		RIPFEIDR	Druckwasserrichtungspfeil	st_vw_fliesspfeiltyp	ZV-Grevesmühlen	aw_pkt_fliessrichtungspfeil		RIPFEIDR
30	30	ZVG	WW		RIPFEIL	Mischwasserrichtungspfeil	st_vw_fliesspfeiltyp	ZV-Grevesmühlen	aw_pkt_fliessrichtungspfeil		RIPFEIL
31	31	ZVG	WW		RIPFEIDR	Regenwasserdruckrichtungspfeil	st_vw_fliesspfeiltyp	ZV-Grevesmühlen	aw_pkt_fliessrichtungspfeil		RIPFEIDR
32	32	ZVG	WW		RIPFEIL	Regenwasserrichtungspfeil	st_vw_fliesspfeiltyp	ZV-Grevesmühlen	aw_pkt_fliessrichtungspfeil		RIPFEIL
33	33	ZVG	WW		RIPFEIL	Schmutzwasserrichtungspfeil	st_vw_fliesspfeiltyp	ZV-Grevesmühlen	aw_pkt_fliessrichtungspfeil		RIPFEIL
16	16	ZVG	WW		ESGW	Einleitstelle in das Grundwasser	st_vw_einleitstelletyp	ZV-Grevesmühlen	aw_pkt_einleitungsstellen		ESGW
17	17	ZVG	WW		ESOG	Einleitstelle in ein oberirdisches Gewässer	st_vw_einleitstelletyp	ZV-Grevesmühlen	aw_pkt_einleitungsstellen		ESOG
35	35	ZVG	WW		ASS	Absturzschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		ASS
53	53	ZVG	WW		BENTL	Be- und Entlüftung_aw	st_vw_sonstige_anlagetyp	ZV-Grevesmühlen	aw_pkt_sonstige_anlage		EE
48	48	ZVG	WW		SCHI	Schieber_aw	st_vw_schiebertyp	ZV-Grevesmühlen	aw_pkt_schieber		SCHI
50	50	ZVG	WW		SCHRO	Schutzrohr	st_vw_schutzrohrtyp	ZV-Grevesmühlen	aw_pkt_schutzrohr		MAROA
51	51	ZVG	WW		STEINS	Steinschlucker	st_vw_sonstige_anlagetyp	ZV-Grevesmühlen	aw_pkt_sonstige_anlage		DRUN
52	52	ZVG	WW		WS	Wasserspiegel	st_vw_sonstige_anlagetyp	ZV-Grevesmühlen	aw_pkt_sonstige_anlage		WSP
56	56	ZVG	WW		SPHY	Spühlhydrant	st_vw_spuehlhydrant	ZV-Grevesmühlen	aw_pkt_spuehlhydrant		SPHY
49	49	ZVG	WW		VA	Ventilanbohrschelle_aw	st_vw_schiebertyp	ZV-Grevesmühlen	aw_pkt_schieber		HAPL
36	36	ZVG	WW		DUSCHA	Druckunterbrecherschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		DUS
37	37	ZVG	WW		GASCHA	Grundstückskontrollschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		KSHL1
108	107	ZVG	WA		MUFFE	Muffe_wa	st_vw_sonstige_armaturtyp	ZV-Grevesmühlen	wa_pkt_armatur		MUFFE
109	108	ZVG	WA		KUPP	Kupplung	st_vw_sonstige_armaturtyp	ZV-Grevesmühlen	wa_pkt_armatur		KUPP
110	109	ZVG	WA		FROK	Froschklappe	st_vw_sonstige_armaturtyp	ZV-Grevesmühlen	wa_pkt_armatur		FROK
111	110	ZVG	WA		BLFLA	Blindflansch	st_vw_sonstige_armaturtyp	ZV-Grevesmühlen	wa_pkt_armatur		X
89	88	ZVG	WA		HAP	Hausanschlusspunkt	wa_pkt_hausanschlusspunkt	ZV-Grevesmühlen	wa_pkt_hausanschlusspunkt		WHS
90	89	ZVG	WA		VA	Ventilanbohrschelle_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		HAPL
11	11	ZVG	WW		DUEK	Düker	st_vw_drossel_duekertyp	ZV-Grevesmühlen	aw_pkt_dueker		DUEK
55	55	ZVG	WW		LWES	Löschwasserentnahmestelle	st_vw_speichereinrichtungstyp	ZV-Grevesmühlen	aw_pkt_loeschwasserentnahmestelle		offenes Gewässer
99	98	ZVG	WA		UFHY	Unterflurhydrant_wa	st_vw_hydranttyp	ZV-Grevesmühlen	wa_pkt_hydrant		UADR
100	99	ZVG	WA		OFHY	Oberflurhydrant_wa	st_vw_hydranttyp	ZV-Grevesmühlen	wa_pkt_hydrant		UEAR
101	100	ZVG	WA		GAHY	Gartenhydrant_wa	st_vw_hydranttyp	ZV-Grevesmühlen	wa_pkt_hydrant		GAAR
103	102	ZVG	WA		BRUN	Brunnen	st_vw_brunnentyp	ZV-Grevesmühlen	wa_pkt_brunnen		BRUN
104	103	ZVG	WA		VBRUN	Ventilbrunnen	st_vw_brunnentyp	ZV-Grevesmühlen	wa_pkt_brunnen		VBR
105	104	ZVG	WA		ZAPF	Zapfstelle	st_vw_brunnentyp	ZV-Grevesmühlen	wa_pkt_brunnen		ZAPF
106	105	ZVG	WA		ENTL	Entleerung_wa	st_vw_entlueftungstyp	ZV-Grevesmühlen	wa_pkt_entlueftung		ENTL
107	106	ZVG	WA		BENTL	Be- und Entlueftung_wa	st_vw_entlueftungstyp	ZV-Grevesmühlen	wa_pkt_entlueftung		EE
112	111	ZVG	WA		WZ	Wasserzähler	st_vw_wasserzaehlertyp	ZV-Grevesmühlen	wa_pkt_wasserzaehler		ZWAS
113	112	ZVG	WA		IDM	Distiktmessung	st_vw_wasserzaehlertyp	ZV-Grevesmühlen	wa_pkt_wasserzaehler		ZWSD
114	113	ZVG	WA		BWZ	Bauwasserzaehler	st_vw_wasserzaehlertyp	ZV-Grevesmühlen	wa_pkt_wasserzaehler		BWZ
117	116	ZVG	WA		SCHRO	Schutzrohr	st_vw_schutzrohrtyp	ZV-Grevesmühlen	wa_pkt_schutzrohr		MAROA
118	117	ZVG	WA		DUEK	Düker	st_vw_verschiedenestyp	ZV-Grevesmühlen	wa_pkt_verschiedenes		DUEK
119	118	ZVG	WA		MP	Markierungspfosten	st_vw_verschiedenestyp	ZV-Grevesmühlen	wa_pkt_verschiedenes		MP
121	120	ZVG	WA		WW	Wasserwerk	wa_pkt_wasserwerk	ZV-Grevesmühlen	wa_pkt_wasserwerk		WW
123	122	ZVG	WA		DS	Druckstation	wa_pkt_druckstation	ZV-Grevesmühlen	wa_pkt_druckstation		DS
120	119	ZVG	WA		SCHA	Schacht_wa	st_vw_schacht_typ	ZV-Grevesmühlen	wa_pkt_schacht		3SCHA
83	82	ZVG	WA		NK	Netzknoten_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_verbindungen		SG
84	83	ZVG	WA		TPK	Trassenpunkt_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_verbindungen		TPK2
85	84	ZVG	WA		UEB	Übergang_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_verbindungen		UE
87	86	ZVG	WA		LEIT	Leitungsende_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_verbindungen		LEIT
88	87	ZVG	WA		ETAGE	Etage_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_verbindungen		ETAGE
134	133	ZVG	FW		NK	Netzknoten_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		NK
135	134	ZVG	FW		TPK	Trassenpunkt_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		TPK
136	135	ZVG	FW		UEB	Übergang_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		UEB
137	136	ZVG	FW		ABZW	Abzweig_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		ABZW
138	137	ZVG	FW		MUFFE	Muffe_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		MUFFE
146	145	ZVG	FW		HAP	Hausanschlusspunkt_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		HAP
139	138	ZVG	FW		ENDK	Endkappe_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		ENDK
140	139	ZVG	FW		LEIT	Leitungsende_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		LEIT
141	140	ZVG	FW		SCHRO	Schutzrohr_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		MAROA
142	141	ZVG	FW		BENTL	Be- und Entlüftung_fw	st_vw_entlueftungstyp	ZV-Grevesmühlen	fw_pkt_netzknoten		EE
143	142	ZVG	FW		ENTL	Entleerung_fw	st_vw_entlueftungstyp	ZV-Grevesmühlen	fw_pkt_netzknoten		ENTL
147	146	ZVG	FW		SCHI	Schieber_fw	st_vw_fernwaermenetzknotentyp	ZV-Grevesmühlen	fw_pkt_netzknoten		SCHI
148	147	ZVG	FW		SOARM	sonstige Armatur_fw	st_vw_sonstige_armaturtyp	ZV-Grevesmühlen	fw_pkt_netzknoten		SOARM
149	148	ZVG	FW		BAUW	Bauwerk_fw	st_vw_bauwerktyp	ZV-Grevesmühlen	fw_pkt_netzknoten		BAUW
57	57	ZVG	WW		ABST	Absturz (außenliegend)	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABST
58	58	ZVG	WW		SPKT	Scheitelpunkt	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		SPKT
59	59	ZVG	WW		ABOLRS	Abzweig beidseitig Scheitel	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOLRS
60	60	ZVG	WW		ABOL	Abzweig oben links	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOL1
61	61	ZVG	WW		ABOL1S	Abzweig oben links Scheitel	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOL1S
62	62	ZVG	WW		ABOL1SD	Abzweig oben links Scheitel verschlossen	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOL1SD
63	63	ZVG	WW		ABOL1U	Abzweig oben links unbekannter Verlauf	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOL1U
102	101	ZVG	WA		PUMP	Pumpe	st_vw_pumptyp	ZV-Grevesmühlen	wa_pkt_pumpwerk		PUMP
124	123	ZVG	WA		SCHADEN	Schaden	wa_pkt_wasserschaden	ZV-Grevesmühlen	wa_pkt_wasserschaden		ROHRS
98	97	ZVG	WA		TREMOS	Trennschieber mit Motor_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		TREMOS
86	85	ZVG	WA		ENDK_WA	Endkappe_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_verbindungen		ENDK
64	64	ZVG	WW		ABOL1D	Abzweig oben links verschlossen	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOL1D
65	65	ZVG	WW		ABOR	Abzweig oben rechts	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOR1
66	66	ZVG	WW		ABOR1S	Abzweig oben rechts Scheitel	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOR1S
67	67	ZVG	WW		ABOR1SD	Abzweig oben rechts Scheitel verschlossen	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOR1SD
68	68	ZVG	WW		ABOR1U	Abzweig oben rechts unbekannter Verlauf	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOR1U
69	69	ZVG	WW		ABOR1D	Abzweig oben rechts verschlossen	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ABOR1D
70	70	ZVG	WW		IDM	Durchflussmessung_IDM	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		IDM
71	71	ZVG	WW		DUFM	Durchflussmessung	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		DUFM
116	115	ZVG	WA		SIVE	Sicherheitsventil	st_vw_druckminderertyp	ZV-Grevesmühlen	wa_pkt_druckminderer		SIVE
144	143	ZVG	FW		DRMIN	Druckminderung_fw	st_vw_druckminderertyp	ZV-Grevesmühlen	fw_pkt_netzknoten		DRMIN
115	114	ZVG	WA		DRMIN	Druckminderung	st_vw_druckminderertyp	ZV-Grevesmühlen	wa_pkt_druckminderer		DREG
145	144	ZVG	FW		SIVE	Sicherheitsventil_fw	st_vw_druckminderertyp	ZV-Grevesmühlen	fw_pkt_netzknoten		SIVE
72	71	ZVG	WW		ENDK	Endkappe_aw	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ENDK
73	72	ZVG	WW		ETAGE	Etage_aw	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		ETAGE
74	73	ZVG	WW		MUFFE	Muffe_aw	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		MUFFE
75	74	ZVG	WW		NK	Netzknoten_aw	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		NK
76	75	ZVG	WW		RFR	Regenfallrohr	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		RFR
77	76	ZVG	WW		REVI	Revisionsklappe, - Öffnung	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		REVI
78	77	ZVG	WW		RUEKLA	Rückschlagklappe	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		RSCH
79	78	ZVG	WW		SE	Straßeneinlauf	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		SEINL1
80	79	ZVG	WW		TPK	Trassenpunkt_aw	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		TPK
81	80	ZVG	WW		UEB	Übergang_aw	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		UEB
82	81	ZVG	WW		WASS	Wasserstopper	st_vw_verbindungstyp	ZV-Grevesmühlen	aw_pkt_verbindungen		WASS
38	38	ZVG	WW		KSCHA	Kombinationsschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		KK
40	40	ZVG	WW		RSCHA	Reinigungsschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		RSHA1
41	41	ZVG	WW		RIGO	Rigole	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		MURI
42	42	ZVG	WW		SF	Sandfangschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		SF
43	43	ZVG	WW		SISCHA	Sickerschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		SIS
44	44	ZVG	WW		SCHA	Standardschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		3SCHA
45	45	ZVG	WW		VSCHA	Vakuumschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		VAS
46	46	ZVG	WW		VDSCHA	verdeckter Schacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		VDSCHA
39	39	ZVG	WW		PUSCHA	Pumpschacht	st_vw_schacht_typ	ZV-Grevesmühlen	aw_pkt_schacht		PUS
122	121	ZVG	WA		TANK	Wasserspeicher	wa_pkt_wasserspeicher	ZV-Grevesmühlen	wa_pkt_behaelter		TANK
150	\N	ZVG	WA	\N	PEGEL	PEGEL	wa_pkt_brunnentyp	ZV-Grevesmühlen	wa_pkt_brunnen	\N	PEGEL
151		ZVG	WA		DECK	Schachtdeckel	st_vw_deckeltyp	ZV-Grevesmühlen	wa_pkt_schachtdeckel		Standard Deckel
47	47	ZVG	WW		SCHADEN	Schaden	aw_pkt_abwasserschaden	ZV-Grevesmühlen	aw_pkt_abwasserschaden		ROHRS
95	94	ZVG	WA		HASOG	Hausanschlussschieber ohne Gestänge_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		HASOG
91	90	ZVG	WA		VAOG	Ventilanbohrschelle ohne Gestänge_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		VAOG
92	91	ZVG	WA		HLS	Schieber_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		HLS
93	92	ZVG	WA		HLSOG	Schieber ohne Gestänge_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		HLSOG
94	93	ZVG	WA		HAS	Hausanschlussschieber_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		HAS
96	95	ZVG	WA		MOS	Motorschieber_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		MOS
97	96	ZVG	WA		TRES	Trennschieber_wa	st_vw_schiebertyp	ZV-Grevesmühlen	wa_pkt_schieber		TRES
54	54	ZVG	WW		ENTL	Entleerung_aw	st_vw_sonstige_anlagetyp	ZV-Grevesmühlen	aw_pkt_sonstige_anlage		ENT
125	124	ZVG	KA		NK	Netzknoten_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		NK
126	125	ZVG	KA		TPK	Trassenpunkt_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		TPK2
127	126	ZVG	KA		MUFFE	Muffe_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		MUFFE
128	127	ZVG	KA		TRA	Trafo	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		TRA
129	128	ZVG	KA		MESS	Messeinrichtung	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		MESS
130	129	ZVG	KA		EVU	EVU Zählersäule	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		EVU
131	130	ZVG	KA		SSC	Schaltschrank	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		SSC
160	124	ZVG	TA		NK	Netzknoten_ta	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		NK
133	132	ZVG	KA		SCHA	Schacht_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_kabelnetzknoten		3SCHA
132	131	ZVG	KA		SCHRO	Schutzrohr_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		MAROA
152	125	ZVG	KA		TPK	Trassenpunkt_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		TPK2
153	124	ZVG	KA		NK	Netzknoten_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		NK
154	126	ZVG	KA		MUFFE	Muffe_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		MUFFE
155	127	ZVG	KA		TRA	Trafo	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		TRA
156	128	ZVG	KA		MESS	Messeinrichtung	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		MESS
157	129	ZVG	KA		EVU	EVU Zählersäule	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		EVU
158	130	ZVG	KA		SSC	Schaltschrank	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		SSC
159	132	ZVG	KA		SCHA	Schacht_ka	st_vw_bauteil	ZV-Grevesmühlen	ka_pkt_schutzrohr		3SCHA
161	125	ZVG	TA		TPK	Trassenpunkt_ta	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		TPK2
162	126	ZVG	TA		MUFFE	Muffe_ta	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		MUFFE
163	127	ZVG	TA		TRA	Trafo	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		TRA
164	128	ZVG	TA		MESS	Messeinrichtung	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		MESS
165	129	ZVG	TA		EVU	EVU Zählersäule	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		EVU
166	130	ZVG	TA		SSC	Schaltschrank	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		SSC
167	132	ZVG	TA		SCHA	Schacht_ta	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten		3SCHA
168	82	ZVG	WA		NK	Netzknoten_wa	st_vw_verbindungstyp	ZV-Grevesmühlen	wa_pkt_beprobungspunkt		SG
169	\N	ZVG	TA	\N	SCHI	SCHIEBER	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten	\N	SCHIEBER
170	\N	ZVG	TA	\N	LAMPE	LAMPE	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten	\N	LAMPE
171	\N	ZVG	TA	\N	LAST	LAST	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten	\N	LAST
172	\N	ZVG	TA	\N	IDM	Messeinrichtung	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten	\N	IDM
173	\N	ZVG	TA	\N	UEB	Übergang	st_vw_bauteil	ZV-Grevesmühlen	ta_pkt_netzknoten	\N	UEB
174		ZVG	TA		SCHRO	Schutzrohr	st_vw_verwendung	ZV-Grevesmühlen	ta_pkt_schutzrohr		MAROA
\.


--
-- TOC entry 83797 (class 0 OID 0)
-- Dependencies: 16381
-- Name: admin_symbole_ogc_fid_seq; Type: SEQUENCE SET; Schema: verundentsorgung; Owner: -
--

SELECT pg_catalog.setval('verundentsorgung.admin_symbole_ogc_fid_seq', 174, true);


--
-- TOC entry 81935 (class 2606 OID 43990168)
-- Name: admin_symbole admin_symbole_pkey; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_symbole
    ADD CONSTRAINT admin_symbole_pkey PRIMARY KEY (ogc_fid);


-- Completed on 2026-03-18 15:13:05

--
-- PostgreSQL database dump complete
--

