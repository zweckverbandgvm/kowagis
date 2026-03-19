--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:12:51

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
-- TOC entry 21277 (class 1259 OID 50119745)
-- Name: admin_benutzergruppe; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.admin_benutzergruppe (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    benutzergruppe text DEFAULT 'unbekannt'::text NOT NULL,
    beschreibung text DEFAULT 'unbekannt'::text NOT NULL,
    gueltig_von timestamp with time zone DEFAULT now() NOT NULL,
    gueltig_bis timestamp with time zone DEFAULT '2100-01-01 00:00:00+01'::timestamp with time zone NOT NULL,
    angelegt_am timestamp with time zone DEFAULT now() NOT NULL,
    angelegt_von text DEFAULT 'unbekannt'::text NOT NULL,
    geaendert_am timestamp with time zone DEFAULT now() NOT NULL,
    geaendert_von text DEFAULT 'unbekannt'::text NOT NULL,
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL
);


--
-- TOC entry 83794 (class 0 OID 0)
-- Dependencies: 21277
-- Name: TABLE admin_benutzergruppe; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.admin_benutzergruppe IS 'Admin Benutzergruppe';


--
-- TOC entry 83795 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.id IS '  ';


--
-- TOC entry 83796 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.benutzergruppe; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.benutzergruppe IS 'Benutzergruppe ';


--
-- TOC entry 83797 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.beschreibung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.beschreibung IS 'Beschreibung ';


--
-- TOC entry 83798 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83799 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83800 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83801 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21277
-- Name: COLUMN admin_benutzergruppe.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.admin_benutzergruppe.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83788 (class 0 OID 50119745)
-- Dependencies: 21277
-- Data for Name: admin_benutzergruppe; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.admin_benutzergruppe (id, benutzergruppe, beschreibung, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
9750204a-cc40-41e9-b2db-107681164770	verundentsorgung_viewer_zkwal_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
21574301-d47f-4ba7-9fa1-48ef4904ebeb	verundentsorgung_erfasser_aw_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
e287b4ce-df07-4b0d-bcec-93bae98f5768	verundentsorgung_viewer_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
58eb42ed-ed16-4e2a-90d3-88e1cf4f0197	verundentsorgung_erfasser_so_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
20bf2ffd-c268-4e0b-8571-8914f5a8233d	verundentsorgung_erfasser_ta_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
a17076bf-159b-4472-b3c5-1f14877fd73f	verundentsorgung_viewer_zvwis_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
f855e317-ff65-4e93-a26c-14bc592e3a86	verundentsorgung_erfasser_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
86f27f3d-aad6-4b4a-aef2-f77ab06adbf8	verundentsorgung_erfasser_wa_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
e3f1409c-6492-4a50-b1fa-036a76e48b5e	verundentsorgung_erfasser_al_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
425e3d95-3381-47ed-90f6-d87f54f0a5da	verundentsorgung_erfasser_ka_zvg_gruppe	unbekannt	2025-08-14 09:25:04.309238+02	2100-01-01 00:00:00+01	2025-08-14 09:25:04.309238+02	unbekannt	2025-08-14 09:25:04.309238+02	unbekannt	00000000-0000-0000-0000-000000000001
\.


--
-- TOC entry 81944 (class 2606 OID 50119762)
-- Name: admin_benutzergruppe pk_admin_benutzergruppe; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_benutzergruppe
    ADD CONSTRAINT pk_admin_benutzergruppe PRIMARY KEY (id);


--
-- TOC entry 81946 (class 2606 OID 50119764)
-- Name: admin_benutzergruppe uk1_admin_benutzergruppe; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_benutzergruppe
    ADD CONSTRAINT uk1_admin_benutzergruppe UNIQUE (benutzergruppe);


--
-- TOC entry 81947 (class 2606 OID 50119765)
-- Name: admin_benutzergruppe fk_admin_benutzergruppe_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.admin_benutzergruppe
    ADD CONSTRAINT fk_admin_benutzergruppe_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:12:52

--
-- PostgreSQL database dump complete
--

