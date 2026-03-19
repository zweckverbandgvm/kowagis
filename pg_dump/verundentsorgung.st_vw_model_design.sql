--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:03

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
-- TOC entry 12197 (class 1259 OID 39685458)
-- Name: st_vw_model_design; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_model_design (
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
-- Dependencies: 12197
-- Name: TABLE st_vw_model_design; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_model_design IS 'Stammdaten Model Design';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12197
-- Name: COLUMN st_vw_model_design.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_model_design.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685458)
-- Dependencies: 12197
-- Data for Name: st_vw_model_design; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_model_design (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 13:56:40.054005+02	2100-01-01 00:00:00+01	2024-08-06 13:56:40.054005+02	unbekannt	2024-08-06 13:56:40.054005+02	unbekannt	00000000-0000-0000-0000-000000000001
8647eaa9-b158-4ad8-9500-ba714f39bf91	unbekannt	UFH	UFH	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
0c50ab79-cee1-403a-b7c2-4686f54d2ed3	unbekannt	OFHA	OFH-Altstadt	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
305b100a-0e17-4cdb-bbf1-531142cbb22f	unbekannt	UFHGBE	UFH-Garnitur mit BE	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
8d08cccd-c1f1-474f-a2bf-cfabda5a67db	unbekannt	UFHG	UFH-Garnitur	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
5992f23a-41b1-4115-b3db-bbe9f6b35d48	unbekannt	OFHM	OFH-Modern	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
6da5859c-b2e4-455e-a4e1-42a370810b89	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e56ab10c-9d2f-4305-a56d-22fa7d1438c2	unbekannt	UFH	UFH	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cf31c4c5-893a-4449-b40a-3f2b15e6fe40	unbekannt	OFHA	OFH-Altstadt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a3f2e38c-1e5f-4a6a-94f0-e39bf5714f84	unbekannt	UFHGBE	UFH-Garnitur mit BE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3162951a-2c6b-44ec-ac18-4c5194b0235d	unbekannt	UFHG	UFH-Garnitur	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f32ab9f4-4bb9-428d-906c-a6c7a2a84cd8	unbekannt	OFHM	OFH-Modern	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687415)
-- Name: st_vw_model_design pk_st_vw_model_design; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_model_design
    ADD CONSTRAINT pk_st_vw_model_design PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189869)
-- Name: st_vw_model_design uk3_st_vw_model_design_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_model_design
    ADD CONSTRAINT uk3_st_vw_model_design_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190018)
-- Name: st_vw_model_design uk4_st_vw_model_design_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_model_design
    ADD CONSTRAINT uk4_st_vw_model_design_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687991)
-- Name: st_vw_model_design tr_a_d__st_vw_model_design__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_model_design__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_model_design REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688127)
-- Name: st_vw_model_design tr_a_i_or_u_or_d__st_vw_model_design__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_model_design__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_model_design FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688263)
-- Name: st_vw_model_design tr_a_u__st_vw_model_design__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_model_design__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_model_design REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688401)
-- Name: st_vw_model_design tr_b_i_or_u_or_d__st_vw_model_design__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_model_design__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_model_design FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690233)
-- Name: st_vw_model_design fk_st_vw_model_design_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_model_design
    ADD CONSTRAINT fk_st_vw_model_design_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:05

--
-- PostgreSQL database dump complete
--

