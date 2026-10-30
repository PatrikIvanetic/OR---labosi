--
-- PostgreSQL database dump
--

\restrict 5gdHX3NHVNfzb0yERL6gIiTrxiS9Mwc2C9ypVlFCQb14lg59OZJm8yGpa7OD1Dz

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: izvodac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.izvodac (
    umjetnickoime character varying(100) NOT NULL,
    zanr character varying(20) NOT NULL
);


ALTER TABLE public.izvodac OWNER TO postgres;

--
-- Name: koncertni_prostor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.koncertni_prostor (
    nazivkoncprostor character varying(100) NOT NULL,
    ulica character varying(100) NOT NULL,
    kucnibroj character varying(7) NOT NULL,
    pbr integer NOT NULL,
    godinaotvorenja integer NOT NULL,
    sluzbenastranica character varying(200),
    vlasnik character varying(100) CONSTRAINT koncertni_prostor_upravitelj_not_null NOT NULL,
    primarnokoncprostor boolean
);


ALTER TABLE public.koncertni_prostor OWNER TO postgres;

--
-- Name: odrzali_koncert; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.odrzali_koncert (
    umjetnickoime character varying(100) NOT NULL,
    nazivkoncprostor character varying(100) NOT NULL
);


ALTER TABLE public.odrzali_koncert OWNER TO postgres;

--
-- Data for Name: izvodac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.izvodac (umjetnickoime, zanr) FROM stdin;
Severina	pop
Mišo Kovač	zabavna glazba
Gibonni	dalmatinska šansona
Sting	rock
Ricky Martin	pop
Prljavo kazalište	rock
Amira Medunjanin	sevdah
Thompson	folk rock
Metallica	heavy metal
Zvonko Bogdan	tamburaška glazba
Pips, Chips & Videoclips	pop rock
\.


--
-- Data for Name: koncertni_prostor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.koncertni_prostor (nazivkoncprostor, ulica, kucnibroj, pbr, godinaotvorenja, sluzbenastranica, vlasnik, primarnokoncprostor) FROM stdin;
Koncertna dvorana Vatroslava Lisinskog	Trg Stjepana Radića	4	10000	1973	https://www.lisinski.hr/hr/	Grad Zagreb	t
Koncertna dvorana Franjo Krežma	Ulica kneza trpimira	2/A	31000	2024	\N	Grad Osijek	t
Tvornica kulture	Ulica Pavla Šubića	2	10000	1999	https://www.tvornicakulture.com/	Mirjana Miškić-Domislić	t
Dom sportova	Trg Krešimira Ćosića	11	10000	1972	\N	Grad Zagreb	f
Arena Pula	Flavijevska ulica	b.b.	52100	1950	https://www.arenapula.hr/hr/	Grad Pula	f
Dvorana Gradski vrt	Ulica kneza Trpimira	23	31000	2008	\N	Grad Osijek	f
Spaladium Arena	Ulica Zrinsko Frankopanska	211	21000	2008	\N	Grad Split	f
Dvorana Gripe	Osječka ulica	11	21000	1979	\N	Grad Split	f
Hipodrom Zagreb	Ulica Radoslava Cimermana	5	10000	1948	\N	Grad Zagreb	f
Arena Zagreb	Ulica Vice Vukova	8	10000	2008	https://www.zagrebarena.hr/	Grad Zagreb	f
\.


--
-- Data for Name: odrzali_koncert; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.odrzali_koncert (umjetnickoime, nazivkoncprostor) FROM stdin;
Gibonni	Arena Pula
Gibonni	Arena Zagreb
Gibonni	Dom sportova
Gibonni	Dvorana Gradski vrt
Gibonni	Dvorana Gripe
Gibonni	Spaladium Arena
Gibonni	Tvornica kulture
Severina	Arena Pula
Severina	Arena Zagreb
Severina	Dom sportova
Severina	Koncertna dvorana Vatroslava Lisinskog
Severina	Dvorana Gradski vrt
Severina	Dvorana Gripe
Severina	Spaladium Arena
Prljavo kazalište	Arena Pula
Prljavo kazalište	Arena Zagreb
Prljavo kazalište	Dom sportova
Prljavo kazalište	Koncertna dvorana Vatroslava Lisinskog
Prljavo kazalište	Dvorana Gradski vrt
Prljavo kazalište	Dvorana Gripe
Prljavo kazalište	Spaladium Arena
Mišo Kovač	Arena Pula
Mišo Kovač	Arena Zagreb
Mišo Kovač	Dom sportova
Mišo Kovač	Koncertna dvorana Vatroslava Lisinskog
Mišo Kovač	Dvorana Gripe
Mišo Kovač	Spaladium Arena
Ricky Martin	Arena Pula
Sting	Arena Pula
Sting	Arena Zagreb
Amira Medunjanin	Koncertna dvorana Vatroslava Lisinskog
Amira Medunjanin	Koncertna dvorana Franjo Krežma
Amira Medunjanin	Arena Zagreb
Amira Medunjanin	Arena Pula
Thompson	Arena Pula
Thompson	Arena Zagreb
Thompson	Dom sportova
Thompson	Dvorana Gradski vrt
Thompson	Dvorana Gripe
Thompson	Spaladium Arena
Thompson	Hipodrom Zagreb
Metallica	Hipodrom Zagreb
Zvonko Bogdan	Koncertna dvorana Vatroslava Lisinskog
Zvonko Bogdan	Koncertna dvorana Franjo Krežma
Pips, Chips & Videoclips	Tvornica kulture
\.


--
-- Name: izvodac izvodac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.izvodac
    ADD CONSTRAINT izvodac_pkey PRIMARY KEY (umjetnickoime);


--
-- Name: koncertni_prostor koncertni_prostor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.koncertni_prostor
    ADD CONSTRAINT koncertni_prostor_pkey PRIMARY KEY (nazivkoncprostor);


--
-- Name: odrzali_koncert odrzali_koncert_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.odrzali_koncert
    ADD CONSTRAINT odrzali_koncert_pkey PRIMARY KEY (nazivkoncprostor, umjetnickoime);


--
-- Name: odrzali_koncert odrzali_koncert_nazivkoncprostor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.odrzali_koncert
    ADD CONSTRAINT odrzali_koncert_nazivkoncprostor_fkey FOREIGN KEY (nazivkoncprostor) REFERENCES public.koncertni_prostor(nazivkoncprostor);


--
-- Name: odrzali_koncert odrzali_koncert_umjetnickoime_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.odrzali_koncert
    ADD CONSTRAINT odrzali_koncert_umjetnickoime_fkey FOREIGN KEY (umjetnickoime) REFERENCES public.izvodac(umjetnickoime);


--
-- PostgreSQL database dump complete
--

\unrestrict 5gdHX3NHVNfzb0yERL6gIiTrxiS9Mwc2C9ypVlFCQb14lg59OZJm8yGpa7OD1Dz

