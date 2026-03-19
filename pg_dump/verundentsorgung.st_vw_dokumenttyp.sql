--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:02

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
-- TOC entry 12181 (class 1259 OID 39685171)
-- Name: st_vw_dokumenttyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_dokumenttyp (
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
-- TOC entry 83798 (class 0 OID 0)
-- Dependencies: 12181
-- Name: TABLE st_vw_dokumenttyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_dokumenttyp IS 'Stammdaten Dokumenttyp';


--
-- TOC entry 83799 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.id IS '  ';


--
-- TOC entry 83800 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.ident_hist IS 'historische ID';


--
-- TOC entry 83801 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83802 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.langtext IS 'Langtext ';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12181
-- Name: COLUMN st_vw_dokumenttyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_dokumenttyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83792 (class 0 OID 39685171)
-- Dependencies: 12181
-- Data for Name: st_vw_dokumenttyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_dokumenttyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	unbekannt	001	2022-12-19 20:41:10.871036+01	2100-01-01 00:00:00+01	2022-12-19 20:41:10.871036+01	unbekannt	2022-12-19 20:41:10.871036+01	unbekannt	00000000-0000-0000-0000-000000000001
f84c9b79-a650-4f22-8c35-bae0075b83d9	unbekannt	avi	video/x-msvideo	video/x-msvideo	001	2025-08-04 22:55:05.348722+02	2100-01-01 00:00:00+01	2025-08-04 22:55:05.348722+02	unbekannt	2025-08-04 22:55:05.348722+02	unbekannt	00000000-0000-0000-0000-000000000001
828378fb-b209-4fb2-9487-b061b6b09127	unbekannt	doc	application/msword	application/msword	001	2025-08-04 22:48:31.845886+02	2100-01-01 00:00:00+01	2025-08-04 22:48:31.845886+02	unbekannt	2025-08-04 22:48:31.845886+02	unbekannt	00000000-0000-0000-0000-000000000001
c790cf09-c756-450e-bdad-d92932ff6732	unbekannt	docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	application/vnd.openxmlformats-officedocument.wordprocessingml.document	001	2025-08-04 22:49:38.924974+02	2100-01-01 00:00:00+01	2025-08-04 22:49:38.924974+02	unbekannt	2025-08-04 22:49:38.924974+02	unbekannt	00000000-0000-0000-0000-000000000001
28aa5867-7733-414d-bef0-b83ddff59d39	unbekannt	jpg	image/jpeg	image/jpeg	001	2025-08-04 22:53:10.144081+02	2100-01-01 00:00:00+01	2025-08-04 22:53:10.144081+02	unbekannt	2025-08-04 22:53:10.144081+02	unbekannt	00000000-0000-0000-0000-000000000001
0755e3db-4910-44b9-a092-17e2cdbfe724	unbekannt	mp3	audio/mpeg	audio/mpeg	001	2025-08-04 22:53:10.160181+02	2100-01-01 00:00:00+01	2025-08-04 22:53:10.160181+02	unbekannt	2025-08-04 22:53:10.160181+02	unbekannt	00000000-0000-0000-0000-000000000001
ca9fd0c0-03b9-4ed0-8ffe-9c214fa31999	unbekannt	mp4	video/mp4	video/mp4	001	2025-08-04 22:55:05.32793+02	2100-01-01 00:00:00+01	2025-08-04 22:55:05.32793+02	unbekannt	2025-08-04 22:55:05.32793+02	unbekannt	00000000-0000-0000-0000-000000000001
31df74c5-a236-40de-b787-4d6194d54e99	unbekannt	mpeg, mpg	video/mpeg	video/mpeg	001	2025-08-04 22:55:05.332709+02	2100-01-01 00:00:00+01	2025-08-04 22:55:05.332709+02	unbekannt	2025-08-04 22:55:05.332709+02	unbekannt	00000000-0000-0000-0000-000000000001
fbd62051-734e-4119-8124-5cec2a06767a	unbekannt	pdf	application/pdf	application/pdf	001	2025-08-04 22:48:31.84329+02	2100-01-01 00:00:00+01	2025-08-04 22:48:31.84329+02	unbekannt	2025-08-04 22:48:31.84329+02	unbekannt	00000000-0000-0000-0000-000000000001
97bf1791-7260-4f9a-b156-e1e17e3ec20d	unbekannt	png	image/png	image/png	001	2025-08-04 22:53:10.16161+02	2100-01-01 00:00:00+01	2025-08-04 22:53:10.16161+02	unbekannt	2025-08-04 22:53:10.16161+02	unbekannt	00000000-0000-0000-0000-000000000001
c5a5e6eb-9eba-40c8-902c-52212dfb51af	unbekannt	pptx	application/vnd.openxmlformats-officedocument.presentationml.presentation	application/vnd.openxmlformats-officedocument.presentationml.presentation	001	2025-08-04 22:51:00.510915+02	2100-01-01 00:00:00+01	2025-08-04 22:51:00.510915+02	unbekannt	2025-08-04 22:51:00.510915+02	unbekannt	00000000-0000-0000-0000-000000000001
eae7e118-57b7-4225-8ee6-ee5a266e04ad	unbekannt	tiff, tif	image/tiff	image/tiff	001	2025-08-04 22:53:10.157027+02	2100-01-01 00:00:00+01	2025-08-04 22:53:10.157027+02	unbekannt	2025-08-04 22:53:10.157027+02	unbekannt	00000000-0000-0000-0000-000000000001
f98fb5e6-33dc-41d4-a34f-0a41b5773ed5	unbekannt	txt	text/plain	text/plain	001	2025-08-04 22:48:31.83298+02	2100-01-01 00:00:00+01	2025-08-04 22:48:31.83298+02	unbekannt	2025-08-04 22:48:31.83298+02	unbekannt	00000000-0000-0000-0000-000000000001
6ed599fe-3ac5-4d0d-9135-b6d1a69827f2	unbekannt	xls	application/vnd.ms-excel	application/vnd.ms-excel	001	2025-08-04 22:57:12.947459+02	2100-01-01 00:00:00+01	2025-08-04 22:57:12.947459+02	unbekannt	2025-08-04 22:57:12.947459+02	unbekannt	00000000-0000-0000-0000-000000000001
f840d276-5a2b-4198-be7b-d0d32e9f2977	unbekannt	zip	application/zip	application/zip	001	2025-08-04 22:48:31.844734+02	2100-01-01 00:00:00+01	2025-08-04 22:48:31.844734+02	unbekannt	2025-08-04 22:48:31.844734+02	unbekannt	00000000-0000-0000-0000-000000000001
5972b990-01e8-45f1-b144-e500350f8e9c	unbekannt	xlsx	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	001	2025-08-04 22:51:00.501054+02	2100-01-01 00:00:00+01	2025-08-04 22:51:00.501054+02	unbekannt	2025-08-04 22:51:00.501054+02	unbekannt	00000000-0000-0000-0000-000000000001
0253402f-6b13-4977-9342-77695d115580	unbekannt	unbekannt	unbekannt	unbekannt	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ec433e63-6251-41a3-8a73-1b99378d360c	unbekannt	avi	video/x-msvideo	video/x-msvideo	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
810a810f-54b3-4ea8-97ce-90398f12b05d	unbekannt	doc	application/msword	application/msword	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
34de6aaa-cce3-4b5c-a0d4-77ca9c0f1793	unbekannt	docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	application/vnd.openxmlformats-officedocument.wordprocessingml.document	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b3be60de-1bde-4b61-a64a-684a741aad6f	unbekannt	jpg	image/jpeg	image/jpeg	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e026108b-deb2-45a2-8fc9-005a2e88d6eb	unbekannt	mp3	audio/mpeg	audio/mpeg	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
52ec44e2-f3e1-4276-8fe1-24c86ebc2607	unbekannt	mp4	video/mp4	video/mp4	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5032a5ee-53a6-422a-ac0d-ebabd2a224a5	unbekannt	mpeg, mpg	video/mpeg	video/mpeg	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
96c90001-3fbc-4636-b93e-28ce7f043d6c	unbekannt	pdf	application/pdf	application/pdf	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
05e835a4-a91d-410d-93db-db8ce1d1f9da	unbekannt	png	image/png	image/png	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b63c8c95-d48c-4d74-a96d-e3992cde7d12	unbekannt	pptx	application/vnd.openxmlformats-officedocument.presentationml.presentation	application/vnd.openxmlformats-officedocument.presentationml.presentation	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
0a1ec801-d375-44c3-b020-06b370b5e868	unbekannt	tiff, tif	image/tiff	image/tiff	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c021b914-3f54-4a7b-8290-4ef0309a2257	unbekannt	txt	text/plain	text/plain	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7c78a067-cd2b-4664-953c-ad46879b80f4	unbekannt	xls	application/vnd.ms-excel	application/vnd.ms-excel	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
623c2105-67e1-4328-b3e8-8b182296407c	unbekannt	zip	application/zip	application/zip	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
a89fe6b3-3d2c-4ebd-9b02-41fc260344ec	unbekannt	xlsx	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687381)
-- Name: st_vw_dokumenttyp pk_st_vw_dokumenttyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_dokumenttyp
    ADD CONSTRAINT pk_st_vw_dokumenttyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2620 OID 39687974)
-- Name: st_vw_dokumenttyp tr_a_d__st_vw_dokumenttyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_dokumenttyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_dokumenttyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81949 (class 2620 OID 39688110)
-- Name: st_vw_dokumenttyp tr_a_i_or_u_or_d__st_vw_dokumenttyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_dokumenttyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_dokumenttyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81950 (class 2620 OID 39688246)
-- Name: st_vw_dokumenttyp tr_a_u__st_vw_dokumenttyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_dokumenttyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_dokumenttyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81951 (class 2620 OID 39688384)
-- Name: st_vw_dokumenttyp tr_b_i_or_u_or_d__st_vw_dokumenttyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_dokumenttyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_dokumenttyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81947 (class 2606 OID 39690153)
-- Name: st_vw_dokumenttyp fk_st_vw_dokumenttyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_dokumenttyp
    ADD CONSTRAINT fk_st_vw_dokumenttyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:04

--
-- PostgreSQL database dump complete
--

