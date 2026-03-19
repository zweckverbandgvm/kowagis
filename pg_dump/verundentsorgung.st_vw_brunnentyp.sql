--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:56

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
-- TOC entry 12180 (class 1259 OID 39685153)
-- Name: st_vw_brunnentyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_brunnentyp (
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
-- Dependencies: 12180
-- Name: TABLE st_vw_brunnentyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_brunnentyp IS 'Stammdaten Brunnentyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12180
-- Name: COLUMN st_vw_brunnentyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_brunnentyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685153)
-- Dependencies: 12180
-- Data for Name: st_vw_brunnentyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_brunnentyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 10:22:32.452745+02	2100-01-01 00:00:00+01	2024-08-06 10:22:32.452745+02	unbekannt	2024-08-06 10:22:32.452745+02	unbekannt	00000000-0000-0000-0000-000000000001
31b4613a-0a81-4b03-850e-c9245442be4a	unbekannt	BRUN	Tiefbrunnen	\N	001	2024-08-06 10:28:31.094953+02	2100-01-01 00:00:00+01	2024-08-06 10:28:31.094953+02	unbekannt	2024-08-06 10:28:31.094953+02	unbekannt	00000000-0000-0000-0000-000000000001
68d7ca7d-4f41-426f-bfce-4c8740f76705	unbekannt	PEGEL	Pegel	\N	001	2024-08-06 10:28:31.094953+02	2100-01-01 00:00:00+01	2024-08-06 10:28:31.094953+02	unbekannt	2024-08-06 10:28:31.094953+02	unbekannt	00000000-0000-0000-0000-000000000001
f9cd0390-05cb-40f3-846a-2ad37c37b44a	unbekannt	VBR	Ventilbrunnen	\N	001	2024-08-06 10:28:31.094953+02	2100-01-01 00:00:00+01	2024-08-06 10:28:31.094953+02	unbekannt	2024-08-06 10:28:31.094953+02	unbekannt	00000000-0000-0000-0000-000000000001
913d8a32-796c-4398-9a04-73d59f967d41	unbekannt	ZAPF	Zapfstelle	\N	001	2024-08-06 10:28:31.094953+02	2100-01-01 00:00:00+01	2024-08-06 10:28:31.094953+02	unbekannt	2024-08-06 10:28:31.094953+02	unbekannt	00000000-0000-0000-0000-000000000001
b3a137e2-1596-4440-bff9-22e953baf617	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5b3028a5-61bc-4f43-bcea-231b681dbe11	unbekannt	BRUN	Tiefbrunnen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1f4b4ef6-1e3c-4afe-9ef1-6134a8ecf602	unbekannt	PEGEL	Pegel	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
494495b6-975c-44d2-98d3-c1ba4ea4bdee	unbekannt	VBR	Ventilbrunnen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
99d0d67d-46ab-40ff-9f27-ae21dbb2f1f6	unbekannt	ZAPF	Zapfstelle	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687379)
-- Name: st_vw_brunnentyp pk_st_vw_brunnentyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_brunnentyp
    ADD CONSTRAINT pk_st_vw_brunnentyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189831)
-- Name: st_vw_brunnentyp uk3_st_vw_brunnentyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_brunnentyp
    ADD CONSTRAINT uk3_st_vw_brunnentyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189976)
-- Name: st_vw_brunnentyp uk4_st_vw_brunnentyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_brunnentyp
    ADD CONSTRAINT uk4_st_vw_brunnentyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687973)
-- Name: st_vw_brunnentyp tr_a_d__st_vw_brunnentyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_brunnentyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_brunnentyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688109)
-- Name: st_vw_brunnentyp tr_a_i_or_u_or_d__st_vw_brunnentyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_brunnentyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_brunnentyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688245)
-- Name: st_vw_brunnentyp tr_a_u__st_vw_brunnentyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_brunnentyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_brunnentyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688383)
-- Name: st_vw_brunnentyp tr_b_i_or_u_or_d__st_vw_brunnentyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_brunnentyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_brunnentyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690148)
-- Name: st_vw_brunnentyp fk_st_vw_brunnentyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_brunnentyp
    ADD CONSTRAINT fk_st_vw_brunnentyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:58

--
-- PostgreSQL database dump complete
--

