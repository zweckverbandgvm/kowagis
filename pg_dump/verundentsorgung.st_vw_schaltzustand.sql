--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:30

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
-- TOC entry 12207 (class 1259 OID 39685637)
-- Name: st_vw_schaltzustand; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schaltzustand (
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
-- Dependencies: 12207
-- Name: TABLE st_vw_schaltzustand; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schaltzustand IS 'Stammdaten Schaltzustand';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12207
-- Name: COLUMN st_vw_schaltzustand.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schaltzustand.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685637)
-- Dependencies: 12207
-- Data for Name: st_vw_schaltzustand; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schaltzustand (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-07 07:48:22.082286+02	2100-01-01 00:00:00+01	2024-08-07 07:48:22.082286+02	unbekannt	2024-08-07 07:48:22.082286+02	unbekannt	00000000-0000-0000-0000-000000000001
ee5b0a3b-106b-4134-8e16-e1a099f96f10	unbekannt	geschl	geschlossen	\N	001	2024-08-07 08:05:08.293806+02	2100-01-01 00:00:00+01	2024-08-07 08:05:08.293806+02	unbekannt	2024-08-07 08:05:08.293806+02	unbekannt	00000000-0000-0000-0000-000000000001
e35551d8-893d-455e-830d-6950ef1715d7	unbekannt	offen	offen	\N	001	2024-08-07 08:05:08.293806+02	2100-01-01 00:00:00+01	2024-08-07 08:05:08.293806+02	unbekannt	2024-08-07 08:05:08.293806+02	unbekannt	00000000-0000-0000-0000-000000000001
e1b4545a-ecdb-4023-9545-42d481b72b0e	unbekannt	o	andere	\N	001	2025-02-25 09:19:18.479825+01	2100-01-01 00:00:00+01	2025-02-25 09:19:18.479825+01	unbekannt	2025-02-25 09:19:18.479825+01	unbekannt	00000000-0000-0000-0000-000000000001
cd5c7b8c-1057-45fd-afed-af4f568bba25	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b847120c-4bf2-462d-b570-67fdb58b8f0d	unbekannt	geschl	geschlossen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7141b5d9-1bf9-4d7c-b7bd-8019fc0dc1b2	unbekannt	offen	offen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
abfc3397-bae2-4336-b646-4fc804eb0593	unbekannt	o	andere	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687437)
-- Name: st_vw_schaltzustand pk_st_vw_schaltzustand; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schaltzustand
    ADD CONSTRAINT pk_st_vw_schaltzustand PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189889)
-- Name: st_vw_schaltzustand uk3_st_vw_schaltzustand_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schaltzustand
    ADD CONSTRAINT uk3_st_vw_schaltzustand_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190038)
-- Name: st_vw_schaltzustand uk4_st_vw_schaltzustand_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schaltzustand
    ADD CONSTRAINT uk4_st_vw_schaltzustand_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688002)
-- Name: st_vw_schaltzustand tr_a_d__st_vw_schaltzustand__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schaltzustand__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schaltzustand REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688138)
-- Name: st_vw_schaltzustand tr_a_i_or_u_or_d__st_vw_schaltzustand__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schaltzustand__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schaltzustand FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688274)
-- Name: st_vw_schaltzustand tr_a_u__st_vw_schaltzustand__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schaltzustand__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schaltzustand REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688412)
-- Name: st_vw_schaltzustand tr_b_i_or_u_or_d__st_vw_schaltzustand__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schaltzustand__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schaltzustand FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690273)
-- Name: st_vw_schaltzustand fk_st_vw_schaltzustand_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schaltzustand
    ADD CONSTRAINT fk_st_vw_schaltzustand_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:31

--
-- PostgreSQL database dump complete
--

