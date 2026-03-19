--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:53

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
-- TOC entry 12193 (class 1259 OID 39685386)
-- Name: st_vw_lagestatus; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_lagestatus (
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
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12193
-- Name: TABLE st_vw_lagestatus; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_lagestatus IS 'Stammdaten Lagestatus';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.id IS '  ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.ident_hist IS 'historische ID';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.kurztext IS 'Kurztext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.langtext IS 'Langtext ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12193
-- Name: COLUMN st_vw_lagestatus.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_lagestatus.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83797 (class 0 OID 39685386)
-- Dependencies: 12193
-- Data for Name: st_vw_lagestatus; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_lagestatus (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-21 00:29:35.885801+01	2100-01-01 00:00:00+01	2022-12-21 00:29:35.885801+01	unbekannt	2022-12-21 00:29:35.885801+01	unbekannt	00000000-0000-0000-0000-000000000001
2380d822-fef4-4954-bcf2-aba889c348cb	unbekannt	LAGEUNSICHER	Lage unsicher	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
d5fcc750-945c-40d0-802f-16ddad913d22	unbekannt	LAGESICHER	Lage sicher	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001
5381f5fd-8570-4f92-ab5f-618b70938b25	unbekannt	LU	lageunsicher	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001
fe4a5552-29ea-443a-bdd2-14551378ce85	unbekannt	LS	lagesicher	\N	001	2024-08-05 13:16:07.717463+02	2100-01-01 00:00:00+01	2024-08-05 13:16:07.717463+02	unbekannt	2024-08-05 13:16:07.717463+02	unbekannt	00000000-0000-0000-0000-000000000001
019c4b52-b6e3-4de2-8e10-292737347bc3	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7c5387d3-2e45-4541-8212-d9898000b6db	unbekannt	LAGEUNSICHER	Lage unsicher	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
64d58482-710c-46e6-bbae-2ce9a60287b7	unbekannt	LAGESICHER	Lage sicher	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7e29e278-fed4-472e-9eb5-f9b5202f688c	unbekannt	LU	lageunsicher	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4544d603-f0ac-4687-a45a-c41b6a114bc3	unbekannt	LS	lagesicher	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81947 (class 2606 OID 39687407)
-- Name: st_vw_lagestatus pk_st_vw_lagestatus; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_lagestatus
    ADD CONSTRAINT pk_st_vw_lagestatus PRIMARY KEY (id);


--
-- TOC entry 81949 (class 2606 OID 52189861)
-- Name: st_vw_lagestatus uk3_st_vw_lagestatus_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_lagestatus
    ADD CONSTRAINT uk3_st_vw_lagestatus_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81951 (class 2606 OID 52190010)
-- Name: st_vw_lagestatus uk4_st_vw_lagestatus_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_lagestatus
    ADD CONSTRAINT uk4_st_vw_lagestatus_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81945 (class 1259 OID 59068298)
-- Name: idx_st_vw_lagestatus_proj_id; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_lagestatus_proj_id ON verundentsorgung.st_vw_lagestatus USING btree (id_st_vw_projekt, id);


--
-- TOC entry 81953 (class 2620 OID 39687987)
-- Name: st_vw_lagestatus tr_a_d__st_vw_lagestatus__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_lagestatus__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_lagestatus REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 39688123)
-- Name: st_vw_lagestatus tr_a_i_or_u_or_d__st_vw_lagestatus__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_lagestatus__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_lagestatus FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81955 (class 2620 OID 39688259)
-- Name: st_vw_lagestatus tr_a_u__st_vw_lagestatus__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_lagestatus__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_lagestatus REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81956 (class 2620 OID 39688397)
-- Name: st_vw_lagestatus tr_b_i_or_u_or_d__st_vw_lagestatus__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_lagestatus__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_lagestatus FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81952 (class 2606 OID 39690213)
-- Name: st_vw_lagestatus fk_st_vw_lagestatus_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_lagestatus
    ADD CONSTRAINT fk_st_vw_lagestatus_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:55

--
-- PostgreSQL database dump complete
--

