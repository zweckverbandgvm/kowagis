--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:07

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
-- TOC entry 12199 (class 1259 OID 39685494)
-- Name: st_vw_nennweite_hydrant; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_nennweite_hydrant (
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
-- Dependencies: 12199
-- Name: TABLE st_vw_nennweite_hydrant; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_nennweite_hydrant IS 'Stammdaten Nennweite Hydrant';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12199
-- Name: COLUMN st_vw_nennweite_hydrant.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_hydrant.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685494)
-- Dependencies: 12199
-- Data for Name: st_vw_nennweite_hydrant; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_nennweite_hydrant (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 13:55:34.99137+02	2100-01-01 00:00:00+01	2024-08-06 13:55:34.99137+02	unbekannt	2024-08-06 13:55:34.99137+02	unbekannt	00000000-0000-0000-0000-000000000001
002b1f4d-6f8e-40f5-8537-9f8672d227ec	unbekannt	40	DN 40	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
ab3bb2b8-6783-4055-9c5e-048707ede782	unbekannt	80	DN 80	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
4878cb9f-efe9-4575-a2dc-6bf5ac9d4171	unbekannt	25	DN 25	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
dc31777f-77c5-4d9f-af20-08052b6a1285	unbekannt	100	DN 100	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
142094c4-9182-4c4d-abad-88d4e65b2564	unbekannt	50	DN 50	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
75445e60-8f5a-432a-9e7c-0effb7e95737	unbekannt	150	DN 150	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
30e7a341-ad69-4947-8460-79c34fdbfee8	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e7f4e21c-6598-48a0-9dc1-86a9175f9a96	unbekannt	40	DN 40	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7cfde4f6-fef6-4f1e-990e-d899ac985902	unbekannt	80	DN 80	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
89b18a3b-4b99-4f3c-a4cd-417707c13838	unbekannt	25	DN 25	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2db50cd5-a0c9-42fc-a1dd-44ee55f4f695	unbekannt	100	DN 100	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ca8c1cd8-ee29-447f-aae2-d9b4eff2400f	unbekannt	50	DN 50	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8ebefa5e-7173-4d0f-a3fd-683cb89f37e7	unbekannt	150	DN 150	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687419)
-- Name: st_vw_nennweite_hydrant pk_st_vw_nennweite_hydrant; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_hydrant
    ADD CONSTRAINT pk_st_vw_nennweite_hydrant PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189873)
-- Name: st_vw_nennweite_hydrant uk3_st_vw_nennweite_hydrant_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_hydrant
    ADD CONSTRAINT uk3_st_vw_nennweite_hydrant_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190022)
-- Name: st_vw_nennweite_hydrant uk4_st_vw_nennweite_hydrant_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_hydrant
    ADD CONSTRAINT uk4_st_vw_nennweite_hydrant_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687993)
-- Name: st_vw_nennweite_hydrant tr_a_d__st_vw_nennweite_hydrant__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_nennweite_hydrant__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_nennweite_hydrant REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688129)
-- Name: st_vw_nennweite_hydrant tr_a_i_or_u_or_d__st_vw_nennweite_hydrant__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_nennweite_hydrant__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_nennweite_hydrant FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688265)
-- Name: st_vw_nennweite_hydrant tr_a_u__st_vw_nennweite_hydrant__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_nennweite_hydrant__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_nennweite_hydrant REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688403)
-- Name: st_vw_nennweite_hydrant tr_b_i_or_u_or_d__st_vw_nennweite_hydrant__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_nennweite_hydrant__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_nennweite_hydrant FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690243)
-- Name: st_vw_nennweite_hydrant fk_st_vw_nennweite_hydrant_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_hydrant
    ADD CONSTRAINT fk_st_vw_nennweite_hydrant_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:09

--
-- PostgreSQL database dump complete
--

