--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:13

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
-- TOC entry 12201 (class 1259 OID 39685530)
-- Name: st_vw_projekt; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_projekt (
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
-- Dependencies: 12201
-- Name: TABLE st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_projekt IS 'Stammdaten Projekt';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12201
-- Name: COLUMN st_vw_projekt.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_projekt.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83796 (class 0 OID 39685530)
-- Dependencies: 12201
-- Data for Name: st_vw_projekt; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_projekt (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000000
00000000-0000-0000-0000-000000000001	unbekannt	ZVG	ZVG	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000001
00000000-0000-0000-0000-000000000002	unbekannt	ZVK	ZVK	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000002
00000000-0000-0000-0000-000000000003	unbekannt	ZKWAL	ZKWAL	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81947 (class 2606 OID 39687423)
-- Name: st_vw_projekt pk_st_vw_projekt; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projekt
    ADD CONSTRAINT pk_st_vw_projekt PRIMARY KEY (id);


--
-- TOC entry 81949 (class 2606 OID 39687683)
-- Name: st_vw_projekt uk1_st_vw_projekt_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projekt
    ADD CONSTRAINT uk1_st_vw_projekt_kurztext UNIQUE (kurztext);


--
-- TOC entry 81951 (class 2606 OID 39687853)
-- Name: st_vw_projekt uk2_st_vw_projekt_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_projekt
    ADD CONSTRAINT uk2_st_vw_projekt_langtext UNIQUE (langtext);


--
-- TOC entry 81945 (class 1259 OID 59068297)
-- Name: idx_st_vw_projekt_id; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_projekt_id ON verundentsorgung.st_vw_projekt USING btree (id);


--
-- TOC entry 81952 (class 2620 OID 39687995)
-- Name: st_vw_projekt tr_a_d__st_vw_projekt__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_projekt__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_projekt REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688131)
-- Name: st_vw_projekt tr_a_i_or_u_or_d__st_vw_projekt__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_projekt__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_projekt FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688267)
-- Name: st_vw_projekt tr_a_u__st_vw_projekt__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_projekt__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_projekt REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688405)
-- Name: st_vw_projekt tr_b_i_or_u_or_d__st_vw_projekt__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_projekt__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_projekt FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


-- Completed on 2026-03-18 15:15:15

--
-- PostgreSQL database dump complete
--

