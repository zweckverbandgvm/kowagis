--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:15

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
-- TOC entry 21427 (class 1259 OID 52189607)
-- Name: st_vw_projektfilter; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_projektfilter (
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
-- Dependencies: 21427
-- Name: TABLE st_vw_projektfilter; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_projektfilter IS 'Stammdaten Projektfilter';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 21427
-- Name: COLUMN st_vw_projektfilter.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projektfilter.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 52189607)
-- Dependencies: 21427
-- Data for Name: st_vw_projektfilter; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_projektfilter (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
1778f8e9-e810-42f2-b76b-fea613bbec6a	unbekannt	ZVG Projekte Amt Schönberger Land	Amt Schönberger Land	\N	001	2025-09-15 08:17:06.104014+02	2100-01-01 00:00:00+01	2025-09-15 08:17:06.104014+02	unbekannt	2025-09-15 08:17:06.104014+02	unbekannt	00000000-0000-0000-0000-000000000001
c844e787-10e9-41de-9582-1d0ad0056689	unbekannt	ZVG Projekte alle	Amt Grevesmühlen Land|Stadt Grevesmühlen|Amt Schönberger Land|Amt Klützer Winkel	\N	001	2025-09-15 08:17:06.080092+02	2100-01-01 00:00:00+01	2025-09-15 08:17:06.080092+02	unbekannt	2025-09-15 08:17:06.080092+02	unbekannt	00000000-0000-0000-0000-000000000001
b3801008-9729-4d1e-a097-5e82ee86ee02	unbekannt	ZVG Projekte Amt Klützer Winkel	Amt Klützer Winkel	\N	001	2025-09-15 08:17:06.097925+02	2100-01-01 00:00:00+01	2025-09-15 08:17:06.097925+02	unbekannt	2025-09-15 08:17:06.097925+02	unbekannt	00000000-0000-0000-0000-000000000001
6956fa11-86f6-432e-b2fa-4c14150e451d	unbekannt	ZVG Projekte Amt Grevesmühlen Land	Amt Grevesmühlen Land	\N	001	2025-09-15 08:17:06.100123+02	2100-01-01 00:00:00+01	2025-09-15 08:17:06.100123+02	unbekannt	2025-09-15 08:17:06.100123+02	unbekannt	00000000-0000-0000-0000-000000000001
5c256331-99d7-4835-9782-f6f8a3c49ba9	unbekannt	ZVG Projekte Stadt Grevesmühlen	Stadt Grevesmühlen	\N	001	2025-09-15 08:17:06.102159+02	2100-01-01 00:00:00+01	2025-09-15 08:17:06.102159+02	unbekannt	2025-09-15 08:17:06.102159+02	unbekannt	00000000-0000-0000-0000-000000000001
aa44ae8e-2205-46ee-9113-1a1c5b746637	unbekannt	ZVG Projekte Amt VG Grevesmühlen	Amt Grevesmühlen Land|Stadt Grevesmühlen	\N	001	2025-09-15 08:41:49.331384+02	2100-01-01 00:00:00+01	2025-09-15 08:41:49.331384+02	unbekannt	2025-09-15 08:41:49.331384+02	unbekannt	00000000-0000-0000-0000-000000000001
086f6e56-a8fb-45e7-b06c-aaa38fd98800	unbekannt	ZKWAL Grabow	Grabow	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
79ae29ac-30e3-40fb-819c-a2b90fe2b49e	unbekannt	ZKWAL Dömitz-Malliß	Dömitz-Malliß	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a6922c42-d3e9-4996-be79-1bd74ca7a2e9	unbekannt	ZKWAL Ludwigslust-Land	Ludwigslust-Land	\N	001	2026-01-20 07:34:50.863635+01	2100-01-01 00:00:00+01	2026-01-20 07:34:50.863635+01	unbekannt	2026-01-20 07:34:50.863635+01	unbekannt	00000000-0000-0000-0000-000000000003
39343129-1bb8-4477-b24d-c29f99a7283d	unbekannt	ZKWAL Neustadt-Glewe	Neustadt-Glewe	\N	001	2026-01-20 07:34:50.878418+01	2100-01-01 00:00:00+01	2026-01-20 07:34:50.878418+01	unbekannt	2026-01-20 07:34:50.878418+01	unbekannt	00000000-0000-0000-0000-000000000003
6f8e0341-4110-43ff-be89-746f4b2f9c35	unbekannt	ZKWAL Ludwigslust, Stadt	Ludwigslust, Stadt	\N	001	2026-01-20 07:34:50.88143+01	2100-01-01 00:00:00+01	2026-01-20 07:34:50.88143+01	unbekannt	2026-01-20 07:34:50.88143+01	unbekannt	00000000-0000-0000-0000-000000000003
beda90f7-2984-494e-ad49-8b04ec43658f	unbekannt	ZKWAL Projekte alle	Grabow|Dömitz-Malliß|Ludwigslust-Land|Neustadt-Glewe|Ludwigslust, Stadt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 52189626)
-- Name: st_vw_projektfilter pk_st_vw_projektfilter; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projektfilter
    ADD CONSTRAINT pk_st_vw_projektfilter PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189879)
-- Name: st_vw_projektfilter uk3_st_vw_projektfilter_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projektfilter
    ADD CONSTRAINT uk3_st_vw_projektfilter_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190028)
-- Name: st_vw_projektfilter uk4_st_vw_projektfilter_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projektfilter
    ADD CONSTRAINT uk4_st_vw_projektfilter_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 52189631)
-- Name: st_vw_projektfilter tr_a_d__st_vw_projektfilter__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_projektfilter__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_projektfilter REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 52189632)
-- Name: st_vw_projektfilter tr_a_i_or_u_or_d__st_vw_projektfilter__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_projektfilter__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_projektfilter FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 52189633)
-- Name: st_vw_projektfilter tr_a_u__st_vw_projektfilter__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_projektfilter__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_projektfilter REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 52189634)
-- Name: st_vw_projektfilter tr_b_i_or_u_or_d__st_vw_projektfilter__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_projektfilter__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_projektfilter FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 52189635)
-- Name: st_vw_projektfilter fk_st_vw_projektfilter_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projektfilter
    ADD CONSTRAINT fk_st_vw_projektfilter_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:17

--
-- PostgreSQL database dump complete
--

