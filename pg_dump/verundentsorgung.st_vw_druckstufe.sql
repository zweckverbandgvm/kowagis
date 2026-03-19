--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:08

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
-- TOC entry 21467 (class 1259 OID 52970204)
-- Name: st_vw_druckstufe; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_druckstufe (
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
-- Dependencies: 21467
-- Name: TABLE st_vw_druckstufe; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_druckstufe IS 'Stammdaten Druckstufe';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 21467
-- Name: COLUMN st_vw_druckstufe.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_druckstufe.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 52970204)
-- Dependencies: 21467
-- Data for Name: st_vw_druckstufe; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_druckstufe (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
ebc4480e-ba5d-41de-89b8-daddd9bcab30	PN 2.5	PN 2.5	PN 2.5	2.5	002	2025-10-30 12:14:37.039103+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.039103+01	unbekannt	2025-10-30 12:14:37.039103+01	unbekannt	00000000-0000-0000-0000-000000000001
1eafa7ef-0f9e-4539-998e-fed98ff960e5	PN 2.5	PN 2.5	PN 2.5	2.5	002	2025-10-30 12:14:37.050823+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.050823+01	unbekannt	2025-10-30 12:14:37.050823+01	unbekannt	00000000-0000-0000-0000-000000000003
367f62e6-8591-4e24-9053-8672809837ab	PN 6	PN 6	PN 6	6	003	2025-10-30 12:14:37.052736+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.052736+01	unbekannt	2025-10-30 12:14:37.052736+01	unbekannt	00000000-0000-0000-0000-000000000001
cad3b485-324a-46ae-8c68-8097a25e954e	PN 6	PN 6	PN 6	6	003	2025-10-30 12:14:37.054428+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.054428+01	unbekannt	2025-10-30 12:14:37.054428+01	unbekannt	00000000-0000-0000-0000-000000000003
d26b2b06-27a8-4ddf-b2bf-4de754b3307c	PN 10	PN 10	PN 10	10	004	2025-10-30 12:14:37.055759+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.055759+01	unbekannt	2025-10-30 12:14:37.055759+01	unbekannt	00000000-0000-0000-0000-000000000001
2d081a2a-2559-4513-ada4-9d86816d5d1c	PN 10	PN 10	PN 10	10	004	2025-10-30 12:14:37.067175+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.067175+01	unbekannt	2025-10-30 12:14:37.067175+01	unbekannt	00000000-0000-0000-0000-000000000003
da5019c3-3ff9-457b-9603-1c249eb8310c	PN 16	PN 16	PN 16	16	005	2025-10-30 12:14:37.071759+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.071759+01	unbekannt	2025-10-30 12:14:37.071759+01	unbekannt	00000000-0000-0000-0000-000000000001
11eafce4-7b6f-49b3-a39c-49d3c7bf814d	PN 16	PN 16	PN 16	16	005	2025-10-30 12:14:37.075061+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.075061+01	unbekannt	2025-10-30 12:14:37.075061+01	unbekannt	00000000-0000-0000-0000-000000000003
353770b7-b19d-42bf-b1b1-ec290e7845d9	PN 25	PN 25	PN 25	25	006	2025-10-30 12:14:37.077855+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.077855+01	unbekannt	2025-10-30 12:14:37.077855+01	unbekannt	00000000-0000-0000-0000-000000000001
90c3d655-f214-483d-8c0c-d3b5aecb249d	PN 25	PN 25	PN 25	25	006	2025-10-30 12:14:37.093701+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.093701+01	unbekannt	2025-10-30 12:14:37.093701+01	unbekannt	00000000-0000-0000-0000-000000000003
2330728c-f985-4fb7-a559-b80d5857437d	PN 40	PN 40	PN 40	40	007	2025-10-30 12:14:37.097311+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.097311+01	unbekannt	2025-10-30 12:14:37.097311+01	unbekannt	00000000-0000-0000-0000-000000000001
bb40bf00-8348-4efb-b1ed-32972350aedb	PN 40	PN 40	PN 40	40	007	2025-10-30 12:14:37.098805+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.098805+01	unbekannt	2025-10-30 12:14:37.098805+01	unbekannt	00000000-0000-0000-0000-000000000003
1ad9cc8e-e33c-4d23-9439-e09cc9572996	PN 63	PN 63	PN 63	63	008	2025-10-30 12:14:37.100106+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.100106+01	unbekannt	2025-10-30 12:14:37.100106+01	unbekannt	00000000-0000-0000-0000-000000000001
fc316294-dbd4-415b-bc2c-e977fc6abe1d	PN 63	PN 63	PN 63	63	008	2025-10-30 12:14:37.101733+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.101733+01	unbekannt	2025-10-30 12:14:37.101733+01	unbekannt	00000000-0000-0000-0000-000000000003
f407fa94-a015-4fa6-b8ac-28c5273285ba	PN 100	PN 100	PN 100	100	009	2025-10-30 12:14:37.103402+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.103402+01	unbekannt	2025-10-30 12:14:37.103402+01	unbekannt	00000000-0000-0000-0000-000000000001
56661ad0-17fc-4b3d-aafb-6f2c478cdc9f	PN 100	PN 100	PN 100	100	009	2025-10-30 12:14:37.104704+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.104704+01	unbekannt	2025-10-30 12:14:37.104704+01	unbekannt	00000000-0000-0000-0000-000000000003
f5308ce1-4302-447a-b1c3-af71528c1f7a	PN 160	PN 160	PN 160	160	010	2025-10-30 12:14:37.116627+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.116627+01	unbekannt	2025-10-30 12:14:37.116627+01	unbekannt	00000000-0000-0000-0000-000000000001
ac215977-3008-4865-987c-9d848191bde9	PN 160	PN 160	PN 160	160	010	2025-10-30 12:14:37.120956+01	2100-01-01 00:00:00+01	2025-10-30 12:14:37.120956+01	unbekannt	2025-10-30 12:14:37.120956+01	unbekannt	00000000-0000-0000-0000-000000000003
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	0	001	2025-10-28 16:28:49.963636+01	2100-01-01 00:00:00+01	2025-10-28 16:28:49.963636+01	unbekannt	2025-10-28 16:28:49.963636+01	unbekannt	00000000-0000-0000-0000-000000000000
00000000-0000-0000-0000-000000000001	unbekannt	unbekannt	unbekannt	0	001	2025-10-28 16:28:49.973059+01	2100-01-01 00:00:00+01	2025-10-28 16:28:49.973059+01	unbekannt	2025-10-28 16:28:49.973059+01	unbekannt	00000000-0000-0000-0000-000000000001
00000000-0000-0000-0000-000000000003	unbekannt	unbekannt	unbekannt	0	001	2025-10-28 16:28:49.974906+01	2100-01-01 00:00:00+01	2025-10-28 16:28:49.974906+01	unbekannt	2025-10-28 16:28:49.974906+01	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 52970223)
-- Name: st_vw_druckstufe pk_st_vw_druckstufe; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_druckstufe
    ADD CONSTRAINT pk_st_vw_druckstufe PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52970225)
-- Name: st_vw_druckstufe uk3_st_vw_druckstufe_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_druckstufe
    ADD CONSTRAINT uk3_st_vw_druckstufe_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52970227)
-- Name: st_vw_druckstufe uk4_st_vw_druckstufe_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_druckstufe
    ADD CONSTRAINT uk4_st_vw_druckstufe_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 52970228)
-- Name: st_vw_druckstufe tr_a_d__st_vw_druckstufe__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_druckstufe__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_druckstufe REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 52970229)
-- Name: st_vw_druckstufe tr_a_i_or_u_or_d__st_vw_druckstufe__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_druckstufe__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_druckstufe FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 52970230)
-- Name: st_vw_druckstufe tr_a_u__st_vw_druckstufe__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_druckstufe__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_druckstufe REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 52970231)
-- Name: st_vw_druckstufe tr_b_i_or_u_or_d__st_vw_druckstufe__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_druckstufe__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_druckstufe FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 52970232)
-- Name: st_vw_druckstufe fk_st_vw_druckstufe_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_druckstufe
    ADD CONSTRAINT fk_st_vw_druckstufe_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:10

--
-- PostgreSQL database dump complete
--

