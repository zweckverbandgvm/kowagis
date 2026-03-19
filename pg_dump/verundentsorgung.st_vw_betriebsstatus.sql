--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:54

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
-- TOC entry 12179 (class 1259 OID 39685135)
-- Name: st_vw_betriebsstatus; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_betriebsstatus (
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
    id_st_vw_projekt uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
    kurztext_layout character varying DEFAULT 'AB'::character varying NOT NULL
);


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12179
-- Name: TABLE st_vw_betriebsstatus; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_betriebsstatus IS 'Stammdaten Betriebsstatus';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.id IS '  ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.ident_hist IS 'historische ID';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.kurztext IS 'Kurztext ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.langtext IS 'Langtext ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83819 (class 0 OID 0)
-- Dependencies: 12179
-- Name: COLUMN st_vw_betriebsstatus.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betriebsstatus.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83800 (class 0 OID 39685135)
-- Dependencies: 12179
-- Data for Name: st_vw_betriebsstatus; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_betriebsstatus (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, kurztext_layout) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-20 23:33:36.848193+01	2100-01-01 00:00:00+01	2022-12-20 23:33:36.848193+01	unbekannt	2022-12-20 23:33:36.848193+01	unbekannt	00000000-0000-0000-0000-000000000001	AB
e3b51a21-2974-4ad3-833e-3082115fa8d4	unbekannt	aube	außer Betrieb	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	AB
1329884d-a1ca-4f85-ae83-025bb5c90780	unbekannt	ib	inbetrieb	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	IB
3eba2ee1-bb59-40d5-9531-52116954d6e4	unbekannt	stge	stillgelegt	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	STGE
07c5bd2d-16b6-4ee3-8a50-647d2edef7de	unbekannt	zg	zurueck gebaut (aus gebaut)	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	ZG
8fb4f24b-9648-4a9a-8b08-a3d3b030d776	unbekannt	gpl	geplant	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	GPL
508b4491-da01-4cb3-8ae4-e13d3cc24e2c	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	AB
54bfce0b-7cf8-49ef-a25c-49b544113c6f	unbekannt	aube	außer Betrieb	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	AB
99b6700e-2a1c-4fa6-846f-bf1642495cc6	unbekannt	ib	inbetrieb	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	IB
f5a9419f-90bf-419a-a3bc-15996eebf398	unbekannt	stge	stillgelegt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	STGE
1af39371-3fbe-47f3-937f-4c3b7ff6e321	unbekannt	zg	zurueck gebaut (aus gebaut)	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	ZG
4d6b4ec5-1099-4edd-adfd-95b7b368adac	unbekannt	gpl	geplant	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	GPL
\.


--
-- TOC entry 81950 (class 2606 OID 39687377)
-- Name: st_vw_betriebsstatus pk_st_vw_betriebsstatus; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betriebsstatus
    ADD CONSTRAINT pk_st_vw_betriebsstatus PRIMARY KEY (id);


--
-- TOC entry 81952 (class 2606 OID 52189829)
-- Name: st_vw_betriebsstatus uk3_st_vw_betriebsstatus_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betriebsstatus
    ADD CONSTRAINT uk3_st_vw_betriebsstatus_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81954 (class 2606 OID 52189974)
-- Name: st_vw_betriebsstatus uk4_st_vw_betriebsstatus_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betriebsstatus
    ADD CONSTRAINT uk4_st_vw_betriebsstatus_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81946 (class 1259 OID 59068306)
-- Name: idx_st_vw_betriebsstatus_kurztext_layout; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_betriebsstatus_kurztext_layout ON verundentsorgung.st_vw_betriebsstatus USING btree (kurztext_layout);


--
-- TOC entry 81947 (class 1259 OID 59068301)
-- Name: idx_st_vw_betriebsstatus_proj_id; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_betriebsstatus_proj_id ON verundentsorgung.st_vw_betriebsstatus USING btree (id_st_vw_projekt, id);


--
-- TOC entry 81948 (class 1259 OID 59068307)
-- Name: idx_st_vw_betriebsstatus_proj_layout; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_betriebsstatus_proj_layout ON verundentsorgung.st_vw_betriebsstatus USING btree (id_st_vw_projekt, kurztext_layout);


--
-- TOC entry 81956 (class 2620 OID 39687972)
-- Name: st_vw_betriebsstatus tr_a_d__st_vw_betriebsstatus__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_betriebsstatus__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_betriebsstatus REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81957 (class 2620 OID 39688108)
-- Name: st_vw_betriebsstatus tr_a_i_or_u_or_d__st_vw_betriebsstatus__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_betriebsstatus__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_betriebsstatus FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81958 (class 2620 OID 39688244)
-- Name: st_vw_betriebsstatus tr_a_u__st_vw_betriebsstatus__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_betriebsstatus__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_betriebsstatus REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81959 (class 2620 OID 39688382)
-- Name: st_vw_betriebsstatus tr_b_i_or_u_or_d__st_vw_betriebsstatus__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_betriebsstatus__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_betriebsstatus FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81955 (class 2606 OID 39690138)
-- Name: st_vw_betriebsstatus fk_st_vw_betriebsstatus_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betriebsstatus
    ADD CONSTRAINT fk_st_vw_betriebsstatus_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:56

--
-- PostgreSQL database dump complete
--

