--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:09

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
-- TOC entry 21062 (class 1259 OID 47750766)
-- Name: st_vw_netztyp; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_netztyp (
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
-- Dependencies: 21062
-- Name: TABLE st_vw_netztyp; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_netztyp IS 'Stammdaten Netztyp';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 21062
-- Name: COLUMN st_vw_netztyp.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_netztyp.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 47750766)
-- Dependencies: 21062
-- Data for Name: st_vw_netztyp; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_netztyp (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
1729f8f2-a345-4923-b0e6-332d03b04dfb	unbekannt	ABLUFT	Abluft	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
f3b56e8d-c651-49ed-80b0-336cdd33b77d	unbekannt	ABLUFTLTG	Abluftleitung	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
c4dcaa0a-e825-49e0-b4f3-2d1e03636c29	unbekannt	DRUCKLUFT	Druckluft	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
08dd97db-38d6-40fc-9380-0bce652a1adb	unbekannt	ERDGAS	Erdgas	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
6f382fab-8da1-426a-b953-d12b5509a99e	unbekannt	ERDUNG	Erdung	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
c6a702a6-092a-4f64-8ff2-96995ca82240	unbekannt	FLO_FETT	Flotat- / Fettschlamm	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
5551c96f-a6bd-43f7-b4fc-6af9eddcfa23	unbekannt	KLAERGAS	Klärgas	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
c5ee42bf-21e6-46e0-9030-25e9453984c4	unbekannt	LUFT_AW	Luft (AW)	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
f6e8bd9a-8049-457f-9fee-be9a1c87397f	unbekannt	RUECKLAUFSL	Rücklaufschlamm	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
69454978-fa19-443c-b5c5-58e67e8ce663	unbekannt	SAUERSTOFF	Sauerstoff	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
bdf9d93d-a71b-4292-b448-b3f3bf5623fd	unbekannt	SK	Steuerkabel	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
9002637b-f5e1-42ca-8c06-9a388c4b82fe	unbekannt	SPUELW	Spülwasser	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
24544211-598e-4ae0-bda6-f1def4b65e62	unbekannt	TOPO	Topografie	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
3b54ba38-e799-43db-b30f-16d4967c584c	unbekannt	UEBERSCHUSSSL	Überschussschlamm	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
85c64f6f-0a1a-40a8-a03d-c35132d40ded	unbekannt	WAERME_H	Wärme heiß	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
6de5249a-b1ab-4839-ba9b-df837d32ae96	unbekannt	WAERME_K	Wärme kalt	\N	001	2025-07-02 09:33:39.945033+02	2100-01-01 00:00:00+01	2025-07-02 09:33:39.945033+02	unbekannt	2025-07-02 09:33:39.945033+02	unbekannt	00000000-0000-0000-0000-000000000001
d7fdc7e6-19ca-43a4-aa47-f9d3856e8000	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
688e6a9b-da85-483b-b47d-7857e0e52433	unbekannt	ABLUFT	Abluft	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7e97053f-78ea-49b3-8e9b-195736209b5c	unbekannt	ABLUFTLTG	Abluftleitung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
e1d822a4-99e3-46bd-8112-9bb87edae43c	unbekannt	DRUCKLUFT	Druckluft	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
7712618c-1c04-4ddd-af87-673ca4b0452b	unbekannt	ERDGAS	Erdgas	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
cb7680ac-4d04-477e-aab9-a7059802f6e5	unbekannt	ERDUNG	Erdung	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
f96b0157-83d1-4e79-927f-ada4041cb2e2	unbekannt	FLO_FETT	Flotat- / Fettschlamm	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
bbf74a75-a89a-4e13-9a70-5c38b192465e	unbekannt	KLAERGAS	Klärgas	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
3e1a4d4e-44d5-4d52-8ec9-618cdfadd832	unbekannt	LUFT_AW	Luft (AW)	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
36b21a91-13b2-43a4-b355-2584c3ec36aa	unbekannt	RUECKLAUFSL	Rücklaufschlamm	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
273c86d1-6047-4cce-9ffc-060ccd0e558d	unbekannt	SAUERSTOFF	Sauerstoff	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
124ec7c3-1974-4929-96ae-aebc5b66be1d	unbekannt	SK	Steuerkabel	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
95fdaf84-db6a-43a7-b9d0-d51c6a9f165a	unbekannt	SPUELW	Spülwasser	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5dbab9c9-821d-4f9d-978e-b1af49e3b96e	unbekannt	TOPO	Topografie	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
18a53629-4256-4d47-8421-7bf5cda9a228	unbekannt	UEBERSCHUSSSL	Überschussschlamm	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
64c39cdb-3d6a-4f8b-b7d6-d5f5235963d8	unbekannt	WAERME_H	Wärme heiß	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
9a929113-3829-42dc-9ba2-a79481972c22	unbekannt	WAERME_K	Wärme kalt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 47750785)
-- Name: st_vw_netztyp pk_st_vw_netztyp; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_netztyp
    ADD CONSTRAINT pk_st_vw_netztyp PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189875)
-- Name: st_vw_netztyp uk3_st_vw_netztyp_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_netztyp
    ADD CONSTRAINT uk3_st_vw_netztyp_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190024)
-- Name: st_vw_netztyp uk4_st_vw_netztyp_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_netztyp
    ADD CONSTRAINT uk4_st_vw_netztyp_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 47750795)
-- Name: st_vw_netztyp tr_a_d__st_vw_netztyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_netztyp__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_netztyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 47750796)
-- Name: st_vw_netztyp tr_a_i_or_u_or_d__st_vw_netztyp__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_netztyp__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_netztyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 47750797)
-- Name: st_vw_netztyp tr_a_u__st_vw_netztyp__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_netztyp__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_netztyp REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 47750798)
-- Name: st_vw_netztyp tr_b_i_or_u_or_d__st_vw_netztyp__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_netztyp__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_netztyp FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 47750790)
-- Name: st_vw_netztyp fk_st_vw_netztyp_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_netztyp
    ADD CONSTRAINT fk_st_vw_netztyp_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:11

--
-- PostgreSQL database dump complete
--

