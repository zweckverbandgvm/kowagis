--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:50

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
-- TOC entry 12215 (class 1259 OID 39685781)
-- Name: st_vw_verschiedenes; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_verschiedenes (
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
-- Dependencies: 12215
-- Name: TABLE st_vw_verschiedenes; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_verschiedenes IS 'Stammdaten Verschiedenes';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12215
-- Name: COLUMN st_vw_verschiedenes.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verschiedenes.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685781)
-- Dependencies: 12215
-- Data for Name: st_vw_verschiedenes; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_verschiedenes (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-07 08:33:32.464169+02	2100-01-01 00:00:00+01	2024-08-07 08:33:32.464169+02	unbekannt	2024-08-07 08:33:32.464169+02	unbekannt	00000000-0000-0000-0000-000000000001
1e70affa-993f-4d5c-aa6a-01a4f3fef907	unbekannt	DUEK	Düker	\N	001	2024-08-28 10:01:09.578882+02	2100-01-01 00:00:00+01	2024-08-28 10:01:09.578882+02	unbekannt	2024-08-28 10:01:09.578882+02	unbekannt	00000000-0000-0000-0000-000000000001
2296a6dc-68c5-4cd8-ae56-d35b7e86f9b0	unbekannt	MAROA	Schutzrohr	\N	001	2024-08-28 10:01:09.578882+02	2100-01-01 00:00:00+01	2024-08-28 10:01:09.578882+02	unbekannt	2024-08-28 10:01:09.578882+02	unbekannt	00000000-0000-0000-0000-000000000001
84c13492-4e23-46fc-9f34-b0dc76a85b5b	unbekannt	MP	Markierungspfosten	\N	001	2024-08-28 10:01:09.578882+02	2100-01-01 00:00:00+01	2024-08-28 10:01:09.578882+02	unbekannt	2024-08-28 10:01:09.578882+02	unbekannt	00000000-0000-0000-0000-000000000001
5393ed9e-3cf5-4b67-b625-c1d318839520	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f95d45f4-6b02-4ef7-b313-4edec1145767	unbekannt	DUEK	Düker	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
1397fdb3-241b-4146-9f85-2418fc3e9f47	unbekannt	MAROA	Schutzrohr	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6d618bb4-31b9-4c7c-b978-3d4a0cd41f55	unbekannt	MP	Markierungspfosten	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687453)
-- Name: st_vw_verschiedenes pk_st_vw_verschiedenes; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschiedenes
    ADD CONSTRAINT pk_st_vw_verschiedenes PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189905)
-- Name: st_vw_verschiedenes uk3_st_vw_verschiedenes_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschiedenes
    ADD CONSTRAINT uk3_st_vw_verschiedenes_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190054)
-- Name: st_vw_verschiedenes uk4_st_vw_verschiedenes_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschiedenes
    ADD CONSTRAINT uk4_st_vw_verschiedenes_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688010)
-- Name: st_vw_verschiedenes tr_a_d__st_vw_verschiedenes__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_verschiedenes__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_verschiedenes REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688146)
-- Name: st_vw_verschiedenes tr_a_i_or_u_or_d__st_vw_verschiedenes__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_verschiedenes__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verschiedenes FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688282)
-- Name: st_vw_verschiedenes tr_a_u__st_vw_verschiedenes__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_verschiedenes__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_verschiedenes REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688420)
-- Name: st_vw_verschiedenes tr_b_i_or_u_or_d__st_vw_verschiedenes__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_verschiedenes__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verschiedenes FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690298)
-- Name: st_vw_verschiedenes fk_st_vw_verschiedenes_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verschiedenes
    ADD CONSTRAINT fk_st_vw_verschiedenes_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:52

--
-- PostgreSQL database dump complete
--

