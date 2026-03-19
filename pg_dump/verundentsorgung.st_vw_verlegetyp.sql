--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:48

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
-- TOC entry 12214 (class 1259 OID 39685763)
-- Name: st_vw_verlegetyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_verlegetyp (
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
-- Dependencies: 12214
-- Name: TABLE st_vw_verlegetyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_verlegetyp IS 'Stammdaten Verlegetyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12214
-- Name: COLUMN st_vw_verlegetyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_verlegetyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685763)
-- Dependencies: 12214
-- Data for Name: st_vw_verlegetyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_verlegetyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-07-29 10:56:22.188629+02	2100-01-01 00:00:00+01	2024-07-29 10:56:22.188629+02	unbekannt	2024-07-29 10:56:22.188629+02	unbekannt	00000000-0000-0000-0000-000000000001
1352b992-a55f-4fbd-b4dd-aeb37997d5fa	unbekannt	BV	Betonverfüllung	\N	001	2024-08-05 10:19:30.214215+02	2100-01-01 00:00:00+01	2024-08-05 10:19:30.214215+02	unbekannt	2024-08-05 10:19:30.214215+02	unbekannt	00000000-0000-0000-0000-000000000001
30b99fb4-fc32-4e44-bd19-830819cc0868	unbekannt	HSB	Horizontalspülbohrung	\N	001	2024-08-05 10:19:30.214215+02	2100-01-01 00:00:00+01	2024-08-05 10:19:30.214215+02	unbekannt	2024-08-05 10:19:30.214215+02	unbekannt	00000000-0000-0000-0000-000000000001
8d1cf49f-1b20-4b11-af1e-b0adf002bb1e	unbekannt	oberirdisch	oberirdisch	\N	001	2024-08-05 10:19:30.214215+02	2100-01-01 00:00:00+01	2024-08-05 10:19:30.214215+02	unbekannt	2024-08-05 10:19:30.214215+02	unbekannt	00000000-0000-0000-0000-000000000001
f45c3e8d-21b9-435c-9c6c-45d939328a49	unbekannt	unterirdisch	unterirdisch	\N	001	2024-08-05 10:19:30.214215+02	2100-01-01 00:00:00+01	2024-08-05 10:19:30.214215+02	unbekannt	2024-08-05 10:19:30.214215+02	unbekannt	00000000-0000-0000-0000-000000000001
37bdd64a-04ef-4c20-9ab4-69cd4d5b517d	unbekannt	andere	andere	\N	001	2025-05-22 08:25:22.747954+02	2100-01-01 00:00:00+01	2025-05-22 08:25:22.747954+02	unbekannt	2025-05-22 08:25:22.747954+02	unbekannt	00000000-0000-0000-0000-000000000001
3ef762a5-dee8-4409-9a43-45f44a720e3e	unbekannt	eingeschoben	eingeschoben	\N	001	2025-05-22 08:25:22.747954+02	2100-01-01 00:00:00+01	2025-05-22 08:25:22.747954+02	unbekannt	2025-05-22 08:25:22.747954+02	unbekannt	00000000-0000-0000-0000-000000000001
0018c673-8bbf-47ff-ab27-80b0f25ab8a6	unbekannt	freiliegend	freiliegend	\N	001	2025-05-22 08:25:22.747954+02	2100-01-01 00:00:00+01	2025-05-22 08:25:22.747954+02	unbekannt	2025-05-22 08:25:22.747954+02	unbekannt	00000000-0000-0000-0000-000000000001
90d3d752-d079-4b9d-9f00-7b03fda5abf8	unbekannt	Grabenverlegung	Grabenverlegung	\N	001	2025-05-22 08:25:22.747954+02	2100-01-01 00:00:00+01	2025-05-22 08:25:22.747954+02	unbekannt	2025-05-22 08:25:22.747954+02	unbekannt	00000000-0000-0000-0000-000000000001
8433b57f-bca6-41ce-a0dd-46bc728dbf1a	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5963865b-6d4b-4e0f-b827-be546941802a	unbekannt	BV	Betonverfüllung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c25b5f9c-919a-44cf-9cb6-cb45f59b5e1b	unbekannt	HSB	Horizontalspülbohrung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c24480d4-e323-467a-9fcf-d23f70958735	unbekannt	oberirdisch	oberirdisch	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
6d4ec84d-d33a-49ba-8a1c-67c44dc54096	unbekannt	unterirdisch	unterirdisch	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
82a764f1-ce35-4128-ba95-b154e373e786	unbekannt	andere	andere	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7e0b4b2a-5a7b-49d8-bba2-e07d19df8c01	unbekannt	eingeschoben	eingeschoben	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ca247b33-779e-4489-a7d7-482cce536270	unbekannt	freiliegend	freiliegend	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
850ea6ec-3411-4d73-af84-4deca5917a71	unbekannt	Grabenverlegung	Grabenverlegung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cc5a8be0-da14-4c17-b029-b3e2b4447676	unbekannt	iR	im Rohr	\N	001	2026-01-19 07:37:13.915462+01	2100-01-01 00:00:00+01	2026-01-19 07:37:13.915462+01	unbekannt	2026-01-19 07:37:13.915462+01	unbekannt	00000000-0000-0000-0000-000000000001
c24bb63b-7f74-49be-9902-89a48edf71a6	unbekannt	iR	im Rohr	\N	001	2026-01-19 07:37:15.096932+01	2100-01-01 00:00:00+01	2026-01-19 07:37:15.096932+01	unbekannt	2026-01-19 07:37:15.096932+01	unbekannt	00000000-0000-0000-0000-000000000003
5a90918d-d444-4903-9972-c2a2950520db	unbekannt	niR	nicht im Rohr	\N	001	2026-01-19 07:37:16.079186+01	2100-01-01 00:00:00+01	2026-01-19 07:37:16.079186+01	unbekannt	2026-01-19 07:37:16.079186+01	unbekannt	00000000-0000-0000-0000-000000000001
e6bf0465-654c-4890-a996-4264c40af594	unbekannt	niR	nicht im Rohr	\N	001	2026-01-19 07:37:17.002676+01	2100-01-01 00:00:00+01	2026-01-19 07:37:17.002676+01	unbekannt	2026-01-19 07:37:17.002676+01	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687451)
-- Name: st_vw_verlegetyp pk_st_vw_verlegetyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verlegetyp
    ADD CONSTRAINT pk_st_vw_verlegetyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189903)
-- Name: st_vw_verlegetyp uk3_st_vw_verlegetyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verlegetyp
    ADD CONSTRAINT uk3_st_vw_verlegetyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190052)
-- Name: st_vw_verlegetyp uk4_st_vw_verlegetyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verlegetyp
    ADD CONSTRAINT uk4_st_vw_verlegetyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39688009)
-- Name: st_vw_verlegetyp tr_a_d__st_vw_verlegetyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_verlegetyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_verlegetyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688145)
-- Name: st_vw_verlegetyp tr_a_i_or_u_or_d__st_vw_verlegetyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_verlegetyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verlegetyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688281)
-- Name: st_vw_verlegetyp tr_a_u__st_vw_verlegetyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_verlegetyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_verlegetyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688419)
-- Name: st_vw_verlegetyp tr_b_i_or_u_or_d__st_vw_verlegetyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_verlegetyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_verlegetyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690293)
-- Name: st_vw_verlegetyp fk_st_vw_verlegetyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_verlegetyp
    ADD CONSTRAINT fk_st_vw_verlegetyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:50

--
-- PostgreSQL database dump complete
--

