--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:21

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
-- TOC entry 12204 (class 1259 OID 39685583)
-- Name: st_vw_schachtdeckeltyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_schachtdeckeltyp (
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
-- Dependencies: 12204
-- Name: TABLE st_vw_schachtdeckeltyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_schachtdeckeltyp IS 'Stammdaten Schachtdeckeltyp';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.id IS '  ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.ident_hist IS 'historische ID';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.langtext IS 'Langtext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12204
-- Name: COLUMN st_vw_schachtdeckeltyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_schachtdeckeltyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83795 (class 0 OID 39685583)
-- Dependencies: 12204
-- Data for Name: st_vw_schachtdeckeltyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_schachtdeckeltyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-23 10:27:15.635053+02	2100-01-01 00:00:00+01	2024-07-23 10:27:15.635053+02	unbekannt	2024-07-23 10:27:15.635053+02	unbekannt	00000000-0000-0000-0000-000000000001
f651951e-87d9-45c3-8625-da288d7cb12c	unbekannt	geschlitzter Deckel	geschlitzter Deckel	\N	001	2024-07-23 10:39:09.82907+02	2100-01-01 00:00:00+01	2024-07-23 10:39:09.82907+02	unbekannt	2024-07-23 10:39:09.82907+02	unbekannt	00000000-0000-0000-0000-000000000001
1807c18c-b292-4c2b-a8b4-659b4fa2fb09	unbekannt	Standard Deckel	Standard Deckel	\N	001	2024-07-23 10:39:09.82907+02	2100-01-01 00:00:00+01	2024-07-23 10:39:09.82907+02	unbekannt	2024-07-23 10:39:09.82907+02	unbekannt	00000000-0000-0000-0000-000000000001
504e7f87-2ddb-4bd3-b53b-0cfc6bcd21c9	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5dca85a1-edf5-4b44-8e96-4ffc94f23426	unbekannt	geschlitzter Deckel	geschlitzter Deckel	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f37cfb88-d3f5-4828-bf08-100246608755	unbekannt	Standard Deckel	Standard Deckel	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687429)
-- Name: st_vw_schachtdeckeltyp pk_st_vw_schachtdeckeltyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtdeckeltyp
    ADD CONSTRAINT pk_st_vw_schachtdeckeltyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189791)
-- Name: st_vw_schachtdeckeltyp uk3_st_vw_schachtdeckeltyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtdeckeltyp
    ADD CONSTRAINT uk3_st_vw_schachtdeckeltyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189934)
-- Name: st_vw_schachtdeckeltyp uk4_st_vw_schachtdeckeltyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_schachtdeckeltyp
    ADD CONSTRAINT uk4_st_vw_schachtdeckeltyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81951 (class 2620 OID 39687998)
-- Name: st_vw_schachtdeckeltyp tr_a_d__st_vw_schachtdeckeltyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_schachtdeckeltyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_schachtdeckeltyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81952 (class 2620 OID 39688134)
-- Name: st_vw_schachtdeckeltyp tr_a_i_or_u_or_d__st_vw_schachtdeckeltyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_schachtdeckeltyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schachtdeckeltyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81953 (class 2620 OID 39688270)
-- Name: st_vw_schachtdeckeltyp tr_a_u__st_vw_schachtdeckeltyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_schachtdeckeltyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_schachtdeckeltyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 39688408)
-- Name: st_vw_schachtdeckeltyp tr_b_i_or_u_or_d__st_vw_schachtdeckeltyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_schachtdeckeltyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_schachtdeckeltyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


-- Completed on 2026-03-18 15:15:23

--
-- PostgreSQL database dump complete
--

