--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:50

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
-- TOC entry 12177 (class 1259 OID 39685099)
-- Name: st_vw_beschichtung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_beschichtung (
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
-- Dependencies: 12177
-- Name: TABLE st_vw_beschichtung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_beschichtung IS 'Stammdaten Beschichtung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12177
-- Name: COLUMN st_vw_beschichtung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_beschichtung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685099)
-- Dependencies: 12177
-- Data for Name: st_vw_beschichtung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_beschichtung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-05 07:45:06.199544+02	2100-01-01 00:00:00+01	2024-08-05 07:45:06.199544+02	unbekannt	2024-08-05 07:45:06.199544+02	unbekannt	00000000-0000-0000-0000-000000000001
5e37fb52-9ad1-4162-8888-623c41c04c17	unbekannt	B	Beschichtung	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
685a3bb7-ce77-43eb-a275-8e20e30ca035	unbekannt	BET	Beton	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
634334f1-62d0-4b77-a73f-de2227192fc7	unbekannt	KKIW	Auskleidung mit Kanalklinkern im Bereich der Wandung	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
76f079ab-9cfb-4275-8c2c-b4ff54aaae03	unbekannt	unbekannt	unbekannt	\N	001	2026-01-12 14:00:10.317734+01	2100-01-01 00:00:00+01	2026-01-12 14:00:10.317734+01	unbekannt	2026-01-12 14:00:10.317734+01	unbekannt	00000000-0000-0000-0000-000000000003
fd19fcc5-a043-4a36-90c7-a2573aaa4d2a	unbekannt	B	Beschichtung	\N	001	2026-01-12 14:00:10.317734+01	2100-01-01 00:00:00+01	2026-01-12 14:00:10.317734+01	unbekannt	2026-01-12 14:00:10.317734+01	unbekannt	00000000-0000-0000-0000-000000000003
9a4f3631-0c40-4949-81d1-dba0a3c9824d	unbekannt	BET	Beton	\N	001	2026-01-12 14:00:10.317734+01	2100-01-01 00:00:00+01	2026-01-12 14:00:10.317734+01	unbekannt	2026-01-12 14:00:10.317734+01	unbekannt	00000000-0000-0000-0000-000000000003
481fbcff-e48c-4c73-acf6-4585d4572998	unbekannt	KKIW	Auskleidung mit Kanalklinkern im Bereich der Wandung	\N	001	2026-01-12 14:00:10.317734+01	2100-01-01 00:00:00+01	2026-01-12 14:00:10.317734+01	unbekannt	2026-01-12 14:00:10.317734+01	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687373)
-- Name: st_vw_beschichtung pk_st_vw_beschichtung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beschichtung
    ADD CONSTRAINT pk_st_vw_beschichtung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189825)
-- Name: st_vw_beschichtung uk3_st_vw_beschichtung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beschichtung
    ADD CONSTRAINT uk3_st_vw_beschichtung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189970)
-- Name: st_vw_beschichtung uk4_st_vw_beschichtung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beschichtung
    ADD CONSTRAINT uk4_st_vw_beschichtung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687970)
-- Name: st_vw_beschichtung tr_a_d__st_vw_beschichtung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_beschichtung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_beschichtung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688106)
-- Name: st_vw_beschichtung tr_a_i_or_u_or_d__st_vw_beschichtung__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_beschichtung__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beschichtung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688242)
-- Name: st_vw_beschichtung tr_a_u__st_vw_beschichtung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_beschichtung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_beschichtung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688380)
-- Name: st_vw_beschichtung tr_b_i_or_u_or_d__st_vw_beschichtung__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_beschichtung__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_beschichtung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690128)
-- Name: st_vw_beschichtung fk_st_vw_beschichtung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_beschichtung
    ADD CONSTRAINT fk_st_vw_beschichtung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:52

--
-- PostgreSQL database dump complete
--

