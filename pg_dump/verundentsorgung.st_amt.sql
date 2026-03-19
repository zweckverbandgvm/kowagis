--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:07

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
-- TOC entry 12151 (class 1259 OID 39684620)
-- Name: st_amt; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_amt (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    ident_hist text DEFAULT 'unbekannt'::text NOT NULL,
    amt text DEFAULT 'nicht zugewiesen'::text NOT NULL,
    bemerkung text,
    gueltig_von timestamp with time zone DEFAULT now() NOT NULL,
    gueltig_bis timestamp with time zone DEFAULT '2100-01-01 00:00:00+01'::timestamp with time zone NOT NULL,
    angelegt_am timestamp with time zone DEFAULT now() NOT NULL,
    angelegt_von text DEFAULT 'unbekannt'::text NOT NULL,
    geaendert_am timestamp with time zone DEFAULT now() NOT NULL,
    geaendert_von text DEFAULT 'unbekannt'::text NOT NULL,
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL
);


--
-- TOC entry 83798 (class 0 OID 0)
-- Dependencies: 12151
-- Name: TABLE st_amt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_amt IS 'Stammdaten Amt';


--
-- TOC entry 83799 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.id IS '  ';


--
-- TOC entry 83800 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.ident_hist IS 'historische ID';


--
-- TOC entry 83801 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.amt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.amt IS 'Amt ';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12151
-- Name: COLUMN st_amt.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_amt.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83792 (class 0 OID 39684620)
-- Dependencies: 12151
-- Data for Name: st_amt; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_amt (id, ident_hist, amt, bemerkung, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	00000000-0000-0000-0000-000000000000	unbekannt	noch keine Bemerkung	2024-04-12 07:49:37.232665+02	2100-01-01 00:00:00+01	2024-04-12 07:49:37.232665+02	unbekannt	2024-04-12 07:49:37.232665+02	unbekannt	00000000-0000-0000-0000-000000000001
3a29e1d2-473e-41e6-947b-8b8014270db3	7	Amt Dorf Mecklenburg-Bad Kleinen	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
30e4ce3a-5d45-4fe6-b8e9-16d0a39e9feb	2	Amt Grevesmühlen Land	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
196e87ea-252b-4fe9-84b2-e5cfc336aac5	3	Amt Klützer Winkel	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
04dd6986-1902-4e02-bd52-122bb422c31c	5352	Amt Neukloster-Warin	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
4a01b2f0-e05f-4fcb-a952-f5ccb6640b27	5	Amt Schönberger Land	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
4da82335-2b19-4b90-b8d5-1cb0b9edf58f	6	Amt Stralendorf	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
fd488f48-14f1-4753-b111-ff7c9d53d700	1	Stadt Grevesmühlen	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
a866286d-2421-4a18-a656-74b659f051e8	5242	Amt Rehna	\N	2026-03-01 23:40:37.936968+01	2100-01-01 00:00:00+01	2026-03-01 23:40:37.936968+01	unbekannt	2026-03-01 23:40:37.936968+01	unbekannt	00000000-0000-0000-0000-000000000001
35b29209-cfd5-400b-adea-125cec4818e4	00000000-0000-0000-0000-000000000003	unbekannt	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
eebdfd6b-a8b3-42a0-a427-f77df09b2dfc	11699	Grabow	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
3697346d-1080-4ec8-bbf2-e2da962a63f6	11850	Neustadt-Glewe	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
61e2638f-c2b5-4193-9517-144bc4c524f8	11851	Ludwigslust-Land	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
fb3ee6d3-0801-4ba9-8758-8e134e4e4c23	11852	Ludwigslust, Stadt	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
8b46ece9-03ce-4b86-801b-79a49e5292f7	11853	Dömitz-Malliß	\N	2026-03-01 23:42:03.360204+01	2100-01-01 00:00:00+01	2026-03-01 23:42:03.360204+01	unbekannt	2026-03-01 23:42:03.360204+01	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81944 (class 2606 OID 39687317)
-- Name: st_amt pk_st_amt; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_amt
    ADD CONSTRAINT pk_st_amt PRIMARY KEY (id);


--
-- TOC entry 81946 (class 2606 OID 39687591)
-- Name: st_amt uk1_st_amt; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_amt
    ADD CONSTRAINT uk1_st_amt UNIQUE (id_st_vw_projekt, amt);


--
-- TOC entry 81948 (class 2620 OID 39687942)
-- Name: st_amt tr_a_d__st_amt__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_amt__tf_history_after AFTER DELETE ON verundentsorgung.st_amt REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81949 (class 2620 OID 39688078)
-- Name: st_amt tr_a_i_or_u_or_d__st_amt__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_amt__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_amt FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81950 (class 2620 OID 39688214)
-- Name: st_amt tr_a_u__st_amt__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_amt__tf_history_after AFTER UPDATE ON verundentsorgung.st_amt REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81951 (class 2620 OID 39688352)
-- Name: st_amt tr_b_i_or_u_or_d__st_amt__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_amt__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_amt FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81947 (class 2606 OID 39689963)
-- Name: st_amt fk_st_amt_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_amt
    ADD CONSTRAINT fk_st_amt_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:09

--
-- PostgreSQL database dump complete
--

