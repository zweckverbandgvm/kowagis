--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:35

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
-- TOC entry 12170 (class 1259 OID 39684973)
-- Name: st_vw_beckenfunktion; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_beckenfunktion (
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
-- Dependencies: 12170
-- Name: TABLE st_vw_beckenfunktion; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_beckenfunktion IS 'Stammdaten Beckenfunktion';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12170
-- Name: COLUMN st_vw_beckenfunktion.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beckenfunktion.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39684973)
-- Dependencies: 12170
-- Data for Name: st_vw_beckenfunktion; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_beckenfunktion (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-29 13:24:56.729483+02	2100-01-01 00:00:00+01	2024-07-29 13:24:56.729483+02	unbekannt	2024-07-29 13:24:56.729483+02	unbekannt	00000000-0000-0000-0000-000000000001
7e591dea-07d8-417c-95cc-dcfddb4dd42f	unbekannt	RRG	Regenrückhaltegraben	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
c51d5123-5534-44b3-9fa2-d65e35011f62	unbekannt	tbd	noch festzulegen	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
399c9f5c-4bc3-463d-bd2d-96822b378dbf	unbekannt	RKBOD	Regenklärbecken ohne Dauerstau	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
46c7d8e3-72f7-4142-8a63-45e20ddd8b76	unbekannt	RRB	Regenrückhaltebecken	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
78df78a3-8116-494d-9e23-bd44d3875b50	unbekannt	o	andere	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
29aabe8f-44e8-4e5d-abdd-7c305ca45188	unbekannt	unbekannt	unbekannt	\N	001	2024-07-29 13:24:56.729483+02	2100-01-01 00:00:00+01	2024-07-29 13:24:56.729483+02	unbekannt	2024-07-29 13:24:56.729483+02	unbekannt	00000000-0000-0000-0000-000000000003
01d6ec3b-c4c2-4f5c-b02c-2d3b944f9994	unbekannt	RRG	Regenrückhaltegraben	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
b7c03634-69ee-4a62-88b3-d47ccbf3935c	unbekannt	tbd	noch festzulegen	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
383e81f0-1cf0-4280-8b9c-1a7be3200291	unbekannt	RKBOD	Regenklärbecken ohne Dauerstau	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
fc7294c5-32b6-48fc-aa05-f1dadeb1dd0a	unbekannt	RRB	Regenrückhaltebecken	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
3e04167d-d7d0-4471-ae10-d483fcddf802	unbekannt	o	andere	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
75eec712-d87d-494c-91df-c0b4fb8b2168	unbekannt	RUEB\r\n	Regenüberlaufbecken\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
1f6a5387-a334-43d9-9a79-119e89492e2a	unbekannt	RKBMD\r\n	Regenklärbecken mit Dauerstau\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
d21b0190-9793-4f51-a17e-0f31bc389b74	unbekannt	RRSB\r\n	Regenrückstaubecken\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
57ac1e84-7a95-40e6-a074-99f17388ae87	unbekannt	MFVR\r\n	Mechanischer Retentionsfilter mit vorgeschalteter Retention\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
9e15414c-9d4f-4214-978c-095176c79b23	unbekannt	MRF\r\n	Mechanischer Retetionsfilter\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
5b18e883-05bb-4f6f-b606-dd9355fbab6d	unbekannt	BFVR\r\n	Bodenfilter mit vorgeschalteter Retention\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
5b5522c0-eea7-4213-b46f-d2bcd8bc3d0f	unbekannt	RBF\r\n	Retentionsbodenfilter\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000001
7cec1525-40ac-4533-bbf0-74b704b1ab8c	unbekannt	RUEB\r\n	Regenüberlaufbecken\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
e9a65c7c-28e0-4249-bb2a-36b028683cfa	unbekannt	RKBMD\r\n	Regenklärbecken mit Dauerstau\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
2089d526-be6c-4207-8300-87be7d9c97e1	unbekannt	RRSB\r\n	Regenrückstaubecken\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
0384da6c-8ad2-4470-85a8-91d5410d3f31	unbekannt	MFVR\r\n	Mechanischer Retentionsfilter mit vorgeschalteter Retention\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
f7b11881-f452-4e82-8a95-90dae23015e2	unbekannt	MRF\r\n	Mechanischer Retetionsfilter\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
fa6bf372-0d68-430d-a25b-c9fb6b2776f6	unbekannt	BFVR\r\n	Bodenfilter mit vorgeschalteter Retention\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
a8cff183-b939-4496-9240-5191ba7cb430	unbekannt	RBF\r\n	Retentionsbodenfilter\r\n	\N	001	2024-07-29 14:49:05.350311+02	2100-01-01 00:00:00+01	2024-07-29 14:49:05.350311+02	unbekannt	2024-07-29 14:49:05.350311+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687357)
-- Name: st_vw_beckenfunktion pk_st_vw_beckenart; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenfunktion
    ADD CONSTRAINT pk_st_vw_beckenart PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189920)
-- Name: st_vw_beckenfunktion uk3_st_vw_beckenfunktion_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenfunktion
    ADD CONSTRAINT uk3_st_vw_beckenfunktion_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189956)
-- Name: st_vw_beckenfunktion uk4_st_vw_beckenfunktion_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenfunktion
    ADD CONSTRAINT uk4_st_vw_beckenfunktion_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687962)
-- Name: st_vw_beckenfunktion tr_a_d__st_vw_beckenart__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_beckenart__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_beckenfunktion REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688098)
-- Name: st_vw_beckenfunktion tr_a_i_or_u_or_d__st_vw_beckenart__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_beckenart__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beckenfunktion FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688234)
-- Name: st_vw_beckenfunktion tr_a_u__st_vw_beckenart__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_beckenart__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_beckenfunktion REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688372)
-- Name: st_vw_beckenfunktion tr_b_i_or_u_or_d__st_vw_beckenart__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_beckenart__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beckenfunktion FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 52279912)
-- Name: st_vw_beckenfunktion fk_st_vw_beckenfunktion_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beckenfunktion
    ADD CONSTRAINT fk_st_vw_beckenfunktion_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:37

--
-- PostgreSQL database dump complete
--

