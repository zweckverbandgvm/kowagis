--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:13:31

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
-- TOC entry 12249 (class 1259 OID 39686864)
-- Name: st_vw_bauteil; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_bauteil (
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
-- Dependencies: 12249
-- Name: TABLE st_vw_bauteil; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_bauteil IS 'Stammdaten Bauteil';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12249
-- Name: COLUMN st_vw_bauteil.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_bauteil.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39686864)
-- Dependencies: 12249
-- Data for Name: st_vw_bauteil; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_bauteil (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-09-10 13:45:35.846888+02	2100-01-01 00:00:00+01	2024-09-10 13:45:35.846888+02	unbekannt	2024-09-10 13:45:35.846888+02	unbekannt	00000000-0000-0000-0000-000000000001
18fd8efd-c35e-41c8-bcf0-d9af58a0b23e	unbekannt	3SCHA	Schacht	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
a32071df-4728-4497-bfd3-34e5fa80c20f	unbekannt	EVU	EVU Zählersäule	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
5588f4d3-79b7-41b1-9648-58dd462b9276	unbekannt	IDM	Messeinrichtung	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
96066b47-9372-43ab-8c02-cc2e4b034ae6	unbekannt	LAMPE	Lampe	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
4023892e-ac4f-49b6-b5ea-6d56d783fe0d	unbekannt	LAST	Ladestation	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
f66ee38e-171a-4b2a-b7fd-4754b6f8134d	unbekannt	MAROA	Schutzrohr	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
5f15c050-b697-48e9-b6cb-a7dccf5b8b2d	unbekannt	MUFFE	Muffe	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
d5c65d5d-109a-427e-bb14-3cd672371adb	unbekannt	SSC	Schaltschrank	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
d218ce0c-00e3-44c8-9259-27c425c752a6	unbekannt	TPK2	Trassenpunkt	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
15627aa2-0251-40d0-b2ba-81fc54625c2a	unbekannt	TRA	Trafo	\N	001	2024-09-10 13:50:17.097217+02	2100-01-01 00:00:00+01	2024-09-10 13:50:17.097217+02	unbekannt	2024-09-10 13:50:17.097217+02	unbekannt	00000000-0000-0000-0000-000000000001
c673667a-e62a-4b8e-acd9-c7cdfd8400bb	unbekannt	SCHIEBER	Schieber	\N	001	2025-07-02 10:39:27.354367+02	2100-01-01 00:00:00+01	2025-07-02 10:39:27.354367+02	unbekannt	2025-07-02 10:39:27.354367+02	unbekannt	00000000-0000-0000-0000-000000000001
f2ead911-8a4d-4a6d-8872-d6859de13641	unbekannt	UEB	Übergang	\N	001	2025-07-02 10:39:27.354367+02	2100-01-01 00:00:00+01	2025-07-02 10:39:27.354367+02	unbekannt	2025-07-02 10:39:27.354367+02	unbekannt	00000000-0000-0000-0000-000000000001
9d2a29de-1263-4a6d-9503-f9a1edf95e4a	unbekannt	NK	Netzknoten	\N	001	2025-07-29 14:48:07.683756+02	2100-01-01 00:00:00+01	2025-07-29 14:48:07.683756+02	unbekannt	2025-07-29 14:48:07.683756+02	unbekannt	00000000-0000-0000-0000-000000000001
595a51aa-d930-4e7b-83c8-c7e8ca19fc2b	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
57f118b9-263b-46e5-952d-603df2ac52f1	unbekannt	3SCHA	Schacht	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ff017464-2daf-4f87-9b60-4ee16a395f1e	unbekannt	EVU	EVU Zählersäule	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8c820a53-d487-4f6b-9e05-5969f3b77897	unbekannt	IDM	Messeinrichtung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0575395a-5baa-4449-b8b0-9cdac4439c02	unbekannt	LAMPE	Lampe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
648b559c-0ced-4718-a0e8-27524a82b31e	unbekannt	LAST	Ladestation	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
dfa8cd80-d829-4e23-b79c-8943434a7176	unbekannt	MAROA	Schutzrohr	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
8cd9ba52-6d43-4eaf-ac9f-14523347f1c5	unbekannt	MUFFE	Muffe	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a7877905-c7d6-4e9a-b2af-2eabade36291	unbekannt	SSC	Schaltschrank	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6408ebd1-bd47-4538-9a17-46c3490e2163	unbekannt	TPK2	Trassenpunkt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ea2e844a-8c86-4154-a587-ec1f41f265ee	unbekannt	TRA	Trafo	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3f004c0c-af1d-4ac0-9f8a-f26169fd8d44	unbekannt	SCHIEBER	Schieber	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
91c87d05-a7bb-480e-8751-cb20c0a0c2b0	unbekannt	UEB	Übergang	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a6e44919-e374-4a90-95fd-e00267465882	unbekannt	NK	Netzknoten	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687355)
-- Name: st_vw_bauteil pk_st_vw_bauteil; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_bauteil
    ADD CONSTRAINT pk_st_vw_bauteil PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189809)
-- Name: st_vw_bauteil uk3_st_vw_bauteil_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_bauteil
    ADD CONSTRAINT uk3_st_vw_bauteil_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189952)
-- Name: st_vw_bauteil uk4_st_vw_bauteil_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_bauteil
    ADD CONSTRAINT uk4_st_vw_bauteil_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687961)
-- Name: st_vw_bauteil tr_a_d__st_vw_bauteil__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_bauteil__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_bauteil REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688097)
-- Name: st_vw_bauteil tr_a_i_or_u_or_d__st_vw_bauteil__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_bauteil__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_bauteil FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688233)
-- Name: st_vw_bauteil tr_a_u__st_vw_bauteil__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_bauteil__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_bauteil REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688371)
-- Name: st_vw_bauteil tr_b_i_or_u_or_d__st_vw_bauteil__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_bauteil__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_bauteil FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690083)
-- Name: st_vw_bauteil fk_st_vw_bauteil_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_bauteil
    ADD CONSTRAINT fk_st_vw_bauteil_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:13:33

--
-- PostgreSQL database dump complete
--

