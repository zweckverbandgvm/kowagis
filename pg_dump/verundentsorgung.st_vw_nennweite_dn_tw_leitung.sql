--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 15.2

-- Started on 2026-03-18 15:15:05

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
-- TOC entry 12198 (class 1259 OID 39685476)
-- Name: st_vw_nennweite_dn_tw_leitung; Type: TABLE; Schema: verundentsorgung; Owner: -
--

CREATE TABLE verundentsorgung.st_vw_nennweite_dn_tw_leitung (
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
-- Dependencies: 12198
-- Name: TABLE st_vw_nennweite_dn_tw_leitung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON TABLE verundentsorgung.st_vw_nennweite_dn_tw_leitung IS 'Stammdaten Nennweite Dn Tw Leitung';


--
-- TOC entry 83803 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.id; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.id IS '  ';


--
-- TOC entry 83804 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.ident_hist; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.ident_hist IS 'historische ID';


--
-- TOC entry 83805 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.kurztext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.kurztext IS 'Kurztext ';


--
-- TOC entry 83806 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.langtext; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.langtext IS 'Langtext ';


--
-- TOC entry 83807 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.bemerkung; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.bemerkung IS 'Bemerkung ';


--
-- TOC entry 83808 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.sortierreihenfolge; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.sortierreihenfolge IS 'Sortierreihenfolge ';


--
-- TOC entry 83809 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.gueltig_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.gueltig_von IS 'gueltig von ';


--
-- TOC entry 83810 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.gueltig_bis; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.gueltig_bis IS 'gueltig_bis ';


--
-- TOC entry 83811 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.angelegt_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.angelegt_am IS 'Erfassungsdatum ';


--
-- TOC entry 83812 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.angelegt_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.angelegt_von IS 'Erfasser ';


--
-- TOC entry 83813 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.geaendert_am; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.geaendert_am IS 'Aenderungsdatum ';


--
-- TOC entry 83814 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.geaendert_von; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.geaendert_von IS 'Änderungsnutzer ';


--
-- TOC entry 83815 (class 0 OID 0)
-- Dependencies: 12198
-- Name: COLUMN st_vw_nennweite_dn_tw_leitung.id_st_vw_projekt; Type: COMMENT; Schema: verundentsorgung; Owner: -
--

COMMENT ON COLUMN verundentsorgung.st_vw_nennweite_dn_tw_leitung.id_st_vw_projekt IS 'ID st vw Projekt';


--
-- TOC entry 83796 (class 0 OID 39685476)
-- Dependencies: 12198
-- Data for Name: st_vw_nennweite_dn_tw_leitung; Type: TABLE DATA; Schema: verundentsorgung; Owner: -
--

COPY verundentsorgung.st_vw_nennweite_dn_tw_leitung (id, ident_hist, kurztext, langtext, bemerkung, sortierreihenfolge, gueltig_von, gueltig_bis, angelegt_am, angelegt_von, geaendert_am, geaendert_von, id_st_vw_projekt) FROM stdin;
00000000-0000-0000-0000-000000000000	unbekannt	unbekannt	unbekannt	\N	001	2024-08-06 13:55:49.957879+02	2100-01-01 00:00:00+01	2024-08-06 13:55:49.957879+02	unbekannt	2024-08-06 13:55:49.957879+02	unbekannt	00000000-0000-0000-0000-000000000001
01850031-0f35-44f8-82dd-64d36a890d21	unbekannt	90	90	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
02b37c98-1877-4f00-be0d-258cfb82fb73	unbekannt	40	40	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
2399005f-2532-443f-b322-0839c5de4487	unbekannt	25	25	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
e6f15ef0-02c9-4c8a-afe2-e6dd8ec15877	unbekannt	125	125	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
6db5945a-02e3-490d-afb5-0e4ccfef7b27	unbekannt	100	100	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
0aa453b0-e546-40b1-820c-1e5ce6c35efa	unbekannt	360	360	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
3170a307-c900-4a69-a2e4-0360c6a152f6	unbekannt	250	250	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
380e461c-1708-4f02-b8aa-084ed9233406	unbekannt	32	32	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
8a528405-aa54-46f5-ac0a-588e16a08cad	unbekannt	110	110	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
d1f226eb-4589-4251-800c-72bd5f04d2b7	unbekannt	80	80	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
c7dac293-9fc9-4a89-98c6-db57ee341f78	unbekannt	200	200	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
8c1f03cf-e4a7-4800-9355-854cee3a8b9a	unbekannt	300	300	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
5c18cee3-014c-417b-9ff8-d7d219d828d2	unbekannt	50	50	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
5f9c4ed9-5fca-4689-849d-3842969624e8	unbekannt	150	150	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
38a643d8-086e-416d-8f17-c1a185ebedc7	unbekannt	10	10	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
eb4b40be-7474-454f-9fa9-3992ec9d546f	unbekannt	65	65	\N	001	2024-08-06 15:06:46.952149+02	2100-01-01 00:00:00+01	2024-08-06 15:06:46.952149+02	unbekannt	2024-08-06 15:06:46.952149+02	unbekannt	00000000-0000-0000-0000-000000000001
ee0eec9d-7af3-4095-92c7-229011114cd6	unbekannt	unbekannt	unbekannt	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
2833ff9d-c5ac-447a-beaa-3dc70abf367c	unbekannt	90	90	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ad9fb626-468f-4eb6-a719-363cf37116f0	unbekannt	40	40	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
c199f4fa-9e99-4787-9b6f-3287e80b5222	unbekannt	25	25	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d7a8386c-7084-45c1-9991-e8673b4600f8	unbekannt	125	125	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
4ed3f47f-4f54-408a-adf2-2b395bad663f	unbekannt	100	100	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
59776b0d-0aa2-48fd-9ec0-20953d7040a3	unbekannt	360	360	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ed58cab2-5144-4424-8224-ba78759d5c77	unbekannt	250	250	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
b978293e-2252-4aa4-9ecf-4e0e8331c4cf	unbekannt	32	32	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
69a93351-e6fb-48fc-80b5-bffdc4e2bf31	unbekannt	110	110	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d7270f97-1c9c-4e9a-9366-753dedba3e0f	unbekannt	80	80	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
dd0c8d88-66fa-44cc-9ac0-16cffc018fbd	unbekannt	200	200	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
5a8f9199-c660-49cd-8861-840cf4d17d36	unbekannt	300	300	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
d294f97f-d817-4603-ae47-ee82d35ba820	unbekannt	50	50	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
815377fe-8b30-4818-a4a2-ad45b9543bd1	unbekannt	150	150	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
98a6357d-73c4-4a8d-9f7c-c0105ef8a9f0	unbekannt	10	10	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
ec1aba9f-f7bb-4c35-ba04-d0fdc8cbd2b0	unbekannt	65	65	\N	001	2025-09-23 15:35:53.417656+02	2100-01-01 00:00:00+01	2025-09-23 15:35:53.417656+02	unbekannt	2025-09-23 15:35:53.417656+02	unbekannt	00000000-0000-0000-0000-000000000003
\.


--
-- TOC entry 81946 (class 2606 OID 39687417)
-- Name: st_vw_nennweite_dn_tw_leitung pk_st_vw_nennweite_dn_tw_leitung; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_dn_tw_leitung
    ADD CONSTRAINT pk_st_vw_nennweite_dn_tw_leitung PRIMARY KEY (id);


--
-- TOC entry 81948 (class 2606 OID 52189871)
-- Name: st_vw_nennweite_dn_tw_leitung uk3_st_vw_nennweite_dn_tw_leitung_kurztext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_dn_tw_leitung
    ADD CONSTRAINT uk3_st_vw_nennweite_dn_tw_leitung_kurztext UNIQUE (id_st_vw_projekt, kurztext);


--
-- TOC entry 81950 (class 2606 OID 52190020)
-- Name: st_vw_nennweite_dn_tw_leitung uk4_st_vw_nennweite_dn_tw_leitung_langtext; Type: CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_dn_tw_leitung
    ADD CONSTRAINT uk4_st_vw_nennweite_dn_tw_leitung_langtext UNIQUE (id_st_vw_projekt, langtext);


--
-- TOC entry 81952 (class 2620 OID 39687992)
-- Name: st_vw_nennweite_dn_tw_leitung tr_a_d__st_vw_nennweite_dn_tw_leitung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_d__st_vw_nennweite_dn_tw_leitung__tf_history_after AFTER DELETE ON verundentsorgung.st_vw_nennweite_dn_tw_leitung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81953 (class 2620 OID 39688128)
-- Name: st_vw_nennweite_dn_tw_leitung tr_a_i_or_u_or_d__st_vw_nennweite_dn_tw_leitung__tf_standard_af; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_i_or_u_or_d__st_vw_nennweite_dn_tw_leitung__tf_standard_af AFTER INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_nennweite_dn_tw_leitung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_after();


--
-- TOC entry 81954 (class 2620 OID 39688264)
-- Name: st_vw_nennweite_dn_tw_leitung tr_a_u__st_vw_nennweite_dn_tw_leitung__tf_history_after; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_a_u__st_vw_nennweite_dn_tw_leitung__tf_history_after AFTER UPDATE ON verundentsorgung.st_vw_nennweite_dn_tw_leitung REFERENCING OLD TABLE AS old_table FOR EACH STATEMENT EXECUTE FUNCTION verundentsorgung.tf_history_after();


--
-- TOC entry 81955 (class 2620 OID 39688402)
-- Name: st_vw_nennweite_dn_tw_leitung tr_b_i_or_u_or_d__st_vw_nennweite_dn_tw_leitung__tf_standard_be; Type: TRIGGER; Schema: verundentsorgung; Owner: -
--

CREATE TRIGGER tr_b_i_or_u_or_d__st_vw_nennweite_dn_tw_leitung__tf_standard_be BEFORE INSERT OR DELETE OR UPDATE ON verundentsorgung.st_vw_nennweite_dn_tw_leitung FOR EACH ROW EXECUTE FUNCTION verundentsorgung.tf_standard_before();


--
-- TOC entry 81951 (class 2606 OID 39690238)
-- Name: st_vw_nennweite_dn_tw_leitung fk_st_vw_nennweite_dn_tw_leitung_st_vw_projekt; Type: FK CONSTRAINT; Schema: verundentsorgung; Owner: -
--

ALTER TABLE ONLY verundentsorgung.st_vw_nennweite_dn_tw_leitung
    ADD CONSTRAINT fk_st_vw_nennweite_dn_tw_leitung_st_vw_projekt FOREIGN KEY (id_st_vw_projekt) REFERENCES verundentsorgung.st_vw_projekt(id);


-- Completed on 2026-03-18 15:15:07

--
-- PostgreSQL database dump complete
--

