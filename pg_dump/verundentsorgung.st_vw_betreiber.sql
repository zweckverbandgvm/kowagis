--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:52

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
-- TOC entry 12178 (class 1259 OID 39685117)
-- Name: st_vw_betreiber; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_betreiber (
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
    kurztext_layout character varying DEFAULT 'U'::character varying NOT NULL
);


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12178
-- Name: TABLE st_vw_betreiber; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_betreiber IS 'Stammdaten Betreiber';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.id IS '  ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.ident_hist IS 'historische ID';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.kurztext IS 'Kurztext ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.langtext IS 'Langtext ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83816 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83817 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83818 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83819 (class 0 OID 0)
-- Dependencies: 12178
-- Name: COLUMN st_vw_betreiber.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_betreiber.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83800 (class 0 OID 39685117)
-- Dependencies: 12178
-- Data for Name: st_vw_betreiber; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_betreiber (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt, kurztext_layout) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000001	U
a98555ba-1c69-4b0d-ae47-7aebcd84a290	unbekannt	BUND	BUND	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
2f54b74f-1db8-4ff3-8e88-cbfbf83318d3	unbekannt	GEMEINDE	GEMEINDE	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
77884895-9fd5-417a-afc3-777541a2f4b2	unbekannt	GRUNDSTCKEIG	GRUNDSTUECKSEIGENTUEMER	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
6754585c-25b1-43ec-ac97-f24a2fe012c3	unbekannt	LANDKREIS	LANDKREIS NWM	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
5d6e659a-4dec-4a22-8edb-9bb02623166d	unbekannt	LAND MV	LAND MECKLENBURG VORPOMMERN	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
6d1dbb65-04f0-41a7-9c0b-2b2e8649e711	unbekannt	NDKW	NORDDEUTSCHE KAFFEEWERKE	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
dafb0a7e-c482-409c-bdd7-be69061c59b1	unbekannt	SBA	STRAßENBAUAMT	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
3f070fee-a659-4346-8e18-c1f49beb95d5	unbekannt	WBV	WASSER UND BODENVERBAND	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	U
05caad03-383c-454c-9f17-f235750a2b48	unbekannt	ZVG	ZWECKVERBAND GREVESMÜHLEN	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	Z
5226408d-9bdc-4719-b68f-0a1f6866ec05	unbekannt	SONSTIGE	SONSTIGE	\N	001	2024-07-17 14:09:13.377229+02	2100-01-01 00:00:00+01	2024-07-17 14:09:13.377229+02	unbekannt	2024-07-17 14:09:13.377229+02	unbekannt	00000000-0000-0000-0000-000000000001	U
5e08652d-6b16-4acb-9762-04cf04c833fb	unbekannt	PRIVAT	PRIVAT	\N	001	2024-08-05 14:25:53.792682+02	2100-01-01 00:00:00+01	2024-08-05 14:25:53.792682+02	unbekannt	2024-08-05 14:25:53.792682+02	unbekannt	00000000-0000-0000-0000-000000000001	U
977c484a-266c-4463-82f4-0487509e18a1	unbekannt	p	privat	\N	001	2024-08-13 15:48:55.173961+02	2100-01-01 00:00:00+01	2024-08-13 15:48:55.173961+02	unbekannt	2024-08-13 15:48:55.173961+02	unbekannt	00000000-0000-0000-0000-000000000001	U
8b365d3a-9613-4280-828e-2a3312a186cf	unbekannt	s	sonstige	\N	001	2024-08-13 15:48:55.173961+02	2100-01-01 00:00:00+01	2024-08-13 15:48:55.173961+02	unbekannt	2024-08-13 15:48:55.173961+02	unbekannt	00000000-0000-0000-0000-000000000001	U
0710b1f1-8ac4-4cea-878a-3ae2680f9d57	unbekannt	ZKWAL	ZKWAL	noch keine Bemerkung	001	2024-04-22 11:20:03.288903+02	2100-01-01 00:00:00+01	2024-04-22 11:20:03.288903+02	unbekannt	2024-04-22 11:20:03.288903+02	unbekannt	00000000-0000-0000-0000-000000000001	Z
10df17aa-ac4d-4dad-b659-2e30acbeb68b	unbekannt	ZKWAL	ZWECKVERBAND LUDWIGSLUST	\N	001	2025-06-16 14:24:23.316419+02	2100-01-01 00:00:00+01	2025-06-16 14:24:23.316419+02	unbekannt	2025-06-16 14:24:23.316419+02	unbekannt	00000000-0000-0000-0000-000000000003	Z
53538986-46c9-4bf2-a0a9-b42905d66c8d	unbekannt	unbekannt	unbekannt	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
ff5407a7-9f82-4895-a2d3-a33da12e1fb5	unbekannt	BUND	BUND	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
139734d5-b3f0-45ad-8c1d-3ae9c8aa96e8	unbekannt	GEMEINDE	GEMEINDE	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
9401306f-fa9e-43fc-b00e-0f5d4051a93f	unbekannt	GRUNDSTCKEIG	GRUNDSTUECKSEIGENTUEMER	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
aac8aedd-7a1e-4bb6-a8ad-e5f27abad1ee	unbekannt	LANDKREIS	LANDKREIS NWM	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
ffb7a4cc-8407-4cf1-94b5-fa0834023f3f	unbekannt	LAND MV	LAND MECKLENBURG VORPOMMERN	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
c6dcd4bb-f27a-4ceb-9492-d54ea476ca35	unbekannt	NDKW	NORDDEUTSCHE KAFFEEWERKE	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
75c7441a-3c46-426f-b9f6-11e6710b333b	unbekannt	SBA	STRAßENBAUAMT	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
fc37eacb-bda9-4371-8403-ccf4df45eb8b	unbekannt	WBV	WASSER UND BODENVERBAND	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
bf1b5d54-606e-4bc1-8d5b-10bf60afa9c5	unbekannt	ZVG	ZWECKVERBAND GREVESMÜHLEN	noch keine Bemerkung	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	Z
0cbe7a78-f0bd-4eb9-84f8-0bd81dd1b1c4	unbekannt	SONSTIGE	SONSTIGE	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
9898a3b7-744d-43ce-84f0-b46bca0be252	unbekannt	PRIVAT	PRIVAT	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
d31d1e84-5756-4ab4-8743-3a5186122de2	unbekannt	p	privat	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
7b99eb04-04f2-413a-905b-b32cdfb37037	unbekannt	s	sonstige	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003	U
\.


--
-- TOC entry 81950 (class 2606 OID 39687375)
-- Name: st_vw_betreiber pk_st_vw_betreiber; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betreiber
    ADD CONSTRAINT pk_st_vw_betreiber PRIMARY KEY (id);


--
-- TOC entry 81952 (class 2606 OID 52189827)
-- Name: st_vw_betreiber uk3_st_vw_betreiber_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betreiber
    ADD CONSTRAINT uk3_st_vw_betreiber_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81954 (class 2606 OID 52189972)
-- Name: st_vw_betreiber uk4_st_vw_betreiber_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betreiber
    ADD CONSTRAINT uk4_st_vw_betreiber_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81946 (class 1259 OID 59068305)
-- Name: idx_st_vw_betreiber_kurztext_layout; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_betreiber_kurztext_layout ON verundentsorgung.st_vw_betreiber USING btree (kurztext_layout);


--
-- TOC entry 81947 (class 1259 OID 59068299)
-- Name: idx_st_vw_betreiber_proj_id; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_betreiber_proj_id ON verundentsorgung.st_vw_betreiber USING btree (id_st_vw_projekt, id);


--
-- TOC entry 81948 (class 1259 OID 59068304)
-- Name: idx_st_vw_betrieber_proj_layout; Type: INDEX; Schema: verundentsorgung; Owner: -
--

CREATE INDEX idx_st_vw_betrieber_proj_layout ON verundentsorgung.st_vw_betreiber USING btree (id_st_vw_projekt, kurztext_layout);


--
-- TOC entry 81956 (class 2620 OID 39687971)
-- Name: st_vw_betreiber tr_a_d__st_vw_betreiber__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_betreiber__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_betreiber REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81957 (class 2620 OID 39688107)
-- Name: st_vw_betreiber tr_a_i_or_u_or_d__st_vw_betreiber__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_betreiber__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_betreiber FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81958 (class 2620 OID 39688243)
-- Name: st_vw_betreiber tr_a_u__st_vw_betreiber__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_betreiber__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_betreiber REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81959 (class 2620 OID 39688381)
-- Name: st_vw_betreiber tr_b_i_or_u_or_d__st_vw_betreiber__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_betreiber__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_betreiber FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81955 (class 2606 OID 39690133)
-- Name: st_vw_betreiber fk_st_vw_betreiber_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_betreiber
    ADD CONSTRAINT fk_st_vw_betreiber_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:54

--
-- PostgreSQL database dump complete
--

