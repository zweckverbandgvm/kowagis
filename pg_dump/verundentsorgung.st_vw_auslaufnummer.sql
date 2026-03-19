--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:27

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
-- TOC entry 21453 (class 1259 OID 52847072)
-- Name: st_vw_auslaufnummer; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_auslaufnummer (
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
-- Dependencies: 21453
-- Name: TABLE st_vw_auslaufnummer; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_auslaufnummer IS 'Stammdaten Auslaufnummer';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 21453
-- Name: COLUMN st_vw_auslaufnummer.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_auslaufnummer.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 52847072)
-- Dependencies: 21453
-- Data for Name: st_vw_auslaufnummer; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_auslaufnummer (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
2b269054-d2e4-4ba5-94fe-0f4089d10db1	unbekannt	A1	A1	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
9af91878-ca33-4b8a-b0a7-f0756929b323	unbekannt	A2	A2	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
8560d370-ca5f-44f1-bd65-b4dea4204e9f	unbekannt	A3	A3	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
80ccbf07-9030-49c6-b447-6781c6209df6	unbekannt	A4	A4	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
4612b079-b483-448d-934a-774fcbee3b53	unbekannt	A5	A5	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
14091f07-ddb9-4ef7-a38e-be0219b74eef	unbekannt	A6	A6	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
3b15cf4c-12f7-4ad1-87ae-e8bb1daa3e24	unbekannt	A7	A7	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
35fbb49e-b852-428f-97fc-6861364f6a10	unbekannt	A8	A8	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
90d3a1e7-9ea6-4511-a514-4b3868e98bb4	unbekannt	A9	A9	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
c505fbec-ece8-4ca3-8da8-1b337632864d	unbekannt	unbekannt	unbekannt	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
4aeb91ef-bc2d-4acc-b160-aa6b1c7e5b74	unbekannt	A1	A1	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
bf1c0202-6d94-45d0-a555-4088188f19c6	unbekannt	A2	A2	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
eaef73fd-3572-4fcd-beee-4fe637c82db4	unbekannt	A3	A3	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
4e879408-ca64-4f42-9b58-a6cc93f362de	unbekannt	A4	A4	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
79c69ab3-c553-475c-a9a2-5217499a6748	unbekannt	A5	A5	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
560d9236-0bf6-47c7-953d-43a234254a1d	unbekannt	A6	A6	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
d117fb7c-0234-4959-869d-5e09c8c03aff	unbekannt	A7	A7	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
07f17be8-56e4-40ca-89fd-484fbab58b46	unbekannt	A8	A8	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
2777890a-298d-4b1e-8f95-8a1c740f6260	unbekannt	A9	A9	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000003
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2025-10-14 08:09:34.963051+02	2100-01-01 00:00:00+01	2025-10-14 08:09:34.963051+02	unbekannt	2025-10-14 08:09:34.963051+02	unbekannt	00000000-0000-0000-0000-000000000001
\.


--
-- TOC entry 81946 (class 2606 OID 52847091)
-- Name: st_vw_auslaufnummer pk_st_vw_auslaufnummer; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_auslaufnummer
    ADD CONSTRAINT pk_st_vw_auslaufnummer PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52847093)
-- Name: st_vw_auslaufnummer uk3_st_vw_auslaufnummer_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_auslaufnummer
    ADD CONSTRAINT uk3_st_vw_auslaufnummer_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52847095)
-- Name: st_vw_auslaufnummer uk4_st_vw_auslaufnummer_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_auslaufnummer
    ADD CONSTRAINT uk4_st_vw_auslaufnummer_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 52847101)
-- Name: st_vw_auslaufnummer tr_a_d__st_vw_auslaufnummer__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_auslaufnummer__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_auslaufnummer REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 52847102)
-- Name: st_vw_auslaufnummer tr_a_i_or_u_or_d__st_vw_auslaufnummer__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_auslaufnummer__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_auslaufnummer FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 52847103)
-- Name: st_vw_auslaufnummer tr_a_u__st_vw_auslaufnummer__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_auslaufnummer__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_auslaufnummer REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 52847104)
-- Name: st_vw_auslaufnummer tr_b_i_or_u_or_d__st_vw_auslaufnummer__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_auslaufnummer__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_auslaufnummer FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 52847096)
-- Name: st_vw_auslaufnummer fk_st_vw_auslaufnummer_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_auslaufnummer
    ADD CONSTRAINT fk_st_vw_auslaufnummer_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:29

--
-- PostgreSQL database dump complete
--

