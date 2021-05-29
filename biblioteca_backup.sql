--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: angajat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.angajat (
    id_angajat integer NOT NULL,
    nume character varying(35),
    denumire_post character varying(30)
);


ALTER TABLE public.angajat OWNER TO postgres;

--
-- Name: carte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carte (
    id_carte integer NOT NULL,
    titlu character varying(50),
    autor character varying(30),
    an_aparitie integer,
    pret numeric,
    numar_exemplare integer
);


ALTER TABLE public.carte OWNER TO postgres;

--
-- Name: carte_cititor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carte_cititor (
    id_carte integer NOT NULL,
    id_cititor integer NOT NULL
);


ALTER TABLE public.carte_cititor OWNER TO postgres;

--
-- Name: carte_editura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carte_editura (
    id_carte integer NOT NULL,
    id_editura integer NOT NULL
);


ALTER TABLE public.carte_editura OWNER TO postgres;

--
-- Name: carte_fisa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carte_fisa (
    id_carte integer NOT NULL,
    id_fisa integer NOT NULL
);


ALTER TABLE public.carte_fisa OWNER TO postgres;

--
-- Name: cititor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cititor (
    id_cititor integer NOT NULL,
    nume_si_prenume character varying(50),
    adresa character varying(40),
    numar_telefon character varying(10),
    cnp character varying(13)
);


ALTER TABLE public.cititor OWNER TO postgres;

--
-- Name: editura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.editura (
    id_editura integer NOT NULL,
    nume character varying(40),
    adresa character varying(40),
    numar_telefon character varying(10)
);


ALTER TABLE public.editura OWNER TO postgres;

--
-- Name: fisa_de_lectura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fisa_de_lectura (
    id_fisa integer NOT NULL,
    id_cititor integer,
    data_imprumut date,
    data_returnare date
);


ALTER TABLE public.fisa_de_lectura OWNER TO postgres;

--
-- Data for Name: angajat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.angajat (id_angajat, nume, denumire_post) FROM stdin;
1	Mihaila Alexandra	bibliotecara
2	Deaconu Maria	femeie de seviciu
3	Avram Diana	bibliotecara
4	Stoica Mihaela	bibliotecara
5	Gava Ionela	femeie de serviciu
\.


--
-- Data for Name: carte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carte (id_carte, titlu, autor, an_aparitie, pret, numar_exemplare) FROM stdin;
1	Elantris	Brandon Sanderson	2005	40.5	10
2	Blestemul marii	Shea Ernshaw	2019	32.00	12
3	Baltagul	Mihail Sadoveanu	1930	25.00	15
4	Poezii	Mihai Eminescu	1998	18.00	16
6	Maitreyi	Mircea Eliade	1933	25.00	10
7	Pacienta tacuta	Alex Michaelides	2019	35.00	15
5	Amintiri din copilarie	Ion Creanga	1892	21.00	20
\.


--
-- Data for Name: carte_cititor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carte_cititor (id_carte, id_cititor) FROM stdin;
1	3
2	2
7	4
1	6
6	5
4	1
5	5
2	3
\.


--
-- Data for Name: carte_editura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carte_editura (id_carte, id_editura) FROM stdin;
2	4
1	3
3	5
4	1
5	5
6	2
7	3
1	2
\.


--
-- Data for Name: carte_fisa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carte_fisa (id_carte, id_fisa) FROM stdin;
1	2
1	5
5	4
3	7
7	8
2	6
6	3
4	8
2	1
7	2
4	2
3	5
\.


--
-- Data for Name: cititor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cititor (id_cititor, nume_si_prenume, adresa, numar_telefon, cnp) FROM stdin;
1	Arvatu Alina	Brasov, str. Carpati, nr. 23	0746236558	6001212033354
2	Gava Adriana	Brasov, str. Lunga, nr. 50	0752463255	2010101030046
3	Popa Vlad	Brasov, str. Tanasesti, nr. 13	0725633548	5020202033356
4	Muscalu Gabriela	Brasov, str. Decebal, nr. 203	0746553211	6000420030015
5	Zamfir Ruxandra	Brasov, str. Iezer, nr. 22	0762554632	2981212030065
6	Zafiu Mihai	Brasov, str. Aurora, nr. 44	0725444665	1970316033354
\.


--
-- Data for Name: editura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.editura (id_editura, nume, adresa, numar_telefon) FROM stdin;
1	Delfin	Brasov, str. Vlaicu, nr. 13	0248253655
2	Young Art	Bucuresti, str. A. I. Cuza, nr. 453	0246598831
3	Corint	Bucuresti, str. Iezer, nr. 45	0248623336
4	Arthur	Brasov, str. Lunga, nr. 46	0243659985
5	Stylished	Urziceni, str. Bratianu, nr. 8	0248565321
\.


--
-- Data for Name: fisa_de_lectura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fisa_de_lectura (id_fisa, id_cititor, data_imprumut, data_returnare) FROM stdin;
1	4	2020-09-23	2020-10-13
2	1	2020-09-20	2020-11-13
3	6	2020-12-20	2021-01-13
4	2	2020-12-12	2021-01-17
5	1	2020-08-12	2020-09-17
6	5	2020-06-21	2020-07-06
7	3	2020-06-22	2020-07-20
8	4	2020-09-24	2020-12-05
\.


--
-- Name: angajat angajat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.angajat
    ADD CONSTRAINT angajat_pkey PRIMARY KEY (id_angajat);


--
-- Name: carte_cititor carte_cititor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_cititor
    ADD CONSTRAINT carte_cititor_pkey PRIMARY KEY (id_carte, id_cititor);


--
-- Name: carte_editura carte_editura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_editura
    ADD CONSTRAINT carte_editura_pkey PRIMARY KEY (id_carte, id_editura);


--
-- Name: carte_fisa carte_fisa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_fisa
    ADD CONSTRAINT carte_fisa_pkey PRIMARY KEY (id_carte, id_fisa);


--
-- Name: carte carte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte
    ADD CONSTRAINT carte_pkey PRIMARY KEY (id_carte);


--
-- Name: cititor cititor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cititor
    ADD CONSTRAINT cititor_pkey PRIMARY KEY (id_cititor);


--
-- Name: editura editura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.editura
    ADD CONSTRAINT editura_pkey PRIMARY KEY (id_editura);


--
-- Name: fisa_de_lectura fisa_de_lectura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fisa_de_lectura
    ADD CONSTRAINT fisa_de_lectura_pkey PRIMARY KEY (id_fisa);


--
-- Name: carte_cititor carte_cititor_id_carte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_cititor
    ADD CONSTRAINT carte_cititor_id_carte_fkey FOREIGN KEY (id_carte) REFERENCES public.carte(id_carte);


--
-- Name: carte_cititor carte_cititor_id_cititor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_cititor
    ADD CONSTRAINT carte_cititor_id_cititor_fkey FOREIGN KEY (id_cititor) REFERENCES public.cititor(id_cititor);


--
-- Name: carte_editura carte_editura_id_carte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_editura
    ADD CONSTRAINT carte_editura_id_carte_fkey FOREIGN KEY (id_carte) REFERENCES public.carte(id_carte);


--
-- Name: carte_editura carte_editura_id_editura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_editura
    ADD CONSTRAINT carte_editura_id_editura_fkey FOREIGN KEY (id_editura) REFERENCES public.editura(id_editura);


--
-- Name: carte_fisa carte_fisa_id_carte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_fisa
    ADD CONSTRAINT carte_fisa_id_carte_fkey FOREIGN KEY (id_carte) REFERENCES public.carte(id_carte);


--
-- Name: carte_fisa carte_fisa_id_fisa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carte_fisa
    ADD CONSTRAINT carte_fisa_id_fisa_fkey FOREIGN KEY (id_fisa) REFERENCES public.fisa_de_lectura(id_fisa);


--
-- Name: fisa_de_lectura fisa_de_lectura_id_cititor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fisa_de_lectura
    ADD CONSTRAINT fisa_de_lectura_id_cititor_fkey FOREIGN KEY (id_cititor) REFERENCES public.cititor(id_cititor);


--
-- PostgreSQL database dump complete
--

