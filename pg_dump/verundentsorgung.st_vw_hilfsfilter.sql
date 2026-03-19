--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:14:27

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
-- TOC entry 21702 (class 1259 OID 55072486)
-- Name: st_vw_hilfsfilter; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_hilfsfilter (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    ident_hist text DEFAULT 'unbekannt'::text NOT NULL,
    kurztext text DEFAULT 'unbekannt'::text NOT NULL,
    langtext text DEFAULT 'unbekannt'::text NOT NULL,
    filtertext text DEFAULT 'unbekannt'::text NOT NULL,
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
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 21702
-- Name: TABLE st_vw_hilfsfilter; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_hilfsfilter IS 'Stammdaten QGIS Hilfsfiltergebiet';


--
-- TOC entry 83797 (class 0 OID 55072486)
-- Dependencies: 21702
-- Data for Name: st_vw_hilfsfilter; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_hilfsfilter (id, ident_hist, kurztext, langtext, filtertext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
b62b64e5-c175-456c-a1d1-26af5fc1cbae	unbekannt	Ausgabe	Betriebsstatus inbetrieb, stillgelegt und außer Betrieb	"id_st_vw_betriebsstatus" IN ( '1329884d-a1ca-4f85-ae83-025bb5c90780' , '3eba2ee1-bb59-40d5-9531-52116954d6e4', 'e3b51a21-2974-4ad3-833e-3082115fa8d4')	Von Ronald	001	2025-11-20 10:28:00.154899+01	2100-01-01 00:00:00+01	2025-11-20 10:28:00.154899+01	unbekannt	2025-11-20 10:28:00.154899+01	unbekannt	00000000-0000-0000-0000-000000000001
71cc8ce9-00ee-4a9a-a09b-7979077872ca	unbekannt	Betreiber ZVG	Betreiber nur ZVG	"id_st_vw_betreiber" = '05caad03-383c-454c-9f17-f235750a2b48'	Von Ronald	001	2025-11-20 10:30:43.956306+01	2100-01-01 00:00:00+01	2025-11-20 10:30:43.956306+01	unbekannt	2025-11-20 10:30:43.956306+01	unbekannt	00000000-0000-0000-0000-000000000001
0e1f7063-1bf0-4920-a7c2-4cabc123e018	unbekannt	Planung	Betriebsstatus inbetrieb, stillgelegt, geplant und außer Betrieb 	"id_st_vw_betriebsstatus" IN ( '1329884d-a1ca-4f85-ae83-025bb5c90780' , '3eba2ee1-bb59-40d5-9531-52116954d6e4', 'e3b51a21-2974-4ad3-833e-3082115fa8d4', '8fb4f24b-9648-4a9a-8b08-a3d3b030d776' )	Von Ronald	001	2025-11-20 10:42:49.277992+01	2100-01-01 00:00:00+01	2025-11-20 10:42:49.277992+01	unbekannt	2025-11-20 10:42:49.277992+01	unbekannt	00000000-0000-0000-0000-000000000001
51851593-b7eb-4f6a-88fd-45980f5b8ab5	unbekannt	Ausgabe	Betriebsstatus inbetrieb, stillgelegt und außer Betrieb	"id_st_vw_betriebsstatus" IN ( '99b6700e-2a1c-4fa6-846f-bf1642495cc6', '54bfce0b-7cf8-49ef-a25c-49b544113c6f', 'f5a9419f-90bf-419a-a3bc-15996eebf398')	Von Jens	001	2026-01-20 07:52:05.608472+01	2100-01-01 00:00:00+01	2026-01-20 07:52:05.608472+01	unbekannt	2026-01-20 07:52:05.608472+01	unbekannt	00000000-0000-0000-0000-000000000003
bc26e415-5dfb-48ba-9e37-0eb776f95bcc	unbekannt	Betreiber ZVG	Betreiber nur ZKWAL	"id_st_vw_betreiber" = '10df17aa-ac4d-4dad-b659-2e30acbeb68b'	Von Jens	001	2026-01-20 07:52:05.620114+01	2100-01-01 00:00:00+01	2026-01-20 07:52:05.620114+01	unbekannt	2026-01-20 07:52:05.620114+01	unbekannt	00000000-0000-0000-0000-000000000003
1335bad6-238b-49d3-8439-370f4b287136	unbekannt	Planung	Betriebsstatus inbetrieb, stillgelegt, geplant und außer Betrieb 	"id_st_vw_betriebsstatus" IN ( '99b6700e-2a1c-4fa6-846f-bf1642495cc6', '54bfce0b-7cf8-49ef-a25c-49b544113c6f', 'f5a9419f-90bf-419a-a3bc-15996eebf398','4d6b4ec5-1099-4edd-adfd-95b7b368adac')	Von Jens	001	2026-01-20 07:52:05.622299+01	2100-01-01 00:00:00+01	2026-01-20 07:52:05.622299+01	unbekannt	2026-01-20 07:52:05.622299+01	unbekannt	00000000-0000-0000-0000-000000000003
c7baf3fb-88b7-41b6-b8a6-29aa569fdd0d	unbekannt	Test	Test	"id_st_vw_betriebsstatus" IN ( '1329884d-a1ca-4f85-ae83-025bb5c90780' , '3eba2ee1-bb59-40d5-9531-52116954d6e4', 'e3b51a21-2974-4ad3-833e-3082115fa8d4', '8fb4f24b-9648-4a9a-8b08-a3d3b030d776' )	Von Jens	001	2026-01-20 07:52:05.624172+01	2100-01-01 00:00:00+01	2026-01-20 07:52:05.624172+01	unbekannt	2026-01-20 07:52:05.624172+01	unbekannt	00000000-0000-0000-0000-000000000003
5752e8d8-5145-4762-9659-61df8350ff38	unbekannt	Gültig von	Gültig von	gueltig_von >= '$1'	Von Dominik	001	2025-11-20 10:42:49.277992+01	2100-01-01 00:00:00+01	2025-11-20 10:42:49.277992+01	unbekannt	2025-11-20 10:42:49.277992+01	unbekannt	00000000-0000-0000-0000-000000000001
\.


--
-- TOC entry 81947 (class 2606 OID 55072506)
-- Name: st_vw_hilfsfilter pk_st_vw_hilfsfilter; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hilfsfilter
    ADD CONSTRAINT pk_st_vw_hilfsfilter PRIMARY KEY (id);


--
-- TOC entry 81949 (class 2606 OID 55072508)
-- Name: st_vw_hilfsfilter uk3_st_vw_hilfsfilter_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hilfsfilter
    ADD CONSTRAINT uk3_st_vw_hilfsfilter_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81951 (class 2606 OID 55072510)
-- Name: st_vw_hilfsfilter uk4_st_vw_hilfsfilter_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hilfsfilter
    ADD CONSTRAINT uk4_st_vw_hilfsfilter_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81953 (class 2620 OID 55072516)
-- Name: st_vw_hilfsfilter tr_a_d__st_vw_hilfsfilter__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_hilfsfilter__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_hilfsfilter REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81954 (class 2620 OID 55072517)
-- Name: st_vw_hilfsfilter tr_a_i_or_u_or_d__st_vw_hilfsfilter__tf_standard_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_hilfsfilter__tf_standard_after AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_hilfsfilter FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81955 (class 2620 OID 55072518)
-- Name: st_vw_hilfsfilter tr_a_u__st_vw_hilfsfilter__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_hilfsfilter__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_hilfsfilter REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81956 (class 2620 OID 55072519)
-- Name: st_vw_hilfsfilter tr_b_i_or_u_or_d__st_vw_hilfsfilter__tf_standard_before; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_hilfsfilter__tf_standard_before BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_hilfsfilter FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81952 (class 2606 OID 55072511)
-- Name: st_vw_hilfsfilter fk_st_vw_hilfsfilter_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_hilfsfilter
    ADD CONSTRAINT fk_st_vw_hilfsfilter_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:14:29

--
-- PostgreSQL database dump complete
--

