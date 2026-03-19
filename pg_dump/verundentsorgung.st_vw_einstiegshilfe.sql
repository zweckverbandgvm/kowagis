--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:14

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
-- TOC entry 12185 (class 1259 OID 39685243)
-- Name: st_vw_einstiegshilfe; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_einstiegshilfe (
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
-- Dependencies: 12185
-- Name: TABLE st_vw_einstiegshilfe; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_einstiegshilfe IS 'Stammdaten Einstiegshilfe';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12185
-- Name: COLUMN st_vw_einstiegshilfe.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_einstiegshilfe.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685243)
-- Dependencies: 12185
-- Data for Name: st_vw_einstiegshilfe; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_einstiegshilfe (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-05 07:44:35.5527+02	2100-01-01 00:00:00+01	2024-08-05 07:44:35.5527+02	unbekannt	2024-08-05 07:44:35.5527+02	unbekannt	00000000-0000-0000-0000-000000000001
4566a06d-b60e-4118-b179-76a421ec324d	unbekannt	5	nicht vorhanden	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
c0dae02d-b558-4df5-a4ff-d0359b2dd127	unbekannt	NEIN	nein	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
d210abbe-9055-4e4b-9491-67a01b884a4d	unbekannt	STEI	Steigeisen	\N	001	2024-08-05 08:29:46.148659+02	2100-01-01 00:00:00+01	2024-08-05 08:29:46.148659+02	unbekannt	2024-08-05 08:29:46.148659+02	unbekannt	00000000-0000-0000-0000-000000000001
d82dc612-4f2d-48f9-b585-aa853835730c	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
697a0fe2-c147-479d-8daa-c562d9114bf1	unbekannt	5	nicht vorhanden	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f7ceccc4-3aca-496b-9a34-84fe42188f27	unbekannt	NEIN	nein	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4160b325-8144-43ca-ae72-478133d670cc	unbekannt	STEI	Steigeisen	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687391)
-- Name: st_vw_einstiegshilfe pk_st_vw_einstiegshilfe; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einstiegshilfe
    ADD CONSTRAINT pk_st_vw_einstiegshilfe PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189843)
-- Name: st_vw_einstiegshilfe uk3_st_vw_einstiegshilfe_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einstiegshilfe
    ADD CONSTRAINT uk3_st_vw_einstiegshilfe_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52189990)
-- Name: st_vw_einstiegshilfe uk4_st_vw_einstiegshilfe_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einstiegshilfe
    ADD CONSTRAINT uk4_st_vw_einstiegshilfe_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687979)
-- Name: st_vw_einstiegshilfe tr_a_d__st_vw_einstiegshilfe__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_einstiegshilfe__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_einstiegshilfe REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688115)
-- Name: st_vw_einstiegshilfe tr_a_i_or_u_or_d__st_vw_einstiegshilfe__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_einstiegshilfe__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_einstiegshilfe FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688251)
-- Name: st_vw_einstiegshilfe tr_a_u__st_vw_einstiegshilfe__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_einstiegshilfe__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_einstiegshilfe REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688389)
-- Name: st_vw_einstiegshilfe tr_b_i_or_u_or_d__st_vw_einstiegshilfe__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_einstiegshilfe__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_einstiegshilfe FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690178)
-- Name: st_vw_einstiegshilfe fk_st_vw_einstiegshilfe_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_einstiegshilfe
    ADD CONSTRAINT fk_st_vw_einstiegshilfe_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:16

--
-- PostgreSQL database dump complete
--

