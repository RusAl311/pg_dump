--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 13.0

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
-- Name: Autos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Autos" (
    id integer NOT NULL,
    "City" character varying,
    "Brand" character varying,
    "Model" character varying,
    "Year" integer,
    "BodyType" character varying,
    "Color" character varying,
    "Engine" double precision,
    "Power" integer,
    "Fuel" character varying,
    "Mileage" integer,
    "Transmission" character varying,
    "DriveType" character varying,
    "New" boolean,
    "PriceM" integer,
    "PriceD" integer,
    "Order" integer NOT NULL,
    "Name" character varying,
    "Number" character varying,
    "AddDate" date
);


ALTER TABLE public."Autos" OWNER TO postgres;

--
-- Name: Autos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Autos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Autos_id_seq" OWNER TO postgres;

--
-- Name: Autos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Autos_id_seq" OWNED BY public."Autos".id;


--
-- Name: SalonAutos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SalonAutos" (
    id integer NOT NULL,
    "City" character varying,
    "Brand" character varying,
    "Model" character varying,
    "Year" integer,
    "BodyType" character varying,
    "Color" character varying,
    "Engine" double precision,
    "Power" integer,
    "Fuel" character varying,
    "Mileage" integer,
    "Transmission" character varying,
    "DriveType" character varying,
    "New" boolean,
    "PriceM" integer,
    "PriceD" integer,
    "Order" integer
);


ALTER TABLE public."SalonAutos" OWNER TO postgres;

--
-- Name: SalonAutos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SalonAutos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SalonAutos_id_seq" OWNER TO postgres;

--
-- Name: SalonAutos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SalonAutos_id_seq" OWNED BY public."SalonAutos".id;


--
-- Name: Autos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autos" ALTER COLUMN id SET DEFAULT nextval('public."Autos_id_seq"'::regclass);


--
-- Name: SalonAutos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalonAutos" ALTER COLUMN id SET DEFAULT nextval('public."SalonAutos_id_seq"'::regclass);


--
-- Data for Name: Autos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Autos" (id, "City", "Brand", "Model", "Year", "BodyType", "Color", "Engine", "Power", "Fuel", "Mileage", "Transmission", "DriveType", "New", "PriceM", "PriceD", "Order", "Name", "Number", "AddDate") FROM stdin;
7122	İsmayıllı	Ford	Focus	2003	Sedan	Ağ	1.6	130	Benzin	327000	Mexaniki	Ön	f	5500	3235	4478012	Rəmzi	(055) 677-47-89	2020-11-17
1	Sumqayıt	Hyundai	Veracruz	2008	Offroader / SUV	Qara	3.8	260	Benzin	170400	Avtomat	Tam	f	18700	11000	4471806	Reşad	(055) 344-40-50	2020-11-15
2	Ağstafa	Mitsubishi	Airtrek	2001	Offroader / SUV	Qəhvəyi	2.4	170	Benzin	227000	Avtomat	Ön	f	9000	5294	4474243	Samir	(070) 490-56-66	2020-11-15
3	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Ağ	2	184	Dizel	81000	Avtomat	Ön	f	20700	12176	4474236	Eli	(077) 747-81-00	2020-11-15
5	Bakı	Chevrolet	Cruze	2014	Sedan	Göy	1.4	141	Benzin	156747	Avtomat	Ön	f	14100	8294	4474237	Sarvan	(051) 317-86-84	2020-11-15
6	Bakı	LADA (VAZ)	21011	1978	Sedan	Ağ	1.3	65	Benzin	58000	Mexaniki	Arxa	f	8500	5000	4473407	Pasa	(055) 545-51-23	2020-11-15
7	Siyəzən	LADA (VAZ)	21099	1997	Sedan	Bənövşəyi	1.5	75	Benzin	233529	Mexaniki	Ön	f	6000	3529	4474250	Yarbala	(070) 629-93-92	2020-11-15
8	Sumqayıt	Mercedes	E 240	1998	Sedan	Yaşıl	2.4	170	Benzin	288000	Avtomat	Arxa	f	11500	6765	4474262	Sherif	(070) 215-74-73	2020-11-15
9	Şəki	Mercedes	190	1992	Sedan	Qızılı	2	122	Benzin	300300	Avtomat	Arxa	f	6715	3950	4474267	Ilkin	(070) 287-84-86	2020-11-15
10	Bakı	BMW	328	2016	Sedan	Boz	2	245	Benzin	133000	Avtomat	Arxa	f	31450	18500	4474140	Sinan	(051) 636-11-17	2020-11-15
11	Bakı	Hyundai	Elantra	2017	Sedan	Ağ	1.6	132	Dizel	48252	Avtomat	Ön	f	27300	16059	4474126	Emil	(055) 458-33-82	2020-11-15
12	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Boz	3	340	Dizel	108000	Avtomat	Tam	f	117300	69000	4449039	Yusif	(050) 207-00-85	2020-11-15
13	Bakı	Kia	Rio	2018	Sedan	Boz	1.6	123	Benzin	32000	Avtomat	Ön	f	24500	14412	4474175	Soltan	(050) 250-56-52	2020-11-15
14	Şəki	LADA (VAZ)	2108	1993	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	420000	Mexaniki	Ön	f	3400	2000	4474252	Memmed	(050) 655-22-12	2020-11-15
15	Bakı	Mercedes	C 240	2000	Sedan	Göy	2.6	177	Benzin	243887	Avtomat	Arxa	f	10700	6294	4458142	Dilafet	(055) 440-05-03	2020-11-15
16	Bakı	Chevrolet	Cruze	2014	Sedan	Yaş Asfalt	1.8	141	Benzin	116000	Avtomat	Ön	f	18400	10824	4474271	Rüstəm	(055) 340-99-93	2020-11-15
17	Bakı	Mitsubishi	Pajero	2009	Offroader / SUV	Ağ	3	188	Benzin	95000	Avtomat	Tam	f	25800	15176	4474276	Huseyin	(077) 524-52-31	2020-11-15
18	Bakı	Kia	Sorento	2007	Offroader / SUV	Gümüşü	3.3	242	Benzin	100000	Avtomat	Tam	f	16500	9706	4428311	Fuad	(055) 243-22-00	2020-11-15
19	Bakı	Kia	Cerato	2014	Sedan	Yaş Asfalt	2	166	Benzin	57000	Avtomat	Ön	f	22500	13235	4413628	Rasad	(099) 800-08-87	2020-11-15
20	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	93000	Avtomat	Tam	f	45730	26900	4436335	cavid	(055) 344-00-11	2020-11-15
21	Bakı	Hyundai	Sonata	2016	Sedan	Tünd qırmızı	1.6	180	Benzin	32200	Avtomat	Ön	f	24400	14353	4416882	Aydin	(050) 870-45-43	2020-11-15
22	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	102300	Avtomat	Ön	f	16500	9706	4446315	Fazil	(050) 585-84-84	2020-11-15
23	Sumqayıt	Renault	Megane	2006	Universal	Qara	1.5	105	Dizel	273258	Mexaniki	Ön	f	11200	6588	4474272	Ilkin	(050) 778-65-56	2020-11-15
24	Bakı	Kia	Optima	2011	Sedan	Ağ	2.4	180	Benzin	160000	Avtomat	Ön	f	20500	12059	4474651	Tehmasib	(070) 512-11-44	2020-11-16
25	Bakı	BMW	525	2001	Sedan	Gümüşü	2.5	192	Benzin	354400	Avtomat	Arxa	f	15900	9353	4246390	Samid	(050) 359-99-19	2020-11-16
26	Quba	Mercedes	Atego 1222	2007	Yük maşını	Göy	4.3	218	Dizel	350000	Mexaniki	Arxa	f	51000	30000	4474653	Mehman	(050) 318-58-61	2020-11-16
27	Qazax	LADA (VAZ)	2101	1974	Sedan	Bej	1.2	58	Benzin	245000	Mexaniki	Arxa	f	3800	2235	4474657	Elshen	(055) 290-19-62	2020-11-16
28	Bakı	Mercedes	E 350	2010	Sedan	Gümüşü	3.5	272	Benzin	195000	Avtomat	Tam	f	40630	23900	4474620	Nicat	(051) 555-01-11	2020-11-16
29	Bakı	Land Rover	Range Rover	2005	Offroader / SUV	Qara	4.4	286	Benzin	200000	Avtomat	Tam	f	28000	16471	4474655	Kamran	(055) 905-83-63	2020-11-16
30	Bakı	Bajaj	Avenger 220	2019	Motosiklet	Ağ	0.3	25	Benzin	3000	Mexaniki	Arxa	f	6000	3529	4435239	Fərhad	(055) 224-12-96	2020-11-16
31	Bakı	Mercedes	E 300	1994	Sedan	Bənövşəyi	3	177	Dizel	567000	Avtomat	Arxa	f	8000	4706	4474669	Rəvan	(051) 365-09-12	2020-11-16
32	Bakı	LADA (VAZ)	2106	1983	Sedan	Ağ	1.6	76	Benzin	150000	Mexaniki	Arxa	f	4300	2529	4474673	Sahib	(070) 772-72-33	2020-11-16
33	Bakı	Mercedes	C 180	2005	Sedan	Qara	1.8	143	Benzin	334000	Avtomat	Arxa	f	12300	7235	4474674	Yawar	(055) 205-50-10	2020-11-16
34	Qəbələ	Renault	Megane Scenic	2006	Minivan	Gümüşü	1.5	110	Dizel	325000	Mexaniki	Ön	f	8500	5000	4474676	Cavanşir	(050) 730-02-00	2020-11-16
35	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	126000	Avtomat	Ön	f	16200	9529	4474675	Tapdıg	(099) 819-00-18	2020-11-16
36	Bakı	Mitsubishi	Attrage	2014	Sedan	Ağ	1.2	110	Benzin	127000	Avtomat	Ön	f	12500	7353	2964621	Ага	(070) 203-76-48	2020-11-16
37	Bakı	BMW	X5	2008	Offroader / SUV	Gümüşü	4.8	350	Benzin	180000	Avtomat	Tam	f	27710	16300	4465218	Rashad	(050) 270-61-03	2020-11-16
38	Gəncə	Mercedes	ML 350	2009	Offroader / SUV	Ağ	3.5	272	Benzin	93000	Avtomat	Tam	f	31000	18235	4474691	Yusif	(050) 544-00-49	2020-11-16
39	Bakı	Chevrolet	Cruze	2012	Sedan	Boz	1.4	141	Benzin	165000	Avtomat	Ön	f	13700	8059	4474688	Jalə	(055) 897-08-78	2020-11-16
40	Hacıqabul	LADA (VAZ)	2107	1989	Sedan	Tünd qırmızı	1.5	65	Benzin	222222	Mexaniki	Arxa	f	3700	2176	4474692	Suleyman	(099) 873-80-00	2020-11-16
41	Bakı	Mercedes	S 500	2011	Sedan	Qara	4.7	430	Benzin	107500	Avtomat	Arxa	f	55250	32500	4444624	Kamal	(050) 266-00-88	2020-11-16
42	Bakı	Hyundai	Accent	2013	Sedan	Qara	1.6	140	Benzin	159000	Avtomat	Ön	f	16000	9412	4370761	Kenan	(050) 775-77-67	2020-11-16
43	Bakı	Kia	Cerato	2011	Sedan	Ağ	1.6	124	Benzin	68600	Avtomat	Ön	f	16650	9794	4474698	Sahib	(050) 225-55-00	2020-11-16
44	Bakı	BMW	328	2013	Sedan	Göy	2	325	Benzin	93000	Avtomat	Arxa	f	37230	21900	4474679	Nahid	(051) 327-15-75	2020-11-16
46	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qırmızı	1.5	76	Hibrid	137000	Avtomat	Ön	f	10800	6353	4462247	Vasif	(055) 229-50-60	2020-11-16
47	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	148000	Avtomat	Ön	f	45050	26500	4443807	Ayxan	(050) 750-07-77	2020-11-16
49	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	210000	Avtomat	Ön	f	15800	9294	4421119	Anar	(050) 364-33-11	2020-11-16
48	Bakı	Mercedes	ML 63 AMG	2009	Offroader / SUV	Qara	6.3	510	Benzin	200948	Avtomat	Tam	f	39000	22941	4453780	Ruslan	(051) 625-12-18	2020-11-16
45	Bakı	Mazda	6	2008	Sedan	Tünd qırmızı	2	147	Benzin	212000	Avtomat	Ön	f	15500	9118	4384647	Aysel	(050) 808-08-12	2020-11-16
4	Bakı	LADA (VAZ)	Vesta SW	2018	Universal	Boz	1.8	122	Benzin	31000	Mexaniki	Ön	f	27500	16176	3973853	Elnur	(055) 211-30-73	2020-11-15
51	Bakı	BMW	528	2015	Sedan	Gümüşü	2	245	Benzin	89500	Avtomat	Arxa	f	40460	23800	4405691	Cavidan	(099) 333-11-30	2020-11-16
52	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Qara	1.3	90	Dizel	178430	Mexaniki	Ön	f	9900	5824	4461303	Otar	(077) 642-25-39	2020-11-16
68	Bakı	Ford	Transit	2013	Furqon	Ağ	2.2	155	Dizel	171000	Mexaniki	Ön	f	20500	12059	4474668	Rüstəm	(050) 201-22-15	2020-11-16
69	Bakı	Opel	Vectra	1999	Sedan	Qara	1.6	101	Benzin	447000	Mexaniki	Ön	f	5400	3176	4436256	Vuqar	(055) 455-15-45	2020-11-16
70	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2.4	178	Benzin	226000	Avtomat	Ön	f	18800	11059	4474704	Islam	(050) 227-28-12	2020-11-16
71	Bakı	Subaru	Forester	2007	Offroader / SUV	Qara	2	177	Benzin	289000	Avtomat	Tam	f	11800	6941	4474701	Emil	(077) 373-58-55	2020-11-16
72	Bakı	BMW	323	1998	Sedan	Gümüşü	2	150	Benzin	312211	Avtomat	Arxa	f	8700	5118	4474707	TOGRUL	(055) 290-83-57	2020-11-16
74	Bakı	Infiniti	FX35	2010	Offroader / SUV	Ağ	3.5	307	Benzin	142000	Avtomat	Tam	f	32500	19118	4401993	Ceyhun	(050) 453-88-89	2020-11-16
75	Bakı	Ford	Transit	1996	Mikroavtobus	Gümüşü	2.4	140	Dizel	985665	Mexaniki	Arxa	f	15500	9118	4474717	Ramiz	(055) 248-25-26	2020-11-16
76	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.8	150	Benzin	180000	Avtomat	Ön	f	17000	10000	4448752	Murad	(051) 777-33-88	2020-11-16
77	Bakı	Kia	Optima	2012	Sedan	Ağ	2.4	180	Benzin	110000	Avtomat	Ön	f	26000	15294	4452925	Ruslan	(055) 243-40-20	2020-11-16
78	Bakı	BMW	528	2014	Sedan	Yaş Asfalt	2	245	Benzin	168000	Avtomat	Arxa	f	52700	31000	4450158	Kerım	(051) 364-86-66	2020-11-16
79	Bakı	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	9009	Mexaniki	Arxa	f	15000	8824	4350773	Ferhad	(055) 650-03-06	2020-11-16
80	Bakı	Skoda	Fabia	2012	Hetçbek / Liftbek	Ağ	1.6	105	Benzin	159000	Avtomat	Ön	f	10800	6353	4418322	Sirac	(055) 220-03-03	2020-11-16
82	Bakı	Kia	Sportage	2008	Offroader / SUV	Gümüşü	2	141	Benzin	121000	Avtomat	Tam	f	17950	10559	4419867	Kamran	(050) 978-43-62	2020-11-16
83	Bakı	Mercedes	R 350	2006	Offroader / SUV	Qara	3.5	272	Benzin	196000	Avtomat	Tam	f	25000	14706	4399784	Sabir	(050) 776-01-91	2020-11-16
73	Bakı	BMW	X4	2018	Offroader / SUV	Qara	2	252	Benzin	29000	Avtomat	Tam	f	105400	62000	4474708	Arif	(055) 855-77-66	2020-11-16
106	Gəncə	LADA (VAZ)	2106	2001	Sedan	Gümüşü	1.6	75	Benzin	56100	Mexaniki	Arxa	f	5900	3471	4474719	Nofəl	(077) 768-26-28	2020-11-16
107	Bakı	Mercedes	S 350	2011	Sedan	Qara	3.5	306	Benzin	165000	Avtomat	Arxa	f	45900	27000	4126769	Cavid	(051) 225-92-15	2020-11-16
108	Bakı	Mercedes	E 200	2018	Sedan	Yaş Asfalt	2.2	184	Dizel	47000	Avtomat	Tam	f	80750	47500	4162859	Sahib	(050) 210-45-28	2020-11-16
109	Bakı	BMW	328	2015	Sedan	Ağ	2	245	Benzin	64700	Avtomat	Arxa	f	33150	19500	4445406	Elçin	(055) 619-55-55	2020-11-16
110	Bakı	Mercedes	C 200	2000	Sedan	Göy	2	136	Benzin	341173	Avtomat	Arxa	f	13000	7647	4417938	Paşa	(070) 263-46-76	2020-11-16
111	Bakı	Mercedes	C 200	1999	Sedan	Qara	2	136	Benzin	335000	Avtomat	Arxa	f	12700	7471	4427652	Miri	(050) 341-76-60	2020-11-16
112	Bakı	Land Rover	RR Sport	2012	Offroader / SUV	Qara	5	510	Benzin	124000	Avtomat	Tam	f	64600	38000	3376451	Teymur	(050) 241-43-01	2020-11-16
135	Ağstafa	LADA (VAZ)	2109	1995	Hetçbek / Liftbek	Qara	1.5	74	Benzin	412494	Mexaniki	Ön	f	5000	2941	4474720	Orxan	(055) 422-48-41	2020-11-16
136	Bakı	Mercedes	S 500	2014	Sedan	Qara	4.7	455	Benzin	63000	Avtomat	Arxa	f	127500	75000	4370373	Elvin	(050) 668-80-88	2020-11-16
137	Bakı	Renault	Sandero	2020	Offroader / SUV	Göy	1.6	113	Benzin	7000	Avtomat	Ön	f	22000	12941	4387540	Camal	(050) 345-10-11	2020-11-16
138	Bakı	Changan	Eado	2014	Sedan	Ağ	1.6	125	Benzin	254300	Avtomat	Ön	f	10800	6353	4429291	Orxan	(050) 753-73-03	2020-11-16
140	Bakı	Toyota	Corolla	2009	Sedan	Boz	1.8	130	Benzin	136500	Avtomat	Ön	f	19800	11647	4398985	Çingiz	(070) 708-07-78	2020-11-16
141	Bakı	Ford	Mustang	2019	Kabrio	Qara	2.3	309	Benzin	9000	Avtomat	Arxa	f	50660	29800	4454086	Rehman	(051) 900-06-00	2020-11-16
143	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	277702	Avtomat	Arxa	f	14700	8647	4462724	Akif	(055) 881-43-61	2020-11-16
144	Bakı	LADA (VAZ)	2106	1989	Sedan	Ağ	1.6	75	Benzin	200000	Mexaniki	Arxa	f	3600	2118	4472204	Amir	(050) 593-52-26	2020-11-16
145	Mingəçevir	GAZ	24	1976	Sedan	Qara	2.5	115	Benzin	230000	Mexaniki	Arxa	f	6200	3647	4475006	Satıcı	(055) 318-74-76	2020-11-16
147	Sumqayıt	BMW	523	1998	Sedan	Qara	2.5	170	Benzin	352000	Avtomat	Arxa	f	11900	7000	4475000	Nicat	(050) 888-82-88	2020-11-16
148	Sumqayıt	Daewoo	Nexia	1996	Sedan	Ağ	1.5	85	Benzin	200000	Mexaniki	Ön	f	3500	2059	4475009	Məşədi 	(050) 579-55-92	2020-11-16
150	Bakı	Land Rover	Range Rover	2012	Offroader / SUV	Qara	5	510	Benzin	115000	Avtomat	Tam	f	71060	41800	4453347	RAHIB	(055) 405-08-08	2020-11-16
151	Gəncə	GAZ	33021	1998	Yük maşını	Boz	2.5	96	Benzin	320000	Mexaniki	Arxa	f	6200	3647	4475012	Nariman	(055) 342-53-00	2020-11-16
152	Gəncə	Mercedes	410 D	1994	Yük maşını	Göy	2.3	125	Dizel	40000	Mexaniki	Arxa	f	15500	9118	4475016	Tahir	(055) 643-20-18	2020-11-16
146	Bakı	UAZ	3303	2015	Yük maşını	Boz	2.7	157	Benzin	68601	Mexaniki	Tam	f	11900	7000	4445006	Ceyhun	(050) 697-84-62	2020-11-16
142	Bakı	Ssang Yong	Korando	2014	Offroader / SUV	Ağ	2.2	155	Benzin	94500	Avtomat	Tam	f	19400	11412	4422505	Турал	(050) 697-84-62	2020-11-16
153	Bakı	Mercedes	C 200	1997	Universal	Qara	2	136	Benzin	250000	Avtomat	Arxa	f	8900	5235	4475017	Anar	(055) 787-46-48	2020-11-16
154	Bakı	BMW	528	2013	Sedan	Gümüşü	2	245	Benzin	28000	Avtomat	Arxa	f	51850	30500	4471059	Rasif	(050) 207-00-60	2020-11-16
155	Bakı	BMW	530	2019	Sedan	Ağ	2	252	Benzin	3500	Avtomat	Arxa	f	79900	47000	4325641	Farid	(055) 855-45-55	2020-11-16
156	Bakı	Toyota	Sequoia	2011	Offroader / SUV	Qara	5.7	383	Benzin	46000	Avtomat	Tam	f	88910	52300	4472233	Iskender	(050) 888-80-03	2020-11-16
158	Bakı	BMW	328	2013	Sedan	Yaş Asfalt	2	245	Benzin	145000	Avtomat	Arxa	f	27710	16300	4169737	Fuad	(055) 333-40-40	2020-11-16
159	Zaqatala	GAZ	33021	1998	Yük maşını	Bej	2.4	131	Qaz	270000	Mexaniki	Arxa	f	7800	4588	4431068	Rufat	(050) 581-87-08	2020-11-16
161	Bakı	BMW	750	2007	Sedan	Yaşıl	4.8	367	Benzin	177600	Avtomat	Arxa	f	21930	12900	4269617	Ramiq	(050) 225-79-14	2020-11-16
167	Sumqayıt	Kia	Cerato	2012	Sedan	Ağ	1.6	132	Benzin	151668	Avtomat	Ön	f	16300	9588	4475019	Murad	(055) 430-86-67	2020-11-16
168	Bakı	Hyundai	Sonata	2013	Sedan	Ağ	2.4	178	Benzin	126500	Avtomat	Ön	f	25800	15176	4466047	Nurlan	(070) 604-61-60	2020-11-16
169	Bakı	Land Rover	Discovery	2014	Offroader / SUV	Ağ	3	340	Benzin	90000	Avtomat	Tam	f	56100	33000	4384960	Ramil	(055) 701-10-10	2020-11-16
170	Bakı	Toyota	Camry	2018	Sedan	Göy	2.5	215	Hibrid	42000	Avtomat	Ön	f	48450	28500	4199507	Feyman	(050) 272-18-18	2020-11-16
171	Bakı	Mercedes	C 200	1999	Universal	Yaşıl	2	136	Benzin	270000	Avtomat	Arxa	f	11000	6471	4460037	Ayxan	(070) 920-85-39	2020-11-16
172	Bakı	BMW	530	2017	Sedan	Ağ	2	249	Benzin	64000	Avtomat	Arxa	f	62900	37000	4426196	Əkbər	(050) 600-87-76	2020-11-16
173	Bakı	LADA (VAZ)	Priora	2012	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	156000	Mexaniki	Ön	f	12800	7529	4424655	Amid	(055) 855-55-10	2020-11-16
175	Bakı	Porsche	Cayenne Turbo S	2015	Offroader / SUV	Ağ	4.8	570	Benzin	59050	Avtomat	Tam	f	144500	85000	4419073	Soltan	(055) 589-19-90	2020-11-16
177	Bakı	Ford	Transit	2003	Furqon	Ağ	2.5	76	Dizel	335000	Mexaniki	Ön	f	15000	8824	4426954	İlkin 	(055) 212-47-15	2020-11-16
178	Bakı	Hyundai	Sonata	2010	Sedan	Boz	2	165	Benzin	90200	Avtomat	Ön	f	21800	12824	4474993	Ceyhun	(050) 716-54-46	2020-11-16
179	Bakı	Chevrolet	Niva	2013	Offroader / SUV	Gümüşü	1.7	80	Benzin	287000	Mexaniki	Tam	f	13500	7941	4475022	Rəşad	(055) 414-39-24	2020-11-16
180	Bakı	Ford	Transit	2008	Furqon	Ağ	2.4	145	Dizel	148000	Mexaniki	Arxa	f	23800	14000	4475018	Ilqar	(050) 522-28-22	2020-11-16
181	Bakı	Hyundai	Azera	2012	Sedan	Ağ	2.4	180	Benzin	122000	Avtomat	Ön	f	28500	16765	4302016	Ilkin	(055) 800-50-01	2020-11-16
182	Bakı	SEAT	Ibiza	2012	Hetçbek / Liftbek	Ağ	1.6	110	Benzin	106000	Avtomat	Ön	f	9800	5765	4475024	Rehman	(050) 657-29-12	2020-11-16
183	Bakı	Mercedes	E 200	1996	Sedan	Göy	2	136	Benzin	230710	Avtomat	Ön	f	9700	5706	4445311	Hüseyn	(050) 657-72-04	2020-11-16
184	Bakı	Mercedes	E 200	1994	Sedan	Gümüşü	2	136	Benzin	438683	Avtomat	Arxa	f	9500	5588	4475025	Bextiyar	(070) 671-78-72	2020-11-16
186	Bərdə	Kia	Sportage	2012	Offroader / SUV	Qara	2	166	Benzin	106000	Avtomat	Tam	f	27000	15882	4475026	Sahib	(050) 303-66-31	2020-11-16
187	Bakı	Kia	Sportage	2016	Offroader / SUV	Qara	2	150	Benzin	50000	Avtomat	Ön	f	38250	22500	4473565	Murad	(070) 234-29-20	2020-11-16
188	Bakı	Mitsubishi	Outlander	2008	Offroader / SUV	Ağ	3	220	Benzin	292000	Avtomat	Tam	f	18700	11000	4472110	Abdulla	(055) 349-40-60	2020-11-16
189	Bakı	Mercedes	E 220	1993	Sedan	Gümüşü	2.2	146	Benzin	400000	Avtomat	Arxa	f	7300	4294	4387213	Ramin	(055) 799-67-74	2020-11-16
190	Bakı	Dodge	Dart	2013	Sedan	Qırmızı	1.4	170	Benzin	164000	Mexaniki	Ön	f	14500	8529	4465140	Xalid	(055) 237-00-47	2020-11-16
196	Bakı	Kia	Optima	2012	Sedan	Ağ	2	165	Benzin	107000	Avtomat	Ön	f	24000	14118	4411629	Rafiq	(055) 235-76-09	2020-11-16
197	Bakı	Hyundai	Sonata	2014	Sedan	Qara	1.6	180	Benzin	73000	Avtomat	Ön	f	21500	12647	4456416	zaur	(050) 288-88-19	2020-11-16
198	Bakı	Hyundai	Elantra	2007	Sedan	Gümüşü	1.6	115	Dizel	75000	Avtomat	Ön	f	14700	8647	4460702	Elvin	(077) 441-08-12	2020-11-16
200	Bakı	Tofas	Sahin	2005	Sedan	Gümüşü	1.6	86	Benzin	98000	Mexaniki	Arxa	f	6200	3647	4475029	Nihad	(077) 442-42-26	2020-11-16
202	İmişli	Mercedes	E 320	2005	Sedan	Ağ	3.2	224	Benzin	316000	Avtomat	Arxa	f	21800	12824	4457344	Orxan	(050) 593-45-92	2020-11-16
203	Ağsu	GAZ	53	1990	Yük maşını	Göy	4	75	Dizel	254815	Mexaniki	Arxa	f	7000	4118	4475031	Eli	(051) 344-84-74	2020-11-16
185	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	79000	Avtomat	Ön	f	19300	11353	4468800	Rufiz	(055) 243-99-99	2020-11-16
201	Bakı	Chevrolet	Cruze	2015	Sedan	Tünd qırmızı	1.4	141	Benzin	69000	Avtomat	Ön	f	14800	8706	4464599	Emil	(055) 371-12-63	2020-11-16
162	Bakı	Nissan	Juke	2015	Offroader / SUV	Qara	1.6	125	Benzin	58200	Avtomat	Ön	f	21900	12882	4402259	Турал	(050) 697-84-62	2020-11-16
160	Bakı	Mazda	6	2014	Sedan	Ağ	2.5	192	Benzin	144000	Avtomat	Arxa	f	25500	15000	4193166	Rauf	(051) 884-44-48	2020-11-16
199	Bakı	Chevrolet	Cruze	2016	Sedan	Gümüşü	1.4	153	Benzin	49000	Avtomat	Ön	f	19300	11353	4453048	Kamran	(055) 219-09-49	2020-11-16
157	Bakı	Saipa	132	2018	Sedan	Yaş Asfalt	1.3	75	Benzin	50000	Mexaniki	Ön	f	12300	7235	4470512	Aqa	(055) 320-92-92	2020-11-16
192	Şəki	Ford	Transit	1999	Furqon	Ağ	2.5	96	Dizel	360000	Mexaniki	Arxa	f	15800	9294	4446334	Nicat	(050) 676-75-51	2020-11-16
205	Bakı	Iran Khodro	Azsamand	2007	Sedan	Gümüşü	1.8	115	Benzin	600000	Mexaniki	Ön	f	4900	2882	4475032	elgun	(070) 555-66-08	2020-11-16
206	Bakı	LADA (VAZ)	Kalina	2008	Hetçbek / Liftbek	Göy	1.6	75	Benzin	330000	Mexaniki	Ön	f	7400	4353	4475034	Elşad	(077) 359-21-04	2020-11-16
207	Bakı	Mercedes	E 260	1987	Sedan	Yaş Asfalt	2.6	177	Benzin	182650	Avtomat	Arxa	f	4800	2824	4475035	Asif	(055) 333-19-93	2020-11-16
208	Bakı	Iran Khodro	Azsamand	2006	Sedan	Qara	1.8	110	Benzin	200000	Mexaniki	Ön	f	5500	3235	4475037	Emin	(055) 429-51-47	2020-11-16
210	Bakı	BMW	320	2008	Sedan	Göy	2	177	Dizel	228000	Avtomat	Arxa	f	19000	11176	4431330	Nurlan	(051) 368-04-57	2020-11-16
211	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Boz	1.4	97	Benzin	167700	Mexaniki	Ön	f	12500	7353	4443550	Emin	(055) 200-73-37	2020-11-16
212	Bakı	Ford	F-150	2018	Pikap	Qara	2.7	340	Benzin	12000	Avtomat	Tam	f	88400	52000	4387697	Tural	(050) 210-22-70	2020-11-16
213	Bakı	LADA (VAZ)	2106	1984	Sedan	Göy	1.6	75	Benzin	63000	Mexaniki	Arxa	f	8800	5176	4389831	Araz	(055) 201-91-00	2020-11-16
214	Bakı	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	295000	Avtomat	Arxa	f	15450	9088	4407924	Taleh	(055) 407-89-66	2020-11-16
215	Bakı	Mercedes	S 350	2006	Sedan	Qara	3.5	306	Benzin	185250	Avtomat	Arxa	f	29750	17500	4222112	Roma	(050) 590-16-22	2020-11-16
216	Gəncə	LADA (VAZ)	Niva	2018	Offroader / SUV	Qara	1.7	80	Benzin	13500	Mexaniki	Tam	f	18900	11118	4298242	Rustam 	(077) 303-02-20	2020-11-16
217	Bakı	BMW	335	2007	Sedan	Göy	3	306	Benzin	169000	Avtomat	Arxa	f	24600	14471	4442055	Seymur	(070) 271-33-05	2020-11-16
238	Bakı	Mercedes	E 230	2007	Sedan	Qara	2.5	204	Benzin	308000	Avtomat	Arxa	f	21300	12529	4321769	Ramil	(050) 373-87-00	2020-11-16
240	Mingəçevir	Ford	Ranger	2018	Pikap	Ağ	2.2	163	Dizel	22100	Avtomat	Tam	f	98600	58000	4332235	Rasim	(055) 555-26-00	2020-11-16
241	Bakı	Land Rover	Discovery	2017	Offroader / SUV	Yaş Asfalt	3	340	Benzin	32700	Avtomat	Tam	f	116960	68800	4191964	Çingiz	(050) 271-70-60	2020-11-16
242	Bakı	Land Rover	Discovery	2010	Offroader / SUV	Qara	3	190	Dizel	274000	Avtomat	Tam	f	36040	21200	4471666	Tural	(050) 480-16-57	2020-11-16
244	Bakı	Audi	Q3	2013	Offroader / SUV	Ağ	2	211	Benzin	115000	Avtomat	Tam	f	34850	20500	4415379	Orxan	(055) 471-08-09	2020-11-16
245	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Qara	5	510	Benzin	33600	Avtomat	Tam	f	190400	112000	4381423	Həsən 	(070) 528-00-00	2020-11-16
249	Bakı	Volkswagen	Passat	2015	Sedan	Ağ	1.8	180	Benzin	94000	Avtomat	Ön	f	19500	11471	4462637	Asif	(055) 788-66-00	2020-11-16
250	Bakı	Toyota	Corolla	2006	Universal	Qızılı	1.4	97	Dizel	162000	Mexaniki	Ön	f	12500	7353	4446479	Rusdem	(050) 362-35-92	2020-11-16
251	Bakı	BMW	528	2016	Sedan	Göy	2	245	Benzin	65250	Avtomat	Arxa	f	43520	25600	4413435	Taryel	(050) 314-41-55	2020-11-16
252	Bakı	Porsche	Cayenne GTS	2015	Offroader / SUV	Qara	3.6	440	Benzin	27000	Avtomat	Tam	f	133450	78500	4368154	Tural	(055) 229-03-13	2020-11-16
253	Bakı	Mercedes	Vito 111	2008	Van	Qara	2.2	163	Dizel	313000	Avtomat	Arxa	f	26800	15765	4051838	Vurqun	(055) 793-70-07	2020-11-16
254	Bakı	Toyota	Camry	2018	Sedan	Ağ	2.5	200	Benzin	30500	Avtomat	Ön	f	55250	32500	4370372	Nezer	(050) 211-68-87	2020-11-16
204	Bakı	Chevrolet	Cruze	2017	Sedan	Qara	1.4	153	Benzin	56000	Avtomat	Ön	f	19000	11176	4437482	Rufiz	(055) 243-99-99	2020-11-16
209	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2.4	174	Benzin	41000	Avtomat	Tam	f	37500	22059	4445984	Ədalət	(050) 962-56-98	2020-11-16
239	Bakı	Daewoo	Gentra	2014	Sedan	Qara	1.5	107	Benzin	202700	Mexaniki	Ön	f	11700	6882	4471672	Semender	(050) 993-88-22	2020-11-16
255	Bakı	MV Agusta	F3 800	2013	Motosiklet	Ağ	0.8	148	Benzin	2950	Mexaniki	Arxa	f	28900	17000	4471174	Sahib	(055) 512-52-30	2020-11-16
256	Bakı	Chevrolet	Cruze	2016	Sedan	Mavi	1.4	141	Benzin	74000	Avtomat	Ön	f	17900	10529	4425457	Rasim	(050) 382-25-07	2020-11-16
257	Bakı	Jaguar	F-Pace	2018	Offroader / SUV	Qara	2	250	Benzin	0	Avtomat	Tam	t	100300	59000	4097338	Togrul	(050) 245-68-88	2020-11-16
258	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	113365	Avtomat	Tam	f	76500	45000	4446872	Ebilfez	(070) 224-11-16	2020-11-16
260	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	152500	Avtomat	Arxa	f	35700	21000	4448538	Ramil	(050) 464-24-08	2020-11-16
262	Bakı	Mercedes	S 350	2006	Sedan	Ağ	3.5	272	Benzin	224000	Avtomat	Arxa	f	34000	20000	3550534	Ceyhun	(070) 880-85-86	2020-11-16
263	Bakı	Suzuki	SX4	2015	Offroader / SUV	Ağ	1.6	117	Benzin	5020	Avtomat	Ön	f	25600	15059	4424817	Bəhruz	(077) 277-11-96	2020-11-16
271	Bakı	Hyundai	Getz	2008	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	22500	Avtomat	Ön	f	10900	6412	4436647	Ramin	(070) 753-01-12	2020-11-16
272	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Dizel	174000	Mexaniki	Ön	f	13000	7647	4462914	Baxdiyar	(050) 388-22-99	2020-11-16
273	Bakı	Mercedes	GLA 200	2014	Offroader / SUV	Qırmızı	1.6	156	Benzin	26000	Avtomat	Arxa	f	47260	27800	4474994	Tural	(070) 433-10-00	2020-11-16
274	Bakı	Kia	Rio	2009	Universal	Qara	1.4	90	Benzin	180555	Mexaniki	Ön	f	10500	6176	4474996	Elgun	(055) 469-88-94	2020-11-16
278	Bakı	Toyota	Prado	2007	Offroader / SUV	Gümüşü	4	250	Benzin	231000	Avtomat	Tam	f	34850	20500	4459290	Imdad	(070) 250-99-08	2020-11-16
288	Bakı	Hyundai	Accent	2015	Hetçbek / Liftbek	Qara	1.6	124	Benzin	72600	Avtomat	Ön	f	16200	9529	4408819	Nicat	(050) 756-08-11	2020-11-16
289	Bakı	Mitsubishi	Pajero	2011	Offroader / SUV	Boz	3.5	280	Benzin	125000	Avtomat	Tam	f	37910	22300	4256187	Bextiyar	(055) 275-94-51	2020-11-16
291	Bakı	Mercedes	ML 350	2008	Offroader / SUV	Qara	3.5	272	Benzin	220000	Avtomat	Tam	f	28050	16500	4238404	Əli	(050) 227-29-00	2020-11-16
293	Bakı	Land Rover	Discovery	2014	Offroader / SUV	Boz	3	345	Benzin	70000	Avtomat	Tam	f	69700	41000	4373529	Vuqar	(050) 210-46-95	2020-11-16
294	Bakı	Toyota	Camry	2019	Sedan	Qara	2.5	181	Benzin	27000	Avtomat	Tam	f	71060	41800	4453456	Elcin	(050) 300-42-88	2020-11-16
295	Bakı	Nissan	Sunny	2011	Sedan	Qara	1.6	109	Benzin	170000	Avtomat	Ön	f	13500	7941	4465879	Nicat	(055) 809-09-69	2020-11-16
297	Bakı	Hyundai	i30	2018	Hetçbek / Liftbek	Gümüşü	1.4	140	Benzin	40000	Avtomat	Ön	f	28800	16941	4271034	Ahmed	(055) 522-68-13	2020-11-16
298	Bakı	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	400000	Avtomat	Arxa	f	11200	6588	4464846	Teymur	(055) 606-20-39	2020-11-16
301	Sumqayıt	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	83000	Mexaniki	Arxa	f	6400	3765	4462422	Aydın	(077) 455-02-91	2020-11-17
303	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	87000	Avtomat	Ön	f	14800	8706	4462510	Almaz	(050) 876-74-80	2020-11-17
302	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Yaşıl	1.5	76	Benzin	191000	Avtomat	Ön	f	12100	7118	4449926	Eliekber	(070) 330-73-73	2020-11-17
304	Bakı	Chevrolet	Cruze	2014	Sedan	Yaşıl	1.4	141	Benzin	120000	Avtomat	Ön	f	13900	8176	4450169	Eliekber	(051) 591-98-98	2020-11-17
259	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	123000	Mexaniki	Tam	f	9200	5412	4415539	Vuqar	(070) 268-55-56	2020-11-16
300	Bakı	Chevrolet	Malibu	2016	Sedan	Göy	1.5	180	Benzin	107000	Avtomat	Ön	f	21500	12647	4389822	Aqşin	(050) 372-55-72	2020-11-16
283	Sumqayıt	Toyota	Prado	2007	Offroader / SUV	Qara	2.7	167	Benzin	187000	Avtomat	Tam	f	28500	16765	4447790	Sahil	(055) 220-22-21	2020-11-16
290	Bakı	Ford	Transit	2008	Furqon	Ağ	2.2	140	Dizel	190000	Mexaniki	Ön	f	18500	10882	4314256	Eldar	(050) 377-88-37	2020-11-16
296	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Qara	2	141	Benzin	205000	Avtomat	Tam	f	15000	8824	4354148	Eldar	(070) 926-28-25	2020-11-16
305	Bakı	LADA (VAZ)	21013	1985	Sedan	Qara	1.3	65	Benzin	132559	Mexaniki	Arxa	f	2100	1235	4477698	Elburus	(050) 384-04-93	2020-11-17
306	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Ağ	3	340	Benzin	80800	Avtomat	Tam	f	116450	68500	4373896	Vuqar	(050) 414-00-24	2020-11-17
307	Bakı	Toyota	Camry	2014	Sedan	Boz	2.5	181	Benzin	142000	Avtomat	Ön	f	43180	25400	4415020	Rüfət	(055) 770-12-22	2020-11-17
309	Gəncə	Mercedes	Sprinter 515	2007	Furqon	Ağ	3.2	224	Dizel	284000	Mexaniki	Arxa	f	33000	19412	4477702	Nazim	(050) 675-08-10	2020-11-17
310	Bakı	Volkswagen	Jetta	2018	Sedan	Qara	1.4	150	Benzin	30526	Avtomat	Ön	f	20000	11765	4477703	Rafet	(077) 588-77-79	2020-11-17
311	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Boz	3	340	Benzin	61500	Avtomat	Tam	f	118150	69500	4109489	Nihat	(050) 275-70-30	2020-11-17
313	Bakı	Hyundai	Elantra	2014	Sedan	Göy	1.8	150	Benzin	34167	Avtomat	Ön	f	18615	10950	4460430	Ceyhun	(055) 818-43-43	2020-11-17
315	Bakı	BMW	528	1999	Sedan	Gümüşü	2.8	204	Benzin	444444	Avtomat	Arxa	f	11800	6941	4477682	Rasim	(051) 398-02-62	2020-11-17
316	Bakı	BMW	530	2008	Sedan	Qara	3	272	Benzin	294000	Avtomat	Arxa	f	19700	11588	4477684	Perviz	(070) 716-26-06	2020-11-17
318	Bakı	Toyota	Prado	2006	Offroader / SUV	Göy	3	173	Dizel	232011	Mexaniki	Tam	f	26700	15706	4286506	Vüqar	(055) 299-27-28	2020-11-17
319	Xaçmaz	Hyundai	Sonata	2008	Sedan	Boz	2.4	178	Benzin	138000	Avtomat	Ön	f	17400	10235	4474934	Abusetder	(051) 729-09-79	2020-11-17
321	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Dizel	183409	Mexaniki	Ön	f	12500	7353	4477680	Faig	(055) 450-08-40	2020-11-17
322	Bakı	Jeep	Cherokee	2016	Offroader / SUV	Boz	2.4	185	Benzin	51298	Avtomat	Tam	f	36550	21500	4400975	Paşa	(050) 704-40-70	2020-11-17
323	Bakı	Hyundai	i30	2009	Hetçbek / Liftbek	Qara	1.4	90	Benzin	132000	Mexaniki	Ön	f	12300	7235	4477687	Səfər 	(070) 631-21-01	2020-11-17
324	Xudat	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	63000	Avtomat	Ön	f	20500	12059	4477689	Emin	(055) 885-08-58	2020-11-17
325	Bərdə	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	100000	Mexaniki	Arxa	f	4900	2882	4477695	Orxan	(050) 435-65-21	2020-11-17
327	Bakı	BMW	530e	2019	Sedan	Boz	2	258	Hibrid	9000	Avtomat	Arxa	f	93500	55000	4287857	Rasad	(050) 505-10-10	2020-11-17
328	Xırdalan	Mercedes	E 240	2000	Sedan	Göy	2.6	177	Benzin	330213	Avtomat	Arxa	f	13800	8118	4477696	Eleddin	(077) 302-68-45	2020-11-17
330	Bakı	Toyota	Land Cruiser	2015	Offroader / SUV	Qara	4.6	318	Benzin	53000	Avtomat	Tam	f	96900	57000	4442198	Abdul	(060) 288-85-85	2020-11-17
331	Bakı	Mercedes-Maybach	S 500	2015	Sedan	Qara	4.7	435	Benzin	146000	Avtomat	Ön	f	253300	149000	4448032	Ferid	(055) 949-55-55	2020-11-17
333	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2	245	Benzin	74000	Avtomat	Ön	f	26800	15765	4402906	Valeh	(055) 207-30-30	2020-11-17
334	Qusar	ZIL	130	1992	Yük maşını	Göy	6	150	Benzin	110000	Mexaniki	Arxa	f	3600	2118	4477707	Teymur	(070) 381-07-38	2020-11-17
335	Bakı	Mercedes	E 220	2003	Universal	Gümüşü	2.2	170	Dizel	252301	Avtomat	Ön	f	15300	9000	4477704	Zahir	(050) 607-52-37	2020-11-17
336	Bakı	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	145236	Mexaniki	Arxa	f	7500	4412	4460802	Mehemmed	(050) 853-23-23	2020-11-17
337	Bakı	Honda	Civic	2010	Hetçbek / Liftbek	Ağ	1.3	100	Hibrid	134000	Avtomat	Ön	f	12900	7588	4477709	Ruslan	(050) 866-50-66	2020-11-17
338	Bakı	Ford	Fiesta	2012	Hetçbek / Liftbek	Qırmızı	1.6	105	Benzin	102000	Avtomat	Ön	f	11500	6765	4461965	Rəşad	(099) 888-80-57	2020-11-17
340	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	33538	Mexaniki	Arxa	f	7200	4235	4442786	Nureli	(070) 803-93-23	2020-11-17
341	Bakı	Land Rover	Range Rover	2016	Offroader / SUV	Göy	3	340	Dizel	65000	Avtomat	Tam	f	145350	85500	4432079	Emin	(050) 682-57-77	2020-11-17
342	Bakı	Hyundai	Santa Fe	2015	Offroader / SUV	Göy	2	184	Benzin	90000	Avtomat	Tam	f	36210	21300	4464763	Asif	(055) 400-90-25	2020-11-17
345	Bakı	Nissan	Altima	2013	Sedan	Boz	2.5	182	Benzin	148990	Avtomat	Ön	f	24600	14471	4449857	Rufet	(055) 828-39-88	2020-11-17
346	Bakı	Opel	Astra	2008	Universal	Göy	1.3	90	Dizel	253000	Mexaniki	Ön	f	10600	6235	4456502	Ilkin	(055) 422-87-68	2020-11-17
347	Bakı	Mercedes	190	1990	Sedan	Göy	2	122	Benzin	430500	Avtomat	Arxa	f	6600	3882	4361684	Elmar	(055) 429-53-05	2020-11-17
348	Bakı	Mercedes	E 200	2015	Sedan	Qara	2	184	Benzin	106000	Avtomat	Arxa	f	50150	29500	4458265	Elwad	(051) 733-33-03	2020-11-17
349	Bakı	Mercedes	C 240	2000	Sedan	Boz	2.4	170	Benzin	105000	Avtomat	Arxa	f	15000	8824	4477668	Rauf	(050) 842-68-80	2020-11-17
351	Şəmkir	Mercedes	CLS 350	2007	Sedan	Qara	3.5	272	Benzin	237113	Avtomat	Arxa	f	25800	15176	4477672	Behruz	(055) 873-83-48	2020-11-17
353	Bakı	Fiat	Doblo	2012	Furqon	Ağ	1.4	120	Benzin	250000	Mexaniki	Ön	f	7500	4412	4477670	Elvin	(055) 228-88-00	2020-11-17
354	Bakı	Opel	Astra	2008	Universal	Gümüşü	1.4	90	Benzin	17000	Mexaniki	Ön	f	11800	6941	4469993	İsmayıl	(070) 885-00-69	2020-11-17
332	Bakı	Honda	Element	2003	Offroader / SUV	Gümüşü	2.5	170	Benzin	197000	Avtomat	Tam	f	13500	7941	4474756	Elxan	(055) 551-11-23	2020-11-17
317	Bakı	Toyota	Corolla	2017	Sedan	Qara	1.8	178	Benzin	60000	Avtomat	Ön	f	28000	16471	4406698	Emil	(051) 983-30-00	2020-11-17
320	Bakı	Mercedes	E 200	2006	Sedan	Gümüşü	1.8	184	Qaz	128000	Avtomat	Arxa	f	19900	11706	4442590	Elşən	(050) 218-48-50	2020-11-17
352	Bakı	Volvo	S 90	2017	Sedan	Qara	2	340	Benzin	49000	Avtomat	Ön	f	79050	46500	4224981	Fuad	(055) 814-22-23	2020-11-17
308	Bakı	Chevrolet	Cruze	2013	Sedan	Gümüşü	1.4	141	Benzin	139000	Avtomat	Ön	f	15400	9059	4476161	Cahid	(070) 204-79-94	2020-11-17
312	Bakı	Mercedes	E 240	2002	Sedan	Gümüşü	2.6	173	Benzin	324000	Avtomat	Arxa	f	16000	9412	4466694	Ramin 	(070) 281-53-53	2020-11-17
339	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Gümüşü	1.8	99	Hibrid	139000	Variator	Ön	f	15200	8941	4452662	Zaur	(070) 404-10-01	2020-11-17
326	Bakı	Honda	Insight	2009	Hetçbek / Liftbek	Ağ	1.3	109	Benzin	160000	Avtomat	Ön	f	13800	8118	4255164	Yusif	(050) 355-59-99	2020-11-17
314	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Qara	4	282	Benzin	172000	Avtomat	Tam	f	55250	32500	4474032	Rufiz	(050) 580-34-84	2020-11-17
329	Bakı	Ford	Focus	2017	Sedan	Yaş Asfalt	1	125	Benzin	97000	Avtomat	Ön	f	16900	9941	4475254	Turan	(077) 344-00-00	2020-11-17
355	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	162300	Mexaniki	Ön	f	11900	7000	4467586	Faiq	(055) 323-07-22	2020-11-17
358	Bakı	Chevrolet	Malibu	2016	Sedan	Göy	1.5	181	Benzin	70000	Avtomat	Ön	f	20900	12294	4425241	Farid	(050) 467-91-37	2020-11-17
359	Bakı	Kia	Optima	2011	Sedan	Qırmızı	2	274	Benzin	131800	Avtomat	Ön	f	20900	12294	4451246	Elfat	(055) 274-00-47	2020-11-17
360	Bakı	Kia	Optima	2013	Sedan	Yaş Asfalt	2	274	Benzin	119000	Avtomat	Ön	f	21000	12353	4477679	Namiq	(055) 767-25-25	2020-11-17
361	Bakı	Kia	Optima	2016	Sedan	Yaş Asfalt	2	274	Benzin	64000	Avtomat	Ön	f	29000	17059	4290652	Azer	(055) 211-07-06	2020-11-17
362	Bakı	BMW	328	2013	Sedan	Boz	2	245	Benzin	177000	Avtomat	Arxa	f	34000	20000	4462375	Sənan	(051) 584-11-11	2020-11-17
363	Bakı	BMW	528	2013	Sedan	Yaş Asfalt	2	245	Benzin	153430	Avtomat	Arxa	f	40630	23900	4455291	Elshen 	(055) 225-04-73	2020-11-17
421	Bakı	Mercedes	C 180	1997	Universal	Göy	1.8	122	Benzin	285000	Mexaniki	Arxa	f	8700	5118	4477647	Afer	(050) 744-46-63	2020-11-17
364	Bakı	Abarth	595	2016	Hetçbek / Liftbek	Qırmızı	1.4	200	Benzin	40700	Robotlaşdırılmış	Ön	f	35700	21000	4470360	Ramin	(050) 313-15-51	2020-11-17
365	Bakı	Kia	Sportage	2014	Offroader / SUV	Ağ	2	261	Dizel	94000	Avtomat	Ön	f	30500	17941	4384238	Cavid	(077) 633-33-77	2020-11-17
366	Bakı	Volkswagen	Tiguan	2019	Offroader / SUV	Ağ	1.5	150	Benzin	0	Avtomat	Ön	t	59500	35000	3991845	Avtosalon "Eurostyle LTD"	(055) 555-77-88	2020-11-17
368	Bakı	Mercedes	E 200	2013	Sedan	Qara	2	184	Benzin	114000	Avtomat	Arxa	f	47260	27800	4466404	Xəlil	(050) 214-94-97	2020-11-17
369	Bakı	Tofas	Sahin	2004	Sedan	Qızılı	1.6	86	Benzin	162000	Mexaniki	Arxa	f	6600	3882	4472629	Ilkin	(050) 290-64-11	2020-11-17
370	Bakı	BMW	X5	2009	Offroader / SUV	Ağ	4.8	355	Benzin	260000	Avtomat	Tam	f	36550	21500	4440456	Musa	(050) 255-59-27	2020-11-17
371	Bakı	Hyundai	Accent	2013	Sedan	Ağ	1.6	130	Benzin	115000	Avtomat	Ön	f	15900	9353	4405245	Elvin 	(070) 344-88-06	2020-11-17
373	Bakı	IJ	2126 Oda	2004	Pikap	Ağ	1.6	75	Benzin	150000	Mexaniki	Arxa	f	5500	3235	4477666	Mehman	(050) 357-18-10	2020-11-17
374	Qəbələ	LADA (VAZ)	Priora	2015	Universal	Qara	1.6	98	Benzin	65000	Mexaniki	Ön	f	14000	8235	4448718	Roman	(050) 733-73-75	2020-11-17
377	Bakı	GAZ	2705	1998	Yük maşını	Göy	2.4	131	Benzin	250000	Mexaniki	Arxa	f	5100	3000	4466227	Ramil	(077) 351-60-59	2020-11-17
378	Bakı	Kia	Optima	2014	Sedan	Qara	2	274	Benzin	63000	Avtomat	Ön	f	26500	15588	4384175	Anar	(055) 886-26-88	2020-11-17
379	Bakı	Chevrolet	Lacetti	2006	Hetçbek / Liftbek	Qızılı	1.6	132	Benzin	190115	Avtomat	Ön	f	9300	5471	4476314	Roman	(055) 425-36-76	2020-11-17
383	Bakı	Hyundai	Sonata	2011	Sedan	Ağ	2	274	Benzin	104000	Avtomat	Ön	f	21000	12353	4474070	Ataxan	(055) 435-60-35	2020-11-17
384	Bakı	Mercedes	C 200	2000	Sedan	Göy	2	136	Benzin	350000	Avtomat	Arxa	f	12600	7412	4477660	Müşviq	(055) 496-43-93	2020-11-17
385	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Qara	3	178	Benzin	171000	Avtomat	Tam	f	22600	13294	4459150	Mehman	(070) 310-19-69	2020-11-17
388	Bakı	Hyundai	Sonata	2005	Sedan	Qara	2.4	178	Benzin	263900	Avtomat	Ön	f	12900	7588	4477662	Eziz	(099) 333-55-30	2020-11-17
390	Bakı	BMW	528	2012	Sedan	Göy	2	245	Benzin	14500	Avtomat	Tam	f	35360	20800	4477664	Ferid	(050) 211-72-51	2020-11-17
392	Bakı	Mercedes	S 350	2012	Sedan	Qara	3.5	306	Benzin	125400	Avtomat	Arxa	f	57800	34000	4279708	Ramiz	(055) 265-00-70	2020-11-17
393	Şirvan	Hyundai	Sonata	2007	Sedan	Ağ	2	165	Benzin	299500	Avtomat	Ön	f	15800	9294	4387804	Emiş	(070) 411-31-51	2020-11-17
394	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Boz	2	166	Dizel	68000	Avtomat	Ön	f	20900	12294	4448602	Elnur	(055) 616-56-70	2020-11-17
395	Bakı	Kia	Koup	2010	Kupe	Yaş Asfalt	2	180	Benzin	185000	Avtomat	Ön	f	18500	10882	4461923	Kənan	(050) 666-66-09	2020-11-17
396	Bakı	BMW	X5	2000	Offroader / SUV	Qara	3	231	Benzin	385000	Avtomat	Tam	f	14700	8647	4401851	Əlibala	(050) 434-17-43	2020-11-17
397	Bakı	Mercedes	A 220	2019	Sedan	Qara	2	234	Benzin	28000	Avtomat	Ön	f	74800	44000	4328214	Zaur	(055) 965-12-02	2020-11-17
398	Bakı	Ford	Transit	2007	Furqon	Mavi	2.4	75	Dizel	161000	Mexaniki	Arxa	f	27300	16059	4402495	Seymur	(055) 200-45-75	2020-11-17
399	Bakı	Ford	Fusion	2015	Sedan	Qara	1.5	181	Benzin	72000	Avtomat	Ön	f	20500	12059	4394814	Anar	(050) 289-26-83	2020-11-17
401	Bakı	Volvo	FH 12	2005	Dartqı	Gümüşü	1.4	460	Dizel	1175000	Mexaniki	Arxa	f	26000	15294	4466528	Qudsi	(050) 250-83-51	2020-11-17
402	Bakı	Lexus	LX 570	2009	Offroader / SUV	Ağ	5.7	383	Benzin	165000	Avtomat	Tam	f	60860	35800	4285330	Rufiz	(050) 706-77-07	2020-11-17
403	Xaçmaz	Mercedes	C 280	2000	Sedan	Qara	2.8	193	Benzin	217000	Avtomat	Ön	f	9200	5412	4477652	Nurlan	(055) 373-39-89	2020-11-17
404	Bakı	Lexus	LX 570	2014	Offroader / SUV	Qara	5.7	383	Benzin	60000	Avtomat	Tam	f	118150	69500	4451007	Zabil	(050) 453-83-83	2020-11-17
405	Bakı	Kia	Rio	2008	Sedan	Narıncı	1.4	97	Benzin	170000	Mexaniki	Ön	f	11000	6471	4472610	Elnur	(050) 561-50-58	2020-11-17
400	Bakı	Mercedes	Sprinter 313	2008	Furqon	Ağ	2.2	150	Dizel	181286	Mexaniki	Arxa	f	31000	18235	4473405	Vüsal	(051) 300-00-04	2020-11-17
382	Bakı	Audi	Q5	2014	Offroader / SUV	Ağ	2	252	Benzin	90000	Avtomat	Tam	f	45050	26500	4313786	Rufiz	(055) 762-06-86	2020-11-17
380	Bakı	Geely	MK	2012	Sedan	Qara	1.5	105	Benzin	243000	Mexaniki	Ön	f	5500	3235	4429511	Elsad	(050) 387-53-96	2020-11-17
386	Bakı	Hyundai	Accent	2003	Sedan	Gümüşü	1.5	105	Benzin	294500	Avtomat	Ön	f	7900	4647	4469252	haci	(050) 214-90-67	2020-11-17
389	Bakı	Kia	Cerato	2006	Hetçbek / Liftbek	Gümüşü	1.6	122	Dizel	120000	Mexaniki	Ön	f	13800	8118	4429004	Sərxan	(070) 718-88-82	2020-11-17
391	Bakı	Toyota	Land Cruiser	2009	Offroader / SUV	Qara	4.7	310	Benzin	174000	Avtomat	Tam	f	67150	39500	4251904	Rufiz	(050) 563-64-64	2020-11-17
372	Bakı	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	180	Benzin	83000	Avtomat	Ön	f	20900	12294	4471432	Abbas	(055) 505-70-85	2020-11-17
357	Bakı	Nissan	Teana	2009	Sedan	Qara	3.5	249	Benzin	198000	Avtomat	Ön	f	21800	12824	4429943	Rauf	(050) 875-24-54	2020-11-17
387	Bakı	Mercedes	E 350	2009	Sedan	Gümüşü	3.5	272	Benzin	139000	Avtomat	Arxa	f	28560	16800	4337164	Rusif	(050) 761-14-84	2020-11-17
381	Bakı	Mercedes	E 350	2006	Sedan	Ağ	3.5	272	Benzin	350000	Avtomat	Arxa	f	18900	11118	4467588	nirlan	(050) 373-55-05	2020-11-17
406	Bakı	Lexus	LX 570	2009	Offroader / SUV	Qara	5.7	383	Benzin	135000	Avtomat	Tam	f	64260	37800	4404805	Rasim	(055) 762-06-86	2020-11-17
408	Lənkəran	LADA (VAZ)	2107	1989	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	2500	1471	4477656	Ramin	(051) 452-92-21	2020-11-17
411	Sumqayıt	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	490000	Mexaniki	Arxa	f	7400	4353	4477655	XƏYAL	(051) 715-00-08	2020-11-17
412	Göyçay	Volkswagen	Passat	2008	Sedan	Ağ	1.8	170	Benzin	192000	Avtomat	Ön	f	11700	6882	4477657	Emil	(055) 628-06-16	2020-11-17
413	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Qara	4.6	309	Benzin	157533	Avtomat	Tam	f	76160	44800	4453571	Xalid	(050) 218-64-14	2020-11-17
416	Bakı	Mercedes	E 240	2000	Universal	Gümüşü	2.6	177	Benzin	200000	Avtomat	Arxa	f	11500	6765	4477646	Senan	(070) 202-22-28	2020-11-17
418	Bakı	Ford	Fusion	2017	Sedan	Qara	1.5	181	Benzin	43100	Avtomat	Ön	f	25700	15118	4477645	Afgan	(050) 321-21-86	2020-11-17
419	Bakı	Land Rover	Discovery	2018	Offroader / SUV	Qara	3	340	Dizel	62000	Avtomat	Tam	f	113050	66500	4094607	Zabil	(055) 353-83-83	2020-11-17
420	Bakı	Lexus	LS 460	2010	Sedan	Qara	4.6	382	Benzin	147000	Avtomat	Arxa	f	38760	22800	4477611	Rəvan	(077) 313-05-47	2020-11-17
422	Bakı	Kia	Opirus	2009	Sedan	Ağ	3.8	290	Benzin	178000	Avtomat	Ön	f	14000	8235	4277344	Mehman	(055) 212-26-24	2020-11-17
425	Bakı	Chevrolet	Cruze	2012	Sedan	Qara	1.4	141	Benzin	129000	Avtomat	Ön	f	13800	8118	4470978	Hüseyn	(055) 280-02-32	2020-11-17
426	Bakı	BMW	325	2004	Sedan	Gümüşü	2.5	192	Benzin	295000	Avtomat	Arxa	f	11000	6471	4417961	Şahlar	(050) 755-70-14	2020-11-17
428	Bakı	Ford	Transit	2010	Mikroavtobus	Ağ	2.2	125	Dizel	340000	Mexaniki	Ön	f	20500	12059	4439933	Cahangir	(070) 492-22-52	2020-11-17
429	Gəncə	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	105000	Avtomat	Ön	f	14000	8235	4464795	Anar	(051) 713-00-00	2020-11-17
430	Bakı	Volvo	XC 90	2017	Offroader / SUV	Mavi	2	320	Benzin	72000	Avtomat	Tam	f	98600	58000	4468864	Pərviz	(055) 877-11-41	2020-11-17
431	Bakı	Ford	Transit	2008	Furqon	Ağ	2.4	140	Dizel	245000	Mexaniki	Arxa	f	22000	12941	4428541	Şahın	(050) 363-17-18	2020-11-17
432	Bakı	Lexus	LX 570	2012	Offroader / SUV	Qara	5.7	383	Benzin	65000	Avtomat	Tam	f	91630	53900	4460707	İbrahim	(050) 211-90-18	2020-11-17
433	Sumqayıt	Kia	Optima	2014	Sedan	Ağ	2	165	Benzin	145000	Avtomat	Ön	f	28900	17000	4474354	Emin	(055) 673-72-74	2020-11-17
434	Bakı	Toyota	Camry	2018	Sedan	Qara	2.5	202	Benzin	84000	Avtomat	Ön	f	43350	25500	4430021	Kamran	(050) 700-66-22	2020-11-17
436	Bakı	Mercedes	E 200	1999	Sedan	Göy	2	136	Benzin	271300	Mexaniki	Arxa	f	13300	7824	4450052	Sənan	(050) 210-32-60	2020-11-17
439	Bakı	Mercedes	E 350	2009	Sedan	Qara	3.5	272	Benzin	155500	Avtomat	Arxa	f	33300	19588	4423410	Kenan	(050) 211-91-59	2020-11-17
440	Bakı	Hyundai	Sonata	2007	Sedan	Qara	2	165	Dizel	256000	Avtomat	Ön	f	14500	8529	4427695	Aqşin	(077) 555-50-10	2020-11-17
441	Salyan	LADA (VAZ)	2115	2012	Sedan	Boz	1.6	80	Benzin	143000	Mexaniki	Ön	f	9300	5471	4459049	Famil	(050) 393-33-23	2020-11-17
442	Bakı	Toyota	Prado	2004	Offroader / SUV	Qızılı	4	250	Benzin	320234	Avtomat	Tam	f	24500	14412	4477624	ceyhun	(055) 509-98-87	2020-11-17
444	Bakı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	249500	Avtomat	Arxa	f	24800	14588	4423277	Kenan	(050) 211-91-59	2020-11-17
445	Bakı	Renault	Megane	2006	Universal	Ağ	1.5	106	Dizel	325000	Mexaniki	Ön	f	10500	6176	4477639	Zafar	(055) 743-31-38	2020-11-17
446	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2.7	185	Benzin	330000	Avtomat	Tam	f	20500	12059	4477643	Elvin	(051) 332-34-33	2020-11-17
447	Bakı	Opel	Astra	1993	Universal	Gümüşü	1.6	101	Benzin	210007	Mexaniki	Ön	f	6100	3588	4477620	Sahil	(070) 260-00-59	2020-11-17
449	Bakı	Chevrolet	Cruze	2014	Sedan	Yaşıl	1.4	141	Benzin	164000	Avtomat	Ön	f	15500	9118	4476439	Firdovsi	(050) 672-31-26	2020-11-17
451	Bakı	Mercedes	190	1992	Sedan	Yaş Asfalt	1.8	109	Benzin	342566	Mexaniki	Arxa	f	5600	3294	4477625	Nureddin	(055) 370-55-44	2020-11-17
452	Bakı	Renault	Scenic	2008	Minivan	Göy	1.5	110	Dizel	200000	Mexaniki	Ön	f	10900	6412	4477628	Kerem	(050) 343-14-90	2020-11-17
453	Bakı	Mercedes	E 200	1991	Sedan	Gümüşü	2	136	Dizel	265478	Mexaniki	Ön	f	6600	3882	4477473	Eli 	(077) 303-35-91	2020-11-17
454	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Boz	1.4	97	Benzin	39700	Mexaniki	Ön	f	11500	6765	4463299	Rauf	(050) 288-24-94	2020-11-17
455	Bakı	Opel	Astra	2009	Universal	Göy	1.4	90	Benzin	177000	Mexaniki	Ön	f	12500	7353	4477633	Rasim	(070) 244-52-02	2020-11-17
456	Sumqayıt	Opel	Zafira	2003	Minivan	Gümüşü	1.8	125	Benzin	359321	Avtomat	Ön	f	10700	6294	4477629	Mehman	(055) 796-17-13	2020-11-17
415	Bakı	BMW	528	2014	Sedan	Ağ	2	245	Benzin	96000	Avtomat	Arxa	f	44198	25999	4286866	zeynal 	(055) 429-90-90	2020-11-17
423	Bakı	Kia	Sorento	2011	Offroader / SUV	Qara	2	184	Dizel	155000	Avtomat	Ön	f	26900	15824	4471747	Tofiq	(070) 245-43-42	2020-11-17
424	Sumqayıt	Mercedes	E 290	1996	Sedan	Ağ	2.9	127	Dizel	382000	Mexaniki	Arxa	f	7950	4676	4442907	Ayaz	(055) 899-83-02	2020-11-17
409	Bakı	Mercedes	GL 350	2015	Offroader / SUV	Qara	3	268	Dizel	138000	Avtomat	Tam	f	74800	44000	4424339	Yashar 	(051) 444-25-29	2020-11-17
417	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	153	Benzin	49000	Avtomat	Ön	f	18800	11059	4471969	Tagi	(050) 422-14-44	2020-11-17
414	Bakı	BMW	528	2013	Sedan	Ağ	2	245	Benzin	48000	Avtomat	Arxa	f	36550	21500	4452765	Eli	(050) 390-49-91	2020-11-17
448	Bakı	Hyundai	Accent	2008	Hetçbek / Liftbek	Qara	1.6	110	Benzin	178000	Avtomat	Ön	f	10500	6176	4397862	Mecid	(055) 518-55-55	2020-11-17
443	Bakı	Ford	Fusion	2016	Sedan	Ağ	1.5	181	Benzin	46000	Avtomat	Ön	f	23500	13824	4469522	Əsgər	(070) 287-00-08	2020-11-17
427	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	127000	Avtomat	Ön	f	24600	14471	4420954	Islam	(070) 266-03-33	2020-11-17
410	Bakı	Audi	A8	2014	Sedan	Qara	4	450	Benzin	98000	Avtomat	Tam	f	75650	44500	4069665	Fuad	(050) 875-24-54	2020-11-17
450	Bakı	Kia	Sportage	2001	Offroader / SUV	Boz	2	125	Benzin	180000	Avtomat	Tam	f	7200	4235	4476855	Hikmet	(070) 546-45-42	2020-11-17
437	Bakı	Land Rover	Range Rover	2002	Offroader / SUV	Qəhvəyi	4.4	286	Benzin	140120	Avtomat	Tam	f	19999	11764	4434387	Elvin	(070) 261-41-01	2020-11-17
458	Bakı	Land Rover	RR Sport	2012	Offroader / SUV	Qara	5	510	Benzin	125000	Avtomat	Tam	f	56100	33000	4216309	Natiq	(070) 256-93-91	2020-11-17
459	Bakı	SEAT	Toledo	1996	Hetçbek / Liftbek	Gümüşü	2	126	Benzin	321000	Avtomat	Ön	f	4400	2588	4471819	Elşən	(070) 350-30-10	2020-11-17
460	Bakı	Mercedes	E 300	2010	Sedan	Qara	3	306	Dizel	209000	Avtomat	Arxa	f	38590	22700	4436150	Elnur	(050) 210-01-78	2020-11-17
462	Bakı	Toyota	Prado	2012	Offroader / SUV	Qara	2.7	167	Benzin	83000	Avtomat	Tam	f	52700	31000	4459361	Elmar	(055) 255-36-62	2020-11-17
463	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Ağ	2.7	188	Benzin	189000	Avtomat	Ön	f	20900	12294	4470802	Terlan	(051) 957-13-53	2020-11-17
464	Bakı	Audi	Q5	2011	Offroader / SUV	Boz	2	211	Benzin	177000	Avtomat	Tam	f	31450	18500	4428787	Elchin	(050) 640-64-35	2020-11-17
465	Bakı	Mercedes	E 220	2008	Sedan	Gümüşü	2.2	170	Dizel	240500	Avtomat	Arxa	f	25300	14882	4423598	Kenan	(050) 211-91-59	2020-11-17
467	Bakı	Ford	Fusion	2013	Sedan	Göy	1.5	181	Benzin	117000	Avtomat	Ön	f	20700	12176	4470037	Serxan	(050) 234-66-09	2020-11-17
468	Bakı	BMW	528	2013	Sedan	Ağ	2	245	Benzin	160000	Avtomat	Arxa	f	33150	19500	4287762	Ramin	(055) 610-91-51	2020-11-17
470	Bakı	BMW	M6	2014	Sedan	Boz	4.4	560	Benzin	91000	Avtomat	Arxa	f	89760	52800	4468279	Elchin	(050) 990-67-70	2020-11-17
471	Bakı	Mercedes	C 200	2012	Sedan	Yaş Asfalt	1.8	204	Benzin	112000	Avtomat	Arxa	f	35530	20900	4406194	Rəşad	(051) 677-77-72	2020-11-17
472	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2	165	Benzin	160000	Avtomat	Ön	f	18000	10588	4411418	Fərid	(055) 409-36-09	2020-11-17
473	Bakı	Mercedes	B 180	2009	Hetçbek / Liftbek	Ağ	2	116	Benzin	113000	Avtomat	Ön	f	14300	8412	4376768	İqbal	(050) 784-84-38	2020-11-17
474	Bakı	Nissan	Sunny	2007	Sedan	Qara	1.3	107	Benzin	250000	Mexaniki	Ön	f	9000	5294	4477610	Fazil	(055) 210-71-43	2020-11-17
475	Bakı	Chery	Arrizo 5	2020	Sedan	Göy	1.5	158	Benzin	0	Avtomat	Ön	t	25500	15000	4254673	Chery Azerbaijan	(050) 242-46-24	2020-11-17
476	Bakı	Mercedes	E 220	2006	Sedan	Qırmızı	2.2	170	Dizel	110000	Avtomat	Tam	f	20500	12059	4477612	Rafiq	(077) 303-43-28	2020-11-17
477	Bakı	Chery	Tiggo 7	2020	Offroader / SUV	Ağ	2	155	Benzin	0	Avtomat	Ön	t	31900	18765	4424926	Chery Azerbaijan	(050) 242-46-24	2020-11-17
479	Gəncə	Mercedes	E 240	1998	Universal	Gümüşü	2.4	170	Benzin	386000	Avtomat	Arxa	f	14000	8235	4477615	Saleh	(050) 324-99-80	2020-11-17
480	Quba	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	80	Benzin	180000	Mexaniki	Ön	f	9500	5588	4427508	Cingiz	(055) 706-78-45	2020-11-17
482	Bakı	Mercedes	C 200	2000	Sedan	Göy	2	163	Benzin	308023	Avtomat	Arxa	f	10500	6176	4406229	Resad	(050) 861-21-65	2020-11-17
483	Bakı	Toyota	Corolla	2005	Universal	Gümüşü	1.4	110	Dizel	228900	Mexaniki	Ön	f	11900	7000	4430432	Rufat	(055) 440-70-65	2020-11-17
484	Bakı	Daewoo	Nexia	2005	Sedan	Qırmızı	1.5	75	Benzin	348000	Mexaniki	Ön	f	5800	3412	4456967	Vüqar	(055) 219-45-05	2020-11-17
485	Bakı	Opel	Astra	2005	Universal	Boz	1.4	90	Benzin	100009	Mexaniki	Ön	f	10800	6353	4466876	Rasim	(055) 254-06-52	2020-11-17
486	Bakı	Mercedes	C 200	1997	Sedan	Yaşıl	2	136	Benzin	426000	Avtomat	Arxa	f	10700	6294	4477597	Nadir	(050) 800-52-26	2020-11-17
488	Naxçıvan	Hyundai	Elantra	2012	Sedan	Boz	1.8	150	Benzin	150000	Avtomat	Ön	f	20500	12059	4477601	Alpay	(060) 535-34-35	2020-11-17
489	Bakı	Mercedes	C 180	1995	Sedan	Boz	1.8	122	Benzin	210190	Mexaniki	Arxa	f	5900	3471	4477604	Namiq	(050) 449-21-73	2020-11-17
491	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	140	Benzin	127000	Avtomat	Ön	f	13500	7941	4458587	Xayyam	(050) 446-10-12	2020-11-17
492	Gəncə	Mercedes	C 180	1998	Sedan	Yaşıl	1.8	122	Benzin	275000	Avtomat	Arxa	f	9800	5765	4477599	Isi	(050) 888-45-32	2020-11-17
493	Bakı	Hyundai	i30	2010	Universal	Ağ	1.6	116	Dizel	276720	Mexaniki	Ön	f	14700	8647	4477593	Sedi 	(050) 570-85-35	2020-11-17
494	Bakı	Chery	Tiggo 2	2020	Offroader / SUV	Narıncı	1.5	112	Benzin	0	Avtomat	Ön	t	23800	14000	4167957	Chery Azerbaijan	(050) 242-46-24	2020-11-17
496	Sabirabad	Mercedes	E 220	2001	Sedan	Qara	2.2	143	Dizel	365000	Avtomat	Arxa	f	17000	10000	4477608	Elnur	(050) 684-12-72	2020-11-17
497	Bakı	Mercedes	S 400	2014	Sedan	Göy	3	333	Benzin	87941	Avtomat	Arxa	f	102000	60000	4443668	Mahmud	(055) 210-39-33	2020-11-17
498	Bakı	Hyundai	Accent	2010	Sedan	Ağ	1.4	110	Benzin	150000	Avtomat	Ön	f	13000	7647	4017676	Elsad	(055) 254-16-18	2020-11-17
500	Bakı	Mitsubishi	Pajero	2012	Offroader / SUV	Ağ	3.5	202	Benzin	77777	Avtomat	Tam	f	45900	27000	4433495	Veli	(050) 748-98-33	2020-11-17
501	Bakı	BMW	i3	2014	Hetçbek / Liftbek	Ağ	0	170	Elektro	47500	Avtomat	Arxa	f	48790	28700	4318651	Natiq	(055) 335-75-70	2020-11-17
502	Bakı	Hyundai	Accent	2015	Sedan	Ağ	1.6	140	Benzin	69000	Avtomat	Ön	f	16900	9941	4460199	Vasif	(070) 564-04-41	2020-11-17
503	Bakı	Mercedes	GL 550	2013	Offroader / SUV	Qara	4.7	435	Benzin	113000	Avtomat	Tam	f	79050	46500	4406625	Roma	(051) 671-90-22	2020-11-17
504	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	223000	Mexaniki	Ön	f	9900	5824	4447682	Elnur	(050) 382-38-20	2020-11-17
505	Bakı	Mercedes	E 280	1999	Sedan	Gümüşü	2.8	193	Benzin	263000	Avtomat	Arxa	f	13500	7941	4477582	Haci	(055) 228-08-18	2020-11-17
506	Bakı	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	258467	Mexaniki	Arxa	f	4500	2647	4477587	Ağasef	(070) 540-44-49	2020-11-17
457	Bakı	Chevrolet	Trax	2014	Offroader / SUV	Qara	1.4	140	Benzin	54000	Avtomat	Ön	f	17700	10412	4475363	Renad	(050) 233-33-58	2020-11-17
490	Bakı	Chevrolet	Cruze	2012	Sedan	Gümüşü	1.4	141	Benzin	168000	Avtomat	Ön	f	12900	7588	4467196	Kerim	(050) 655-69-24	2020-11-17
487	Sumqayıt	Opel	Astra	1999	Hetçbek / Liftbek	Göy	1.6	75	Benzin	317000	Mexaniki	Ön	f	7200	4235	4434064	Vasif	(070) 850-60-44	2020-11-17
499	Bakı	Mitsubishi	Pajero	2002	Offroader / SUV	Gümüşü	3.2	165	Benzin	217800	Avtomat	Tam	f	15950	9382	4444551	Resad 	(050) 554-54-75	2020-11-17
478	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	126294	Avtomat	Ön	f	15500	9118	4452020	Said	(070) 624-66-66	2020-11-17
481	Bakı	Mercedes	C 230	2007	Sedan	Gümüşü	2.5	204	Benzin	210000	Avtomat	Ön	f	16500	9706	4461519	Rəşad	(055) 484-52-84	2020-11-17
508	Bakı	Mercedes	S 350	2015	Sedan	Qara	3	249	Dizel	118000	Avtomat	Arxa	f	105230	61900	4477583	Tural	(070) 433-10-00	2020-11-17
511	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Qara	1.4	107	Benzin	240000	Mexaniki	Ön	f	9900	5824	4477573	Bayram	(077) 302-55-97	2020-11-17
512	Bakı	Mercedes	E 220	2013	Sedan	Qara	2.2	170	Dizel	225000	Avtomat	Arxa	f	37230	21900	4438068	hamid	(055) 705-17-77	2020-11-17
513	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2.4	174	Benzin	201000	Avtomat	Ön	f	16800	9882	4477554	Famil	(050) 394-14-14	2020-11-17
514	Bakı	Volkswagen	Golf	1999	Hetçbek / Liftbek	Ağ	2	116	Dizel	250000	Mexaniki	Ön	f	5600	3294	4462314	Cavid	(055) 600-90-74	2020-11-17
515	Bakı	Chevrolet	Cruze	2014	Sedan	Göy	1.8	141	Benzin	83000	Avtomat	Arxa	f	17200	10118	4477574	Feqan 	(050) 572-38-74	2020-11-17
516	Bakı	Opel	Astra	2008	Universal	Qara	1.4	110	Benzin	176437	Mexaniki	Ön	f	11700	6882	4398255	Rafiq	(055) 235-76-09	2020-11-17
517	Bakı	Chevrolet	Cruze	2016	Sedan	Qızılı	1.4	153	Benzin	49000	Avtomat	Ön	f	19300	11353	4468806	Kamran	(055) 219-09-49	2020-11-17
518	Bakı	Mercedes	S 350	2016	Sedan	Qara	3	306	Dizel	157000	Avtomat	Arxa	f	127500	75000	4290952	Samed	(055) 215-66-96	2020-11-17
520	Bakı	Nissan	Teana	2003	Sedan	Gümüşü	2.3	150	Benzin	287321	Avtomat	Ön	f	8900	5235	4477579	Cəlil	(070) 880-07-26	2020-11-17
522	Bakı	Chrysler	Concorde	2003	Sedan	Gümüşü	3.5	237	Benzin	229700	Avtomat	Ön	f	8000	4706	4477581	Raid	(051) 822-88-66	2020-11-17
524	Bakı	SEAT	Toledo	2015	Sedan	Ağ	1.6	127	Benzin	113000	Avtomat	Ön	f	15800	9294	4441665	Orxan	(050) 246-17-07	2020-11-17
525	Bakı	Mercedes	C 180	1997	Sedan	Boz	1.8	122	Benzin	397000	Avtomat	Arxa	f	8900	5235	4473446	Nihad	(070) 523-00-00	2020-11-17
528	Bakı	BMW	X6 M	2010	Offroader / SUV	Ağ	4.4	555	Benzin	139000	Avtomat	Tam	f	53890	31700	4372327	Vuqar	(055) 388-31-51	2020-11-17
530	Zaqatala	LADA (VAZ)	Kalina	2008	Hetçbek / Liftbek	Göy	1.6	75	Benzin	380000	Mexaniki	Ön	f	7900	4647	4434010	Vuqar	(070) 505-69-77	2020-11-17
533	Bakı	Mercedes	E 240	2004	Sedan	Qara	2.6	177	Benzin	322000	Avtomat	Arxa	f	17000	10000	4405234	Fedya	(050) 200-61-11	2020-11-17
536	Bakı	BMW	X5	2014	Offroader / SUV	Göy	3	306	Benzin	70000	Avtomat	Tam	f	74800	44000	3891853	Nicat	(050) 212-39-54	2020-11-17
537	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	90000	Mexaniki	Arxa	f	6500	3824	4477568	Qalib	(070) 495-86-56	2020-11-17
538	Sumqayıt	Toyota	Prius C	2014	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Benzin	95000	Avtomat	Ön	f	16500	9706	4408547	Renat	(050) 336-95-35	2020-11-17
539	Şəki	Mercedes	C 280	1994	Sedan	Yaşıl	2.8	193	Benzin	284589	Avtomat	Arxa	f	8000	4706	4477569	Etibar	(050) 545-80-49	2020-11-17
541	Bakı	Mercedes	GL 350	2014	Offroader / SUV	Qara	3	306	Dizel	83000	Avtomat	Tam	f	74630	43900	4442247	Yashar	(051) 444-25-29	2020-11-17
542	Bakı	Hyundai	Elantra	2007	Sedan	Gümüşü	1.6	132	Dizel	74403	Avtomat	Ön	f	14300	8412	4446051	Elxan 	(055) 716-15-14	2020-11-17
543	Bakı	Hyundai	Sonata	2019	Sedan	Qara	2.5	180	Benzin	19000	Avtomat	Ön	f	54400	32000	4438572	Rasad	(050) 224-74-74	2020-11-17
544	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	147000	Avtomat	Tam	f	34850	20500	3637590	Resad	(050) 225-41-11	2020-11-17
546	Bakı	Ford	Fusion	2013	Sedan	Qara	1.5	181	Benzin	76000	Avtomat	Ön	f	18900	11118	4448006	Cavansir	(055) 969-60-30	2020-11-17
547	Bakı	Toyota	Prado	2008	Offroader / SUV	Yaş Asfalt	2.7	167	Benzin	165000	Avtomat	Tam	f	35500	20882	4443413	Fazil	(077) 521-64-30	2020-11-17
549	Bakı	Lifan	320	2012	Hetçbek / Liftbek	Qara	1.3	75	Benzin	222333	Mexaniki	Ön	f	7000	4118	4469513	Fərid	(050) 657-27-82	2020-11-17
550	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2.4	178	Benzin	136000	Avtomat	Ön	f	26860	15800	4477566	Anar	(055) 284-04-78	2020-11-17
551	Xırdalan	MAN	TGA 18.440	2009	Dartqı	Ağ	12	440	Dizel	900000	Avtomat	Arxa	f	40000	23529	4406505	Fərman	(099) 889-49-98	2020-11-17
553	Bakı	Lexus	RX 330	2003	Offroader / SUV	Qara	3.3	233	Benzin	213000	Avtomat	Tam	f	13900	8176	4463725	Ruslan	(055) 515-77-73	2020-11-17
554	Bakı	Mercedes	S 350	2007	Sedan	Qara	3.5	272	Benzin	202000	Avtomat	Arxa	f	28730	16900	4467397	Anar	(050) 286-55-05	2020-11-17
555	Cəlilabad	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	183000	Avtomat	Tam	f	42500	25000	4457544	Gadir 	(050) 643-10-76	2020-11-17
556	Bakı	Abarth	595	2013	Hetçbek / Liftbek	Qara	1.4	180	Benzin	110000	Mexaniki	Ön	f	17000	10000	4417711	Babek	(050) 495-55-55	2020-11-17
519	Bakı	BMW	528	2014	Sedan	Ağ	2	245	Benzin	81000	Avtomat	Arxa	f	45898	26999	4150506	cingiz	(051) 536-09-79	2020-11-17
535	Bakı	Land Rover	Range Rover	2020	Offroader / SUV	Qara	3	275	Dizel	22000	Avtomat	Tam	f	256700	146000	4380264	Ariz	(050) 520-95-95	2020-11-17
509	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.4	97	Benzin	185000	Mexaniki	Ön	f	11300	6647	4432072	Cebrayil	(050) 501-12-21	2020-11-17
531	Bakı	Mercedes	GL 350	2013	Offroader / SUV	Yaş Asfalt	3	258	Dizel	132000	Avtomat	Tam	f	72760	42800	4450281	YASHAR	(051) 444-25-29	2020-11-17
521	Bakı	Opel	Astra	2005	Universal	Göy	1.4	90	Benzin	173000	Mexaniki	Ön	f	10700	6294	4470541	Atas	(055) 573-92-08	2020-11-17
523	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaşıl	1.3	90	Dizel	186522	Mexaniki	Ön	f	11600	6824	4403496	Abdulla	(050) 335-99-81	2020-11-17
507	Bakı	Mercedes	CLS 350	2011	Sedan	Yaş Asfalt	3.5	306	Benzin	132000	Avtomat	Arxa	f	51000	30000	4457645	Ruslan	(055) 290-59-58	2020-11-17
540	Bakı	BMW	528	2012	Sedan	Boz	2	245	Benzin	100000	Avtomat	Arxa	f	37777	22222	4331389	zeynal	(051) 536-09-79	2020-11-17
548	Bakı	Mercedes	E 280	2000	Sedan	Göy	2.8	193	Benzin	271000	Avtomat	Arxa	f	13700	8059	4459404	Orxan	(077) 725-15-95	2020-11-17
557	Neftçala	Mitsubishi	Pajero	2003	Offroader / SUV	Bej	3	190	Dizel	390710	Avtomat	Tam	f	20000	11765	4472321	Namid	(050) 330-03-95	2020-11-17
529	Bakı	Land Rover	RR Sport	2009	Offroader / SUV	Qızılı	3.6	272	Dizel	160000	Avtomat	Tam	f	41000	24118	4169823	Pərviz	(055) 676-36-36	2020-11-17
558	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Tünd qırmızı	2.4	178	Benzin	103000	Avtomat	Tam	f	26800	15765	4450602	Elcin	(077) 313-04-25	2020-11-17
559	Bakı	Hyundai	Terracan	2005	Offroader / SUV	Qara	3.5	194	Benzin	219000	Avtomat	Tam	f	17000	10000	4470249	Arzu	(055) 558-53-58	2020-11-17
560	Bakı	Ford	Fusion	2019	Sedan	Gümüşü	1.5	181	Benzin	8000	Avtomat	Ön	f	26800	15765	4463327	Fuad	(055) 200-44-22	2020-11-17
562	Bakı	BMW	535	2013	Sedan	Ağ	3	306	Benzin	77000	Avtomat	Arxa	f	50320	29600	4467008	Azer	(050) 764-73-34	2020-11-17
563	Bakı	Opel	Astra	2005	Universal	Gümüşü	1.4	90	Benzin	178041	Mexaniki	Ön	f	11200	6588	4454418	Meherrem	(050) 341-99-41	2020-11-17
565	Bakı	BMW	535	2015	Sedan	Ağ	3	306	Benzin	67000	Avtomat	Arxa	f	60520	35600	4466951	Azer	(050) 560-40-74	2020-11-17
566	Salyan	Muravey	Muravey- 2 01	2008	Motosiklet	Qırmızı	0.3	50	Benzin	2000	Mexaniki	Arxa	f	750	441	4477560	Aslan	(051) 626-49-98	2020-11-17
567	Gəncə	LADA (VAZ)	2107	2009	Sedan	Göy	1.6	75	Benzin	124741	Mexaniki	Arxa	f	6800	4000	4464044	Vuqar	(055) 453-32-91	2020-11-17
568	Bakı	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	107500	Mexaniki	Ön	f	8100	4765	4477552	Kamran	(077) 534-37-77	2020-11-17
573	Şəki	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	578552	Mexaniki	Arxa	f	6200	3647	4477553	Sərxan 	(055) 795-75-99	2020-11-17
574	Bakı	Kia	Sportage	2012	Offroader / SUV	Qara	2	185	Benzin	162400	Avtomat	Ön	f	25000	14706	4474275	Elnur 	(055) 446-85-75	2020-11-17
577	Bakı	Honda	CR-V	2014	Offroader / SUV	Ağ	2.4	184	Benzin	78320	Avtomat	Tam	f	34680	20400	4443398	Emin Bayramov	(050) 647-29-29	2020-11-17
579	Bakı	Opel	Vectra	1999	Hetçbek / Liftbek	Qızılı	2	136	Benzin	414000	Mexaniki	Ön	f	7800	4588	4464311	wirvab	(055) 570-06-56	2020-11-17
581	Bakı	Lexus	GS 350	2012	Sedan	Boz	3.5	306	Benzin	178000	Avtomat	Tam	f	39100	23000	4448965	Ramal	(050) 642-99-92	2020-11-17
582	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Qara	5	510	Benzin	84000	Avtomat	Tam	f	127500	75000	4421497	Elsad	(051) 733-33-03	2020-11-17
584	Bakı	Mercedes	CLA 220	2018	Kupe	Ağ	2	211	Benzin	48900	Avtomat	Tam	f	76160	44800	4457799	Ali	(050) 277-06-64	2020-11-17
585	Bakı	Renault	Grand Scenic	2010	Minivan	Ağ	1.5	110	Dizel	302000	Mexaniki	Ön	f	16200	9529	4456504	Anar	(051) 364-45-50	2020-11-17
587	Lənkəran	Renault	Megane	2010	Hetçbek / Liftbek	Ağ	1.5	110	Dizel	216000	Mexaniki	Ön	f	12500	7353	4289538	Qədir	(050) 569-54-55	2020-11-17
588	Bakı	Toyota	Land Cruiser	2012	Offroader / SUV	Qara	4.5	286	Dizel	220000	Avtomat	Tam	f	69700	41000	4476206	Ayxan	(050) 205-86-86	2020-11-17
589	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.6	120	Benzin	146000	Mexaniki	Ön	f	10900	6412	4407326	elman	(050) 383-68-11	2020-11-17
592	Bakı	Mercedes	S 550	2007	Sedan	Qara	5.5	388	Benzin	230000	Avtomat	Arxa	f	33150	19500	4224236	Ruslan	(070) 711-21-12	2020-11-17
593	Bakı	Porsche	Panamera 4S	2011	Hetçbek / Liftbek	Ağ	4.8	450	Benzin	57381	Avtomat	Tam	f	73950	43500	4476096	Samir	(050) 210-83-39	2020-11-17
594	Bakı	Mercedes	C 220	1994	Sedan	Qızılı	2.2	143	Benzin	150000	Avtomat	Arxa	f	6900	4059	4477550	Kamil	(070) 622-11-62	2020-11-17
595	Bərdə	Mercedes	E 270	2001	Sedan	Göy	2.7	170	Dizel	380000	Avtomat	Arxa	f	16300	9588	4477551	Yusif	(050) 456-99-49	2020-11-17
597	Bakı	Mercedes	E 220	2014	Sedan	Qara	2.2	170	Dizel	252000	Avtomat	Arxa	f	40290	23700	4459659	Samir	(099) 783-83-80	2020-11-17
599	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Göy	1.6	101	Benzin	339000	Avtomat	Ön	f	8400	4941	4445267	Nurlan 	(077) 440-55-00	2020-11-17
600	Bakı	Hyundai	Sonata	2018	Sedan	Ağ	2.4	178	Benzin	44000	Avtomat	Ön	f	38900	22882	4435760	Emin	(050) 500-45-95	2020-11-17
602	Bakı	Ducati	848 EVO Corse	2012	Motosiklet	Qırmızı	0.9	140	Benzin	21000	Mexaniki	Arxa	f	10200	6000	4460137	Fariz	(050) 582-88-66	2020-11-17
604	Bakı	BMW	530	2006	Sedan	Qara	3	258	Benzin	332000	Avtomat	Arxa	f	19500	11471	4464413	Şahin	(050) 963-20-20	2020-11-17
605	Bakı	Opel	Astra	2008	Universal	Ağ	1.4	90	Benzin	173400	Mexaniki	Ön	f	12200	7176	4477546	Xelil	(050) 490-81-80	2020-11-17
580	Bakı	Fiat	500	2011	Hetçbek / Liftbek	Ağ	1.4	100	Benzin	115000	Avtomat	Ön	f	14500	8529	4231061	Huseyn	(051) 614-62-82	2020-11-17
578	Bakı	Mercedes	E 220	1995	Sedan	Qara	2.2	150	Benzin	272000	Avtomat	Arxa	f	15000	8824	4366763	Elnur	(050) 428-23-09	2020-11-17
576	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Qara	1.5	110	Dizel	216325	Mexaniki	Ön	f	10900	6412	4456712	Saiq	(055) 251-20-01	2020-11-17
572	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2	245	Benzin	68400	Avtomat	Ön	f	29500	17353	4472176	Rasim	(070) 200-54-46	2020-11-17
607	Bakı	Mercedes	S 320	2000	Sedan	Gümüşü	3.2	224	Benzin	250000	Avtomat	Arxa	f	12500	7353	4430679	Senan	(050) 555-46-75	2020-11-17
608	Bakı	Audi	A8	2014	Sedan	Qara	4	435	Benzin	110000	Avtomat	Tam	f	67150	38500	4469247	Senan	(050) 211-70-06	2020-11-17
609	Bakı	Opel	Vectra	1993	Sedan	Yaşıl	2	136	Benzin	315241	Mexaniki	Ön	f	5500	3235	4457871	Emil	(077) 718-88-28	2020-11-17
610	Gəncə	Kia	Ceed	2008	Universal	Göy	1.4	109	Benzin	165000	Mexaniki	Ön	f	11900	7000	4469966	Bakir	(070) 591-50-79	2020-11-17
614	Bakı	BMW	525	2005	Sedan	Ağ	2.5	218	Benzin	330000	Mexaniki	Arxa	f	18800	11059	4472909	Babek	(077) 416-16-44	2020-11-17
615	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Benzin	145000	Robotlaşdırılmış	Tam	f	11300	6647	4477544	Sahib	(055) 587-66-11	2020-11-17
616	Bakı	BMW	320	1998	Sedan	Gümüşü	2	150	Benzin	360000	Avtomat	Arxa	f	9850	5794	4472083	Seymur	(055) 993-38-81	2020-11-17
617	Bakı	Nissan	Juke	2012	Offroader / SUV	Göy	1.6	117	Benzin	116000	Avtomat	Ön	f	21000	12353	4389672	Samir 	(070) 227-59-99	2020-11-17
618	Şamaxı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	139000	Mexaniki	Arxa	f	7200	4235	4476462	Əli	(055) 407-82-55	2020-11-17
620	Bakı	Ford	Fusion	2016	Sedan	Yaş Asfalt	2	274	Benzin	45500	Avtomat	Ön	f	24400	14353	4414054	AZER	(050) 510-48-52	2020-11-17
621	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	153	Benzin	193480	Avtomat	Ön	f	15800	9294	4451482	Kamal	(055) 613-12-10	2020-11-17
623	Bakı	Kia	Soul	2014	Offroader / SUV	Qara	2	164	Benzin	129700	Avtomat	Ön	f	24400	14353	4456087	Ramal	(050) 266-66-10	2020-11-17
625	Bakı	BMW	328	2012	Sedan	Ağ	2	245	Benzin	153000	Avtomat	Arxa	f	29750	17500	4387864	Abdul	(055) 741-41-14	2020-11-17
626	Bakı	Iveco	Otoyol	2007	Avtobus	Ağ	4	156	Dizel	985657	Mexaniki	Arxa	f	15500	9118	4477549	Ramin	(055) 403-66-90	2020-11-17
627	Bakı	Mitsubishi	Pajero	2003	Offroader / SUV	Bej	3	190	Benzin	193000	Avtomat	Tam	f	16500	9706	4464972	Reşid	(050) 362-32-14	2020-11-17
628	Bakı	Chevrolet	Spark	2018	Hetçbek / Liftbek	Qara	1.4	100	Benzin	16000	Avtomat	Ön	f	17600	10353	4409978	Fikret	(050) 386-61-41	2020-11-17
633	Bakı	Nissan	Versa	2016	Sedan	Boz	1.6	107	Benzin	62200	Avtomat	Ön	f	16800	9882	4401668	Rashad	(070) 210-87-50	2020-11-17
634	Sumqayıt	Mercedes	S 320	1998	Sedan	Ağ	3.2	224	Benzin	173170	Avtomat	Arxa	f	24000	14118	4344751	Cosqun	(055) 596-97-98	2020-11-17
635	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.5	65	Benzin	170000	Mexaniki	Arxa	f	6500	3824	4477529	Feyrus	(050) 338-42-30	2020-11-17
636	Bakı	Hyundai	i30	2015	Universal	Gümüşü	1.6	132	Dizel	126126	Mexaniki	Ön	f	15500	9118	4477530	Valeh	(070) 691-58-31	2020-11-17
638	Bakı	Opel	Astra	2007	Universal	Göy	1.3	90	Dizel	175000	Mexaniki	Ön	f	10900	6412	4467092	Fexreddin	(050) 850-51-69	2020-11-17
639	Göyçay	LADA (VAZ)	2114	2006	Hetçbek / Liftbek	Gümüşü	1.6	75	Benzin	213000	Mexaniki	Ön	f	7800	4588	4477537	Tural	(050) 450-72-71	2020-11-17
640	Bakı	Toyota	Camry	2018	Sedan	Göy	2.5	206	Benzin	21000	Avtomat	Ön	f	45900	27000	4428642	Ramil	(050) 544-60-33	2020-11-17
641	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	2.7	167	Benzin	123456	Avtomat	Tam	f	32800	19294	4467978	Mehdi	(077) 372-72-72	2020-11-17
642	Bakı	Mercedes	ML 250	2015	Offroader / SUV	Ağ	2.2	204	Dizel	119000	Avtomat	Tam	f	66130	38900	4477532	Azer	(050) 386-66-85	2020-11-17
643	Sumqayıt	Mercedes	C 180	1996	Sedan	Yaşıl	1.8	122	Benzin	296800	Avtomat	Arxa	f	7900	4647	4476019	Elis	(055) 337-03-66	2020-11-17
644	Yevlax	Mercedes	C 240	1998	Sedan	Göy	2.4	170	Benzin	256784	Avtomat	Tam	f	11800	6941	4477540	Zeynal	(070) 366-72-22	2020-11-17
645	Bakı	Hyundai	Sonata	2015	Sedan	Narıncı	2	274	Benzin	120000	Avtomat	Ön	f	24500	14412	4442801	Həsən	(050) 486-30-00	2020-11-17
646	Bakı	BMW	328	2012	Sedan	Gümüşü	2	245	Benzin	116000	Avtomat	Arxa	f	42500	25000	4463210	Elshad 	(051) 306-16-99	2020-11-17
647	Bakı	Nissan	X-Trail	2011	Offroader / SUV	Ağ	2.5	175	Benzin	165000	Avtomat	Tam	f	20500	12059	4382101	Murad	(050) 466-21-88	2020-11-17
650	Bakı	BMW	740	2017	Sedan	Qara	3	326	Benzin	60000	Avtomat	Arxa	f	141100	83000	4433383	Ceyhun	(050) 722-22-27	2020-11-17
651	Gəncə	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	170000	Avtomat	Tam	f	30430	17900	4454746	Kamran	(055) 448-22-39	2020-11-17
652	Bakı	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	320000	Avtomat	Arxa	f	12800	7529	4443269	Səbuhi	(055) 841-20-41	2020-11-17
653	Ağdaş	Ford	Cargo	2007	Yük maşını	Ağ	12	450	Dizel	183183	Mexaniki	Arxa	f	28000	16471	4392996	Mehemmed	(050) 871-76-66	2020-11-17
654	Bakı	Hyundai	Sonata	2011	Sedan	Qara	2	165	Benzin	99774	Avtomat	Tam	f	18800	11059	4464236	Rasim	(050) 675-48-69	2020-11-17
655	Bakı	BMW	320	1998	Sedan	Göy	2	150	Benzin	211000	Avtomat	Arxa	f	11200	6588	4477522	Samir	(077) 761-61-20	2020-11-17
656	Bakı	LADA (VAZ)	2107	2006	Sedan	Tünd qırmızı	1.6	75	Benzin	50000	Mexaniki	Arxa	f	8000	4706	4477523	Cingiz	(070) 512-34-57	2020-11-17
657	Mingəçevir	Opel	Astra	1998	Hetçbek / Liftbek	Yaşıl	1.6	101	Benzin	305035	Mexaniki	Ön	f	8700	5118	4463915	Namiq	(050) 435-35-95	2020-11-17
658	Bakı	Toyota	Prado	2008	Offroader / SUV	Gümüşü	2.7	167	Benzin	109000	Avtomat	Tam	f	36500	21471	4341232	Yaqub	(050) 990-24-14	2020-11-17
659	Bakı	Toyota	Camry	2019	Sedan	Göy	2.5	206	Benzin	67000	Avtomat	Ön	f	56950	33500	4425455	Müşfiq	(055) 219-11-75	2020-11-17
619	Sumqayıt	Kia	Rio	2011	Hetçbek / Liftbek	Gümüşü	1.4	107	Benzin	141262	Mexaniki	Ön	f	12700	7471	4466729	Rasım	(050) 521-21-06	2020-11-17
613	Bakı	Hyundai	Elantra	2019	Sedan	Boz	1.6	132	Benzin	30000	Avtomat	Ön	f	27900	16412	4470273	Ramil	(070) 390-11-13	2020-11-17
624	Bakı	Mercedes	E 240	2002	Sedan	Gümüşü	2.6	177	Benzin	249000	Avtomat	Arxa	f	15400	9059	4407608	Renat	(055) 266-00-90	2020-11-17
637	Bakı	Audi	A4	2002	Sedan	Gümüşü	1.8	163	Benzin	234000	Avtomat	Ön	f	8300	4882	4408907	Oruc	(050) 364-29-39	2020-11-17
630	Bakı	Ford	Fusion	2010	Hetçbek / Liftbek	Qara	1.4	110	Benzin	126000	Avtomat	Ön	f	11500	6765	4424659	Zaur	(050) 277-10-30	2020-11-17
660	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	52000	Avtomat	Tam	f	76500	45000	4448161	Yaqub	(050) 990-24-14	2020-11-17
661	Şəmkir	LADA (VAZ)	2110	2005	Sedan	Qızılı	1.6	80	Benzin	125000	Mexaniki	Ön	f	6900	4059	4477518	Samir	(050) 306-94-64	2020-11-17
662	Masallı	Volkswagen	Caddy	1998	Furqon	Gümüşü	1.5	75	Benzin	65000	Mexaniki	Ön	f	6000	3529	4477519	Samir	(051) 410-99-10	2020-11-17
666	Bakı	Hyundai	Sonata	2014	Sedan	Boz	2	165	Benzin	72000	Avtomat	Ön	f	27500	16176	4431847	Hacı	(055) 210-52-12	2020-11-17
667	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	2.7	167	Benzin	163000	Avtomat	Tam	f	43690	25700	4435749	Zaur	(070) 738-48-58	2020-11-17
668	Bakı	BMW	530	2017	Sedan	Yaş Asfalt	2	252	Benzin	41600	Avtomat	Arxa	f	81430	47900	4451243	Yaşar	(050) 336-36-33	2020-11-17
669	Bakı	Mercedes	E 250	2009	Sedan	Gümüşü	2.5	204	Dizel	212000	Avtomat	Arxa	f	29920	17600	4436307	qehreman	(050) 700-60-60	2020-11-17
670	Gəncə	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	75000	Mexaniki	Arxa	f	7900	4647	4477524	Elmeddin	(051) 875-75-14	2020-11-17
672	Bakı	Opel	Astra	2004	Hetçbek / Liftbek	Boz	1.6	110	Benzin	295000	Mexaniki	Ön	f	9500	5588	4466763	Mesedi	(070) 220-32-92	2020-11-17
673	Bakı	Hyundai	Accent	2005	Sedan	Göy	1.6	106	Benzin	237448	Avtomat	Ön	f	10000	5882	4435689	Əkbər	(055) 415-00-23	2020-11-17
674	Bakı	BMW	X5	2005	Offroader / SUV	Qara	4.4	320	Benzin	247000	Avtomat	Tam	f	22500	13235	4378797	ferhad	(055) 905-33-33	2020-11-17
675	Bakı	Mercedes	E 200	2013	Sedan	Qara	2	184	Benzin	87000	Avtomat	Arxa	f	47600	28000	4368878	Samir	(050) 255-77-65	2020-11-17
676	Bakı	Mercedes	Vito	2011	Van	Ağ	2.2	170	Dizel	234000	Avtomat	Arxa	f	29900	17588	4416936	Tebriz	(050) 505-44-11	2020-11-17
677	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4	282	Benzin	95000	Avtomat	Tam	f	66300	39000	4450554	Ayaz	(055) 777-91-25	2020-11-17
679	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Hibrid	99800	Avtomat	Ön	f	12800	7529	4464788	Resad	(055) 716-23-03	2020-11-17
680	Şirvan	BMW	320	1993	Sedan	Yaş Asfalt	2	150	Benzin	275411	Avtomat	Arxa	f	5900	3471	4474954	Nihat	(050) 839-18-31	2020-11-17
681	Bakı	Mercedes	C 200	1997	Sedan	Qara	2	136	Benzin	298000	Avtomat	Arxa	f	9400	5529	4425114	Anar	(050) 753-70-06	2020-11-17
682	Bakı	Honda	CR-V	2012	Offroader / SUV	Tünd qırmızı	2.4	170	Benzin	162000	Avtomat	Tam	f	29000	17059	4442534	Famil	(050) 623-11-13	2020-11-17
683	Bakı	Land Rover	Discovery	2015	Offroader / SUV	Qara	3	256	Dizel	95000	Avtomat	Tam	f	80750	47500	4364080	Ali	(055) 306-77-77	2020-11-17
684	Bakı	Chevrolet	Cruze	2017	Sedan	Qara	1.4	141	Benzin	68000	Avtomat	Ön	f	17100	10059	4458186	Mamed	(055) 436-99-99	2020-11-17
685	Bakı	BMW	X6	2009	Offroader / SUV	Qara	3	306	Benzin	160000	Avtomat	Tam	f	35190	20700	4477510	Anar	(055) 949-30-18	2020-11-17
686	Bakı	Hyundai	Elantra	2015	Sedan	Ağ	1.8	150	Benzin	105000	Avtomat	Ön	f	24500	14412	4477498	Elvin	(050) 315-66-66	2020-11-17
687	Quba	GAZ	66	1988	Yük maşını	Bej	4.4	125	Benzin	431870	Mexaniki	Tam	f	3800	2235	4477499	Rahib	(050) 442-49-40	2020-11-17
689	Bakı	Toyota	Camry	2009	Sedan	Ağ	2.4	174	Benzin	119000	Avtomat	Ön	f	21600	12706	4346406	Məhəmməd	(051) 733-66-33	2020-11-17
690	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Tünd qırmızı	1.5	76	Hibrid	162000	Avtomat	Ön	f	12500	7353	4464140	Rovshan	(050) 611-91-74	2020-11-17
691	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Yaş Asfalt	3	190	Benzin	219000	Avtomat	Tam	f	21000	12353	4477501	Ebülfez 	(070) 211-62-73	2020-11-17
692	Bakı	Kia	Sportage	2015	Offroader / SUV	Göy	2	184	Dizel	96000	Avtomat	Tam	f	32500	19118	4424976	Nureddin	(050) 861-02-56	2020-11-17
693	Bakı	Mercedes	Viano	2012	Van	Qara	3	231	Dizel	166000	Avtomat	Ön	f	50150	29500	4237777	Elmar	(055) 342-83-83	2020-11-17
694	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2.7	188	Benzin	160000	Avtomat	Tam	f	22000	12941	4198063	Rüfət	(055) 529-29-77	2020-11-17
695	Bakı	Audi	Q7	2018	Offroader / SUV	Boz	2	252	Benzin	58000	Robotlaşdırılmış	Tam	f	90950	53500	4469992	Səid	(055) 210-12-44	2020-11-17
696	Bakı	Toyota	Land Cruiser	2003	Offroader / SUV	Qara	4.2	225	Dizel	219000	Mexaniki	Tam	f	30000	17647	4477511	Eytiram	(055) 225-60-09	2020-11-17
697	Bakı	Toyota	Camry	2013	Sedan	Ağ	2.5	181	Benzin	133000	Avtomat	Ön	f	28400	16706	4464885	Mikayil	(050) 327-77-00	2020-11-17
698	Bakı	Chevrolet	Malibu	2019	Sedan	Boz	1.5	160	Benzin	19000	Avtomat	Ön	f	29500	17353	4460743	Elxan	(055) 400-29-93	2020-11-17
699	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Göy	1.7	80	Benzin	18000	Mexaniki	Tam	f	16400	9647	4437377	Elvin	(050) 454-13-13	2020-11-17
700	Bakı	BMW	530	2014	Sedan	Qara	3	306	Benzin	75235	Avtomat	Arxa	f	58650	34500	4430620	Aslan	(050) 314-97-53	2020-11-17
701	Bakı	Land Rover	RR Sport	2006	Offroader / SUV	Ağ	4.2	400	Benzin	155000	Avtomat	Tam	f	36550	21500	4222099	Rəşad	(050) 425-22-25	2020-11-17
702	Bakı	Land Rover	RR Sport	2009	Offroader / SUV	Ağ	5	510	Benzin	153000	Avtomat	Tam	f	51000	30000	4426219	Samir	(055) 323-04-03	2020-11-17
703	Bakı	Hyundai	Grandeur	2013	Sedan	Qara	3	250	Benzin	107266	Avtomat	Ön	f	34000	20000	4214555	Cemil	(050) 268-64-09	2020-11-17
705	Bakı	Hyundai	Azera	2011	Sedan	Ağ	2.4	180	Benzin	149000	Avtomat	Ön	f	26800	15765	4475847	Cavidan	(055) 530-00-01	2020-11-17
708	Bakı	Mercedes	CL 500	2008	Kupe	Ağ	5.5	388	Benzin	67000	Avtomat	Arxa	f	46750	27500	4452291	Cavid	(055) 852-48-38	2020-11-17
709	Bakı	Nissan	Pathfinder	1999	Offroader / SUV	Qızılı	3.3	170	Qaz	421145	Avtomat	Tam	f	13500	7941	4448036	İsmayıl	(070) 578-55-85	2020-11-17
671	Bakı	Ford	Fusion	2018	Sedan	Gümüşü	1.5	181	Benzin	28200	Avtomat	Ön	f	24800	14588	4403951	Rəşad	(055) 210-87-50	2020-11-17
678	Bakı	Dodge	Intrepid	1997	Sedan	Tünd qırmızı	3.5	237	Benzin	98500	Avtomat	Ön	f	7000	4118	3830308	Müzəffər	(050) 316-91-60	2020-11-17
704	Bakı	Kia	Optima	2015	Sedan	Tünd qırmızı	1.6	180	Benzin	84000	Avtomat	Ön	f	23800	14000	4151723	Fərid	(055) 708-08-08	2020-11-17
663	Bakı	Opel	Astra	2008	Universal	Yaş Asfalt	1.4	90	Benzin	135845	Mexaniki	Ön	f	11700	6882	4447844	İBRAHİM	(050) 463-13-37	2020-11-17
664	Bakı	BMW	525	2006	Sedan	Göy	2.5	218	Benzin	54000	Avtomat	Arxa	f	30500	17941	4422419	Vüqar	(055) 222-82-20	2020-11-17
710	Bakı	Nissan	Sentra	2014	Sedan	Ağ	1.6	117	Benzin	82000	Avtomat	Ön	f	20000	11765	4468870	Sevda	(050) 224-32-01	2020-11-17
711	Sumqayıt	Mercedes	E 230	1997	Sedan	Qara	2.3	150	Benzin	254000	Avtomat	Arxa	f	11000	6471	4477504	Sənan	(070) 551-59-09	2020-11-17
712	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4.2	131	Dizel	42000	Mexaniki	Tam	f	57630	33900	3560990	Ровшан	(050) 556-21-75	2020-11-17
713	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Mavi	1.5	76	Hibrid	177000	Avtomat	Ön	f	12500	7353	4455275	Təhmin	(055) 900-50-40	2020-11-17
714	Bakı	Hyundai	Elantra	2015	Sedan	Qara	1.8	150	Benzin	96000	Avtomat	Ön	f	18700	11000	4458167	ceyhun	(050) 888-88-95	2020-11-17
715	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	299474	Avtomat	Ön	f	13500	7941	4462239	ELMAN	(055) 680-82-83	2020-11-17
716	Biləsuvar	LADA (VAZ)	Niva	2009	Offroader / SUV	Ağ	1.7	80	Benzin	213252	Mexaniki	Tam	f	8300	4882	4476164	Cavid müellim	(070) 301-46-43	2020-11-17
717	Gəncə	Mercedes	C 200	2000	Sedan	Gümüşü	2	163	Benzin	360500	Avtomat	Arxa	f	11300	6647	4477505	Elvin	(050) 564-15-95	2020-11-17
720	Bakı	Mercedes	E 200	2012	Kupe	Qara	1.8	184	Benzin	143000	Avtomat	Arxa	f	28050	16500	4450677	Ayaz	(070) 930-63-03	2020-11-17
721	Bakı	Hyundai	Sonata	2015	Sedan	Narıncı	2	274	Benzin	56900	Avtomat	Ön	f	25000	14706	4454556	Sahib	(055) 747-72-02	2020-11-17
723	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2.4	178	Benzin	152200	Avtomat	Ön	f	18800	11059	4393352	Ayaz	(050) 348-82-11	2020-11-17
724	Bakı	DongFeng	Fengshen H30	2015	Hetçbek / Liftbek	Boz	1.6	117	Benzin	125000	Avtomat	Ön	f	12240	7200	4469251	Emil	(055) 763-09-11	2020-11-17
725	Bakı	Lexus	RX 300	1999	Offroader / SUV	Ağ	3	223	Benzin	230000	Avtomat	Tam	f	12800	7529	4444296	Mamed	(050) 353-78-09	2020-11-17
726	Bakı	Opel	Astra	2003	Hetçbek / Liftbek	Boz	1.6	101	Benzin	246000	Avtomat	Ön	f	8300	4882	4465686	Amid	(050) 771-01-97	2020-11-17
728	Bakı	BMW	528	2015	Sedan	Göy	2	245	Benzin	96200	Avtomat	Tam	f	50490	29700	4405738	Rauf	(055) 636-94-44	2020-11-17
730	Bakı	Mercedes	S 350	2006	Sedan	Qara	3.5	272	Benzin	68000	Avtomat	Arxa	f	40800	24000	4451514	Zakir	(050) 578-09-09	2020-11-17
731	Bakı	Chevrolet	Cruze	2012	Sedan	Ağ	2	165	Dizel	255000	Avtomat	Ön	f	14700	8647	4468713	Tural	(055) 335-00-07	2020-11-17
733	Bakı	Toyota	Camry	2018	Sedan	Qara	2.5	181	Benzin	50000	Avtomat	Ön	f	41650	24500	4391561	Fuad	(050) 560-09-10	2020-11-17
736	Bakı	Ford	Fusion	2018	Sedan	Ağ	1.5	181	Benzin	14000	Avtomat	Ön	f	31500	18529	4361324	Elşən	(050) 351-72-75	2020-11-17
737	Bakı	Land Rover	RR Sport	2007	Offroader / SUV	Qara	4.2	390	Benzin	132000	Avtomat	Tam	f	30500	17941	4420070	Elmeddin	(055) 381-71-71	2020-11-17
738	Bakı	Dodge	Dart	2012	Sedan	Göy	1.4	160	Benzin	157820	Avtomat	Ön	f	19040	11200	4459173	Qəhrəman	(055) 934-71-19	2020-11-17
740	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Göy	1.4	90	Benzin	156000	Mexaniki	Ön	f	11900	7000	4445461	Saxavat	(070) 215-53-52	2020-11-17
741	Qəbələ	Kia	Optima	2014	Sedan	Ağ	2	274	Benzin	69000	Avtomat	Ön	f	26400	15529	4435332	Natiq	(070) 876-29-00	2020-11-17
742	Bakı	LADA (VAZ)	Priora	2015	Sedan	Ağ	1.6	106	Benzin	127000	Robotlaşdırılmış	Ön	f	13000	7647	4422510	Rauf	(050) 546-00-10	2020-11-17
743	Bakı	Mercedes	C 180	1993	Sedan	Qırmızı	1.8	122	Benzin	366863	Avtomat	Arxa	f	6900	4059	4464656	Abdullah	(055) 213-27-12	2020-11-17
744	Bakı	BMW	528	2016	Sedan	Ağ	2	245	Benzin	44000	Avtomat	Arxa	f	55590	32700	4440618	Əli	(055) 578-78-74	2020-11-17
745	Gəncə	Toyota	Land Cruiser	2012	Offroader / SUV	Qara	4.5	286	Dizel	165000	Avtomat	Tam	f	79900	47000	4343256	RAFIG	(050) 659-75-67	2020-11-17
746	Bakı	Ravon	Nexia R3	2020	Sedan	Ağ	1.5	107	Benzin	1000	Mexaniki	Ön	f	12500	7353	4009329	Seyid	(077) 322-51-54	2020-11-17
747	Bakı	BMW	328	2012	Sedan	Göy	2	245	Benzin	154000	Avtomat	Arxa	f	29750	17500	4409974	Kənan	(050) 688-67-68	2020-11-17
749	Qəbələ	Ford	Transit	2000	Furqon	Ağ	2.4	90	Dizel	467800	Mexaniki	Arxa	f	17200	10118	4471529	Xəyal	(051) 505-90-00	2020-11-17
750	Bakı	Mercedes	E 320	1999	Sedan	Qara	3.2	224	Benzin	423200	Avtomat	Arxa	f	14500	8529	4462321	Ferid	(050) 275-77-56	2020-11-17
751	Bakı	Volkswagen	Tiguan	2013	Offroader / SUV	Gümüşü	2	170	Benzin	45771	Avtomat	Tam	f	28000	16471	4346598	Kamran	(051) 728-96-62	2020-11-17
754	Bakı	Hyundai	Accent	2011	Sedan	Gümüşü	1.6	140	Dizel	57000	Avtomat	Ön	f	16500	9706	4477495	Üzeyir	(055) 206-56-16	2020-11-17
755	Bərdə	LADA (VAZ)	2109	2003	Hetçbek / Liftbek	Yaşıl	1.5	75	Benzin	266992	Mexaniki	Ön	f	5100	3000	4477497	Elməddin	(050) 734-80-61	2020-11-17
756	Bakı	Kia	Sorento	2012	Offroader / SUV	Qara	2	184	Dizel	91760	Avtomat	Ön	f	32900	19353	4477496	Azər	(070) 794-91-56	2020-11-17
758	Bakı	BMW	528	2014	Sedan	Qəhvəyi	2	245	Benzin	114000	Avtomat	Arxa	f	40460	23800	4435481	Təvəkkül	(055) 686-12-78	2020-11-17
759	Bakı	Porsche	Cayenne GTS	2009	Offroader / SUV	Yaş Asfalt	4.8	405	Benzin	45000	Avtomat	Tam	f	49300	29000	4432429	Ramin	(077) 762-77-77	2020-11-17
739	Masallı	Mercedes	E 220	2000	Sedan	Göy	2.2	143	Dizel	312000	Avtomat	Arxa	f	16200	9529	4448007	Fazeh	(050) 512-92-62	2020-11-17
757	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Boz	1.7	80	Benzin	19000	Mexaniki	Tam	f	17500	10294	4380301	Azer	(055) 701-22-76	2020-11-17
729	Bakı	LADA (VAZ)	Priora	2018	Sedan	Ağ	1.6	98	Benzin	78000	Mexaniki	Tam	f	15900	9353	4371021	Elşad	(050) 460-46-56	2020-11-17
752	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Gümüşü	2	184	Dizel	80000	Avtomat	Ön	f	22600	13294	4456741	Mətləb	(055) 432-02-70	2020-11-17
719	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Ağ	1.7	80	Benzin	16000	Mexaniki	Tam	f	14900	8765	4473975	Elgun	(050) 721-53-94	2020-11-17
727	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	80000	Mexaniki	Tam	f	14000	8235	4442858	Ceyhun	(055) 428-42-42	2020-11-17
734	Bakı	Toyota	Prado	2005	Offroader / SUV	Ağ	2.7	167	Benzin	391000	Avtomat	Tam	f	22200	13059	4475358	İlham	(050) 787-83-83	2020-11-17
761	Bakı	Shacman	F3000	2012	Yük maşını	Tünd qırmızı	11	375	Dizel	250000	Mexaniki	Tam	f	55000	32353	4164440	Rehim m.	(050) 717-97-79	2020-11-17
762	Bakı	BMW	520	2018	Sedan	Qara	2	190	Benzin	33500	Avtomat	Arxa	f	74460	43800	4477097	Nicat	(055) 445-55-85	2020-11-17
763	Bakı	Kia	Sorento	2013	Offroader / SUV	Qara	2.4	210	Benzin	85000	Avtomat	Tam	f	27300	16059	4419013	Yusif	(050) 575-42-83	2020-11-17
764	Bakı	Volkswagen	Tiguan	2015	Offroader / SUV	Gümüşü	2	200	Benzin	61000	Avtomat	Tam	f	28000	16471	4477486	Mahammad	(070) 334-19-85	2020-11-17
765	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Gümüşü	1.5	110	Dizel	140000	Mexaniki	Ön	f	11500	6765	4477478	Elekber 	(070) 266-00-41	2020-11-17
766	Quba	Mercedes	A 170	2005	Hetçbek / Liftbek	Qırmızı	1.7	116	Benzin	149000	Avtomat	Ön	f	10500	6176	4477481	Rena	(055) 868-10-95	2020-11-17
767	Bakı	LADA (VAZ)	2107	1999	Sedan	Ağ	1.6	75	Benzin	150000	Mexaniki	Arxa	f	4500	2647	4373891	Ramil	(055) 220-77-20	2020-11-17
768	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	1.8	130	Benzin	250000	Avtomat	Tam	f	9500	5588	4477479	Rəşad	(050) 842-10-32	2020-11-17
769	Bakı	Mercedes	S 350	2011	Sedan	Qara	3.5	306	Benzin	108000	Avtomat	Arxa	f	51850	30500	4128408	Elçin	(050) 456-44-44	2020-11-17
770	Bakı	Toyota	Corolla	2006	Universal	Qara	1.4	90	Dizel	202000	Mexaniki	Ön	f	12500	7353	4410200	Senan	(050) 750-09-25	2020-11-17
771	Gəncə	Mercedes	Sprinter 412	1999	Furqon	Göy	2.9	127	Dizel	500000	Mexaniki	Arxa	f	29900	17588	4477477	Dünyamin	(055) 479-91-86	2020-11-17
772	Bakı	Kia	Rio	2008	Sedan	Qırmızı	1.5	105	Dizel	175000	Avtomat	Ön	f	11800	6941	4477475	Namiq	(050) 688-66-30	2020-11-17
773	Bakı	Lexus	ES 350	2006	Sedan	Boz	3.5	272	Benzin	205000	Avtomat	Ön	f	19890	11700	4324043	Rüfət	(055) 667-22-77	2020-11-17
776	Bakı	Hyundai	Sonata	2009	Sedan	Ağ	2.4	178	Benzin	252000	Avtomat	Ön	f	15950	9382	4477488	senan	(050) 555-66-16	2020-11-17
777	Bakı	Toyota	Prado	2012	Offroader / SUV	Qara	2.7	167	Benzin	116000	Avtomat	Tam	f	43350	25500	4468815	Fuad	(055) 521-22-20	2020-11-17
778	Bakı	Mercedes	GL 350	2013	Offroader / SUV	Yaş Asfalt	3	258	Dizel	148000	Avtomat	Tam	f	73950	43500	4454868	Yashar 	(051) 444-25-29	2020-11-17
779	Bakı	LADA (VAZ)	21099	1997	Sedan	Gümüşü	1.5	75	Benzin	354856	Mexaniki	Ön	f	4800	2824	4435167	Seymur	(050) 759-79-38	2020-11-17
780	Bakı	Daewoo	Gentra	2013	Sedan	Ağ	1.5	107	Benzin	209086	Mexaniki	Ön	f	10000	5882	4477487	Ferid	(055) 250-84-42	2020-11-17
781	Bakı	Mercedes	Sprinter 515	2008	Yük maşını	Ağ	2.2	170	Dizel	275000	Mexaniki	Tam	f	34850	20500	4255690	Samir	(055) 743-36-06	2020-11-17
783	Bakı	GAZ	24	1983	Sedan	Qara	2.4	90	Benzin	100000	Mexaniki	Arxa	f	15555	9150	4454823	Elgiz	(050) 555-51-03	2020-11-17
784	Bakı	Land Rover	Range Rover	2011	Offroader / SUV	Ağ	5	510	Benzin	132000	Avtomat	Tam	f	58650	34500	4380909	Orxan	(055) 211-60-00	2020-11-17
785	Tovuz	GAZ	53	1983	Yük maşını	Göy	6	150	Benzin	300000	Mexaniki	Arxa	f	3000	1765	4477492	Vasif	(050) 801-60-40	2020-11-17
786	Bakı	Audi	S7	2013	Hetçbek / Liftbek	Qara	4	450	Benzin	25000	Avtomat	Tam	f	93500	55000	4477490	Sadiq	(055) 755-56-77	2020-11-17
787	Bakı	Mercedes	E 280	1998	Sedan	Qara	2.8	193	Benzin	430000	Avtomat	Arxa	f	14000	8235	4215803	Emin	(055) 222-39-98	2020-11-17
788	Bakı	Hyundai	Elantra	2016	Sedan	Qara	1.6	128	Qaz	40000	Avtomat	Ön	f	26000	15294	4425811	Fərhad	(051) 255-63-85	2020-11-17
789	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.3	90	Dizel	273000	Mexaniki	Ön	f	10300	6059	4409096	Mətləb	(070) 673-59-83	2020-11-17
790	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	208000	Avtomat	Ön	f	14500	8529	4433749	Sadiq	(077) 312-03-02	2020-11-17
791	Bakı	Ford	Transit	2008	Mikroavtobus	Boz	2.2	170	Dizel	25000	Mexaniki	Ön	f	110500	65000	4465137	Xanoglan	(055) 574-43-35	2020-11-17
792	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2	274	Benzin	85000	Avtomat	Ön	f	29500	17353	4472390	Ceyhun	(077) 300-26-31	2020-11-17
793	Bakı	Mercedes	E 63 AMG	2007	Sedan	Qara	6.3	514	Benzin	170000	Avtomat	Arxa	f	32300	19000	4477385	Seddam	(055) 728-99-98	2020-11-17
794	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	89000	Mexaniki	Tam	f	13900	8176	4473433	Arzu	(050) 211-62-93	2020-11-17
797	Bakı	Mitsubishi	Outlander	2017	Offroader / SUV	Ağ	2.4	170	Benzin	24200	Avtomat	Ön	f	37230	21900	4442837	Yashar	(070) 360-40-55	2020-11-17
798	Gəncə	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	65000	Mexaniki	Arxa	f	5600	3294	4477466	Elmar	(055) 441-68-89	2020-11-17
799	Bakı	Opel	Astra	2004	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	201000	Mexaniki	Ön	f	9700	5706	4461021	Vusal	(055) 622-59-53	2020-11-17
800	Xudat	LADA (VAZ)	2106	1997	Sedan	Ağ	1.5	65	Benzin	210820	Mexaniki	Arxa	f	4200	2471	4459428	Baba	(050) 319-73-51	2020-11-17
801	Bakı	Hyundai	Santa Fe	2014	Offroader / SUV	Qara	2	184	Dizel	41000	Avtomat	Tam	f	37000	21765	4391696	Gunduz	(055) 696-24-86	2020-11-17
802	Bakı	BMW	530	2017	Sedan	Qara	2	249	Benzin	16500	Avtomat	Arxa	f	75650	44500	4384734	Miri	(050) 533-43-22	2020-11-17
803	Xırdalan	Mercedes	E 270	2004	Sedan	Qara	2.7	177	Dizel	258163	Avtomat	Arxa	f	17900	10529	4477467	Arif	(050) 633-81-51	2020-11-17
804	Bakı	Mazda	6	2014	Sedan	Göy	2.5	192	Benzin	145000	Avtomat	Ön	f	28900	17000	4392434	Murad	(050) 325-27-29	2020-11-17
805	Gəncə	Mercedes	190	1990	Sedan	Qara	2	122	Benzin	155545	Mexaniki	Arxa	f	6700	3941	4477468	Cavid	(055) 448-79-17	2020-11-17
806	Bakı	Mazda	CX-9	2014	Offroader / SUV	Boz	3.7	273	Benzin	46900	Avtomat	Tam	f	40800	24000	4460842	Kamran	(050) 210-47-43	2020-11-17
807	Bakı	Ford	Transit	2009	Yük maşını	Ağ	2.4	140	Dizel	132000	Mexaniki	Arxa	f	25900	15235	4375963	Ruslan	(055) 558-15-16	2020-11-17
809	Bakı	Hyundai	Santa Fe	2014	Offroader / SUV	Qara	2	184	Dizel	71346	Avtomat	Ön	f	34000	20000	4455368	Azər	(055) 878-78-68	2020-11-17
861	Bakı	BMW	528	2011	Sedan	Ağ	2	245	Benzin	162467	Avtomat	Arxa	f	32980	19400	4406420	Sadiq	(055) 391-00-01	2020-11-17
808	Bakı	Hyundai	Elantra	2011	Sedan	Ağ	1.8	150	Benzin	130000	Avtomat	Arxa	f	20000	11765	4441450	HESEN	(055) 200-05-22	2020-11-17
795	Bakı	Hyundai	Sonata	2008	Sedan	Qara	2.4	185	Benzin	179000	Avtomat	Ön	f	16800	9882	4389308	Turan	(055) 315-11-15	2020-11-17
760	Bakı	Hyundai	Sonata	2012	Sedan	Qara	2	274	Benzin	93000	Avtomat	Ön	f	24000	14118	4464218	Abdulla	(055) 992-01-07	2020-11-17
782	Bakı	Ford	Fusion	2015	Sedan	Göy	2	245	Benzin	186000	Avtomat	Ön	f	23800	14000	4474123	Asif	(055) 355-33-39	2020-11-17
775	Bakı	Opel	Zafira	2007	Minivan	Boz	1.9	150	Dizel	277800	Avtomat	Ön	f	14900	8765	4431417	Tural 	(055) 625-27-77	2020-11-17
810	Bakı	Land Rover	Discovery	2006	Offroader / SUV	Qara	2.7	190	Dizel	218000	Avtomat	Tam	f	26800	15765	4390261	Babak	(050) 598-70-39	2020-11-17
811	Bakı	Kia	Rio	2014	Hetçbek / Liftbek	Yaş Asfalt	1.4	107	Benzin	46500	Avtomat	Ön	f	18800	11059	4463058	rahan	(077) 322-96-22	2020-11-17
812	Bakı	BMW	530	2019	Sedan	Yaş Asfalt	2	252	Benzin	22000	Avtomat	Arxa	f	87550	51500	4305262	Rustam 	(050) 888-88-50	2020-11-17
813	Bakı	Lexus	LX 570	2013	Offroader / SUV	Ağ	5.7	367	Benzin	153000	Avtomat	Tam	f	87550	51500	4458828	Aydin	(055) 764-23-99	2020-11-17
814	Bakı	Land Rover	Discovery	2011	Offroader / SUV	Qara	3	256	Dizel	116500	Avtomat	Tam	f	45730	26900	4412606	İsmayıl	(050) 317-17-76	2020-11-17
815	Bakı	Mercedes	208 D	1993	Mikroavtobus	Ağ	2.4	96	Dizel	654598	Mexaniki	Arxa	f	7500	4412	4477462	Mirze	(070) 837-63-68	2020-11-17
816	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	194000	Avtomat	Tam	f	39100	23000	4454987	Səkinə	(055) 200-75-69	2020-11-17
817	Bakı	Daewoo	Tico	1996	Hetçbek / Liftbek	Yaşıl	0.8	50	Benzin	260000	Mexaniki	Ön	f	2900	1706	4477464	Qara	(050) 340-00-74	2020-11-17
819	Bakı	Lexus	LS 460	2007	Sedan	Ağ	4.6	383	Benzin	145000	Avtomat	Arxa	f	23460	13800	4464206	Imam	(051) 595-51-51	2020-11-17
820	Bakı	Toyota	Camry	2019	Sedan	Göy	2.5	193	Benzin	6000	Avtomat	Ön	f	48450	28500	4425079	Resad	(070) 448-68-98	2020-11-17
821	Bakı	Hyundai	Santa Fe	2009	Offroader / SUV	Gümüşü	2.7	185	Benzin	265000	Avtomat	Tam	f	23400	13765	4477453	Ekber 	(050) 512-01-52	2020-11-17
822	Bakı	Opel	Astra	1999	Hetçbek / Liftbek	Gümüşü	1.8	116	Benzin	444444	Mexaniki	Ön	f	8400	4941	4468752	Azad	(050) 623-84-39	2020-11-17
823	Bakı	Chevrolet	Cruze	2014	Sedan	Qızılı	1.4	141	Benzin	93000	Avtomat	Ön	f	14300	8412	4468794	Rafiq	(070) 512-04-20	2020-11-17
824	Bakı	Kia	Optima	2012	Sedan	Qara	2	165	Benzin	126000	Avtomat	Ön	f	24800	14588	4405638	Rafiq	(050) 823-99-21	2020-11-17
825	Bakı	Mitsubishi	Rosa	2009	Avtobus	Bej	4.2	160	Dizel	680000	Mexaniki	Arxa	f	44000	25882	4477458	Valeh	(050) 513-69-25	2020-11-17
826	Xırdalan	LADA (VAZ)	21099	2003	Sedan	Yaş Asfalt	1.5	75	Benzin	50632	Mexaniki	Arxa	f	7200	4235	4469365	Neymet	(071) 718-00-07	2020-11-17
828	Bakı	Infiniti	Q50	2014	Sedan	Qara	3.7	333	Benzin	86000	Avtomat	Ön	f	39950	23500	4422657	Rufat	(050) 207-12-30	2020-11-17
830	Bakı	Volkswagen	Transporter	2017	Mikroavtobus	Qara	2	186	Dizel	98000	Avtomat	Arxa	f	59330	34900	4450877	Ruslan	(051) 715-00-05	2020-11-17
831	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Boz	1.4	90	Benzin	220000	Mexaniki	Ön	f	11000	6471	4455380	Vasif	(077) 733-32-47	2020-11-17
832	Bakı	Honda	Accord	2018	Sedan	Boz	1.5	192	Benzin	27675	Avtomat	Ön	f	41650	24500	4448425	Asker 	(055) 555-65-59	2020-11-17
834	Bakı	Mercedes	190	1991	Sedan	Bənövşəyi	1.8	109	Benzin	457821	Mexaniki	Ön	f	5800	3412	4447515	Mamed	(077) 534-50-18	2020-11-17
835	Zaqatala	Mercedes	C 230	2000	Sedan	Boz	2.3	193	Benzin	209000	Avtomat	Ön	f	11900	7000	4476556	Renad	(070) 603-62-70	2020-11-17
836	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Gümüşü	2	166	Dizel	125000	Avtomat	Ön	f	20800	12235	4452425	Rahil	(070) 810-20-40	2020-11-17
837	Bakı	Mercedes	S 320	2001	Sedan	Qara	3.2	224	Dizel	285000	Avtomat	Arxa	f	12800	7529	4462419	Vətən	(077) 387-82-82	2020-11-17
838	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.4	90	Benzin	167138	Mexaniki	Ön	f	10400	6118	4446936	Etibar	(055) 828-27-00	2020-11-17
840	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Qara	2.4	180	Benzin	126000	Avtomat	Tam	f	34850	20500	4445611	Cabir	(050) 211-37-98	2020-11-17
841	Gəncə	Mercedes	C 180	1993	Sedan	Yaş Asfalt	1.8	122	Benzin	140000	Mexaniki	Arxa	f	7500	4412	4477446	Yasa	(055) 820-23-73	2020-11-17
842	Bakı	Mitsubishi	L 200	2006	Pikap	Yaşıl	2.5	136	Dizel	398000	Mexaniki	Tam	f	12500	7353	4477447	Eli	(050) 519-49-49	2020-11-17
843	Bakı	Mini	Cooper	2010	Hetçbek / Liftbek	Qırmızı	1.6	180	Benzin	164677	Mexaniki	Ön	f	17000	10000	4428955	Telman	(055) 398-02-12	2020-11-17
844	Bakı	Hyundai	Sonata	2011	Sedan	Qara	2.4	178	Benzin	93000	Avtomat	Ön	f	23800	14000	4474086	Mensur	(070) 754-55-55	2020-11-17
845	Bakı	Mercedes	E 220	1998	Sedan	Gümüşü	2.2	143	Dizel	354000	Avtomat	Arxa	f	11800	6941	4464032	Vahid	(055) 541-45-41	2020-11-17
846	Bakı	BMW	530	2008	Sedan	Boz	3	272	Benzin	227000	Avtomat	Tam	f	21500	12647	4413234	Sahibi	(050) 212-23-53	2020-11-17
847	Bakı	Mercedes	E 230	1996	Sedan	Gümüşü	2.3	150	Benzin	419200	Avtomat	Arxa	f	10500	6176	4371742	Ramiz	(070) 328-58-68	2020-11-17
848	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2	166	Dizel	56488	Avtomat	Arxa	f	23900	14059	4466289	Cavid	(050) 265-65-95	2020-11-17
849	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Göy	1.4	100	Benzin	198000	Mexaniki	Ön	f	10800	6353	4477416	Resad	(070) 237-73-17	2020-11-17
850	Quba	Ford	Transit	2003	Furqon	Ağ	2.4	125	Dizel	240000	Mexaniki	Arxa	f	17900	10529	4477421	Taleh	(077) 396-39-35	2020-11-17
851	Bakı	Mercedes	E 280	2005	Sedan	Qara	2.8	204	Benzin	53000	Avtomat	Arxa	f	35000	20588	4477422	Asef	(055) 400-88-04	2020-11-17
852	Gəncə	LADA (VAZ)	2114	2004	Hetçbek / Liftbek	Boz	1.5	75	Benzin	200000	Mexaniki	Ön	f	6450	3794	4477420	Abxan 	(055) 416-57-83	2020-11-17
853	Bakı	Yamaha	RAY-ZR	2020	Motosiklet	Göy	0.2	90	Benzin	28	Avtomat	Arxa	t	3900	2294	4477425	Rasim	(050) 207-12-00	2020-11-17
854	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Gümüşü	1.8	140	Benzin	290000	Mexaniki	Ön	f	11200	6588	4477430	Эльбрус	(055) 702-58-09	2020-11-17
855	Gəncə	Fiat	Doblo	2009	Furqon	Ağ	1.3	85	Dizel	146000	Mexaniki	Ön	f	12500	7353	4477433	Ceyhun	(055) 318-58-18	2020-11-17
856	Bakı	BMW	525	2009	Sedan	Qara	2.5	218	Benzin	251000	Avtomat	Ön	f	22500	13235	4477418	Ayxan	(055) 481-12-18	2020-11-17
857	Bakı	Opel	Astra	1999	Universal	Boz	1.6	110	Benzin	176787	Mexaniki	Ön	f	8100	4765	4459300	Kamal	(050) 398-02-12	2020-11-17
858	Bakı	Opel	Astra	2009	Universal	Yaş Asfalt	1.3	104	Dizel	169812	Mexaniki	Ön	f	12600	7412	4411440	Alik	(050) 775-62-54	2020-11-17
859	Bakı	Mercedes	C 180	2008	Sedan	Ağ	1.8	156	Benzin	150000	Avtomat	Arxa	f	19300	11353	4477412	Ayaz	(099) 399-88-93	2020-11-17
860	Bakı	Hyundai	Elantra	2014	Sedan	Yaş Asfalt	1.8	150	Benzin	76000	Avtomat	Ön	f	22100	13000	4456661	İlqar	(055) 765-62-61	2020-11-17
818	Xırdalan	DAF	105XF	2011	Dartqı	Ağ	12	460	Dizel	950000	Avtomat	Arxa	f	43000	25294	4390201	Fərman	(099) 889-49-98	2020-11-17
829	Bakı	Kia	Cerato	2015	Sedan	Gümüşü	1.8	150	Benzin	148000	Avtomat	Ön	f	17900	10529	4466454	Fərid	(055) 200-81-10	2020-11-17
862	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaş Asfalt	1.3	90	Dizel	165000	Mexaniki	Ön	f	11700	6882	4477441	Azər	(055) 202-70-77	2020-11-17
863	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	128000	Avtomat	Ön	f	13900	8176	4477443	Famil	(070) 235-05-63	2020-11-17
864	Bakı	Mercedes	C 220	2005	Sedan	Gümüşü	2.2	143	Dizel	350000	Avtomat	Tam	f	15000	8824	4418825	İslam	(070) 810-30-40	2020-11-17
865	Bakı	BMW	535	2014	Sedan	Yaş Asfalt	3	306	Benzin	93000	Avtomat	Tam	f	52530	30900	4430005	Mehdi	(050) 299-59-97	2020-11-17
866	Bakı	MAN	TGA 18.440	2007	Dartqı	Qırmızı	12	440	Dizel	850000	Mexaniki	Arxa	f	29500	17353	4368877	Fərman	(099) 889-49-98	2020-11-17
867	Şirvan	LADA (VAZ)	2106	1990	Sedan	Gümüşü	1.5	65	Benzin	122000	Mexaniki	Arxa	f	4800	2824	4455427	Heyder	(077) 739-99-89	2020-11-17
868	Bakı	BMW	528	2013	Sedan	Ağ	2	245	Benzin	100000	Avtomat	Arxa	f	39950	23500	4446103	Racim	(050) 688-70-49	2020-11-17
869	Sumqayıt	LADA (VAZ)	Priora	2013	Sedan	Ağ	1.6	106	Benzin	167000	Mexaniki	Ön	f	10300	6059	4454756	SEYMUR	(055) 448-41-48	2020-11-17
870	Bakı	Opel	Astra	2005	Universal	Qara	1.4	110	Benzin	232000	Mexaniki	Ön	f	12700	7471	4450875	Gunduz	(055) 460-22-92	2020-11-17
871	Bakı	Mercedes	S 350	2004	Sedan	Qara	3.5	272	Benzin	142000	Avtomat	Arxa	f	18500	10882	4462863	Ayaz	(055) 245-91-35	2020-11-17
872	Bakı	BMW	X6 M	2015	Offroader / SUV	Ağ	4.4	575	Benzin	51500	Avtomat	Tam	f	134300	79000	4353323	Amil	(050) 288-50-04	2020-11-17
874	Bakı	Renault	Kangoo	2006	Furqon	Mavi	1.5	110	Dizel	225000	Mexaniki	Ön	f	8300	4882	4340507	Elşad	(070) 370-46-55	2020-11-17
875	Bakı	Mercedes	C 63 S AMG	2015	Sedan	Göy	4	510	Benzin	31000	Avtomat	Arxa	f	102000	60000	4451867	Sarkhan	(055) 396-96-69	2020-11-17
877	Lənkəran	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	142000	Mexaniki	Arxa	f	7400	4353	4477402	İsa	(050) 634-45-17	2020-11-17
878	Goranboy	Mercedes	C 240	1998	Sedan	Qara	2.4	170	Benzin	295611	Avtomat	Arxa	f	11200	6588	4464074	Bəxtiyar	(055) 700-98-58	2020-11-17
879	Bakı	ZIL	130	1979	Yük maşını	Yaş Asfalt	6	150	Benzin	49249	Mexaniki	Arxa	f	3600	2118	4477403	Natiq	(070) 319-56-04	2020-11-17
880	Bakı	Mercedes	E 230	1997	Sedan	Yaşıl	2.3	150	Benzin	350000	Avtomat	Arxa	f	11000	6471	4477404	Ziyad	(055) 899-70-88	2020-11-17
881	Qəbələ	Mercedes	C 200	1998	Sedan	Gümüşü	2	136	Benzin	234000	Avtomat	Arxa	f	13200	7765	4477405	Resul	(055) 538-55-00	2020-11-17
882	Gəncə	Opel	Astra	2009	Hetçbek / Liftbek	Ağ	1.3	90	Dizel	163000	Mexaniki	Ön	f	11500	6765	4477407	Natiq	(055) 275-85-40	2020-11-17
883	Bakı	Lexus	LX 470	2006	Offroader / SUV	Qara	4.7	275	Benzin	180000	Avtomat	Tam	f	32000	18824	4477408	Elçin	(070) 637-19-98	2020-11-17
884	Sumqayıt	Opel	Astra	1998	Universal	Qırmızı	1.8	125	Benzin	324790	Mexaniki	Ön	f	7300	4294	4477410	Rovsen	(070) 878-02-87	2020-11-17
885	Bakı	LADA (VAZ)	2106	1988	Sedan	Ağ	1.5	65	Benzin	526444	Mexaniki	Arxa	f	4200	2471	4426397	Tərlan	(055) 491-96-99	2020-11-17
886	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Boz	1.4	110	Benzin	148500	Mexaniki	Ön	f	11000	6471	4448344	Elman	(050) 788-29-67	2020-11-17
887	Bakı	BMW	745	2002	Sedan	Gümüşü	4.4	333	Benzin	330000	Avtomat	Arxa	f	10400	6118	4390490	Vüqar	(051) 600-22-22	2020-11-17
888	Bakı	Land Rover	Range Rover	2008	Offroader / SUV	Qara	4.2	396	Benzin	190000	Avtomat	Tam	f	37400	22000	4427828	Orxan	(050) 992-62-00	2020-11-17
889	Lənkəran	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	141000	Avtomat	Ön	f	14300	8412	4468784	Musfiq	(050) 792-48-31	2020-11-17
890	Bakı	Mercedes	E 220	2014	Sedan	Boz	2.2	211	Dizel	209000	Avtomat	Arxa	f	45560	26800	4435839	Abbas	(050) 721-94-22	2020-11-17
892	Bakı	Fiat	Doblo	2016	Minivan	Ağ	1.4	120	Benzin	81000	Mexaniki	Ön	f	17000	10000	4477357	Huseyn 	(050) 268-33-36	2020-11-17
893	Bakı	Honda	CG 125	2020	Motosiklet	Boz	0.2	125	Benzin	30	Mexaniki	Arxa	t	1950	1147	4477358	Edi	(077) 583-55-13	2020-11-17
894	Bakı	BMW	520	1991	Sedan	Göy	2	150	Benzin	260000	Mexaniki	Arxa	f	7000	4118	4477364	Sattar 	(055) 306-21-69	2020-11-17
895	Bakı	Volkswagen	Amarok	2014	Pikap	Qara	2	180	Dizel	258000	Mexaniki	Tam	f	27500	16176	4400965	Fərhad	(050) 255-26-27	2020-11-17
896	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	164200	Avtomat	Ön	f	11200	6588	4448591	Elwen	(055) 466-92-42	2020-11-17
897	Bakı	Mercedes	E 220	2010	Sedan	Qara	2.2	170	Dizel	192000	Avtomat	Arxa	f	29800	17529	4451751	Murad	(070) 999-38-88	2020-11-17
898	Göyçay	Hyundai	Accent	2006	Sedan	Gümüşü	1.4	97	Benzin	210449	Avtomat	Ön	f	11300	6647	4477373	Elsen	(070) 606-09-02	2020-11-17
899	Bakı	Toyota	Camry	2008	Sedan	Gümüşü	2.4	167	Benzin	168000	Avtomat	Ön	f	19900	11706	4477378	Beyler	(055) 916-82-16	2020-11-17
900	Bakı	Mercedes	E 220	2007	Sedan	Ağ	2.2	170	Dizel	391400	Avtomat	Tam	f	16500	9706	4477381	Anar	(055) 720-39-66	2020-11-17
901	Bakı	Mercedes	E 240	2002	Sedan	Gümüşü	2.6	177	Benzin	249000	Avtomat	Arxa	f	17000	10000	4477382	Kamran	(070) 260-20-40	2020-11-17
902	Bakı	Mercedes	E 220	2015	Sedan	Qara	2.2	204	Dizel	106000	Avtomat	Arxa	f	45220	26600	4448768	Namiq	(055) 783-14-14	2020-11-17
903	Bakı	Opel	Vectra	1996	Sedan	Yaşıl	2	136	Benzin	380421	Mexaniki	Ön	f	4900	2882	4477390	Xalid	(051) 465-89-80	2020-11-17
904	Bərdə	LADA (VAZ)	2106	1990	Sedan	Bej	1.3	65	Benzin	180460	Mexaniki	Arxa	f	3500	2059	4477394	Aqil	(050) 885-14-48	2020-11-17
905	Bakı	Ford	Transit	2010	Yük maşını	Gümüşü	2.4	140	Dizel	172000	Mexaniki	Arxa	f	26180	15400	4472412	Ariz	(055) 665-87-30	2020-11-17
906	Bakı	Ford	Transit	2008	Yük maşını	Ağ	2.4	140	Dizel	182000	Mexaniki	Arxa	f	29500	17353	4471761	Ariz	(055) 665-87-30	2020-11-17
907	Goranboy	Mercedes	C 240	1997	Sedan	Gümüşü	2.4	170	Benzin	290000	Avtomat	Arxa	f	13000	7647	4477398	Murad	(055) 418-01-00	2020-11-17
908	Bakı	Hyundai	Accent	1996	Sedan	Yaşıl	1.5	90	Benzin	357333	Mexaniki	Ön	f	4500	2647	4477399	Mehman	(050) 326-88-76	2020-11-17
909	Bakı	Nissan	X-Trail	2012	Offroader / SUV	Gümüşü	2.5	175	Benzin	167000	Avtomat	Tam	f	22900	13471	4449226	Asif	(055) 403-41-41	2020-11-17
912	Bakı	Ford	Fusion	2005	Hetçbek / Liftbek	Gümüşü	1.6	100	Dizel	208000	Mexaniki	Ön	f	11500	6765	4474481	asiman	(050) 207-30-03	2020-11-17
911	Bakı	DAF	105XF	2012	Dartqı	Ağ	13	460	Dizel	850000	Avtomat	Arxa	f	43000	25294	4368832	Fərman	(099) 889-49-98	2020-11-17
915	Bakı	Opel	Astra	2008	Universal	Göy	1.3	90	Dizel	238000	Mexaniki	Ön	f	12500	7353	4467970	Haci	(050) 223-53-71	2020-11-17
916	Lənkəran	Chevrolet	Cruze	2013	Sedan	Yaş Asfalt	1.4	141	Benzin	131000	Avtomat	Ön	f	14200	8353	4468762	Musfiq	(050) 792-48-31	2020-11-17
917	Bakı	Kia	Optima	2018	Sedan	Yaş Asfalt	2.4	180	Benzin	36500	Avtomat	Ön	f	45730	26900	4431945	Farid	(051) 990-01-68	2020-11-17
919	Ağstafa	Daewoo	Nexia	2010	Sedan	Ağ	1.5	85	Benzin	423231	Mexaniki	Ön	f	7000	4118	4256374	Zeynal	(050) 422-00-26	2020-11-17
921	Bakı	Opel	Astra	2006	Universal	Ağ	1.3	90	Dizel	186000	Mexaniki	Ön	f	20000	11765	4400764	Ehtiram	(055) 218-57-96	2020-11-17
922	Bakı	Mercedes	E 230	1997	Sedan	Gümüşü	2.3	150	Benzin	298500	Avtomat	Arxa	f	11000	6471	4477355	Bextiyar 	(055) 839-17-00	2020-11-17
923	Bakı	Ford	Fusion	2017	Sedan	Qara	1.5	181	Benzin	54000	Avtomat	Ön	f	24700	14529	4404899	Orxan	(050) 257-33-77	2020-11-17
924	Bakı	Mercedes	E 200	2016	Sedan	Yaş Asfalt	2	184	Benzin	125000	Avtomat	Arxa	f	67830	39900	4073392	Qulu	(070) 810-50-40	2020-11-17
927	Bakı	Opel	Astra	2000	Universal	Gümüşü	1.6	101	Benzin	311000	Avtomat	Ön	f	8700	5118	4477280	İlam	(055) 793-30-45	2020-11-17
928	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	82000	Avtomat	Ön	f	19800	11647	4477282	Seyyar	(055) 218-49-98	2020-11-17
929	Bakı	Mercedes	Vito	2011	Van	Gümüşü	2.2	170	Dizel	340000	Avtomat	Arxa	f	34500	20294	4311244	Elvin 	(055) 245-70-65	2020-11-17
930	Bakı	Ford	Fusion	2014	Sedan	Tünd qırmızı	1.5	181	Benzin	25000	Avtomat	Ön	f	17200	10118	4477285	elchin	(077) 522-01-65	2020-11-17
931	Bakı	Great Wall	Hover H3	2013	Offroader / SUV	Qara	2	122	Benzin	54000	Mexaniki	Tam	f	17000	10000	4477291	HECI	(055) 545-50-55	2020-11-17
932	Gəncə	Opel	Astra	2006	Hetçbek / Liftbek	Qızılı	1.4	90	Benzin	160000	Mexaniki	Ön	f	11500	6765	4477293	Azər 	(070) 349-87-97	2020-11-17
933	Bakı	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	480000	Avtomat	Arxa	f	12800	7529	4477295	Sənan	(070) 878-32-82	2020-11-17
934	Bakı	BMW	535	2008	Sedan	Yaş Asfalt	3	306	Benzin	220000	Avtomat	Tam	f	21000	12353	4217490	Kerım	(051) 364-86-66	2020-11-17
935	Bakı	Mercedes	GLC 300	2017	Offroader / SUV	Qara	2	245	Benzin	55000	Avtomat	Tam	f	57800	34000	4398145	Sergey	(050) 250-86-70	2020-11-17
936	Bakı	Land Rover	RR Sport	2007	Offroader / SUV	Qara	2.7	190	Dizel	260000	Avtomat	Tam	f	34000	20000	4477233	Efqan	(070) 300-85-85	2020-11-17
938	Bakı	Kia	Optima	2011	Sedan	Qara	2	165	Benzin	235000	Avtomat	Ön	f	21000	12353	4477236	Rafayıl	(055) 212-17-97	2020-11-17
939	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	160000	Avtomat	Ön	f	12900	7588	4477244	Emin	(050) 433-53-23	2020-11-17
940	Xırdalan	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.5	65	Benzin	72220	Mexaniki	Arxa	f	9000	5294	4477247	Yaqub	(050) 865-74-50	2020-11-17
941	Bakı	Fiat	Bravo	1997	Hetçbek / Liftbek	Yaş Asfalt	1.6	103	Benzin	155000	Mexaniki	Ön	f	4800	2824	4399748	Zaur	(050) 741-00-55	2020-11-17
942	Şəmkir	Mercedes	Sprinter 313	2003	Mikroavtobus	Qırmızı	2.2	150	Dizel	500000	Mexaniki	Arxa	f	29500	17353	4477250	Əli	(051) 524-87-57	2020-11-17
943	Bakı	Chevrolet	Malibu	2009	Sedan	Ağ	2.4	167	Benzin	225000	Avtomat	Ön	f	15000	8824	4477232	Nahid	(055) 248-51-61	2020-11-17
944	Bakı	Opel	Astra	2007	Universal	Qara	1.7	125	Dizel	177566	Mexaniki	Ön	f	12700	7471	4166022	Oktay	(051) 669-69-16	2020-11-17
945	İsmayıllı	Hyundai	Sonata	2009	Sedan	Ağ	2.4	174	Benzin	193323	Avtomat	Ön	f	16900	9941	4477255	Murad	(055) 646-91-18	2020-11-17
946	Bakı	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	398000	Avtomat	Arxa	f	13500	7941	4477259	İsmayıl	(055) 741-88-99	2020-11-17
947	Bakı	Chevrolet	Cruze	2015	Sedan	Narıncı	1.4	141	Benzin	103718	Avtomat	Tam	f	14000	8235	4477261	Murad	(055) 787-15-19	2020-11-17
948	Lənkəran	Mercedes	E 350	2010	Sedan	Ağ	3.5	272	Benzin	233000	Avtomat	Tam	f	32500	19118	4477263	Rəsul	(050) 665-96-63	2020-11-17
949	Bakı	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	96000	Mexaniki	Ön	f	8000	4706	4477264	Elnur	(055) 997-22-22	2020-11-17
950	Bakı	Hyundai	Santa Fe	2015	Offroader / SUV	Ağ	2	184	Dizel	89400	Avtomat	Ön	f	37740	22200	4477265	Orkhan	(050) 978-49-20	2020-11-17
951	Bakı	Land Rover	Range Rover	2006	Offroader / SUV	Qara	4.2	396	Benzin	270000	Avtomat	Tam	f	32300	19000	4477266	Eldeniz	(055) 211-55-52	2020-11-17
952	Bakı	Mercedes	C 220	1995	Sedan	Yaşıl	2.2	146	Benzin	278000	Mexaniki	Arxa	f	7800	4588	4474847	Elsad	(070) 500-42-41	2020-11-17
954	Lənkəran	Yamaha	Fazer 153	2013	Motosiklet	Qara	0.3	50	Benzin	200	Mexaniki	Arxa	f	3600	2118	4477272	Huseyn	(055) 642-74-04	2020-11-17
955	Bakı	Chevrolet	Cruze	2015	Sedan	Yaşıl	1.4	141	Benzin	83000	Avtomat	Ön	f	15500	9118	4477277	Elvin	(077) 311-00-40	2020-11-17
956	Bakı	Lexus	LS 460	2007	Sedan	Qara	4.6	380	Benzin	315000	Avtomat	Tam	f	23460	13800	4477275	Ramil	(055) 213-41-27	2020-11-17
957	Bakı	BMW	740	2012	Sedan	Ağ	3	320	Benzin	89000	Avtomat	Arxa	f	46750	27500	4463533	Kenan	(050) 835-00-00	2020-11-17
958	Bakı	Mercedes	G 55 Brabus K8	2009	Offroader / SUV	Qara	5.5	530	Benzin	147000	Avtomat	Tam	f	84150	49500	4475380	Togrul	(050) 500-92-93	2020-11-17
959	Bakı	Chevrolet	Cruze	2015	Sedan	Qəhvəyi	1.4	141	Benzin	90000	Avtomat	Ön	f	15800	9294	4442763	Babek	(050) 709-23-02	2020-11-17
960	Bakı	Kia	Optima	2018	Sedan	Ağ	2.4	174	Benzin	41000	Avtomat	Ön	f	35700	21000	4445523	Tofiq	(050) 201-31-88	2020-11-17
961	Bakı	Ford	Fiesta	2015	Hetçbek / Liftbek	Ağ	1.6	105	Benzin	90752	Avtomat	Ön	f	14500	8529	4477310	Asif	(055) 211-67-27	2020-11-17
962	Gəncə	Chevrolet	Cruze	2011	Sedan	Yaş Asfalt	1.4	141	Benzin	190000	Avtomat	Ön	f	14000	8235	4477314	Elis	(055) 989-69-09	2020-11-17
914	Bakı	Harley-Davidson	Sportster Custom 1200	2006	Motosiklet	Ağ	1.2	60	Benzin	15340	Mexaniki	Arxa	f	13000	7647	4400697	Ali	(070) 516-00-01	2020-11-17
918	Bakı	Peugeot	307	2008	Hetçbek / Liftbek	Gümüşü	1.6	109	Benzin	122000	Avtomat	Ön	f	10700	6294	4451084	Natiq	(055) 423-42-20	2020-11-17
963	Bakı	LADA (VAZ)	Priora	2016	Sedan	Ağ	1.6	106	Benzin	145000	Mexaniki	Ön	f	13300	7824	4477327	Qabil	(077) 677-17-19	2020-11-17
964	Bakı	Ford	Mondeo	2003	Sedan	Qara	2	145	Benzin	160000	Mexaniki	Ön	f	7000	4118	4477331	Fezli	(070) 806-14-90	2020-11-17
965	Bakı	BMW	750	2010	Sedan	Qara	4.4	407	Benzin	167000	Avtomat	Arxa	f	39950	23500	4472277	Rufat	(055) 705-39-91	2020-11-17
966	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Gümüşü	2.7	175	Benzin	126000	Avtomat	Tam	f	18300	10765	4405960	Namiq	(055) 774-95-75	2020-11-17
967	Bakı	Haval	H9	2015	Offroader / SUV	Gümüşü	2	220	Benzin	63550	Avtomat	Tam	f	40715	23950	4453033	Tahir	(070) 368-99-96	2020-11-17
968	Bakı	Opel	Astra	2005	Universal	Qara	1.4	90	Benzin	165000	Mexaniki	Ön	f	11500	6765	4470078	Arif	(050) 552-70-97	2020-11-17
970	Bakı	Mercedes	S 350	2014	Sedan	Qara	3	249	Dizel	138000	Avtomat	Arxa	f	91800	54000	4432222	Kanan	(050) 288-06-90	2020-11-17
973	Bakı	BMW	530	2018	Sedan	Ağ	2	252	Benzin	44050	Avtomat	Tam	f	79050	46500	4440671	Elchin	(055) 364-44-65	2020-11-17
974	Bakı	Lexus	LX 570	2008	Offroader / SUV	Ağ	5.7	383	Benzin	141000	Avtomat	Tam	f	59330	34900	4451820	Səfər	(050) 555-10-73	2020-11-17
975	Qusar	Mercedes	Viano	2010	Van	Qara	2.2	170	Dizel	220000	Avtomat	Arxa	f	34000	20000	4477205	Orxan	(070) 338-38-95	2020-11-17
976	Bakı	Hyundai	Accent	2012	Sedan	Qara	1.6	132	Benzin	206800	Avtomat	Ön	f	15500	9118	4477206	Mansur	(070) 953-66-65	2020-11-17
977	Bakı	LADA (VAZ)	2106	1993	Sedan	Qara	1.6	75	Benzin	236365	Mexaniki	Arxa	f	5500	3235	4477211	Emil	(050) 373-28-37	2020-11-17
978	Bakı	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	300000	Avtomat	Arxa	f	12000	7059	4477213	Resad	(055) 860-43-22	2020-11-17
979	Gəncə	Mercedes	C 200	1998	Sedan	Gümüşü	2	136	Benzin	125352	Avtomat	Arxa	f	12500	7353	4477214	Sabir	(051) 350-63-13	2020-11-17
980	Quba	GAZ	3302-744	2005	Yük maşını	Ağ	2.5	96	Benzin	170000	Mexaniki	Arxa	f	14000	8235	4477218	Eli	(050) 596-05-42	2020-11-17
981	Masallı	Renault	Megane	2005	Universal	Gümüşü	1.6	109	Benzin	178000	Mexaniki	Ön	f	10900	6412	4477220	Nurlan 	(050) 633-31-11	2020-11-17
982	Bakı	Daewoo	Gentra	2014	Sedan	Qara	1.5	107	Benzin	217000	Mexaniki	Ön	f	13200	7765	4477225	Aslan	(050) 794-13-31	2020-11-17
983	Bakı	Mercedes	S 350	2004	Sedan	Ağ	3.5	272	Benzin	226000	Avtomat	Arxa	f	15600	9176	4477228	Xanlar	(050) 335-97-55	2020-11-17
984	Gədəbəy	Great Wall	Hover H3	2015	Offroader / SUV	Ağ	2	116	Benzin	64000	Mexaniki	Tam	f	19000	11176	4477161	Sərvan	(050) 522-55-50	2020-11-17
985	Bakı	BMW	525	2001	Sedan	Qara	2.5	192	Benzin	280000	Avtomat	Arxa	f	11200	6588	4477162	Resad	(055) 859-16-77	2020-11-17
986	Bakı	Hyundai	Sonata	2010	Sedan	Gümüşü	2	165	Benzin	153000	Avtomat	Ön	f	17600	10353	4477166	Afiq	(055) 215-21-01	2020-11-17
987	Bakı	BMW	530	2018	Sedan	Bənövşəyi	2	330	Benzin	28500	Avtomat	Arxa	f	105400	62000	4471885	Arif	(050) 211-70-92	2020-11-17
988	Sumqayıt	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	308000	Avtomat	Arxa	f	12900	7588	4416838	həmzə	(055) 326-78-08	2020-11-17
989	Bakı	Tofas	Sahin	2005	Sedan	Qara	1.6	86	Benzin	97000	Mexaniki	Arxa	f	7800	4588	4477170	Orxan	(055) 252-56-66	2020-11-17
990	Bakı	Saipa	132	2013	Sedan	Ağ	1.3	75	Benzin	126000	Mexaniki	Ön	f	5500	3235	4477180	sabir	(055) 908-90-98	2020-11-17
991	Xırdalan	GAZ	Siber	2009	Sedan	Qara	2	141	Benzin	184368	Variator	Ön	f	8500	5000	4477181	Ruhulla	(055) 766-06-56	2020-11-17
992	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	85000	Avtomat	Tam	f	47940	28200	4477183	Elnur	(055) 535-59-94	2020-11-17
993	Bakı	Kia	Cerato	2010	Sedan	Qəhvəyi	1.6	132	Benzin	199000	Avtomat	Ön	f	15200	8941	4477184	Cavid	(050) 411-78-71	2020-11-17
994	Bakı	Mercedes	Vito 115	2008	Minivan	Gümüşü	2.2	150	Dizel	360000	Avtomat	Arxa	f	24000	14118	4477188	Elnur	(050) 716-66-88	2020-11-17
995	Bakı	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	181	Benzin	49000	Avtomat	Ön	f	19700	11588	4477165	Ramin	(077) 305-46-90	2020-11-17
996	Bakı	Mercedes	C 180	1999	Sedan	Qara	1.8	122	Benzin	375000	Avtomat	Arxa	f	10800	6353	4477172	Fizuli 	(070) 322-99-99	2020-11-17
997	Bakı	Mercedes	C 250	2012	Sedan	Ağ	1.8	204	Benzin	202000	Avtomat	Arxa	f	25400	14941	4477189	Nicat	(051) 229-05-40	2020-11-17
998	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Göy	1.8	99	Hibrid	127000	Avtomat	Ön	f	16000	9412	4412697	Timur	(051) 500-05-60	2020-11-17
999	Xırdalan	Opel	Astra	2012	Universal	Göy	1.3	90	Dizel	240000	Mexaniki	Ön	f	14800	8706	4477194	Semed	(070) 220-31-28	2020-11-17
1000	Bakı	Hyundai	Sonata	2013	Sedan	Qara	2	274	Benzin	129000	Avtomat	Ön	f	20000	11765	4430969	Alizamin	(055) 211-63-20	2020-11-17
1001	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	153	Benzin	40000	Avtomat	Ön	f	16500	9706	4477198	Eyvaz	(055) 754-07-99	2020-11-17
1002	Bakı	Opel	Insignia	2013	Sedan	Ağ	2	276	Benzin	58000	Avtomat	Ön	f	29410	17300	4323787	Tural	(051) 660-41-28	2020-11-17
1003	Bərdə	LADA (VAZ)	2106	1984	Sedan	Göy	1.6	75	Benzin	70000	Mexaniki	Arxa	f	3100	1824	4477202	Taleh	(050) 745-23-24	2020-11-17
1004	Gəncə	Mercedes	C 240	1998	Sedan	Yaş Asfalt	2.4	170	Benzin	170000	Avtomat	Arxa	f	11700	6882	4477204	Orxan	(050) 509-28-28	2020-11-17
1005	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Qızılı	1.8	99	Benzin	161658	Variator	Ön	f	17500	10294	4433394	Zamir	(050) 884-77-70	2020-11-17
1007	Bakı	Toyota	Prado	2018	Offroader / SUV	Ağ	2.7	167	Benzin	71000	Avtomat	Tam	f	79050	46500	4356875	tuqay	(070) 734-34-01	2020-11-17
1008	Bakı	Honda	Insight	2010	Hetçbek / Liftbek	Yaş Asfalt	1.3	108	Hibrid	260000	Avtomat	Ön	f	13200	7765	4477229	Nizami	(055) 400-67-84	2020-11-17
1009	Bakı	Tofas	Sahin	2003	Sedan	Sarı	1.5	76	Benzin	146000	Mexaniki	Arxa	f	3300	1941	4477222	Tahir	(051) 652-12-93	2020-11-17
1010	Bakı	Rover	75	2001	Sedan	Sarı	2.5	175	Benzin	218081	Avtomat	Ön	f	9000	5294	4477195	Etibar	(055) 324-65-62	2020-11-17
1012	Bakı	Mercedes	E 220	2009	Sedan	Qara	2.2	170	Dizel	177000	Avtomat	Arxa	f	30600	18000	4445518	Azər	(051) 872-77-77	2020-11-17
1013	Bakı	Chevrolet	Captiva	2007	Offroader / SUV	Qara	2	150	Dizel	252300	Avtomat	Tam	f	17000	10000	4452739	Aga	(055) 721-36-01	2020-11-17
971	Bakı	Ford	Fusion	2013	Sedan	Qara	2	245	Benzin	118000	Avtomat	Ön	f	21500	12647	4471372	Sebuhi	(050) 758-88-82	2020-11-17
1011	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.3	90	Dizel	240056	Mexaniki	Ön	f	10900	6412	4460940	Murad	(055) 525-59-15	2020-11-17
1014	Bakı	Ford	Explorer	2015	Offroader / SUV	Ağ	3.5	345	Benzin	43000	Avtomat	Tam	f	47090	27700	4477103	Ramil	(070) 801-11-18	2020-11-17
1015	Bakı	BMW	750	2003	Sedan	Qara	4.8	367	Benzin	279000	Avtomat	Arxa	f	21000	12353	4466054	CINGIZ	(050) 305-74-20	2020-11-17
1016	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	98	Benzin	206000	Mexaniki	Ön	f	12000	7059	4473821	Orxan	(055) 504-00-59	2020-11-17
1018	Bakı	Toyota	Prado	2014	Offroader / SUV	Gümüşü	2.7	167	Benzin	42000	Avtomat	Tam	f	59500	35000	4477123	Knyaz	(055) 700-02-29	2020-11-17
1019	Bakı	Toyota	Camry	2015	Sedan	Qara	2.5	181	Benzin	150000	Avtomat	Ön	f	28700	16882	4456726	Daşqın	(055) 890-48-48	2020-11-17
1020	Lənkəran	LADA (VAZ)	2107	2005	Sedan	Mavi	1.5	65	Benzin	253532	Mexaniki	Arxa	f	5800	3412	4477122	Ceyhun	(050) 388-01-27	2020-11-17
1021	Bakı	Porsche	Cayenne GTS	2014	Offroader / SUV	Boz	4.8	420	Benzin	150000	Avtomat	Tam	f	73100	43000	4459845	Yusif 	(050) 888-30-30	2020-11-17
1022	Bakı	Mercedes	ML 320	2001	Offroader / SUV	Ağ	3.2	218	Benzin	318000	Avtomat	Tam	f	11800	6941	4461176	Ali	(055) 270-38-80	2020-11-17
1023	Bakı	Mercedes	E 220	2001	Sedan	Yaş Asfalt	2.2	150	Dizel	372000	Avtomat	Arxa	f	15000	8824	4477124	Ayxan	(055) 492-43-02	2020-11-17
1024	Bakı	Fiat	Ulysse	1995	Minivan	Qırmızı	2	136	Benzin	198464	Mexaniki	Ön	f	4800	2824	4442394	Zaur	(055) 367-29-32	2020-11-17
1025	Bakı	Ford	Fusion	2019	Sedan	Qızılı	1.5	181	Benzin	20000	Avtomat	Ön	f	26500	15588	4477062	Avtandil	(055) 228-88-44	2020-11-17
1026	Bakı	Mercedes	E 300	1993	Sedan	Yaş Asfalt	3	173	Dizel	360000	Avtomat	Arxa	f	5300	3118	4477064	Mirdamet	(055) 372-92-09	2020-11-17
1027	Bakı	Mercedes	E 320	2002	Sedan	Qara	3.2	224	Benzin	215000	Avtomat	Ön	f	14500	8529	4477072	Loğman	(070) 607-79-29	2020-11-17
1028	Naftalan	Hyundai	ix35	2010	Offroader / SUV	Qara	2	150	Benzin	195000	Avtomat	Tam	f	23000	13529	4477070	Elsever	(070) 740-70-85	2020-11-17
1029	Bakı	Mercedes	E 280	1996	Sedan	Göy	2.8	193	Benzin	270000	Avtomat	Arxa	f	10800	6353	4477076	Tamerlan	(055) 255-38-87	2020-11-17
1030	Bakı	LADA (VAZ)	21099	1995	Sedan	Qırmızı	1.5	75	Benzin	204544	Mexaniki	Ön	f	4500	2647	4477080	Fuad	(050) 659-56-50	2020-11-17
1031	Bakı	Mercedes	E 220	2010	Sedan	Qara	2.2	170	Dizel	215000	Avtomat	Arxa	f	31450	18500	4452138	Rüfət	(050) 210-64-43	2020-11-17
1032	Bakı	Opel	Astra	1997	Universal	Yaş Asfalt	1.6	101	Benzin	550000	Mexaniki	Ön	f	4800	2824	4477083	İdris	(055) 745-53-94	2020-11-17
1033	Bakı	Chevrolet	Cruze	2011	Sedan	Yaş Asfalt	1.4	141	Benzin	132000	Avtomat	Ön	f	15100	8882	4423097	İsmayıl	(050) 329-98-70	2020-11-17
1034	Bakı	Mercedes	E 280	1997	Sedan	Qara	2.8	193	Benzin	341132	Avtomat	Arxa	f	10200	6000	4417907	sahib	(055) 327-29-54	2020-11-17
1035	Bakı	Hyundai	i30	2008	Universal	Gümüşü	1.6	115	Dizel	180000	Mexaniki	Ön	f	12900	7588	4477084	Əlı	(050) 459-31-37	2020-11-17
1036	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2.4	178	Benzin	133000	Avtomat	Ön	f	29800	17529	4458866	Sabir	(055) 232-29-39	2020-11-17
1037	Bakı	Land Rover	Range Rover	2011	Offroader / SUV	Ağ	5	510	Benzin	100000	Avtomat	Tam	f	60690	35700	4415900	Anar	(055) 208-27-88	2020-11-17
1039	Bakı	Opel	Vectra	1998	Sedan	Qızılı	2	136	Benzin	360000	Avtomat	Ön	f	3500	2059	4477092	İbrahim	(051) 709-81-11	2020-11-17
1040	Ucar	LADA (VAZ)	21099	1993	Sedan	Qırmızı	1.5	75	Benzin	226353	Mexaniki	Ön	f	3700	2176	4477093	Pervin	(050) 700-03-16	2020-11-17
1041	Bakı	Land Rover	RR Sport	2017	Offroader / SUV	Qırmızı	3	340	Dizel	49000	Avtomat	Tam	f	112030	65900	4407844	Avtosalon "Jeep’s House 4X4"	(055) 211-91-71	2020-11-17
1042	Bakı	Kia	Cerato	2010	Sedan	Tünd qırmızı	2	150	Benzin	205589	Avtomat	Ön	f	17000	10000	4477108	Azər	(050) 325-71-78	2020-11-17
1043	Bakı	Opel	Corsa	2008	Hetçbek / Liftbek	Ağ	1.4	90	Benzin	130000	Avtomat	Ön	f	12600	7412	4376324	Sevinc	(051) 850-88-99	2020-11-17
1044	Bakı	LADA (VAZ)	2107	2004	Sedan	Göy	1.6	75	Benzin	82458	Mexaniki	Arxa	f	5000	2941	4477113	Ruslan	(050) 398-16-28	2020-11-17
1045	Goranboy	Mercedes	E 320	2003	Sedan	Gümüşü	3.2	224	Benzin	433000	Avtomat	Arxa	f	16500	9706	4477114	Ibrahim	(055) 779-99-49	2020-11-17
1046	Bakı	Mitsubishi	L 200	2011	Pikap	Ağ	2.5	135	Dizel	245000	Mexaniki	Tam	f	24500	14412	4345182	Yusif	(050) 888-30-30	2020-11-17
1047	Sumqayıt	Mercedes	R 350	2006	Universal	Qara	3.5	272	Benzin	170000	Avtomat	Tam	f	18500	10882	4453452	RAMIZ	(050) 628-00-74	2020-11-17
1048	Bakı	BMW	535	2012	Sedan	Qara	3	306	Benzin	120000	Avtomat	Arxa	f	45560	26800	4473732	Elshen	(050) 840-41-00	2020-11-17
1050	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Qara	1.7	80	Benzin	125000	Mexaniki	Tam	f	12900	7588	4460302	Samir	(051) 725-77-70	2020-11-17
1051	Gəncə	Chevrolet	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	100000	Mexaniki	Tam	f	14500	8529	4350399	Resad	(055) 665-88-33	2020-11-17
1052	Bakı	Citroen	C-Elysee	2015	Sedan	Qara	1.6	115	Benzin	100000	Avtomat	Ön	f	15000	8824	4477137	Elmar	(050) 776-69-10	2020-11-17
1053	Qusar	ZAZ	Tavriya	1989	Hetçbek / Liftbek	Qırmızı	1.2	58	Benzin	150000	Mexaniki	Ön	f	2700	1588	4477142	Mahir	(070) 557-27-97	2020-11-17
1054	Sumqayıt	BMW	525	1988	Sedan	Qırmızı	2.5	192	Benzin	394349	Mexaniki	Arxa	f	9000	5294	4477144	Elsan	(055) 994-34-00	2020-11-17
1055	Bakı	Nissan	X-Trail	2006	Offroader / SUV	Gümüşü	2.5	175	Benzin	157543	Mexaniki	Tam	f	14200	8353	4477150	Huseyn	(077) 596-17-08	2020-11-17
1056	Bakı	BMW	528	2013	Sedan	Boz	2	245	Benzin	100000	Avtomat	Arxa	f	35700	21000	4424441	Babek	(055) 866-80-50	2020-11-17
1057	Ağstafa	LADA (VAZ)	2107	2000	Sedan	Tünd qırmızı	1.6	75	Benzin	353455	Mexaniki	Arxa	f	4700	2765	4477156	Murad	(051) 424-29-29	2020-11-17
1058	Bakı	Mercedes	E 220	2013	Universal	Qara	2.2	170	Dizel	140000	Avtomat	Arxa	f	35700	21000	4424469	Seyyar	(050) 747-17-77	2020-11-17
1059	Bakı	BMW	318	2000	Sedan	Qara	1.9	118	Benzin	315000	Avtomat	Arxa	f	11500	6765	4457943	Fuad	(070) 213-80-04	2020-11-17
1060	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	74000	Avtomat	Tam	f	46410	27300	4454239	Mohubbet	(070) 817-98-11	2020-11-17
1062	Bakı	Ford	Transit	2013	Furqon	Ağ	2.2	140	Dizel	166000	Mexaniki	Arxa	f	28500	16765	4433185	Ariz	(055) 665-87-30	2020-11-17
1063	Bakı	Ford	Transit	2010	Yük maşını	Ağ	2.4	140	Dizel	148000	Mexaniki	Arxa	f	28560	16800	4433149	Ariz	(055) 665-87-30	2020-11-17
1038	Bakı	Renault	Megane	2008	Universal	Göy	1.5	106	Dizel	290000	Mexaniki	Ön	f	10200	6000	4456097	Erkan	(077) 511-74-38	2020-11-17
1064	Bakı	Toyota	Land Cruiser	2012	Offroader / SUV	Qara	4	282	Benzin	110000	Avtomat	Tam	f	62220	36600	4411049	Resul	(050) 569-40-47	2020-11-17
1065	Sumqayıt	Opel	Frontera	1993	Offroader / SUV	Boz	2	116	Benzin	250450	Mexaniki	Tam	f	5000	2941	4477038	Tural	(055) 719-86-00	2020-11-17
1066	Bakı	Land Rover	RR Sport	2014	Offroader / SUV	Qara	3	340	Dizel	186000	Avtomat	Tam	f	79900	47000	4442556	Ferid	(055) 697-52-15	2020-11-17
1067	Bakı	Nissan	Leaf	2014	Hetçbek / Liftbek	Qırmızı	0	109	Elektro	135000	Avtomat	Ön	f	20000	11765	4477049	Behruz	(055) 522-27-07	2020-11-17
1068	Masallı	Renault	Megane	2005	Universal	Qəhvəyi	1.5	105	Dizel	117343	Mexaniki	Ön	f	9300	5471	4477039	Rasim	(051) 324-68-58	2020-11-17
1069	Bakı	Subaru	Impreza	2008	Hetçbek / Liftbek	Ağ	1.5	110	Benzin	180000	Avtomat	Tam	f	12600	7412	4477054	Elşad	(050) 325-02-60	2020-11-17
1070	Gədəbəy	KamAz	6520	2007	Yük maşını	Ağ	12	250	Dizel	389000	Mexaniki	Tam	f	29500	17353	4477055	Vüsal	(050) 774-08-83	2020-11-17
1071	Xudat	Mercedes	E 230	1995	Sedan	Qara	2.3	150	Benzin	850463	Avtomat	Arxa	f	8500	5000	4477000	Rahib	(077) 310-90-91	2020-11-17
1072	Bakı	BMW	525	2004	Universal	Qara	2.5	218	Benzin	297000	Avtomat	Arxa	f	19800	11647	4422904	Yusif 	(050) 305-06-04	2020-11-17
1073	Bakı	Mercedes	C 200	1998	Universal	Göy	2	136	Benzin	352000	Avtomat	Arxa	f	10600	6235	4460046	Isi	(050) 341-42-88	2020-11-17
1074	Sumqayıt	Opel	Vectra	1998	Sedan	Qırmızı	1.8	125	Benzin	168000	Avtomat	Ön	f	5200	3059	4470483	Mamed	(050) 668-54-26	2020-11-17
1075	Bakı	Hyundai	Santa Fe	2012	Offroader / SUV	Ağ	2.4	178	Benzin	127000	Avtomat	Tam	f	29500	17353	4246485	Arif	(070) 317-33-71	2020-11-17
1076	Ağstafa	LADA (VAZ)	2106	1998	Sedan	Yaş Asfalt	1.6	75	Benzin	128000	Mexaniki	Arxa	f	5600	3294	4477008	Rövşən	(070) 857-57-52	2020-11-17
1077	Xırdalan	Opel	Zafira	1999	Minivan	Göy	1.8	116	Benzin	236543	Avtomat	Ön	f	7800	4588	4459999	Ceyhun	(050) 668-27-36	2020-11-17
1078	Sumqayıt	Chevrolet	Cobalt	2014	Sedan	Qırmızı	1.5	105	Benzin	130000	Avtomat	Ön	f	12900	7588	4477010	Asif	(077) 244-46-60	2020-11-17
1079	Bakı	Ford	Fusion	2018	Sedan	Boz	1.5	181	Benzin	31000	Avtomat	Ön	f	25500	15000	4474346	Serif	(070) 478-40-41	2020-11-17
1080	Bakı	Hyundai	Sonata	2003	Sedan	Gümüşü	2	136	Benzin	365000	Avtomat	Ön	f	8700	5118	4477016	Elməddin	(051) 225-11-97	2020-11-17
1081	Sabirabad	Mercedes	C 220	1998	Universal	Gümüşü	2.2	143	Dizel	258963	Avtomat	Arxa	f	10300	6059	4477017	Niyaz	(070) 298-57-99	2020-11-17
1082	Şəki	LADA (VAZ)	2114	2010	Sedan	Qara	1.5	75	Benzin	230000	Mexaniki	Ön	f	8500	5000	4477019	Elvin	(055) 818-39-88	2020-11-17
1083	Bakı	Kia	Optima	2011	Sedan	Göy	2	274	Benzin	115000	Avtomat	Arxa	f	22800	13412	4476953	Serxan	(055) 478-87-68	2020-11-17
1084	Bakı	Ford	Transit	2007	Furqon	Qızılı	2.4	140	Dizel	176000	Mexaniki	Arxa	f	23500	13824	4445284	Ariz	(055) 665-87-30	2020-11-17
1085	Bakı	BMW	320	2007	Sedan	Ağ	2	184	Benzin	307000	Mexaniki	Arxa	f	13200	7765	4412947	Adəm	(070) 608-03-48	2020-11-17
1086	Bakı	Toyota	Camry	2007	Sedan	Qara	2.4	167	Benzin	205489	Avtomat	Ön	f	17600	10353	4476992	Mahir	(050) 590-88-09	2020-11-17
1087	Bakı	LADA (VAZ)	Priora	2008	Sedan	Qara	1.6	106	Benzin	177478	Mexaniki	Tam	f	8500	5000	4477021	Serxan	(050) 788-31-95	2020-11-17
1088	Bakı	Daewoo	Nexia	2006	Sedan	Tünd qırmızı	1.6	75	Benzin	216000	Mexaniki	Ön	f	5500	3235	4477024	Elşad	(077) 338-04-09	2020-11-17
1089	Bakı	Hyundai	Sonata	2007	Sedan	Ağ	2.4	178	Benzin	156000	Avtomat	Ön	f	15500	9118	4410850	Rauf	(055) 400-75-96	2020-11-17
1090	Bakı	Daewoo	Gentra	2013	Sedan	Qara	1.5	107	Benzin	250000	Mexaniki	Ön	f	13400	7882	4477026	Vuqar 	(070) 651-10-70	2020-11-17
1091	Gəncə	Chevrolet	Niva	2013	Offroader / SUV	Qara	1.7	80	Benzin	60000	Mexaniki	Tam	f	13000	7647	4477027	Tural	(077) 359-10-40	2020-11-17
1092	Bakı	Mini	Cooper	2020	Hetçbek / Liftbek	Boz	2	192	Benzin	3500	Avtomat	Ön	f	61200	36000	4459864	Sabir	(055) 210-66-62	2020-11-17
1093	Bakı	Mercedes	280 SE	1968	Sedan	Yaş Asfalt	2.8	160	Benzin	108000	Avtomat	Arxa	f	68850	40500	4474294	Ali	(055) 222-66-58	2020-11-17
1094	Sabirabad	Mercedes	C 200	1997	Sedan	Gümüşü	2	136	Benzin	287000	Avtomat	Arxa	f	11500	6765	4464666	Böyükaga	(050) 511-19-61	2020-11-17
1096	Bakı	BMW	X6 M	2012	Offroader / SUV	Ağ	4.4	555	Benzin	158000	Avtomat	Tam	f	57630	33900	4476941	Amil	(050) 214-07-09	2020-11-17
1098	Bakı	BMW	528	2015	Sedan	Qəhvəyi	2	245	Benzin	37000	Avtomat	Arxa	f	45560	26800	4336683	Sənan	(051) 235-75-90	2020-11-17
1099	Bakı	Mercedes	GL 550	2008	Offroader / SUV	Qara	5.5	388	Benzin	124000	Avtomat	Arxa	f	35700	21000	4469108	Orxan	(050) 211-72-01	2020-11-17
1101	Bakı	Subaru	B9 Tribeca	2007	Offroader / SUV	Gümüşü	3	260	Benzin	325000	Avtomat	Tam	f	19000	11176	4476987	ILQAR	(070) 388-08-86	2020-11-17
1102	Sumqayıt	Hyundai	Santa Fe	2006	Offroader / SUV	Qara	2.2	150	Dizel	323000	Avtomat	Tam	f	21700	12765	4476988	İbadət	(050) 273-90-89	2020-11-17
1103	Bakı	Mercedes	E 200	1992	Sedan	Qızılı	2	136	Dizel	463524	Mexaniki	Arxa	f	6500	3824	4476989	Sahib	(055) 665-56-40	2020-11-17
1104	Bakı	Kia	Optima	2012	Sedan	Qara	2	274	Benzin	156000	Avtomat	Ön	f	20500	12059	4460832	Elman	(050) 314-32-88	2020-11-17
1105	Şəmkir	Kia	Optima	2013	Sedan	Qızılı	2.4	180	Benzin	107000	Avtomat	Ön	f	23500	13824	4476978	Sarif	(050) 430-77-57	2020-11-17
1107	Bakı	Kia	Cerato	2014	Sedan	Qara	1.8	148	Benzin	120000	Avtomat	Ön	f	18800	11059	4476980	Kamran	(055) 384-05-39	2020-11-17
1108	Masallı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	381000	Avtomat	Arxa	f	19300	11353	4476983	Əbdül	(070) 314-41-14	2020-11-17
1109	Bakı	BMW	520	1994	Sedan	Göy	2	150	Benzin	350000	Avtomat	Arxa	f	9000	5294	4476985	Nizami 	(055) 351-80-81	2020-11-17
1110	Bakı	Hyundai	Accent	1995	Sedan	Ağ	1.5	95	Benzin	273540	Mexaniki	Ön	f	7500	4412	4432763	Mehemmed	(070) 214-02-24	2020-11-17
1111	Bakı	Opel	Astra	2005	Universal	Ağ	1.6	105	Benzin	302000	Mexaniki	Ön	f	10000	5882	4476949	Rashad	(077) 277-92-92	2020-11-17
1112	Bakı	Mitsubishi	Pajero	2002	Offroader / SUV	Ağ	3	185	Benzin	222261	Avtomat	Tam	f	14500	8529	4476951	ILHAM	(070) 960-79-29	2020-11-17
1113	Bakı	Mercedes	S 350	2006	Sedan	Göy	3.5	272	Benzin	274000	Avtomat	Arxa	f	28900	17000	4476952	Shamo	(050) 662-89-89	2020-11-17
1114	Qax	Muravey	Muravey- 2 01	1995	Motosiklet	Qırmızı	0.1	10	Benzin	15000	Mexaniki	Arxa	f	850	500	4476954	Gio	(055) 074-17-38	2020-11-17
1106	Bakı	Mercedes	Viano	2006	Van	Ağ	2.2	170	Dizel	250000	Avtomat	Arxa	f	22500	13235	4422130	Yasir	(050) 200-19-73	2020-11-17
1115	Bakı	Peugeot	3008	2013	Hetçbek / Liftbek	Qara	1.6	156	Benzin	90300	Avtomat	Ön	f	16200	9529	4476955	Rəsul	(050) 270-36-76	2020-11-17
1116	Bakı	Mercedes	E 220	2001	Sedan	Göy	2.2	143	Dizel	363000	Avtomat	Arxa	f	11000	6471	4476956	Kenan	(055) 329-39-39	2020-11-17
1117	Bakı	Mercedes	C 240	1998	Sedan	Gümüşü	2.4	170	Benzin	295000	Avtomat	Arxa	f	11000	6471	4476960	Yaşar	(055) 471-96-91	2020-11-17
1118	Goranboy	GAZ	3302-744	2003	Yük maşını	Bej	2.4	131	Benzin	120999	Mexaniki	Arxa	f	8500	5000	4476962	Nicat 	(050) 564-21-32	2020-11-17
1119	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	153	Benzin	44000	Avtomat	Ön	f	17200	10118	4471796	Isimxan	(050) 820-00-20	2020-11-17
1120	Bakı	Mercedes	E 280	1995	Sedan	Yaşıl	2.8	193	Benzin	200000	Avtomat	Arxa	f	7200	4235	4476964	Elmir	(070) 348-18-38	2020-11-17
1121	Bakı	Nissan	Sunny	2007	Sedan	Qara	1.6	109	Benzin	163000	Avtomat	Ön	f	11700	6882	4476967	Sahib	(077) 315-69-69	2020-11-17
1122	Bakı	Mercedes	E 320	2000	Sedan	Ağ	3.2	224	Benzin	250000	Avtomat	Arxa	f	17855	10503	4476963	Anar	(070) 252-52-51	2020-11-17
1123	Bakı	Ford	Fusion	2017	Sedan	Ağ	1.5	181	Benzin	48000	Avtomat	Ön	f	36025	21191	4363596	Sexavet	(070) 848-48-28	2020-11-17
1124	Sumqayıt	Opel	Vectra	1996	Sedan	Yaşıl	2	136	Benzin	450054	Avtomat	Ön	f	5800	3412	4476972	Nurlan	(070) 318-56-16	2020-11-17
1125	Bakı	Infiniti	Q50	2016	Sedan	Yaş Asfalt	2.2	170	Dizel	22500	Avtomat	Arxa	f	44200	26000	4476971	Sahib	(050) 210-48-15	2020-11-17
1126	Bakı	Kia	Carens	2011	Minivan	Ağ	2	145	Benzin	169000	Avtomat	Ön	f	15800	9294	4467686	Məhərrəm	(050) 589-65-72	2020-11-17
1127	Bakı	Land Rover	Discovery	2011	Offroader / SUV	Ağ	4	219	Benzin	105000	Avtomat	Tam	f	47430	27900	4476976	Senan	(050) 212-26-63	2020-11-17
1128	Bakı	Mercedes	CLS 350	2005	Kupe	Qara	3.5	272	Benzin	189800	Avtomat	Arxa	f	23500	13824	4377092	Elbay	(050) 285-71-84	2020-11-17
1129	Bakı	BMW	525	1996	Sedan	Mavi	2.5	192	Benzin	50000	Avtomat	Arxa	f	7000	4118	4476977	Nuru	(050) 446-06-66	2020-11-17
1130	Bakı	Toyota	Land Cruiser	2019	Offroader / SUV	Qara	4	282	Benzin	21000	Avtomat	Tam	f	122400	72000	4442304	Xeyyam	(050) 247-32-59	2020-11-17
1133	Bakı	Ford	Transit	2008	Furqon	Ağ	2.4	140	Dizel	344000	Mexaniki	Arxa	f	18700	11000	4327932	Ilqar	(055) 250-44-46	2020-11-17
1134	Şamaxı	LADA (VAZ)	2103	1975	Sedan	Qırmızı	1.6	75	Benzin	237798	Mexaniki	Arxa	f	4500	2647	4476986	Cəmil	(050) 596-07-47	2020-11-17
1135	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Gümüşü	1.8	99	Hibrid	176000	Avtomat	Ön	f	18000	10588	4420925	Elvin	(050) 590-50-05	2020-11-17
1136	Bakı	Toyota	Camry	2009	Sedan	Ağ	2.4	167	Benzin	150000	Avtomat	Ön	f	20400	12000	4423958	Şahin	(050) 737-94-39	2020-11-17
1137	Bakı	Lexus	LX 570	2012	Offroader / SUV	Qara	5.7	383	Benzin	109032	Avtomat	Tam	f	84660	49800	4409872	Efran	(050) 733-33-59	2020-11-17
1138	Bakı	Ford	Escape	2012	Offroader / SUV	Yaşıl	1.6	178	Benzin	117000	Avtomat	Ön	f	17900	10529	4430391	Sahin	(055) 633-99-99	2020-11-17
1139	Bakı	Chevrolet	Volt	2012	Hetçbek / Liftbek	Qara	1.4	107	Elektro	180000	Avtomat	Ön	f	18100	10647	4416137	Afqan	(050) 433-02-11	2020-11-17
1143	Bakı	LADA (VAZ)	Priora	2013	Sedan	Ağ	1.6	106	Benzin	177452	Mexaniki	Ön	f	11000	6471	4476610	Nurlan	(077) 418-85-34	2020-11-17
1144	Gəncə	Mercedes	C 180	1996	Sedan	Yaşıl	1.8	122	Benzin	220120	Avtomat	Arxa	f	10300	6059	4476927	Qusi	(055) 719-05-17	2020-11-17
1145	Bakı	Mercedes	E 350	2012	Sedan	Yaş Asfalt	3.5	306	Dizel	185478	Avtomat	Arxa	f	41650	24500	4421946	Tofiq	(070) 202-87-11	2020-11-17
1146	Bakı	Hyundai	ix35	2014	Offroader / SUV	Ağ	2	166	Benzin	108000	Avtomat	Tam	f	22000	12941	4476740	Kamil	(055) 255-11-66	2020-11-17
1147	Bakı	Chery	Tiggo	2008	Offroader / SUV	Gümüşü	2	136	Benzin	250000	Mexaniki	Ön	f	9500	5588	4476681	Elshad	(055) 750-23-26	2020-11-17
1148	Sumqayıt	Opel	Astra	1999	Universal	Mavi	1.6	101	Benzin	162000	Mexaniki	Ön	f	7200	4235	4470501	Musatafa 	(050) 668-51-82	2020-11-17
1149	Siyəzən	LADA (VAZ)	Oka	2008	Hetçbek / Liftbek	Ağ	0.5	80	Benzin	155240	Mexaniki	Ön	f	3500	2059	4476604	Nadir	(070) 278-19-18	2020-11-17
1150	Bakı	Subaru	Forester	2010	Offroader / SUV	Gümüşü	2.5	172	Benzin	246000	Avtomat	Tam	f	17000	10000	4394204	Orxan	(050) 731-30-30	2020-11-17
1151	Bakı	Nissan	Teana	2009	Sedan	Ağ	3.5	249	Benzin	161000	Avtomat	Ön	f	16300	9588	4476928	Ayhan	(050) 860-66-66	2020-11-17
1152	Bakı	LADA (VAZ)	2106	1989	Sedan	Ağ	1.6	75	Benzin	264684	Mexaniki	Arxa	f	4400	2588	4476929	Necef	(070) 877-31-61	2020-11-17
1153	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	97	Dizel	144000	Mexaniki	Ön	f	12900	7588	4447932	Vuqar	(050) 716-16-17	2020-11-17
1154	Bakı	Mercedes	C 220	1994	Sedan	Boz	2.2	143	Benzin	444444	Avtomat	Tam	f	8700	5118	4476881	Cebrayil	(050) 276-80-05	2020-11-17
1155	Gəncə	Opel	Omega	1996	Sedan	Göy	2	136	Benzin	300000	Mexaniki	Ön	f	4300	2529	4476886	Serxan	(051) 451-63-23	2020-11-17
1156	Bakı	Toyota	Corolla	2014	Sedan	Göy	1.8	140	Benzin	28000	Avtomat	Ön	f	23500	13824	4476893	Hesen	(077) 766-99-11	2020-11-17
1157	Sumqayıt	LADA (VAZ)	2106	1985	Sedan	Yaşıl	1.6	75	Benzin	350000	Mexaniki	Arxa	f	3300	1941	4476890	Füzuli	(070) 807-57-38	2020-11-17
1158	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.4	90	Benzin	144685	Mexaniki	Ön	f	10700	6294	4451308	Nesib	(050) 442-84-44	2020-11-17
1159	Sumqayıt	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	4700	2765	4473290	Ramil	(050) 668-60-46	2020-11-17
1161	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	173213	Mexaniki	Ön	f	10500	6176	4467702	Nesib	(099) 899-93-88	2020-11-17
1162	Bakı	Nissan	Sunny	2006	Sedan	Ağ	1.6	110	Benzin	330000	Avtomat	Ön	f	10900	6412	4476891	Ramil	(050) 893-31-66	2020-11-17
1163	Bakı	Mercedes	E 350	2008	Sedan	Qara	3.5	272	Benzin	206000	Avtomat	Arxa	f	28390	16700	4476894	Oruc	(050) 207-06-77	2020-11-17
1164	Sumqayıt	BMW	528	1998	Sedan	Yaşıl	2.8	192	Benzin	196000	Avtomat	Arxa	f	7800	4588	4467570	Resad	(050) 369-17-98	2020-11-17
1165	Göyçay	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	193000	Mexaniki	Arxa	f	6500	3824	4476898	Məhəmməd 	(050) 342-39-30	2020-11-17
1131	Sumqayıt	Hyundai	Sonata	2008	Sedan	Boz	2.4	178	Benzin	123897	Avtomat	Arxa	f	17500	10294	4447722	rabil	(070) 800-25-25	2020-11-17
1166	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Qara	4	243	Benzin	268000	Avtomat	Tam	f	49300	29000	4476912	Mişa	(050) 284-94-94	2020-11-17
1167	Şəmkir	LADA (VAZ)	2112	2002	Sedan	Bənövşəyi	1.5	75	Benzin	357406	Mexaniki	Ön	f	6300	3706	4476914	ZAMİQ	(050) 626-55-86	2020-11-17
1168	Naxçıvan	Toyota	Prado	2005	Offroader / SUV	Qara	3	173	Dizel	355002	Mexaniki	Tam	f	38000	22353	4476922	Nihat	(051) 460-28-28	2020-11-17
1170	Bakı	Kia	Optima	2013	Sedan	Boz	2	274	Benzin	75315	Avtomat	Ön	f	21200	12471	4415881	Orxan	(050) 862-47-64	2020-11-17
1171	Bakı	Hyundai	Terracan	2004	Offroader / SUV	Ağ	2.9	163	Dizel	228000	Avtomat	Tam	f	13500	7941	4456855	Rafael	(055) 669-97-43	2020-11-17
1172	Bakı	Mitsubishi	Pajero	1995	Offroader / SUV	Yaşıl	2.8	125	Dizel	470000	Avtomat	Tam	f	7800	4588	4476930	Celal	(055) 675-00-65	2020-11-17
1173	Bakı	Renault	Scenic	2008	Minivan	Qara	1.5	110	Dizel	205000	Mexaniki	Ön	f	11000	6471	4476945	Qurban	(050) 963-01-89	2020-11-17
1174	Bakı	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	275000	Avtomat	Arxa	f	12500	7353	4442991	Arif	(051) 875-95-95	2020-11-17
1175	Bakı	Chevrolet	Cruze	2013	Hetçbek / Liftbek	Qara	1.8	141	Benzin	184000	Avtomat	Ön	f	16200	9529	4476860	Zabit	(050) 207-29-02	2020-11-17
1176	Goranboy	LADA (VAZ)	2115	2003	Sedan	Qızılı	1.5	75	Benzin	234555	Mexaniki	Ön	f	6200	3647	4476861	Firuz	(055) 895-06-72	2020-11-17
1177	Bakı	BMW	328	2003	Sedan	Gümüşü	2.8	193	Benzin	222222	Avtomat	Arxa	f	13300	7824	4476865	Cavid	(055) 911-95-93	2020-11-17
1178	Ağsu	Chevrolet	Niva	2012	Offroader / SUV	Gümüşü	1.7	80	Benzin	180000	Mexaniki	Tam	f	13300	7824	4476863	Hemid	(055) 505-66-50	2020-11-17
1179	Bakı	Mercedes	C 200	2000	Universal	Gümüşü	2	136	Benzin	204500	Avtomat	Arxa	f	3700	2176	4476868	Ayan	(050) 396-92-35	2020-11-17
1180	Sumqayıt	Hyundai	Elantra	2013	Sedan	Qara	1.8	150	Benzin	77000	Avtomat	Ön	f	17700	10412	4476877	Turan	(055) 440-93-42	2020-11-17
1181	Bakı	Ford	Fusion	2017	Sedan	Yaş Asfalt	1.5	181	Benzin	80400	Avtomat	Arxa	f	24500	14412	4446196	Vuqar	(055) 759-22-22	2020-11-17
1182	Dəliməmmədli	Mercedes	E 200	1995	Sedan	Göy	2	136	Benzin	543223	Mexaniki	Arxa	f	9200	5412	4470529	Elsad	(055) 307-45-39	2020-11-17
1183	Bakı	Kia	Optima	2016	Sedan	Ağ	1.6	180	Benzin	77000	Avtomat	Ön	f	23300	13706	4393745	Orxan	(055) 275-09-09	2020-11-17
1184	Bakı	Ford	Fusion	2016	Sedan	Göy	1.5	181	Benzin	40000	Avtomat	Ön	f	20700	12176	4471459	Kenan	(050) 288-77-74	2020-11-17
1185	Bakı	Land Rover	Range Rover	2015	Offroader / SUV	Qara	5	510	Benzin	50000	Avtomat	Tam	f	173400	102000	4476879	Tural	(055) 677-66-55	2020-11-17
1186	Zaqatala	Mercedes	Vito 111	2008	Furqon	Ağ	2.2	150	Dizel	136000	Mexaniki	Arxa	f	21500	12647	4476793	Cerulla	(050) 656-79-79	2020-11-17
1187	Bakı	LADA (VAZ)	2104	2005	Universal	Göy	1.5	65	Benzin	303480	Mexaniki	Arxa	f	6000	3529	4476799	Sabir	(050) 660-29-76	2020-11-17
1188	Hacıqabul	GAZ	24-10	1990	Sedan	Mavi	2.4	131	Benzin	136000	Mexaniki	Arxa	f	4800	2824	4476797	Yusif	(050) 687-30-69	2020-11-17
1189	Bakı	Mitsubishi	Grandis	2004	Minivan	Ağ	2.4	165	Benzin	184000	Avtomat	Ön	f	13800	8118	4476807	Fəzalət	(077) 461-23-24	2020-11-17
1190	Bakı	Mercedes	CLS 250 CDI	2011	Kupe	Ağ	2.2	204	Dizel	133333	Avtomat	Arxa	f	54777	32222	3970102	Qenimet	(070) 350-06-99	2020-11-17
1191	Bakı	Hyundai	ix35	2011	Offroader / SUV	Qara	2.4	180	Benzin	300800	Avtomat	Tam	f	21500	12647	4371838	Samir	(050) 205-33-35	2020-11-17
1192	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2.4	178	Benzin	200000	Avtomat	Ön	f	19200	11294	4476809	Samir	(050) 305-20-60	2020-11-17
1193	Ağsu	Opel	Astra	2009	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	189000	Mexaniki	Ön	f	12300	7235	4476812	Azer	(051) 801-88-98	2020-11-17
1194	Bakı	Hyundai	Elantra	2007	Sedan	Boz	1.6	132	Benzin	182000	Avtomat	Ön	f	14000	8235	4428922	Tahir	(070) 800-88-11	2020-11-17
1195	Bakı	Tofas	Sahin	2003	Sedan	Qara	1.6	86	Benzin	150000	Mexaniki	Arxa	f	3900	2294	4476819	Kamo 	(050) 796-80-54	2020-11-17
1196	Bakı	Kia	Sportage	2016	Offroader / SUV	Gümüşü	1.6	177	Dizel	70000	Avtomat	Ön	f	30500	17941	4476816	Orxan 	(055) 743-43-69	2020-11-17
1197	Qusar	Mercedes	A 160	2001	Hetçbek / Liftbek	Gümüşü	1.6	102	Benzin	139000	Avtomat	Ön	f	7500	4412	4476826	Kifayət	(051) 547-82-19	2020-11-17
1198	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Ağ	2	141	Benzin	213000	Avtomat	Tam	f	15800	9294	4476827	Emin	(050) 590-12-21	2020-11-17
1199	Bakı	Hyundai	Sonata	2006	Sedan	Qara	2.4	178	Elektro	334000	Mexaniki	Ön	f	11500	6765	4476830	Ramin	(050) 373-23-33	2020-11-17
1200	Bakı	LADA (VAZ)	2107	2005	Sedan	Qırmızı	1.6	75	Benzin	90000	Mexaniki	Arxa	f	6600	3882	4476833	İlkin	(050) 385-57-87	2020-11-17
1201	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.6	132	Dizel	177000	Avtomat	Ön	f	20500	12059	4476843	Orxan	(055) 892-25-33	2020-11-17
1202	Bakı	BMW	328	2016	Sedan	Qara	2	245	Benzin	103000	Avtomat	Arxa	f	40630	23900	4442221	Perviz 	(055) 770-11-44	2020-11-17
1203	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Göy	1.5	76	Benzin	260000	Avtomat	Ön	f	11000	6471	4476847	Senan	(055) 422-52-33	2020-11-17
1204	Bakı	Mercedes	Viano	2006	Van	Gümüşü	2.2	150	Dizel	355000	Avtomat	Arxa	f	25900	15235	4476852	Samir	(077) 277-49-50	2020-11-17
1206	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	4	249	Benzin	106000	Avtomat	Tam	f	63750	37500	4428643	Guner Bey 	(055) 715-90-92	2020-11-17
1207	Bakı	Nissan	Armada	2004	Offroader / SUV	Ağ	5.6	375	Benzin	185000	Avtomat	Tam	f	25000	14706	4036460	Vüqar	(050) 212-40-25	2020-11-17
1208	Bakı	Renault	Megane	2008	Universal	Gümüşü	1.5	106	Dizel	185000	Mexaniki	Ön	f	13000	7647	4346105	 Ibrahim	(070) 553-45-55	2020-11-17
1209	Bakı	Chevrolet	Malibu	2019	Sedan	Ağ	1.5	181	Benzin	7000	Avtomat	Ön	f	25500	15000	4384808	Huseyn	(055) 933-08-82	2020-11-17
1210	Bakı	Cadillac	SRX	2008	Offroader / SUV	Qara	4.6	333	Benzin	135000	Avtomat	Tam	f	21800	12824	4437784	Rustam	(050) 212-83-05	2020-11-17
1211	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaşıl	1.5	76	Hibrid	149500	Avtomat	Ön	f	12400	7294	4462442	Sahib	(055) 230-27-27	2020-11-17
1212	Bakı	Hyundai	Elantra	2016	Sedan	Ağ	1.4	130	Benzin	40000	Avtomat	Ön	f	23800	14000	4456955	Iqbal	(050) 705-18-73	2020-11-17
1215	Bakı	Toyota	RAV 4	2006	Offroader / SUV	Göy	2.4	170	Benzin	126634	Avtomat	Tam	f	16500	9706	4476758	Əsmayə	(051) 821-90-38	2020-11-17
1169	Bakı	Mercedes	Sprinter 316	2012	Mikroavtobus	Ağ	2	170	Dizel	298000	Mexaniki	Arxa	f	37500	22059	4433095	Ferid	(055) 211-32-37	2020-11-17
1216	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Qara	1.3	90	Dizel	141668	Mexaniki	Ön	f	10700	6294	4476764	Mehemmed	(070) 993-08-88	2020-11-17
1217	Naxçıvan	Kia	Optima	2015	Sedan	Ağ	2	274	Benzin	71000	Avtomat	Ön	f	25700	15118	4476766	Nofəl	(060) 262-02-20	2020-11-17
1218	Bakı	BMW	528	2015	Sedan	Qara	2	258	Benzin	112000	Avtomat	Tam	f	44030	25900	4439791	Gəray	(077) 608-08-06	2020-11-17
1219	Sumqayıt	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.2	170	Dizel	222123	Avtomat	Tam	f	22100	13000	4442433	Yaser	(051) 699-48-85	2020-11-17
1220	Sumqayıt	Mercedes	C 230	2007	Sedan	Ağ	2.3	150	Benzin	186900	Avtomat	Arxa	f	14800	8706	4476770	Aydin	(050) 369-90-09	2020-11-17
1221	Bakı	Mercedes	C 200	1998	Sedan	Qara	2	136	Benzin	269000	Avtomat	Arxa	f	14200	8353	4476772	Sahibi	(050) 200-26-77	2020-11-17
1222	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Qara	2.4	178	Benzin	104000	Avtomat	Tam	f	30900	18176	4465442	Anar	(050) 366-06-95	2020-11-17
1223	Sumqayıt	BMW	318	1993	Sedan	Qara	1.6	102	Benzin	325161	Mexaniki	Arxa	f	7400	4353	4476781	Sadiq	(070) 939-81-92	2020-11-17
1224	Bakı	Chevrolet	Cruze	2012	Hetçbek / Liftbek	Qara	1.8	141	Benzin	156000	Avtomat	Ön	f	15600	9176	4476783	Elçin	(050) 221-29-88	2020-11-17
1225	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Qəhvəyi	1.5	76	Hibrid	200000	Variator	Ön	f	11300	6647	4433007	Rovsen	(050) 751-62-68	2020-11-17
1226	Bakı	DongFeng	Fengshen S30	2015	Sedan	Ağ	1.6	117	Benzin	93300	Avtomat	Ön	f	12500	7353	4476774	Mehman	(055) 226-48-70	2020-11-17
1227	Bakı	Chevrolet	Cruze	2016	Sedan	Qəhvəyi	1.4	153	Benzin	50000	Avtomat	Ön	f	17400	10235	4476787	Murad 	(055) 226-63-67	2020-11-17
1228	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Qızılı	1.3	90	Dizel	203000	Mexaniki	Ön	f	10300	6059	4473475	ilqar	(050) 611-83-79	2020-11-17
1229	Bakı	Honda	CR-V	2008	Offroader / SUV	Qara	2.4	170	Benzin	189000	Avtomat	Tam	f	20700	12176	4474168	HACI	(050) 504-01-09	2020-11-17
1230	Bakı	Lexus	GX 470	2006	Offroader / SUV	Ağ	4.7	273	Benzin	153000	Avtomat	Tam	f	33700	19824	4455999	Mərdan	(077) 301-06-70	2020-11-17
1231	Bakı	BMW	525	1999	Sedan	Qara	2.5	192	Benzin	230000	Avtomat	Arxa	f	15500	9118	4476731	Mahir	(055) 472-65-65	2020-11-17
1232	Sumqayıt	LADA (VAZ)	Niva	2019	Offroader / SUV	Qara	1.7	80	Benzin	33450	Mexaniki	Ön	f	16800	9882	4476729	Murad	(050) 263-24-00	2020-11-17
1233	Bakı	Mercedes	Vito 115	2008	Minivan	Tünd qırmızı	2.2	150	Dizel	300000	Mexaniki	Arxa	f	29000	17059	4476734	yasar	(070) 716-21-36	2020-11-17
1234	Sumqayıt	LADA (VAZ)	2114	2012	Hetçbek / Liftbek	Tünd qırmızı	1.5	75	Benzin	168000	Mexaniki	Ön	f	10800	6353	4278372	Rauf	(055) 578-74-75	2020-11-17
1235	Bakı	Mitsubishi	Airtrek	2002	Offroader / SUV	Qara	2.4	170	Benzin	250000	Avtomat	Ön	f	8900	5235	4476736	Gulbala	(050) 611-74-70	2020-11-17
1236	Qazax	KamAz	55111	1990	Yük maşını	Qırmızı	11	191	Dizel	349000	Mexaniki	Arxa	f	11000	6471	4476739	Məhəmməd 	(050) 675-84-20	2020-11-17
1237	Bakı	Renault	Megane	2006	Universal	Göy	1.4	100	Benzin	280000	Mexaniki	Ön	f	11000	6471	4476743	İman	(077) 750-60-44	2020-11-17
1238	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	153	Benzin	106378	Avtomat	Ön	f	15900	9353	4470212	Pənah	(055) 705-73-40	2020-11-17
1239	Bakı	Mercedes	S 350	2008	Sedan	Qara	3.5	272	Benzin	184000	Avtomat	Arxa	f	34680	20400	4369733	Zaur	(050) 559-85-08	2020-11-17
1240	Bakı	Volvo	940	1995	Sedan	Yaşıl	2.3	162	Benzin	165000	Avtomat	Arxa	f	13500	7941	4476749	Sabuhi	(051) 664-54-45	2020-11-17
1241	Salyan	Dnepr	K-750	2000	Motosiklet	Göy	0.7	26	Benzin	525200	Mexaniki	Arxa	f	2500	1471	4476745	ELI	(050) 766-73-96	2020-11-17
1242	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Boz	1.5	110	Dizel	211000	Mexaniki	Ön	f	11500	6765	4415530	Ilkin	(050) 974-73-33	2020-11-17
1243	Bakı	BMW	740	1993	Sedan	Göy	4	286	Benzin	405000	Avtomat	Arxa	f	6600	3882	4476752	Orxan	(070) 540-40-60	2020-11-17
1244	Bakı	Chevrolet	Cruze	2017	Sedan	Ağ	1.4	155	Benzin	22000	Avtomat	Ön	f	17200	10118	4441400	Allahverdi	(050) 238-02-00	2020-11-17
1245	Bakı	Nissan	Sentra	2014	Sedan	Qara	1.6	117	Benzin	120000	Avtomat	Ön	f	15900	9353	4468345	Kenan	(050) 994-95-38	2020-11-17
1246	Bakı	Ford	Fusion	2014	Sedan	Tünd qırmızı	1.5	181	Benzin	197000	Avtomat	Ön	f	16500	9706	4413538	Aslan 	(077) 717-09-49	2020-11-17
1247	Bakı	Hyundai	Grandeur	2013	Sedan	Ağ	2.4	180	Benzin	67470	Avtomat	Ön	f	31960	18800	4429721	Ülfət	(050) 792-57-04	2020-11-17
1248	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	160000	Variator	Ön	f	12800	7529	4469585	Rahim	(050) 344-53-42	2020-11-17
1249	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2	165	Benzin	124000	Avtomat	Ön	f	25400	14941	4473639	EBDÜL C	(055) 231-14-14	2020-11-17
1251	Bakı	Kia	Optima	2013	Sedan	Qara	2.4	178	Benzin	109000	Avtomat	Ön	f	17200	10118	4414841	Rafael	(055) 399-20-52	2020-11-17
1253	Bakı	Mitsubishi	Eclipse Cross	2019	Offroader / SUV	Ağ	1.5	163	Benzin	27500	Avtomat	Ön	f	34000	20000	4451684	Aydın	(055) 444-79-13	2020-11-17
1254	Bakı	Audi	Q7	2018	Offroader / SUV	Yaş Asfalt	2	252	Benzin	38000	Avtomat	Tam	f	92480	54400	4420937	Elçin	(055) 481-73-39	2020-11-17
1255	Bakı	Mercedes	E 250	2015	Sedan	Ağ	2	211	Benzin	53000	Avtomat	Arxa	f	62900	37000	4462543	Araz	(055) 339-90-11	2020-11-17
1256	Sumqayıt	Toyota	Prado	2005	Offroader / SUV	Gümüşü	2.7	167	Benzin	35000	Avtomat	Tam	f	23800	14000	4472512	VUSAL	(070) 626-21-55	2020-11-17
1257	Bakı	Ford	Transit	2011	Yük maşını	Ağ	2.4	140	Dizel	215321	Mexaniki	Arxa	f	30000	17647	4391609	Arif	(050) 787-57-77	2020-11-17
1258	Qəbələ	LADA (VAZ)	2107	2010	Sedan	Ağ	1.5	65	Benzin	263500	Mexaniki	Arxa	f	7000	4118	4476706	Vusal	(055) 727-45-00	2020-11-17
1259	Gəncə	Ford	Ecosport	2004	Offroader / SUV	Gümüşü	2	112	Benzin	276000	Mexaniki	Ön	f	11500	6765	4476710	Əlövsət	(055) 858-25-00	2020-11-17
1260	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	120000	Avtomat	Arxa	f	40290	23700	4459780	Aqil	(055) 651-04-40	2020-11-17
1261	Bakı	LADA (VAZ)	2104	1993	Universal	Qırmızı	1.6	72	Benzin	458000	Mexaniki	Arxa	f	3800	2235	4476712	MUSLUM	(055) 869-99-52	2020-11-17
1262	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	96000	Avtomat	Tam	f	30800	18118	4474230	Anar	(070) 266-62-09	2020-11-17
1263	Neftçala	Mitsubishi	Pajero io	2002	Offroader / SUV	Göy	2	136	Benzin	208767	Avtomat	Arxa	f	11000	6471	4476715	Turan 	(051) 650-75-38	2020-11-17
1264	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Ağ	1.5	76	Hibrid	240000	Variator	Ön	f	13000	7647	4336621	Nofel	(070) 300-00-86	2020-11-17
1265	Şirvan	Daewoo	Lanos	2009	Sedan	Qara	1.5	95	Benzin	185000	Mexaniki	Ön	f	7700	4529	4476717	Yaser	(055) 704-97-17	2020-11-17
1266	Bakı	Nissan	Teana	2007	Sedan	Qara	2.3	173	Benzin	178000	Avtomat	Ön	f	12400	7294	4474082	Nurlan	(077) 504-01-09	2020-11-17
1267	Bakı	Chevrolet	Epica	2010	Sedan	Ağ	2.5	157	Benzin	224000	Avtomat	Ön	f	15500	9118	4476716	Fəxrəddin	(077) 354-45-55	2020-11-17
1268	Sumqayıt	Mercedes	E 280	1998	Sedan	Göy	2.8	193	Benzin	492000	Avtomat	Arxa	f	11300	6647	4476641	Xəqani	(070) 663-48-78	2020-11-17
1269	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qırmızı	1.4	90	Benzin	218000	Mexaniki	Ön	f	10000	5882	4476652	Aqil	(050) 302-54-57	2020-11-17
1270	Mingəçevir	Hyundai	Sonata	1995	Sedan	Tünd qırmızı	2	104	Benzin	260000	Mexaniki	Ön	f	4800	2824	4476649	Elxan	(050) 685-60-35	2020-11-17
1271	Bakı	Kia	Sportage	2013	Offroader / SUV	Ağ	2	166	Benzin	159500	Avtomat	Tam	f	24900	14647	4472103	Zarina	(055) 716-73-15	2020-11-17
1272	Bakı	LADA (VAZ)	2106	1983	Sedan	Ağ	1.3	65	Benzin	436555	Mexaniki	Arxa	f	3500	2059	4463895	Mustafa	(050) 798-49-12	2020-11-17
1273	Bakı	BMW	528	2015	Sedan	Qara	2	245	Benzin	50465	Avtomat	Arxa	f	43350	25500	4402295	Ferid	(050) 467-47-56	2020-11-17
1274	Şəki	Mercedes	C 180	1998	Furqon	Tünd qırmızı	1.8	122	Benzin	361100	Mexaniki	Arxa	f	10200	6000	4476656	Fəqan	(050) 305-33-99	2020-11-17
1275	Bakı	Hyundai	Sonata	2007	Sedan	Qara	3.3	233	Benzin	136000	Avtomat	Ön	f	14800	8706	4422818	Feruz	(050) 573-00-02	2020-11-17
1276	Bakı	Citroen	C5	2012	Sedan	Ağ	1.6	156	Benzin	156500	Avtomat	Ön	f	16300	9588	4401394	Azer	(050) 383-73-71	2020-11-17
1277	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Göy	1.7	80	Benzin	23000	Mexaniki	Tam	f	17500	10294	4428516	MURAD	(050) 540-74-74	2020-11-17
1278	Bakı	LADA (VAZ)	2115	2006	Sedan	Yaş Asfalt	1.5	78	Benzin	250000	Mexaniki	Ön	f	6500	3824	4476655	ferid	(077) 323-88-81	2020-11-17
1279	Bakı	Kia	Optima	2012	Sedan	Ağ	2	274	Benzin	86000	Avtomat	Ön	f	21500	12647	4433873	Zamin	(070) 617-10-00	2020-11-17
1280	Bakı	LADA (VAZ)	Niva	2020	Offroader / SUV	Göy	1.7	80	Benzin	7600	Mexaniki	Tam	f	21500	12647	4476667	Mamed	(050) 200-09-60	2020-11-17
1281	Bakı	Chevrolet	Cruze	2012	Sedan	Qara	1.4	141	Benzin	175000	Avtomat	Ön	f	13700	8059	4427589	Pərviz	(050) 215-41-25	2020-11-17
1282	Sumqayıt	GAZ	3102	1999	Sedan	Yaşıl	2.4	131	Benzin	120172	Mexaniki	Arxa	f	4500	2647	4476680	Həsən	(055) 478-24-34	2020-11-17
1283	Qəbələ	LADA (VAZ)	2106	1987	Sedan	Ağ	1.6	75	Benzin	959010	Mexaniki	Arxa	f	3500	2059	4476678	Məcid	(050) 855-88-48	2020-11-17
1284	Bakı	Ford	Fusion	2014	Sedan	Gümüşü	2	245	Benzin	97000	Avtomat	Ön	f	20740	12200	4476684	EMIL	(055) 705-67-78	2020-11-17
1285	Qax	BMW	530	1999	Sedan	Göy	3	231	Benzin	290000	Avtomat	Arxa	f	16500	9706	4212621	Vasif 	(055) 931-16-92	2020-11-17
1286	Bərdə	GAZ	3110	2003	Sedan	Qara	2.3	131	Benzin	198282	Mexaniki	Arxa	f	4300	2529	4476690	Elxan	(077) 712-32-32	2020-11-17
1287	Bakı	Mercedes	B 200	2006	Hetçbek / Liftbek	Ağ	2	136	Benzin	135000	Avtomat	Ön	f	12800	7529	4476692	Rəşad	(070) 706-78-68	2020-11-17
1288	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	105000	Avtomat	Tam	f	32500	19118	4465603	Nemet	(070) 936-01-00	2020-11-17
1289	Bakı	Lexus	RX 200t	2017	Offroader / SUV	Boz	2	238	Benzin	46500	Avtomat	Tam	f	87550	51500	4471364	Ramil 	(055) 255-50-05	2020-11-17
1291	Bakı	Mercedes	Vito 115	2010	Van	Ağ	2.2	150	Dizel	290000	Mexaniki	Arxa	f	29500	17353	4443234	Mensur	(055) 234-28-65	2020-11-17
1293	Bakı	Renault	Scenic	2005	Minivan	Tünd qırmızı	1.5	110	Dizel	170000	Mexaniki	Ön	f	10200	6000	4476719	Emin	(055) 300-82-28	2020-11-17
1294	Bakı	LADA (VAZ)	2106	1994	Sedan	Bej	1.6	75	Benzin	222222	Mexaniki	Arxa	f	6400	3765	4442241	Nail	(070) 728-19-80	2020-11-17
1295	Sumqayıt	GAZ	31105	2008	Sedan	Ağ	2.3	131	Benzin	78300	Mexaniki	Arxa	f	10500	6176	4458314	Zaur	(070) 328-70-90	2020-11-17
1296	Bakı	Iveco	Daily 35C12H	2000	Furqon	Ağ	2.8	122	Dizel	250000	Mexaniki	Arxa	f	18000	10588	4476612	Zakir	(050) 376-33-55	2020-11-17
1297	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	170953	Mexaniki	Ön	f	11300	6647	4391568	Eli	(055) 440-43-97	2020-11-17
1298	Bakı	Daewoo	Nexia	2011	Sedan	Bej	1.5	80	Benzin	175826	Mexaniki	Ön	f	6650	3912	4476618	Xanlar	(050) 333-77-57	2020-11-17
1299	Xırdalan	LADA (VAZ)	Priora	2015	Sedan	Ağ	1.6	106	Benzin	80000	Mexaniki	Ön	f	13900	8176	4457268	Firudin	(070) 380-45-93	2020-11-17
1300	Bakı	BMW	750	2009	Sedan	Qara	4.4	407	Benzin	90000	Avtomat	Arxa	f	46920	27600	4446780	Anar	(055) 949-30-18	2020-11-17
1301	Bakı	Fiat	Freemont	2012	Offroader / SUV	Boz	2	170	Dizel	185000	Avtomat	Tam	f	20000	11765	4476619	Samir	(050) 357-80-99	2020-11-17
1302	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	1.8	130	Benzin	221500	Avtomat	Ön	f	8500	5000	4476621	Oktay 	(050) 329-27-11	2020-11-17
1303	Sumqayıt	LADA (VAZ)	21099	1998	Sedan	Qırmızı	1.5	75	Benzin	178000	Mexaniki	Ön	f	4600	2706	4476624	Hesen	(070) 255-03-05	2020-11-17
1304	Ucar	Mercedes	C 200	2001	Sedan	Gümüşü	2	163	Benzin	170000	Avtomat	Arxa	f	13500	7941	4476629	Orxan	(050) 685-61-61	2020-11-17
1305	Bakı	Mercedes	Sprinter 315	2008	Furqon	Ağ	2.2	150	Dizel	185675	Mexaniki	Arxa	f	30000	17647	4332931	Arif	(050) 787-57-77	2020-11-17
1306	Bakı	BMW	523	1999	Sedan	Gümüşü	2.5	170	Benzin	305000	Avtomat	Arxa	f	12000	7059	4476626	Rəvan	(051) 756-44-55	2020-11-17
1307	Sumqayıt	Mercedes	C 200	1999	Sedan	Gümüşü	2	136	Benzin	240000	Avtomat	Arxa	f	11500	6765	4465054	Ali	(055) 262-56-02	2020-11-17
1308	Bakı	Nissan	Sunny	2016	Sedan	Göy	1.6	109	Benzin	77000	Avtomat	Ön	f	15650	9206	4453917	İbrahim	(050) 976-16-45	2020-11-17
1309	Bakı	Ford	Fusion	2018	Sedan	Ağ	1.5	181	Benzin	7500	Avtomat	Ön	f	25500	15000	4476589	Dadas	(055) 916-53-25	2020-11-17
1310	Quba	GAZ	31105	2006	Sedan	Gümüşü	2.4	96	Benzin	100978	Mexaniki	Arxa	f	6900	4059	4476594	Rahil	(050) 448-90-53	2020-11-17
1311	Bakı	Kia	Cerato	2012	Sedan	Qara	2	150	Benzin	178000	Avtomat	Ön	f	14650	8618	4453819	Əli	(077) 324-43-89	2020-11-17
1312	Bakı	LADA (VAZ)	2101	1984	Sedan	Ağ	1.3	65	Benzin	852145	Mexaniki	Arxa	f	1450	853	4476593	Nesir	(055) 732-29-25	2020-11-17
1313	Bakı	Mercedes	C 220	2000	Universal	Gümüşü	2.2	143	Dizel	252000	Avtomat	Arxa	f	12550	7382	4453769	Əli	(055) 896-23-59	2020-11-17
1314	Bakı	Mitsubishi	Nativa	2006	Offroader / SUV	Qara	3	174	Benzin	245000	Avtomat	Tam	f	14000	8235	4476597	Asim	(070) 853-81-43	2020-11-17
1315	Gəncə	Volkswagen	Jetta	2008	Sedan	Gümüşü	2.5	170	Benzin	223588	Avtomat	Ön	f	10600	6235	4461307	Cehun	(070) 311-11-58	2020-11-17
1316	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Boz	1.7	80	Benzin	60000	Mexaniki	Tam	f	16300	9588	4042902	Taleh	(050) 548-87-55	2020-11-17
1292	Bakı	Mercedes	S 320	1994	Sedan	Boz	3.2	224	Benzin	300000	Avtomat	Arxa	f	10500	6176	4194053	Vlad	(050) 255-70-67	2020-11-17
1317	Bakı	Land Rover	RR Sport	2012	Offroader / SUV	Ağ	3	256	Dizel	148000	Avtomat	Tam	f	53720	31600	4453700	Zavur	(050) 583-16-45	2020-11-17
1318	Bakı	Hyundai	Accent	2011	Sedan	Yaş Asfalt	1.6	140	Benzin	188000	Avtomat	Ön	f	12800	7529	4453332	Polad	(077) 521-59-21	2020-11-17
1319	Bakı	Kia	Picanto	2008	Hetçbek / Liftbek	Ağ	1	61	Benzin	119000	Avtomat	Tam	f	10600	6235	4454149	telman	(050) 584-67-18	2020-11-17
1320	Bakı	Mercedes	Vito	2010	Van	Qara	2.2	150	Dizel	195000	Avtomat	Arxa	f	33500	19706	4008627	Mamed 	(070) 200-86-34	2020-11-17
1321	Bakı	Hyundai	Sonata	2010	Sedan	Boz	2	165	Benzin	126000	Avtomat	Ön	f	20900	12294	4430870	Royal 	(050) 353-50-06	2020-11-17
1322	Bakı	Nissan	Sunny	2015	Sedan	Qara	1.6	109	Benzin	76000	Avtomat	Ön	f	14800	8706	4453990	həsən	(055) 901-09-84	2020-11-17
1323	Bakı	Mercedes	E 220	2013	Sedan	Ağ	2.2	170	Dizel	145000	Avtomat	Arxa	f	48450	28500	4476602	Maqa	(070) 216-46-46	2020-11-17
1324	Bakı	Mercedes	E 240	2001	Sedan	Yaşıl	2.6	177	Benzin	380000	Avtomat	Arxa	f	13000	7647	4386840	Tural	(051) 301-61-61	2020-11-17
1326	Bakı	Lexus	LX 570	2014	Offroader / SUV	Qara	5.7	383	Benzin	93000	Avtomat	Tam	f	100300	59000	4254203	Mehman	(050) 206-10-12	2020-11-17
1328	Bakı	Hyundai	Accent	2012	Sedan	Yaş Asfalt	1.6	125	Benzin	127000	Avtomat	Ön	f	14500	8529	4464020	Nizami	(077) 200-02-02	2020-11-17
1329	Bakı	Chevrolet	Tahoe	2009	Offroader / SUV	Qara	6.2	388	Benzin	118000	Avtomat	Tam	f	46750	27500	4460857	Heci	(055) 717-27-37	2020-11-17
1330	Bakı	Infiniti	FX35	2004	Offroader / SUV	Ağ	3.5	280	Benzin	124426	Avtomat	Arxa	f	15300	9000	4468259	Muzeffer	(055) 208-22-82	2020-11-17
1331	Bərdə	LADA (VAZ)	2106	1983	Sedan	Yaşıl	1.6	75	Benzin	250000	Mexaniki	Arxa	f	4900	2882	4476637	Röyal	(050) 338-56-73	2020-11-17
1332	Bakı	Tofas	Sahin	2004	Sedan	Qara	1.6	92	Benzin	85000	Mexaniki	Ön	f	5100	3000	4476636	Vuqar	(070) 811-21-15	2020-11-17
1333	Bakı	BMW	740	2008	Sedan	Boz	3	326	Benzin	220000	Avtomat	Arxa	f	30600	18000	4463056	Zaur	(055) 555-51-15	2020-11-17
1334	Bakı	Mitsubishi	L 200	2013	Pikap	Yaşıl	2.5	178	Dizel	200000	Mexaniki	Tam	f	59500	35000	4457375	Fuad	(050) 470-55-11	2020-11-17
1336	Bakı	Mercedes	CLA 250	2013	Sedan	Yaş Asfalt	2	211	Benzin	151000	Avtomat	Ön	f	41650	24500	4464938	Elnur	(055) 333-00-04	2020-11-17
1337	Bakı	Mercedes	ML 350	2011	Offroader / SUV	Ağ	3.5	306	Benzin	137000	Avtomat	Tam	f	44200	26000	4476566	Abulfaz	(055) 253-53-38	2020-11-17
1338	Bakı	Kia	Rio	2010	Hetçbek / Liftbek	Qara	1.4	97	Benzin	170000	Mexaniki	Ön	f	10400	6118	4450573	Orxan	(055) 981-93-93	2020-11-17
1339	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Boz	1.4	90	Benzin	198800	Mexaniki	Ön	f	10500	6176	4446495	Ramil	(055) 633-22-12	2020-11-17
1340	Salyan	Volkswagen	Golf	2000	Hetçbek / Liftbek	Qara	1.6	102	Benzin	150000	Avtomat	Ön	f	6900	4059	4476567	Anar	(050) 362-99-81	2020-11-17
1341	Bakı	BMW	528	2013	Sedan	Ağ	2	245	Benzin	165000	Avtomat	Arxa	f	35360	20800	4416887	Nigar	(077) 597-21-11	2020-11-17
1342	Bakı	Dacia	Logan	2009	Minivan	Yaş Asfalt	1.5	106	Dizel	168400	Mexaniki	Ön	f	13300	7824	4459046	David	(050) 753-65-44	2020-11-17
1343	Bakı	Hyundai	i30	2007	Hetçbek / Liftbek	Qara	1.4	109	Benzin	198000	Mexaniki	Ön	f	13200	7765	4476573	Elmedin	(070) 650-41-41	2020-11-17
1344	Şəmkir	Ford	Transit	1999	Yük maşını	Ağ	2.5	85	Dizel	300000	Mexaniki	Arxa	f	20500	12059	4476575	Azər	(050) 544-58-44	2020-11-17
1345	Bakı	BMW	525	1993	Sedan	Göy	2.5	192	Benzin	280000	Avtomat	Arxa	f	7800	4588	4421455	Iskender	(055) 321-71-71	2020-11-17
1346	Bakı	BMW	530	2003	Sedan	Göy	3	231	Benzin	152000	Avtomat	Arxa	f	20400	12000	4476579	Zilli	(051) 983-00-83	2020-11-17
1347	Bakı	Mercedes	E 250	2010	Sedan	Gümüşü	2.2	204	Dizel	165500	Avtomat	Arxa	f	33830	19900	4420768	Əli	(055) 212-36-44	2020-11-17
1348	Bakı	Land Rover	Range Rover	2003	Offroader / SUV	Qara	4.4	286	Benzin	176000	Avtomat	Tam	f	34000	20000	4461098	Xeyal	(070) 631-91-71	2020-11-17
1349	Bakı	Mercedes	C 200	1995	Sedan	Mavi	2	136	Benzin	430000	Avtomat	Arxa	f	7800	4588	4476510	Faiq	(055) 412-06-46	2020-11-17
1350	Bakı	Mercedes	C 220	1998	Sedan	Göy	2.2	143	Dizel	468900	Avtomat	Arxa	f	12800	7529	4476507	Rüfət	(077) 225-03-33	2020-11-17
1351	Bakı	Ford	Transit	2007	Furqon	Ağ	2.4	140	Dizel	158180	Mexaniki	Arxa	f	22900	13471	4476512	Nahid	(050) 350-25-56	2020-11-17
1352	Bakı	Iran Khodro	Azsamand	2007	Sedan	Ağ	1.8	100	Benzin	452000	Mexaniki	Ön	f	6300	3706	4476517	Mamed	(077) 711-27-11	2020-11-17
1353	Bakı	Mercedes	E 250	1990	Sedan	Gümüşü	2.5	150	Dizel	360000	Mexaniki	Arxa	f	6400	3765	4476520	Kamran	(055) 220-26-36	2020-11-17
1354	Sumqayıt	Ford	Transit	1998	Mikroavtobus	Ağ	2.5	76	Dizel	100000	Mexaniki	Tam	f	17500	10294	4476515	Azər 	(050) 304-10-20	2020-11-17
1355	Bakı	BMW	X5	2013	Offroader / SUV	Qara	3	306	Benzin	123000	Avtomat	Arxa	f	64600	38000	4447660	Ruslan	(050) 648-17-18	2020-11-17
1356	Bakı	Mercedes	E 220	2004	Sedan	Göy	2.2	150	Dizel	435500	Avtomat	Arxa	f	15500	9118	4476531	Qurban	(055) 897-87-87	2020-11-17
1357	Bakı	Opel	Astra	2007	Universal	Qızılı	1.4	90	Benzin	151629	Mexaniki	Ön	f	11700	6882	4476519	Eli	(055) 809-20-78	2020-11-17
1359	Bakı	BMW	528	1999	Sedan	Gümüşü	2.8	193	Benzin	328000	Avtomat	Arxa	f	11500	6765	4476536	Aga	(070) 406-06-86	2020-11-17
1360	Ağcabədi	LADA (VAZ)	2106	2004	Sedan	Ağ	1.6	75	Benzin	360553	Mexaniki	Arxa	f	3700	2176	4476544	Natiq	(050) 592-67-16	2020-11-17
1361	Bakı	BMW	530	2004	Sedan	Qara	3	231	Benzin	450508	Avtomat	Arxa	f	22300	13118	4476548	Ilham	(055) 825-86-22	2020-11-17
1362	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	187	Benzin	170000	Avtomat	Ön	f	21900	12882	4476553	Keramet	(070) 750-85-00	2020-11-17
1363	Sumqayıt	Chevrolet	Cruze	2014	Sedan	Qara	1.4	153	Benzin	124500	Avtomat	Ön	f	17000	10000	4476552	Kamil	(055) 606-67-02	2020-11-17
1364	Bakı	LADA (VAZ)	2115	2009	Sedan	Qəhvəyi	1.5	75	Benzin	165000	Mexaniki	Arxa	f	8600	5059	4476554	Faiq	(070) 412-06-46	2020-11-17
1365	Bakı	BMW	530e	2007	Sedan	Göy	3	258	Benzin	200000	Avtomat	Arxa	f	16500	9706	4476555	Ferid	(055) 210-85-11	2020-11-17
1366	Goranboy	LADA (VAZ)	2106	1996	Sedan	Mavi	1.6	75	Benzin	175243	Mexaniki	Arxa	f	3800	2235	4476559	Vusal	(055) 945-97-55	2020-11-17
1367	Bakı	Daewoo	Nexia	1997	Sedan	Ağ	1.5	90	Benzin	422000	Mexaniki	Ön	f	3000	1765	4476563	Ilkin	(050) 894-49-17	2020-11-17
1368	Gəncə	LADA (VAZ)	2106	1990	Sedan	Qara	1.6	75	Benzin	280000	Mexaniki	Arxa	f	3000	1765	4476564	vahid	(055) 717-99-99	2020-11-17
1370	Bakı	BMW	528	2014	Sedan	Yaş Asfalt	2	245	Benzin	160000	Avtomat	Ön	f	39950	23500	4409952	Nurlan	(050) 700-99-99	2020-11-17
1371	Bakı	BMW	528	2014	Sedan	Ağ	2	245	Benzin	114000	Avtomat	Arxa	f	37400	22000	4460797	Cavidan	(070) 349-08-17	2020-11-17
1372	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	84000	Mexaniki	Tam	f	12500	7353	4455556	Ataş	(070) 250-25-07	2020-11-17
1373	Bakı	Nissan	Sunny	2012	Sedan	Ağ	1.5	109	Benzin	164000	Avtomat	Ön	f	12900	7588	4468463	Namik	(050) 642-73-86	2020-11-17
1374	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Göy	1.6	106	Benzin	289000	Mexaniki	Ön	f	11500	6765	4476586	Anar	(070) 522-07-00	2020-11-17
1375	Bakı	Toyota	Prado	2007	Offroader / SUV	Qara	2.7	167	Benzin	170705	Avtomat	Arxa	f	29000	17059	4443083	Elshan	(055) 206-83-83	2020-11-17
1376	Şəmkir	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	130563	Mexaniki	Arxa	f	8550	5029	4476587	Xeyyam	(050) 310-97-90	2020-11-17
1377	Qazax	LADA (VAZ)	2106	1989	Sedan	Bej	1.6	75	Benzin	105000	Mexaniki	Arxa	f	3100	1824	4476588	Azer	(077) 548-21-30	2020-11-17
1378	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Qara	4	282	Benzin	58000	Avtomat	Tam	f	77350	45500	4361285	Ali	(055) 623-17-23	2020-11-17
1379	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.8	150	Benzin	58000	Avtomat	Ön	f	19800	11647	4439083	Elizbar	(050) 295-03-73	2020-11-17
1380	Bakı	Mercedes	E 220	2010	Sedan	Qara	2.2	170	Dizel	226777	Avtomat	Arxa	f	26180	15400	4406405	Hafiz	(055) 698-51-02	2020-11-17
1381	Bakı	BMW	528	2012	Sedan	Boz	2	245	Benzin	130000	Avtomat	Arxa	f	37230	21900	4470695	Zaur	(055) 307-99-99	2020-11-17
1382	İsmayıllı	LADA (VAZ)	2106	1988	Sedan	Ağ	1.3	65	Benzin	111110	Mexaniki	Arxa	f	3300	1941	4476477	elvin	(070) 256-32-41	2020-11-17
1383	Sumqayıt	Opel	Combo	2008	Minivan	Ağ	1.4	90	Benzin	350000	Mexaniki	Ön	f	8500	5000	4476481	Rafael	(070) 327-99-74	2020-11-17
1384	Gəncə	Ford	Transit	2003	Furqon	Ağ	2.4	125	Dizel	42623	Mexaniki	Arxa	f	20800	12235	4476467	Tural	(051) 991-01-99	2020-11-17
1385	Bakı	Hyundai	Elantra	2015	Sedan	Tünd qırmızı	1.8	150	Benzin	81000	Avtomat	Ön	f	19000	11176	4455181	Arif 	(055) 881-08-70	2020-11-17
1386	Gəncə	Ford	Transit	1997	Furqon	Ağ	2.5	76	Dizel	425352	Mexaniki	Arxa	f	16800	9882	4440336	Tural	(055) 422-57-44	2020-11-17
1387	Bakı	Ford	Fusion	2015	Sedan	Boz	1.5	181	Benzin	172000	Avtomat	Ön	f	19500	11471	4476484	Togrul	(070) 478-02-02	2020-11-17
1388	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	4	249	Benzin	250000	Avtomat	Tam	f	40800	24000	4476488	Elmi	(055) 300-89-26	2020-11-17
1389	Şirvan	LADA (VAZ)	2107	2010	Sedan	Gümüşü	1.6	75	Benzin	85000	Mexaniki	Arxa	f	5800	3412	4476490	İlqar	(050) 805-99-87	2020-11-17
1390	Bakı	LADA (VAZ)	Largus	2017	Universal	Qara	1.6	105	Benzin	90000	Mexaniki	Ön	f	16600	9765	4275475	Kamran	(050) 307-66-66	2020-11-17
1391	Bakı	BMW	320	2014	Sedan	Qara	2	184	Benzin	153600	Avtomat	Arxa	f	31960	18800	4451774	Elnur	(050) 210-78-12	2020-11-17
1392	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	159900	Avtomat	Tam	f	43350	25500	4450007	Ramil	(050) 268-89-82	2020-11-17
1393	Bakı	BMW	535	2008	Sedan	Qara	3	306	Benzin	118000	Avtomat	Arxa	f	26500	15588	4476501	Fizuli	(070) 203-36-40	2020-11-17
1394	Xırdalan	Opel	Vectra	1996	Sedan	Bənövşəyi	2	136	Benzin	372384	Avtomat	Ön	f	7500	4412	4476503	Mayil	(070) 311-43-01	2020-11-17
1395	Bakı	Land Rover	RR Sport	2015	Offroader / SUV	Qara	3	340	Benzin	110000	Avtomat	Tam	f	82960	48800	4476214	İqbal	(050) 721-41-36	2020-11-17
1396	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Ağ	1.4	110	Benzin	160000	Mexaniki	Ön	f	13000	7647	4476448	Hesen	(070) 327-31-30	2020-11-17
1397	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	193000	Mexaniki	Ön	f	10700	6294	4470313	Elnar	(055) 816-67-35	2020-11-17
1398	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Ağ	3	190	Benzin	198000	Avtomat	Tam	f	21500	12647	4469950	Taleh	(050) 775-04-04	2020-11-17
1399	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.4	90	Benzin	154500	Mexaniki	Ön	f	10900	6412	4476449	Azer	(050) 477-88-18	2020-11-17
1400	Bakı	Land Rover	RR Sport	2008	Offroader / SUV	Qara	4.2	390	Benzin	155000	Avtomat	Tam	f	33150	19500	4476454	Xalid 	(055) 225-13-30	2020-11-17
1401	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Ağ	1.8	99	Hibrid	102000	Variator	Ön	f	15500	9118	4476457	Bayram	(050) 275-00-61	2020-11-17
1402	Bakı	BMW	525	1998	Sedan	Yaş Asfalt	2.5	143	Dizel	255273	Mexaniki	Arxa	f	5800	3412	4382464	......	(055) 202-33-29	2020-11-17
1403	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	117000	Mexaniki	Arxa	f	7400	4353	4476460	Zaki	(051) 400-17-87	2020-11-17
1404	Bakı	Mercedes	C 240	2000	Sedan	Gümüşü	2.6	177	Benzin	325000	Avtomat	Arxa	f	10800	6353	4414504	Əhməd	(050) 341-31-01	2020-11-17
1405	Şəmkir	LADA (VAZ)	2108	1985	Hetçbek / Liftbek	Qara	1.5	75	Benzin	789000	Mexaniki	Ön	f	3500	2059	4476458	Isgender	(050) 894-11-00	2020-11-17
1406	Sumqayıt	LADA (VAZ)	2115	2000	Sedan	Göy	1.5	78	Benzin	245000	Mexaniki	Ön	f	5300	3118	4476465	Murad 	(050) 612-21-29	2020-11-17
1407	Beyləqan	Mercedes	C 240	1999	Sedan	Göy	2.4	170	Benzin	194000	Avtomat	Arxa	f	13800	8118	4476456	Elçin	(077) 433-54-68	2020-11-17
1408	Bakı	LADA (VAZ)	Priora	2014	Sedan	Ağ	1.6	106	Benzin	110000	Mexaniki	Ön	f	13000	7647	4476447	Ramil	(055) 583-85-96	2020-11-17
1409	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	2.7	167	Benzin	150000	Avtomat	Tam	f	41140	24200	4377725	Umid	(055) 775-85-07	2020-11-17
1410	Ucar	LADA (VAZ)	2106	1995	Sedan	Bej	1.5	65	Benzin	125483	Mexaniki	Arxa	f	4300	2529	4476475	Alik	(050) 584-87-02	2020-11-17
1411	Bakı	Peugeot	607	2004	Sedan	Göy	3	211	Benzin	195000	Avtomat	Ön	f	7900	4647	4217613	Farid 	(050) 680-59-65	2020-11-17
1412	Bakı	Mercedes	B 180	2009	Hetçbek / Liftbek	Qara	1.7	117	Benzin	64000	Avtomat	Ön	f	14300	8412	4426254	Beyler	(070) 809-72-54	2020-11-17
1413	Bakı	Mercedes	E 240	2003	Sedan	Qara	2.6	177	Benzin	195000	Avtomat	Arxa	f	17000	10000	4476476	Ramil	(070) 804-73-93	2020-11-17
1416	Sumqayıt	Ford	Transit	1996	Mikroavtobus	Qırmızı	2.5	76	Dizel	455000	Mexaniki	Arxa	f	13500	7941	4476505	Emin	(050) 716-04-47	2020-11-17
1417	Tovuz	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	96000	Mexaniki	Arxa	f	7300	4294	4442429	Samir	(055) 814-70-24	2020-11-17
1418	Bakı	Nissan	Sunny	2006	Sedan	Gümüşü	1.6	109	Benzin	399600	Avtomat	Ön	f	9500	5588	4476509	Ruslan	(055) 918-10-10	2020-11-17
1414	Bakı	Hyundai	Sonata	2011	Sedan	Ağ	2	274	Benzin	110000	Avtomat	Ön	f	19800	11647	4454597	Zeynal	(055) 990-26-31	2020-11-17
1420	Bakı	Opel	Astra	2007	Universal	Yaş Asfalt	1.3	90	Dizel	197000	Mexaniki	Ön	f	11600	6824	4441606	Samir	(055) 263-06-33	2020-11-17
1423	Bakı	Mercedes	Atego 1828	2001	Yük maşını	Yaşıl	6.4	330	Dizel	756489	Mexaniki	Arxa	f	46000	27059	4476435	Rəşad	(070) 322-54-54	2020-11-17
1424	Zaqatala	Mercedes	Vito 111	2007	Van	Göy	2.2	109	Dizel	700000	Mexaniki	Arxa	f	23800	14000	4476436	Shakir	(055) 278-82-18	2020-11-17
1425	Bakı	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	231453	Avtomat	Ön	f	18700	11000	4433716	Farmin	(070) 288-02-24	2020-11-17
1426	Bakı	Ford	Fusion	2016	Sedan	Göy	1.5	181	Benzin	80000	Avtomat	Ön	f	22800	13412	4445834	Erkin 	(055) 566-02-11	2020-11-17
1427	Bakı	Toyota	Surf	1993	Offroader / SUV	Göy	2.5	140	Dizel	340000	Avtomat	Tam	f	7000	4118	4476440	Ramin	(055) 704-36-41	2020-11-17
1428	Bakı	LADA (VAZ)	Kalina	2015	Universal	Boz	1.6	106	Benzin	115000	Mexaniki	Ön	f	12500	7353	4281707	Eltun	(055) 511-14-89	2020-11-17
1429	Bakı	Land Rover	Discovery	2011	Offroader / SUV	Qara	5	256	Benzin	152000	Avtomat	Tam	f	42670	25100	4476405	Vüqar	(050) 216-05-06	2020-11-17
1430	Bakı	Mercedes	Atego 1224	2008	Yük maşını	Göy	6.3	230	Dizel	545000	Mexaniki	Arxa	f	49300	29000	4476411	İlkin	(070) 243-17-47	2020-11-17
1431	Tovuz	Fiat	Fiorino	2011	Minivan	Ağ	1.4	90	Benzin	169223	Mexaniki	Ön	f	13000	7647	4476422	Ruslan	(070) 388-45-55	2020-11-17
1432	Ağcabədi	LADA (VAZ)	2106	1980	Sedan	Ağ	1.5	65	Benzin	248875	Mexaniki	Arxa	f	3800	2235	4476426	Senan	(070) 240-14-34	2020-11-17
1433	Qazax	Kia	Optima	2015	Sedan	Qara	2	274	Benzin	66234	Avtomat	Ön	f	24200	14235	4476414	Musviq	(055) 277-61-51	2020-11-17
1434	Bakı	Harley-Davidson	Sportster Forty Eight	2014	Motosiklet	Qara	1.2	120	Benzin	15000	Mexaniki	Arxa	f	20800	12235	4476430	Əli	(050) 347-47-47	2020-11-17
1435	Bakı	Hyundai	Elantra	2009	Sedan	Qara	2	136	Benzin	285000	Avtomat	Ön	f	13700	8059	4468082	Tofiq	(055) 616-55-45	2020-11-17
1436	Sumqayıt	Chevrolet	Cruze	2012	Sedan	Boz	1.4	141	Benzin	130000	Avtomat	Ön	f	14600	8588	4442818	Emil	(070) 843-20-90	2020-11-17
1437	Bakı	LADA (VAZ)	2115	2011	Sedan	Narıncı	1.6	80	Benzin	82000	Mexaniki	Ön	f	9400	5529	4476391	Anar	(055) 741-50-55	2020-11-17
1438	Gəncə	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	67000	Mexaniki	Tam	f	11600	6824	4476394	Emin	(070) 284-83-23	2020-11-17
1439	Bakı	Mitsubishi	Outlander	2007	Offroader / SUV	Yaş Asfalt	3	220	Benzin	237000	Avtomat	Tam	f	18000	10588	4476395	Emin	(055) 549-59-89	2020-11-17
1440	Qəbələ	Opel	Corsa	1994	Hetçbek / Liftbek	Qırmızı	1.4	90	Benzin	297000	Avtomat	Ön	f	6000	3529	4476397	Azer	(070) 400-00-44	2020-11-17
1441	Bakı	Land Rover	Range Rover	2011	Offroader / SUV	Ağ	5	510	Benzin	114000	Avtomat	Tam	f	57800	34000	4166789	Emil	(050) 221-01-46	2020-11-17
1442	Bakı	Baic	A113/A115	2014	Hetçbek / Liftbek	Qızılı	1.5	113	Benzin	55000	Avtomat	Ön	f	12200	7176	4382807	Farxan	(050) 200-27-66	2020-11-17
1443	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Yaşıl	1.7	80	Benzin	110000	Mexaniki	Tam	f	12000	7059	4476403	Tagi	(051) 805-15-75	2020-11-17
1444	Gəncə	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	80000	Mexaniki	Arxa	f	6900	4059	4476404	Semed	(055) 248-18-18	2020-11-17
1445	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	256897	Mexaniki	Arxa	f	4650	2735	4476406	Namiq 	(055) 362-80-00	2020-11-17
1446	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	262000	Mexaniki	Ön	f	15000	8824	4476400	Samir	(055) 830-30-99	2020-11-17
1447	Bakı	Daewoo	Lanos	2010	Sedan	Göy	1.3	90	Benzin	222222	Mexaniki	Ön	f	6500	3824	4476408	Malik	(055) 512-85-45	2020-11-17
1448	Bakı	Hyundai	Elantra	1995	Sedan	Ağ	2	128	Benzin	568969	Mexaniki	Arxa	f	5800	3412	4472831	Aydın	(050) 897-46-48	2020-11-17
1449	Bakı	Hyundai	Sonata	2002	Sedan	Ağ	2.4	165	Benzin	207887	Avtomat	Ön	f	6900	4059	4476415	Seymur	(050) 492-76-75	2020-11-17
1450	Bakı	GAZ	33021	2003	Yük maşını	Ağ	2.5	76	Benzin	143000	Mexaniki	Arxa	f	6500	3824	4407691	Ramil	(077) 310-18-99	2020-11-17
1452	Bakı	BMW	320	2001	Kupe	Göy	2.2	170	Benzin	122000	Avtomat	Ön	f	12800	7529	4430044	Eli	(050) 288-37-47	2020-11-17
1453	Gəncə	UAZ	31512	1985	Offroader / SUV	Yaşıl	2.4	76	Benzin	300000	Mexaniki	Tam	f	4300	2529	4476442	Qurban	(055) 880-14-44	2020-11-17
1454	Bakı	Land Rover	Range Rover	2015	Offroader / SUV	Qara	5	510	Benzin	71000	Avtomat	Tam	f	178500	105000	4410709	Razi	(050) 209-45-85	2020-11-17
1457	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	106000	Avtomat	Ön	f	14800	8706	4468836	Nicat	(070) 969-69-60	2020-11-17
1458	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	188000	Avtomat	Ön	f	12000	7059	4476371	Nizami	(050) 220-88-16	2020-11-17
1459	Gəncə	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	174000	Mexaniki	Ön	f	10800	6353	4476369	Zamin	(055) 269-20-39	2020-11-17
1460	Bakı	Kia	Koup	2015	Kupe	Qara	1.6	204	Benzin	19500	Avtomat	Ön	f	20400	12000	4447436	Sahib	(051) 677-67-55	2020-11-17
1461	Bakı	Hyundai	Santa Fe	2015	Offroader / SUV	Ağ	2	184	Dizel	42000	Avtomat	Ön	f	35700	21000	4476377	Sirus	(050) 404-19-01	2020-11-17
1462	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	139000	Avtomat	Tam	f	45050	26500	4443181	Rəvan	(070) 889-10-14	2020-11-17
1463	Bakı	Hyundai	Sonata	2016	Sedan	Ağ	2.4	166	Benzin	42035	Avtomat	Ön	f	28300	16647	4476374	 Nofəl	(055) 223-76-16	2020-11-17
1464	Qəbələ	Mercedes	C 180	1993	Sedan	Boz	1.8	122	Benzin	200000	Avtomat	Arxa	f	7700	4529	4476378	Ceyhun	(050) 670-10-20	2020-11-17
1465	Bakı	Mercedes	Vito 111	2008	Van	Ağ	2.2	109	Dizel	245000	Mexaniki	Arxa	f	26800	15765	4471823	TALIB	(077) 553-49-03	2020-11-17
1466	Gəncə	LADA (VAZ)	2106	1991	Sedan	Ağ	1.3	65	Benzin	450580	Mexaniki	Arxa	f	4050	2382	4476381	Teymur	(055) 201-79-78	2020-11-17
1467	Bakı	Mercedes	Actros 1840	2007	Dartqı	Ağ	11	315	Dizel	360000	Mexaniki	Arxa	f	52000	30588	4476384	Fuad	(055) 244-09-09	2020-11-17
1468	Bakı	Mercedes	E 220	2005	Sedan	Gümüşü	2.2	170	Dizel	250500	Avtomat	Arxa	f	17500	10294	4476380	Elcin	(055) 365-63-19	2020-11-17
1469	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.8	150	Benzin	13800	Avtomat	Ön	f	21700	12765	4389214	Ramil	(070) 664-77-07	2020-11-17
1419	Sumqayıt	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	77000	Avtomat	Ön	f	22500	13235	4448558	Ramil	(070) 300-58-51	2020-11-17
1451	Salyan	Mitsubishi	L 200	2006	Pikap	Göy	2.5	136	Dizel	400000	Mexaniki	Tam	f	17800	10471	4475396	Resad	(055) 290-04-34	2020-11-17
1456	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	180000	Mexaniki	Ön	f	12300	7235	4463831	Yusif	(055) 313-21-21	2020-11-17
1422	Bakı	Nissan	Altima	2013	Sedan	Ağ	2.5	182	Benzin	134431	Avtomat	Ön	f	23600	13882	4456428	Natiq 	(077) 386-78-08	2020-11-17
1470	Bakı	Porsche	Panamera 4S	2011	Hetçbek / Liftbek	Ağ	3.6	300	Benzin	140234	Avtomat	Tam	f	56100	33000	4476366	Elsen	(055) 713-73-66	2020-11-17
1471	Bakı	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	218563	Avtomat	Arxa	f	11500	6765	4458564	Niyameddin	(055) 610-20-07	2020-11-17
1472	Lənkəran	Mercedes	S 320	2001	Sedan	Ağ	3.2	224	Benzin	240000	Avtomat	Arxa	f	15500	9118	4476386	Azer	(051) 960-06-00	2020-11-17
1473	Bakı	Toyota	Land Cruiser	2012	Offroader / SUV	Qara	4	282	Benzin	98000	Avtomat	Tam	f	66130	38900	4466639	Qadir	(050) 319-19-16	2020-11-17
1474	Bakı	UAZ	Patriot	2019	Offroader / SUV	Qara	2.7	150	Benzin	750	Mexaniki	Tam	f	32400	19059	4476334	Sabir	(050) 635-97-57	2020-11-17
1475	Gəncə	Hyundai	Sonata	2011	Sedan	Qara	2	274	Benzin	160000	Avtomat	Ön	f	19700	11588	4476335	Elmar	(055) 589-66-66	2020-11-17
1476	Bakı	LADA (VAZ)	2106	1999	Sedan	Yaşıl	1.5	65	Benzin	116000	Mexaniki	Arxa	f	4900	2882	4476141	Dato	(077) 517-12-02	2020-11-17
1477	Bakı	Mercedes	C 240	1998	Sedan	Göy	2.4	170	Benzin	373000	Avtomat	Arxa	f	12000	7059	4440032	Amil	(055) 596-21-71	2020-11-17
1478	Bakı	Opel	Astra	2007	Universal	Gümüşü	1.7	110	Dizel	200000	Mexaniki	Ön	f	11500	6765	4476341	Səxavət	(055) 815-06-07	2020-11-17
1479	Bakı	Mercedes	S 350	2014	Sedan	Qara	3	249	Dizel	129000	Avtomat	Arxa	f	110330	64900	4476345	Emin	(050) 331-25-45	2020-11-17
1480	Şəki	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	222000	Mexaniki	Arxa	f	5600	3294	4476347	Tural	(055) 516-19-18	2020-11-17
1481	Bakı	BMW	528	2012	Sedan	Qara	2	245	Benzin	95000	Avtomat	Arxa	f	35190	20700	4338812	Əhməd	(050) 586-86-05	2020-11-17
1482	Bakı	Ford	Transit	1997	Yük maşını	Ağ	2.5	96	Dizel	302000	Mexaniki	Arxa	f	18500	10882	4476350	Tahir	(055) 437-31-88	2020-11-17
1483	Gəncə	Toyota	Prius	2007	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	278000	Avtomat	Ön	f	11700	6882	4476355	Edalet	(050) 419-30-85	2020-11-17
1484	Masallı	BMW	750	2005	Sedan	Göy	4.8	367	Benzin	289000	Avtomat	Arxa	f	22100	13000	4387961	Merhemet	(050) 834-99-99	2020-11-17
1485	Sumqayıt	GAZ	3302-744	2001	Yük maşını	Boz	2.4	96	Benzin	168000	Mexaniki	Arxa	f	7900	4647	4476356	NUREDDİN	(050) 321-64-16	2020-11-17
1486	Göyçay	Daewoo	Gentra	2014	Sedan	Boz	1.5	107	Benzin	300000	Mexaniki	Ön	f	8000	4706	4476352	Orxan	(051) 581-11-81	2020-11-17
1487	Masallı	Mercedes	E 280	2000	Sedan	Göy	2.8	193	Benzin	313000	Avtomat	Arxa	f	16800	9882	4371506	meheremd	(055) 942-63-63	2020-11-17
1488	Bakı	BMW	520	1997	Sedan	Qara	2	150	Benzin	444000	Avtomat	Arxa	f	11300	6647	4037663	Taleh	(055) 207-59-24	2020-11-17
1489	Naxçıvan	Kia	Optima	2015	Sedan	Qara	2	274	Benzin	51000	Avtomat	Ön	f	30500	17941	4476362	Tuncel	(070) 948-88-28	2020-11-17
1490	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Gümüşü	3.2	200	Dizel	185000	Avtomat	Tam	f	32000	18824	4476365	Murad	(050) 318-53-61	2020-11-17
1491	Bakı	Toyota	Camry	2014	Sedan	Qara	2.5	181	Benzin	135000	Avtomat	Ön	f	43010	25300	4476370	ibrahim	(055) 211-90-42	2020-11-17
1492	Bakı	Toyota	Land Cruiser	2014	Offroader / SUV	Gümüşü	4.2	130	Dizel	23000	Mexaniki	Tam	f	54400	32000	2447065	ALIK	(050) 210-01-96	2020-11-17
1493	Gəncə	Chevrolet	Cruze	2014	Sedan	Yaş Asfalt	1.4	141	Benzin	94000	Avtomat	Ön	f	15200	8941	4433463	Rashad	(055) 655-55-69	2020-11-17
1494	Bakı	Nissan	Pathfinder	2014	Offroader / SUV	Qara	3.5	249	Benzin	130000	Avtomat	Tam	f	30000	17647	4409769	Sunay	(050) 609-77-92	2020-11-17
1495	Bakı	Mercedes	E 240	2003	Sedan	Gümüşü	2.6	177	Benzin	229700	Avtomat	Arxa	f	15900	9353	4452697	Nariman	(055) 539-80-84	2020-11-17
1496	Bakı	Ford	Fusion	2013	Sedan	Qara	2	245	Benzin	81000	Avtomat	Ön	f	21500	12647	4457221	Togrul	(051) 396-96-76	2020-11-17
1497	Qusar	Opel	Astra	1998	Hetçbek / Liftbek	Tünd qırmızı	1.8	115	Benzin	390000	Mexaniki	Ön	f	72000	42353	4476387	Tahir	(070) 325-20-06	2020-11-17
1498	Bakı	Toyota	Prado	2004	Offroader / SUV	Gümüşü	2.7	163	Benzin	119000	Avtomat	Tam	f	30430	17900	4333732	Huseyn	(055) 258-54-52	2020-11-17
1500	Bakı	Mercedes	E 320	2001	Sedan	Gümüşü	3.2	224	Dizel	230000	Avtomat	Arxa	f	15700	9235	4476288	cavid	(055) 218-52-00	2020-11-17
1501	Bakı	Hyundai	Sonata	2015	Sedan	Ağ	2	274	Benzin	81000	Avtomat	Ön	f	29750	17500	4476287	Murad	(055) 719-11-88	2020-11-17
1502	Gəncə	Mercedes	E 200	2009	Sedan	Qara	1.8	184	Benzin	248000	Avtomat	Arxa	f	31000	18235	4476290	Altay	(055) 461-28-21	2020-11-17
1503	Bakı	Chevrolet	Cruze	2015	Sedan	Göy	1.4	141	Benzin	66000	Avtomat	Ön	f	14200	8353	4380918	Renat	(077) 546-31-49	2020-11-17
1504	Bakı	Honda	CR-V	1997	Offroader / SUV	Mavi	2	161	Benzin	105000	Avtomat	Tam	f	10500	6176	4476297	Vusal	(070) 911-47-79	2020-11-17
1506	Bakı	LADA (VAZ)	2107	2000	Sedan	Tünd qırmızı	1.6	75	Benzin	300000	Mexaniki	Arxa	f	2200	1294	4467471	Aqil	(070) 257-55-45	2020-11-17
1507	Bakı	Kia	Cerato	2008	Sedan	Qara	2	122	Benzin	224000	Avtomat	Ön	f	12650	7441	4476300	Etibar	(050) 535-63-36	2020-11-17
1508	Bakı	Kia	Optima	2012	Sedan	Qara	2	274	Benzin	108000	Avtomat	Arxa	f	20800	12235	4476303	Abbas	(051) 951-00-06	2020-11-17
1509	Bakı	Mercedes	E 200	2019	Sedan	Qara	2	184	Benzin	49000	Avtomat	Arxa	f	87550	51500	4323717	Perviz 	(050) 230-44-46	2020-11-17
1510	Bakı	Mercedes	Vito	2009	Van	Ağ	2.2	175	Dizel	254000	Avtomat	Ön	f	30500	17941	4476301	Orxan	(050) 272-36-36	2020-11-17
1511	Bakı	BMW	525	2004	Sedan	Göy	2.5	218	Benzin	243780	Avtomat	Arxa	f	18500	10882	4476318	Elvin	(050) 203-00-06	2020-11-17
1512	Bakı	LADA (VAZ)	2106	2003	Sedan	Göy	1.6	75	Benzin	222222	Mexaniki	Arxa	f	8500	5000	4425656	Nail	(070) 728-19-80	2020-11-17
1513	Gəncə	LADA (VAZ)	21099	1999	Sedan	Gümüşü	1.5	75	Benzin	320000	Mexaniki	Ön	f	4500	2647	4476324	Rovşən	(055) 797-70-79	2020-11-17
1514	Bakı	Nissan	Tiida	2012	Hetçbek / Liftbek	Qara	1.5	110	Benzin	83000	Avtomat	Ön	f	14300	8412	4476327	Nihat	(077) 517-05-23	2020-11-17
1515	Bakı	Lexus	RX 300	2001	Offroader / SUV	Gümüşü	3	201	Benzin	489630	Avtomat	Tam	f	12000	7059	4476237	Semistan	(070) 295-87-59	2020-11-17
1516	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	185000	Mexaniki	Tam	f	11000	6471	4476238	Elsen	(050) 207-02-09	2020-11-17
1517	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2.4	178	Benzin	128000	Avtomat	Ön	f	31500	18529	4476240	Fazil	(050) 970-72-70	2020-11-17
1518	Bakı	Mercedes	E 320	2001	Sedan	Ağ	3.2	224	Benzin	270000	Avtomat	Arxa	f	13700	8059	4476243	Zefer	(070) 367-77-60	2020-11-17
1520	Bakı	Mercedes	E 220	2006	Universal	Gümüşü	2.2	170	Dizel	248000	Avtomat	Arxa	f	23500	13824	4476233	Aydın	(055) 512-87-23	2020-11-17
1521	Bakı	BMW	X5	2017	Offroader / SUV	Qara	3	306	Benzin	66000	Avtomat	Tam	f	93330	54900	4476250	Rəşad	(050) 283-33-30	2020-11-17
1522	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	123000	Avtomat	Ön	f	17200	10118	4476251	Fariz	(050) 254-48-62	2020-11-17
1523	Xırdalan	Hyundai	Sonata	2010	Sedan	Qara	2.4	178	Benzin	155037	Avtomat	Ön	f	17800	10471	4476256	Roman	(070) 405-68-65	2020-11-17
1524	Bakı	Honda	CR-V	2000	Offroader / SUV	Qara	2	178	Benzin	378000	Avtomat	Tam	f	9350	5500	4445737	Muxtar	(050) 201-21-49	2020-11-17
1525	Bakı	BMW	528	1997	Sedan	Bənövşəyi	2.8	192	Benzin	442408	Avtomat	Arxa	f	11000	6471	4475139	Nizami	(055) 258-16-76	2020-11-17
1526	Sumqayıt	Changan	Benni	2013	Hetçbek / Liftbek	Göy	1	71	Benzin	59623	Robotlaşdırılmış	Ön	f	8400	4941	4450992	Asif	(050) 773-73-49	2020-11-17
1527	Bakı	Hyundai	ix35	2013	Offroader / SUV	Ağ	2	166	Benzin	108000	Avtomat	Tam	f	30000	17647	4446071	Samir	(050) 230-04-17	2020-11-17
1528	Bakı	Ford	Fusion	2014	Sedan	Yaş Asfalt	2	245	Benzin	103672	Avtomat	Ön	f	18500	10882	4422746	Natiq	(050) 205-88-86	2020-11-17
1529	Ağdam	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	43000	Mexaniki	Arxa	f	7900	4647	4476263	Şəmsəddin	(050) 565-49-09	2020-11-17
1530	Bakı	Moskvich	412	1974	Sedan	Sarı	1.5	75	Benzin	675321	Mexaniki	Arxa	f	1200	706	4476267	Sahib	(050) 673-73-32	2020-11-17
1531	Gəncə	Mercedes	E 200	2015	Sedan	Qara	2.2	204	Dizel	145000	Avtomat	Arxa	f	50830	29900	4476266	Bəhruz	(050) 477-21-21	2020-11-17
1532	Ağdaş	LADA (VAZ)	21099	1998	Sedan	Bənövşəyi	1.5	75	Benzin	100000	Mexaniki	Ön	f	5500	3235	4476271	Ramin	(050) 383-96-60	2020-11-17
1533	Bakı	Hyundai	Tucson	2008	Sedan	Qara	2	141	Benzin	133000	Avtomat	Tam	f	16300	9588	4458477	Qara	(050) 680-04-76	2020-11-17
1534	Bakı	Mercedes	C 180	1997	Sedan	Boz	1.8	122	Benzin	295055	Avtomat	Arxa	f	10600	6235	4476279	Elmir	(077) 308-45-32	2020-11-17
1535	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	133000	Avtomat	Tam	f	20000	11765	4476286	Elmir	(050) 342-28-15	2020-11-17
1537	Bakı	Mercedes	E 230	1996	Sedan	Ağ	2.3	150	Benzin	385000	Avtomat	Arxa	f	12000	7059	4416370	Ramin	(055) 340-77-03	2020-11-17
1538	Bakı	Kia	Optima	2012	Sedan	Ağ	2	165	Benzin	160000	Avtomat	Ön	f	24500	14412	4418951	Kamil 	(055) 934-34-84	2020-11-17
1540	Sumqayıt	Ford	Focus	2008	Hetçbek / Liftbek	Yaş Asfalt	1.8	130	Benzin	260000	Mexaniki	Ön	f	11000	6471	4476329	Sabir	(077) 763-05-75	2020-11-17
1541	Sumqayıt	Mercedes	E 250	1992	Sedan	Qara	2.5	150	Dizel	250458	Mexaniki	Arxa	f	6200	3647	4476333	yusif	(055) 312-01-77	2020-11-17
1542	Bakı	Ford	Focus	2008	Universal	Gümüşü	1.6	109	Dizel	181000	Mexaniki	Arxa	f	11500	6765	4476331	Ziya.	(070) 629-99-58	2020-11-17
1543	Bakı	Hyundai	Elantra	2007	Sedan	Qara	1.6	110	Dizel	170000	Avtomat	Ön	f	13900	8176	4149739	Elxan	(051) 907-66-95	2020-11-17
1546	Bakı	Kia	Cerato	2011	Hetçbek / Liftbek	Qara	1.6	132	Benzin	145000	Avtomat	Ön	f	14900	8765	4476218	Zaur	(055) 391-31-51	2020-11-17
1547	Quba	Ford	Transit	1998	Furqon	Ağ	2.4	200	Dizel	200000	Mexaniki	Arxa	f	11000	6471	4476216	Xeyal	(050) 879-46-66	2020-11-17
1548	Bakı	Kia	Rio	2013	Sedan	Ağ	1.4	107	Benzin	190000	Avtomat	Ön	f	15500	9118	4442337	Şamil	(077) 307-62-55	2020-11-17
1549	Sumqayıt	Mercedes	190	1992	Sedan	Qırmızı	2	122	Benzin	167000	Avtomat	Arxa	f	5300	3118	4476222	Tahir	(050) 751-96-37	2020-11-17
1550	Bakı	Opel	Astra	1999	Universal	Qara	1.6	101	Benzin	390000	Mexaniki	Ön	f	7500	4412	4476213	Musfiq	(055) 555-63-90	2020-11-17
1551	Lənkəran	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	125660	Mexaniki	Ön	f	9000	5294	4476223	Mahir	(050) 374-87-60	2020-11-17
1552	Bakı	Opel	Astra	1996	Universal	Boz	1.6	101	Benzin	235000	Avtomat	Ön	f	4300	2529	4476228	Zaur	(050) 870-68-09	2020-11-17
1553	Bakı	Mercedes	E 200	2011	Sedan	Ağ	1.8	184	Benzin	132000	Avtomat	Arxa	f	35530	20900	4192572	ILHAM	(050) 220-37-88	2020-11-17
1554	Xırdalan	BMW	525	2001	Sedan	Qara	2.5	192	Benzin	353736	Avtomat	Arxa	f	13700	8059	4476230	Maqa	(070) 405-52-36	2020-11-17
1555	Sumqayıt	LADA (VAZ)	Priora	2015	Sedan	Göy	1.6	106	Benzin	109027	Mexaniki	Arxa	f	13800	8118	4455612	MEHMAN	(055) 737-15-19	2020-11-17
1556	Bakı	Mercedes	E 280	1997	Sedan	Gümüşü	2.8	192	Benzin	268000	Avtomat	Arxa	f	10800	6353	4476070	ELÇİN	(050) 724-33-73	2020-11-17
1557	Quba	Volvo	XC 60	2015	Offroader / SUV	Göy	3	304	Benzin	59000	Avtomat	Tam	f	48450	28500	4221953	Zöhrab	(050) 333-76-55	2020-11-17
1558	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Qara	1.3	90	Dizel	203000	Mexaniki	Ön	f	12500	7353	4476181	Hüseyn	(051) 460-23-23	2020-11-17
1559	Tovuz	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	200000	Mexaniki	Arxa	f	5500	3235	4476182	Nadir	(050) 970-27-49	2020-11-17
1560	Mingəçevir	LADA (VAZ)	2107	2009	Sedan	Qırmızı	1.6	75	Benzin	101000	Mexaniki	Arxa	f	7800	4588	4476184	SABIR	(055) 499-01-44	2020-11-17
1561	Bakı	Opel	Astra	1998	Universal	Yaşıl	1.6	101	Benzin	233800	Mexaniki	Ön	f	8200	4824	4476185	Rövşən	(051) 727-30-62	2020-11-17
1562	Şərur	GAZ	3110	2006	Sedan	Boz	2.4	131	Benzin	150000	Mexaniki	Arxa	f	5600	3294	4476186	ramiz	(050) 317-33-30	2020-11-17
1563	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	120000	Avtomat	Ön	f	14900	8765	4476187	Elnur	(070) 500-01-39	2020-11-17
1564	Bakı	Mercedes	E 220	2000	Sedan	Yaşıl	2.2	143	Dizel	376000	Avtomat	Arxa	f	15600	9176	4463885	Farid	(055) 939-00-01	2020-11-17
1565	Qusar	Audi	80	1992	Sedan	Tünd qırmızı	1.8	105	Benzin	285320	Mexaniki	Ön	f	5500	3235	4476188	Asif	(070) 240-36-36	2020-11-17
1566	Yevlax	LADA (VAZ)	2107	2004	Sedan	Ağ	1.5	65	Benzin	94654	Mexaniki	Arxa	f	5500	3235	4476189	Rauf	(055) 642-72-60	2020-11-17
1567	Bakı	Mercedes	190	1990	Sedan	Yaş Asfalt	1.8	122	Benzin	210000	Mexaniki	Arxa	f	4900	2882	4476193	abbas	(050) 540-32-75	2020-11-17
1568	Tovuz	Mercedes	C 230	1999	Sedan	Ağ	2.3	193	Benzin	216000	Avtomat	Arxa	f	12500	7353	4476196	Elçin	(070) 755-22-62	2020-11-17
1569	Göyçay	LADA (VAZ)	2107	1990	Sedan	Bej	1.5	65	Benzin	150000	Mexaniki	Arxa	f	3100	1824	4476199	Revan	(050) 996-83-80	2020-11-17
1570	Şirvan	Mercedes	E 220	1996	Sedan	Ağ	2.2	146	Dizel	515000	Avtomat	Arxa	f	8300	4882	4476201	Əli	(055) 516-55-36	2020-11-17
1539	Şabran	HOWO	Sinotruk	2013	Yük maşını	Ağ	10	376	Dizel	197200	Mexaniki	Arxa	f	58000	34118	4472924	Samir 	(077) 520-91-43	2020-11-17
1536	Sumqayıt	Opel	Vectra	1997	Sedan	Narıncı	2	136	Benzin	222000	Avtomat	Ön	f	7500	4412	4469832	ramil	(050) 508-90-09	2020-11-17
1571	Bakı	Mercedes	A 160	2004	Hetçbek / Liftbek	Qırmızı	1.6	102	Benzin	186590	Avtomat	Ön	f	7000	4118	4476203	Faiq	(055) 780-70-71	2020-11-17
1572	Quba	Ford	Transit	1998	Furqon	Ağ	2.5	76	Dizel	300000	Mexaniki	Arxa	f	16800	9882	4442580	Abas	(070) 590-36-26	2020-11-17
1573	Bakı	Hyundai	i30	2011	Hetçbek / Liftbek	Qara	1.6	112	Benzin	97000	Avtomat	Ön	f	12500	7353	4476205	Zaur	(050) 870-40-38	2020-11-17
1574	Bakı	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	247000	Avtomat	Arxa	f	12500	7353	4476207	Rəhim	(070) 670-75-07	2020-11-17
1575	Bakı	Opel	Vita	1996	Hetçbek / Liftbek	Narıncı	1.4	75	Benzin	197000	Avtomat	Ön	f	5777	3398	4473289	Timur	(070) 200-55-49	2020-11-17
1576	Masallı	Kia	Ceed	2008	Universal	Mavi	1.6	115	Dizel	172000	Mexaniki	Ön	f	13200	7765	4476208	Ramin	(050) 329-27-24	2020-11-17
1577	Gəncə	Nissan	Sentra	2013	Sedan	Ağ	1.8	140	Benzin	119214	Avtomat	Ön	f	17600	10353	4476209	Elvin	(070) 506-01-96	2020-11-17
1578	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2.4	178	Benzin	219000	Avtomat	Ön	f	16000	9412	4476210	Emin	(050) 856-21-35	2020-11-17
1579	Bakı	Toyota	Land Cruiser	2007	Offroader / SUV	Mavi	4.5	235	Benzin	116000	Avtomat	Tam	f	25500	15000	4467172	Əziz	(050) 211-81-84	2020-11-17
1580	Bakı	GMC	Terrain	2019	Offroader / SUV	Göy	1.5	180	Benzin	12950	Avtomat	Ön	f	41990	24700	4429527	Ali	(055) 254-20-70	2020-11-17
1581	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	163600	Avtomat	Ön	f	15800	9294	4466819	Hicran	(055) 238-76-76	2020-11-17
1582	Bakı	Land Rover	RR Sport	2011	Offroader / SUV	Qara	3	245	Dizel	150000	Avtomat	Tam	f	28560	16800	4458369	Avtosalon "OnBrend Cars"	(055) 522-02-22	2020-11-17
1583	Bakı	BMW	328	2015	Sedan	Yaş Asfalt	2	245	Benzin	105000	Avtomat	Arxa	f	37400	22000	4466142	Firdovsi	(077) 420-50-55	2020-11-17
1584	Bakı	Chevrolet	Malibu	2016	Sedan	Qara	1.5	160	Benzin	96000	Avtomat	Ön	f	26500	15588	4433808	Aqil	(055) 651-04-40	2020-11-17
1585	Sumqayıt	Mercedes	E 300	2014	Sedan	Göy	2.2	204	Dizel	105000	Avtomat	Arxa	f	50150	29500	4420034	Emil	(055) 216-21-67	2020-11-17
1586	Bakı	Honda	CR-V	2019	Offroader / SUV	Yaş Asfalt	2.4	180	Benzin	9700	Avtomat	Tam	f	45730	26900	4441781	Orxan	(055) 565-65-24	2020-11-17
1587	Bakı	LADA (VAZ)	Niva	2016	Offroader / SUV	Göy	1.7	80	Benzin	81000	Mexaniki	Tam	f	13500	7941	4451245	Pervin 	(077) 555-30-51	2020-11-17
1589	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2.4	178	Benzin	73000	Avtomat	Ön	f	32900	19353	4438326	RUFET	(055) 283-44-00	2020-11-17
1590	Sumqayıt	Hyundai	i30	2016	Hetçbek / Liftbek	Gümüşü	1.6	195	Dizel	126000	Avtomat	Ön	f	23300	13706	4211417	Ruslan	(051) 776-96-96	2020-11-17
1591	Sumqayıt	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	355866	Mexaniki	Arxa	f	4900	2882	4476149	Сатычы	(051) 366-47-47	2020-11-17
1592	Bakı	Mercedes	E 240	1999	Sedan	Qırmızı	2.4	170	Benzin	276800	Avtomat	Arxa	f	12000	7059	4476153	Semed	(050) 641-17-57	2020-11-17
1593	Bakı	Kia	Optima	2014	Sedan	Boz	2	274	Benzin	96000	Avtomat	Ön	f	23555	13856	4476152	YUSIF	(055) 935-86-86	2020-11-17
1594	Bakı	BMW	X5	2007	Offroader / SUV	Qara	3	306	Benzin	237059	Avtomat	Tam	f	32300	19000	4476099	Zaur	(055) 305-88-44	2020-11-17
1595	Bakı	Hyundai	Azera	2013	Sedan	Ağ	2.4	180	Benzin	121000	Avtomat	Ön	f	28000	16471	4459115	Elnur	(055) 943-99-22	2020-11-17
1596	Gəncə	Mercedes	C 220	1995	Sedan	Gümüşü	2.2	146	Benzin	350000	Avtomat	Arxa	f	7600	4471	4450957	ilkin	(070) 712-23-23	2020-11-17
1597	Bakı	Mercedes	208 D	1993	Yük maşını	Ağ	2.7	125	Dizel	974857	Mexaniki	Arxa	f	6600	3882	4476159	Elsevər	(070) 612-11-38	2020-11-17
1598	Bakı	Audi	Q7	2013	Offroader / SUV	Ağ	3	333	Benzin	160000	Avtomat	Tam	f	45900	27000	4419779	Samir	(055) 588-07-98	2020-11-17
1599	Bakı	BMW	540	1989	Sedan	Qırmızı	4	306	Benzin	201000	Mexaniki	Arxa	f	15000	8824	4476066	Vidadi	(050) 367-33-42	2020-11-17
1600	Sumqayıt	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	240000	Mexaniki	Arxa	f	6900	4059	4476162	Ramil	(050) 777-39-39	2020-11-17
1601	Bakı	Opel	Vectra	1998	Sedan	Boz	1.6	101	Benzin	260000	Avtomat	Ön	f	5900	3471	4452305	Arif	(050) 841-12-60	2020-11-17
1602	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	4	249	Benzin	201000	Avtomat	Tam	f	41000	24118	4223066	Hamiz	(050) 684-59-19	2020-11-17
1603	Bakı	BMW	535	2015	Sedan	Qara	3	306	Benzin	92000	Avtomat	Arxa	f	52700	31000	4476101	Rufat	(077) 333-33-03	2020-11-17
1604	Lənkəran	Mercedes	C 240	1998	Sedan	Qara	2.4	170	Benzin	226000	Avtomat	Arxa	f	10300	6059	4476120	İkram	(050) 979-29-99	2020-11-17
1605	Bakı	Fiat	Tempra	1996	Sedan	Mavi	1.8	111	Benzin	200000	Mexaniki	Ön	f	1700	1000	4476124	Elsburus	(077) 465-43-72	2020-11-17
1606	Sumqayıt	Mercedes	C 220	1995	Sedan	Boz	2.2	150	Dizel	196000	Mexaniki	Arxa	f	6500	3824	4476125	Akif	(050) 751-95-48	2020-11-17
1607	Gəncə	Daewoo	Racer	1997	Sedan	Boz	1.5	80	Benzin	211341	Mexaniki	Ön	f	6000	3529	4476126	Vasif	(055) 480-69-79	2020-11-17
1608	Gəncə	Mercedes	E 230	1986	Sedan	Boz	2.3	150	Benzin	213546	Avtomat	Arxa	f	8800	5176	4476128	Qudret	(055) 402-04-44	2020-11-17
1609	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	90000	Mexaniki	Tam	f	13500	7941	4476131	Elgiz	(055) 232-00-92	2020-11-17
1610	Gəncə	Kia	Cerato	2013	Sedan	Ağ	1.6	130	Benzin	189000	Avtomat	Ön	f	16800	9882	4476036	Seymur	(055) 300-32-88	2020-11-17
1611	Kürdəmir	Ford	Transit	2002	Mikroavtobus	Boz	2	100	Dizel	460471	Mexaniki	Ön	f	18700	11000	4419361	Osman 	(051) 488-51-55	2020-11-17
1612	Bakı	Opel	Astra	2010	Universal	Gümüşü	1.4	90	Benzin	165000	Mexaniki	Ön	f	13000	7647	4476129	Seymur	(055) 756-30-09	2020-11-17
1613	Sumqayıt	Mercedes	E 230	1996	Sedan	Göy	2.3	150	Benzin	321000	Avtomat	Arxa	f	8500	5000	4461148	Elcin	(070) 422-52-02	2020-11-17
1614	İmişli	Mercedes	E 200	1994	Sedan	Göy	2	122	Dizel	20000	Mexaniki	Arxa	f	9900	5824	4476135	Pervin	(050) 891-72-05	2020-11-17
1615	Bakı	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.7	185	Benzin	159000	Avtomat	Tam	f	19500	11471	4476134	Aga	(050) 432-32-49	2020-11-17
1617	Bakı	LADA (VAZ)	2108	1994	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	300000	Mexaniki	Ön	f	5700	3353	4476139	Ziyad	(070) 535-32-52	2020-11-17
1618	Kürdəmir	Opel	Astra	1999	Universal	Qara	2	136	Dizel	30000	Mexaniki	Ön	f	7300	4294	4476140	Teymur	(050) 689-52-29	2020-11-17
1619	Qəbələ	Ford	Transit	2001	Furqon	Ağ	2.4	120	Dizel	565890	Mexaniki	Arxa	f	18900	11118	4475364	Samir	(051) 442-96-54	2020-11-17
1620	Bakı	Chevrolet	Orlando	2011	Minivan	Boz	1.8	143	Benzin	252000	Mexaniki	Ön	f	14000	8235	4443085	Elxan	(077) 420-80-80	2020-11-17
1621	Yevlax	BMW	X5	2000	Offroader / SUV	Gümüşü	3	231	Benzin	182000	Avtomat	Arxa	f	14500	8529	4476142	Kenan	(055) 412-44-79	2020-11-17
1616	Bakı	Mercedes	E 200	2010	Sedan	Qara	1.8	184	Benzin	189000	Avtomat	Arxa	f	29410	16800	4473436	Kamran	(055) 333-00-58	2020-11-17
1622	Xırdalan	Opel	Vectra	1997	Sedan	Qızılı	1.6	125	Benzin	473484	Avtomat	Ön	f	8400	4941	4476143	elcin	(070) 811-00-17	2020-11-17
1623	Bakı	BMW	320	2016	Sedan	Göy	2	190	Benzin	45600	Avtomat	Arxa	f	42500	25000	4461698	Taleh	(055) 211-92-66	2020-11-17
1624	Xudat	Toyota	Prius	2007	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	200000	Mexaniki	Ön	f	11500	6765	4465028	Mehemmed	(055) 282-53-75	2020-11-17
1625	Zaqatala	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	199000	Mexaniki	Ön	f	10500	6176	4407374	vusal	(070) 233-38-03	2020-11-17
1626	Zaqatala	Nissan	Qashqai	2008	Offroader / SUV	Gümüşü	2	140	Benzin	196835	Avtomat	Ön	f	16000	9412	4476174	Namiq	(050) 517-39-03	2020-11-17
1627	Bakı	Mercedes	C 180	2000	Sedan	Yaş Asfalt	1.8	122	Benzin	355000	Avtomat	Arxa	f	12500	7353	4476177	Fərid	(050) 556-55-66	2020-11-17
1628	Sumqayıt	Mercedes	190	1990	Sedan	Yaş Asfalt	2	122	Benzin	344000	Avtomat	Arxa	f	4700	2765	4446537	Murad	(050) 351-14-38	2020-11-17
1629	Xırdalan	Toyota	Corolla	2014	Sedan	Ağ	1.6	122	Benzin	137000	Avtomat	Ön	f	31500	18529	4463248	Zaur	(055) 247-09-09	2020-11-17
1630	Bakı	BMW	X5	2016	Offroader / SUV	Ağ	3	306	Benzin	84500	Avtomat	Tam	f	88400	52000	4386720	Назим	(050) 255-57-39	2020-11-17
1631	Bakı	BMW	530	2019	Sedan	Göy	2	252	Benzin	29000	Avtomat	Arxa	f	95200	56000	4452498	Anar	(050) 647-75-75	2020-11-17
1633	Bakı	Toyota	Prado	2014	Offroader / SUV	Ağ	3	190	Dizel	92000	Avtomat	Tam	f	69700	41000	4359487	tuqay	(050) 747-78-08	2020-11-17
1634	Bakı	Nissan	Teana	2004	Sedan	Ağ	2.3	173	Benzin	190000	Avtomat	Ön	f	9000	5294	4256229	Murad	(051) 651-11-25	2020-11-17
1635	Bakı	Renault	Megane	2008	Universal	Qara	1.5	85	Dizel	248000	Mexaniki	Ön	f	6000	3529	4476076	Aydın	(055) 942-42-40	2020-11-17
1636	Sumqayıt	Mercedes	C 240	2001	Sedan	Göy	2.6	177	Benzin	218200	Avtomat	Arxa	f	10900	6412	4401046	Ramin	(077) 624-00-14	2020-11-17
1637	Bakı	Mercedes	Sprinter 315	2008	Furqon	Ağ	2.2	150	Dizel	187000	Mexaniki	Arxa	f	31000	18235	4476074	Rəşad	(070) 617-17-30	2020-11-17
1638	Bakı	Kia	Rio	2013	Sedan	Gümüşü	1.6	132	Benzin	74010	Avtomat	Ön	f	14600	8588	4467442	Rəhman	(050) 446-52-62	2020-11-17
1639	Bakı	BMW	X5	2011	Offroader / SUV	Qara	3	306	Benzin	110000	Avtomat	Tam	f	37400	22000	4240320	Nadir	(055) 330-38-30	2020-11-17
1640	Bakı	Nissan	Qashqai	2010	Offroader / SUV	Bənövşəyi	2	141	Benzin	259000	Variator	Ön	f	17500	10294	4476077	Vusal	(077) 359-85-80	2020-11-17
1641	Bakı	Ford	Fusion	2014	Sedan	Qırmızı	2	245	Benzin	159000	Avtomat	Ön	f	20300	11941	4465194	Emil	(055) 204-66-46	2020-11-17
1642	Bakı	Kia	Sportage	2014	Offroader / SUV	Göy	2.4	180	Benzin	37700	Avtomat	Tam	f	25700	15118	4242159	AZER	(077) 455-19-44	2020-11-17
1643	Bakı	Opel	Vita	1999	Hetçbek / Liftbek	Qara	1.4	90	Benzin	119000	Avtomat	Ön	f	6700	3941	4429316	Kamal	(050) 963-32-91	2020-11-17
1644	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Qara	5	510	Benzin	68000	Avtomat	Tam	f	133450	78500	4311380	Perviz 	(055) 201-44-46	2020-11-17
1645	Bakı	Land Rover	Range Rover	2013	Offroader / SUV	Boz	3	275	Dizel	105000	Avtomat	Tam	f	101150	59500	4402884	Anvar	(050) 211-30-55	2020-11-17
1646	Sumqayıt	Toyota	Camry	2007	Sedan	Ağ	2.4	167	Benzin	187415	Avtomat	Ön	f	18500	10882	4476035	Cosqun	(055) 422-95-95	2020-11-17
1647	Bakı	Kia	Sorento	2013	Offroader / SUV	Qara	2.4	184	Benzin	95000	Avtomat	Tam	f	28000	16471	4445771	nemət	(070) 745-94-44	2020-11-17
1648	Bakı	Lexus	LS 460	2014	Sedan	Qara	4.6	380	Benzin	128000	Avtomat	Arxa	f	75650	44500	4141347	Perviz 	(055) 217-05-56	2020-11-17
1649	Sabirabad	Mercedes	C 200	1996	Sedan	Qırmızı	2	136	Benzin	10000	Avtomat	Arxa	f	8100	4765	4476042	Rayil 	(055) 435-75-93	2020-11-17
1650	Bərdə	LADA (VAZ)	21099	1992	Sedan	Qırmızı	1.5	75	Benzin	212541	Mexaniki	Ön	f	3800	2235	4476048	Ülvi	(050) 978-91-40	2020-11-17
1652	Şəmkir	Mercedes	C 250	2013	Sedan	Qara	1.8	204	Benzin	89000	Avtomat	Arxa	f	27710	16300	4385747	Qədir	(055) 211-30-00	2020-11-17
1653	Bakı	Ford	Transit	2002	Furqon	Qırmızı	2.5	76	Dizel	500000	Mexaniki	Arxa	f	20000	11765	4476051	Savalan	(070) 363-17-14	2020-11-17
1654	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	178550	Mexaniki	Ön	f	11200	6588	4476046	Haci Cebrayil	(050) 501-12-21	2020-11-17
1655	Bakı	Mercedes	C 230	1993	Sedan	Ağ	2.3	150	Benzin	240000	Avtomat	Ön	f	3500	2059	4476054	Vioqo	(055) 818-80-04	2020-11-17
1656	Bakı	Ford	Transit	2009	Furqon	Qəhvəyi	2.4	124	Dizel	280000	Mexaniki	Arxa	f	22900	13471	4476055	Nurlan	(051) 710-72-72	2020-11-17
1657	Bakı	Ford	Transit	1999	Yük maşını	Sarı	2.5	175	Dizel	475000	Mexaniki	Arxa	f	16500	9706	4404858	Rustem	(050) 240-04-22	2020-11-17
1658	Kürdəmir	Mercedes	E 200	1992	Sedan	Yaş Asfalt	2	122	Dizel	258000	Mexaniki	Arxa	f	6800	4000	4476063	Emil	(055) 308-81-60	2020-11-17
1659	Bakı	Hyundai	Sonata	2012	Sedan	Qara	2.4	178	Benzin	160000	Avtomat	Ön	f	21300	12529	4476064	Ferid	(050) 467-05-23	2020-11-17
1660	Bakı	BMW	730	2006	Sedan	Ağ	3	231	Benzin	210000	Avtomat	Arxa	f	19900	11706	4476069	Valeh	(050) 582-10-60	2020-11-17
1661	Bakı	Ford	Fusion	2013	Sedan	Yaşıl	1.5	181	Benzin	96000	Avtomat	Ön	f	16800	9882	4461033	Ceyhun	(070) 800-23-28	2020-11-17
1662	Bakı	Mazda	CX-9	2019	Offroader / SUV	Ağ	2.5	255	Benzin	18800	Avtomat	Tam	f	73950	43500	4476075	Ramil	(055) 241-02-02	2020-11-17
1663	Bakı	BMW	528	2012	Sedan	Ağ	2	245	Benzin	168000	Avtomat	Arxa	f	24650	14500	4469523	Ruslan	(050) 385-03-13	2020-11-17
1664	Bakı	Mercedes	E 200	2016	Sedan	Boz	2	184	Benzin	63000	Avtomat	Arxa	f	80750	47500	4201024	Elşən	(050) 860-04-04	2020-11-17
1665	Bakı	Hyundai	i40	2012	Sedan	Boz	1.7	115	Dizel	62000	Avtomat	Ön	f	23300	13706	4476079	Fuad	(055) 441-11-40	2020-11-17
1666	Bakı	Ford	Transit	2010	Furqon	Ağ	2.4	140	Dizel	187000	Mexaniki	Arxa	f	25500	15000	4476081	Rəşad	(050) 417-17-30	2020-11-17
1667	Bakı	Mercedes	C 200	1994	Sedan	Ağ	2	136	Benzin	420000	Avtomat	Arxa	f	8300	4882	4476082	Hamlet	(070) 861-67-57	2020-11-17
1668	Bakı	BMW	523	2010	Sedan	Ağ	2.5	218	Benzin	173000	Avtomat	Arxa	f	28900	17000	4476085	Ramin	(050) 381-13-13	2020-11-17
1669	Bakı	Mitsubishi	Outlander	2013	Universal	Ağ	2.4	170	Benzin	197000	Avtomat	Tam	f	24500	14412	4476084	Yusif	(055) 549-30-85	2020-11-17
1670	Bakı	Toyota	Corolla	2005	Universal	Gümüşü	1.4	90	Dizel	224000	Mexaniki	Ön	f	11900	7000	4476094	Seymur	(055) 200-45-75	2020-11-17
1671	Sumqayıt	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	145000	Mexaniki	Ön	f	10950	6441	4401531	Nazim	(050) 425-74-73	2020-11-17
1651	Bakı	Land Rover	Discovery	2007	Offroader / SUV	Yaş Asfalt	2.7	190	Dizel	330000	Avtomat	Tam	f	28500	16765	4476044	Asim	(055) 211-83-21	2020-11-17
1674	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Qara	4	282	Benzin	125000	Avtomat	Tam	f	74800	44000	4476005	Qorqud Quliyev	(050) 607-44-48	2020-11-17
1675	Bakı	Chevrolet	Cruze	2013	Sedan	Mavi	1.4	141	Benzin	135219	Avtomat	Ön	f	14500	8529	4451149	wahmar	(055) 224-27-24	2020-11-17
1676	Bakı	GAZ	31105	2003	Sedan	Ağ	2.4	131	Benzin	200000	Mexaniki	Arxa	f	7800	4588	4476003	Fikrət	(070) 386-36-66	2020-11-17
1677	Bakı	Toyota	Camry	2016	Sedan	Ağ	2.5	181	Hibrid	17000	Avtomat	Ön	f	43350	25500	4340487	Sərxan	(055) 257-57-56	2020-11-17
1678	Bakı	Hyundai	Sonata	2011	Sedan	Ağ	2	274	Benzin	137000	Avtomat	Ön	f	30340	17847	4476008	Sahib	(070) 233-99-00	2020-11-17
1679	Bakı	Mercedes	Viano	2013	Van	Yaş Asfalt	3	230	Dizel	220500	Avtomat	Arxa	f	40460	23800	4476009	Nazir 	(077) 627-45-45	2020-11-17
1680	Bakı	Toyota	Land Cruiser	2003	Offroader / SUV	Ağ	4.2	131	Dizel	236000	Mexaniki	Tam	f	25700	15118	4471285	Ariz	(055) 898-25-79	2020-11-17
1681	Bakı	Toyota	Avalon	2006	Sedan	Qara	3.5	268	Benzin	245000	Avtomat	Ön	f	16400	9647	4413914	Elçin	(050) 856-20-98	2020-11-17
1682	Quba	Khazar	LX	2019	Sedan	Ağ	1.7	113	Benzin	84700	Mexaniki	Ön	f	13340	7847	4476013	Orxan	(070) 200-72-74	2020-11-17
1683	Bakı	Hyundai	Equus	2013	Sedan	Ağ	3.8	290	Benzin	120000	Avtomat	Tam	f	37400	22000	4443509	Ariz	(050) 528-18-10	2020-11-17
1684	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	173000	Avtomat	Ön	f	12000	7059	4466881	KƏNAN	(055) 242-42-10	2020-11-17
1685	Bakı	Land Rover	RR Sport	2012	Offroader / SUV	Qara	3	255	Dizel	125000	Avtomat	Tam	f	62050	36500	4475974	Onur Can 	(050) 994-02-23	2020-11-17
1686	Şabran	ZAZ	968M	1990	Sedan	Ağ	1.2	75	Benzin	120000	Mexaniki	Arxa	f	550	324	4475976	ilham	(077) 730-00-17	2020-11-17
1687	Bakı	Nissan	Sunny	2007	Sedan	Qara	1.3	90	Benzin	400000	Mexaniki	Ön	f	11000	6471	4453265	Mahir	(051) 226-51-51	2020-11-17
1688	Bakı	Infiniti	EX35	2011	Offroader / SUV	Ağ	3.5	297	Benzin	260000	Avtomat	Tam	f	23500	13824	4475973	Shain	(055) 210-10-30	2020-11-17
1689	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	280000	Avtomat	Arxa	f	17500	10294	4421815	Tebriz	(050) 677-22-88	2020-11-17
1690	Bakı	Kia	Optima	2012	Sedan	Boz	2	274	Benzin	137200	Avtomat	Ön	f	19000	11176	4475991	Hilal	(050) 436-66-46	2020-11-17
1691	Bakı	Hyundai	H-1	2009	Van	Ağ	2.5	110	Dizel	140000	Mexaniki	Arxa	f	19500	11471	4475995	Qasım	(055) 344-31-13	2020-11-17
1692	Ağstafa	GAZ	SAZ-3507	1991	Yük maşını	Boz	4.2	162	Benzin	70000	Mexaniki	Arxa	f	3500	2059	4475998	Adil	(050) 536-61-14	2020-11-17
1693	Bakı	Mercedes	E 220	2001	Sedan	Göy	2.2	170	Dizel	385600	Avtomat	Arxa	f	15900	9353	4459211	Royal	(077) 711-09-39	2020-11-17
1694	Astara	Fiat	Doblo	2007	Universal	Boz	1.3	75	Dizel	160000	Mexaniki	Ön	f	13300	7824	4475999	İbrahim	(050) 592-33-56	2020-11-17
1695	Bakı	Toyota	Corolla	2014	Sedan	Qara	1.6	122	Benzin	176000	Avtomat	Ön	f	25200	14824	4475997	Fariz	(050) 204-14-50	2020-11-17
1696	Bakı	Hyundai	Elantra	2017	Sedan	Gümüşü	1.6	204	Benzin	31000	Mexaniki	Ön	f	25200	14824	4314394	Həsən	(055) 389-85-69	2020-11-17
1697	Bakı	Mercedes	E 220	2016	Sedan	Ağ	2.2	184	Dizel	202000	Avtomat	Arxa	f	76160	44800	4279327	Ağa	(050) 777-78-77	2020-11-17
1698	Bakı	Hyundai	Sonata	2015	Sedan	Gümüşü	1.6	177	Benzin	62500	Avtomat	Ön	f	20900	12294	4455440	Rasim	(050) 552-44-51	2020-11-17
1699	Bakı	Hyundai	Sonata	2013	Sedan	Qara	2	274	Benzin	81700	Avtomat	Ön	f	19800	11647	4468036	Zamiq	(055) 337-79-80	2020-11-17
1700	Bakı	Mercedes	E 200	2005	Sedan	Yaş Asfalt	2	184	Benzin	268000	Avtomat	Arxa	f	17000	10000	4445427	Anar	(070) 238-31-38	2020-11-17
1701	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2	165	Qaz	58000	Avtomat	Ön	f	24700	14529	4477953	Etimad	(077) 300-70-69	2020-11-17
1702	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	226630	Avtomat	Tam	f	31500	18529	4476018	Qosqar	(050) 330-02-00	2020-11-17
1703	Bakı	Toyota	Camry	2019	Sedan	Ağ	2.5	181	Benzin	12000	Avtomat	Ön	f	76498	44999	4476020	Faiq	(055) 211-25-79	2020-11-17
1704	Gəncə	BMW	525	1998	Sedan	Göy	2.5	170	Benzin	440000	Avtomat	Arxa	f	8500	5000	4476022	Xeqani	(055) 649-63-09	2020-11-17
1705	Bakı	Toyota	Prado	2006	Offroader / SUV	Qara	2.7	167	Benzin	183700	Avtomat	Tam	f	26900	15824	4278401	NIZAMI	(050) 630-11-20	2020-11-17
1706	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	265000	Avtomat	Arxa	f	16000	9412	4476025	Ulvi 	(050) 965-77-66	2020-11-17
1707	Gəncə	Fiat	Doblo	2007	Minivan	Ağ	1.4	100	Benzin	310000	Mexaniki	Ön	f	10000	5882	4476031	Ramil	(055) 930-44-08	2020-11-17
1708	Bakı	Kia	Sportage	2013	Offroader / SUV	Ağ	2	183	Dizel	98215	Avtomat	Ön	f	28300	16647	4419697	Söhrab	(055) 852-66-66	2020-11-17
1709	Mingəçevir	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	259500	Avtomat	Arxa	f	11500	6765	4475935	Zaman	(050) 627-73-40	2020-11-17
1710	Bakı	Mercedes	S 350	2006	Sedan	Ağ	3.5	272	Benzin	243000	Avtomat	Arxa	f	31500	18529	4458236	Zakir 	(055) 485-34-59	2020-11-17
1711	Bakı	Kia	Sportage	2014	Offroader / SUV	Ağ	2	183	Dizel	86300	Avtomat	Ön	f	28800	16941	4421502	Söhrab	(055) 852-66-66	2020-11-17
1712	Bakı	Ford	Fusion	2015	Sedan	Ağ	1.5	181	Benzin	70000	Avtomat	Ön	f	19900	11706	4420959	Emin	(055) 201-98-98	2020-11-17
1713	Xaçmaz	LADA (VAZ)	2106	1993	Sedan	Qara	1.3	65	Benzin	197000	Mexaniki	Arxa	f	4500	2647	4475939	SAHIB	(055) 350-15-19	2020-11-17
1714	Bakı	Opel	Meriva	2006	Minivan	Çəhrayı	1.3	90	Dizel	207000	Mexaniki	Ön	f	9950	5853	4475940	Ramin	(050) 779-80-69	2020-11-17
1715	Bakı	Kia	Optima	2014	Sedan	Ağ	2	274	Benzin	67000	Avtomat	Ön	f	25800	15176	4459727	Eli	(055) 363-20-30	2020-11-17
1716	Quba	Mercedes	E 200	1995	Sedan	Tünd qırmızı	2	136	Benzin	350000	Mexaniki	Arxa	f	8700	5118	4434655	Qalib	(077) 355-59-93	2020-11-17
1717	Salyan	LADA (VAZ)	2107	2000	Sedan	Tünd qırmızı	1.6	75	Benzin	145731	Mexaniki	Arxa	f	3700	2176	4451167	Asiman	(050) 649-26-54	2020-11-17
1718	Şəmkir	Ford	Transit	2001	Mikroavtobus	Ağ	2.5	76	Dizel	521863	Mexaniki	Arxa	f	18500	10882	4475945	Araz	(050) 642-29-74	2020-11-17
1719	Bakı	LADA (VAZ)	Kalina	2006	Sedan	Tünd qırmızı	1.5	78	Benzin	247856	Mexaniki	Ön	f	6550	3853	4467259	Yusif	(050) 896-34-75	2020-11-17
1720	Salyan	LADA (VAZ)	2106	1994	Sedan	Ağ	1.6	75	Benzin	198746	Mexaniki	Arxa	f	3400	2000	4443836	Əliş	(050) 611-72-48	2020-11-17
1721	Bakı	Nissan	Teana	2006	Sedan	Ağ	3.5	241	Benzin	250000	Variator	Ön	f	10500	6176	4475919	Fərid	(055) 560-02-04	2020-11-17
1722	Bakı	Renault	Megane	2007	Universal	Yaş Asfalt	1.5	106	Dizel	183000	Mexaniki	Ön	f	9200	5412	4475917	Ceyhun	(055) 579-99-92	2020-11-17
1723	Bakı	Changan	Benni	2007	Hetçbek / Liftbek	Yaşıl	1.3	75	Benzin	130000	Mexaniki	Tam	f	4200	2471	4475921	Babek	(077) 415-25-45	2020-11-17
1724	Bakı	BMW	528	2014	Sedan	Yaş Asfalt	2	245	Benzin	136000	Avtomat	Arxa	f	39100	23000	4475920	Elman	(051) 844-99-99	2020-11-17
1725	Gəncə	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	67000	Avtomat	Ön	f	24500	14412	4475918	Ferid	(055) 287-81-60	2020-11-17
1726	Bakı	Suzuki	GSX 1300 R Hayabusa	2009	Motosiklet	Qara	1.3	192	Benzin	33000	Mexaniki	Arxa	f	13000	7647	4475924	Maqa	(055) 418-66-33	2020-11-17
1727	Bakı	SEAT	Leon	2013	Hetçbek / Liftbek	Ağ	1.2	75	Benzin	151000	Avtomat	Ön	f	13900	8176	4475926	Togrul	(050) 865-00-02	2020-11-17
1728	Mingəçevir	Mercedes	C 220	1996	Sedan	Gümüşü	2.2	143	Dizel	363600	Avtomat	Arxa	f	10000	5882	4475925	Mubariz	(050) 620-98-45	2020-11-17
1729	Bakı	Toyota	Camry	2007	Sedan	Qara	2.4	167	Benzin	220000	Avtomat	Ön	f	11500	6765	4430520	Resad	(055) 401-51-89	2020-11-17
1730	Sumqayıt	Mercedes	E 200	1998	Sedan	Yaşıl	2	136	Benzin	495000	Avtomat	Arxa	f	12200	7176	4475928	Nicat	(070) 290-64-90	2020-11-17
1731	Bakı	BMW	525	2000	Sedan	Gümüşü	2.5	192	Benzin	201000	Avtomat	Arxa	f	14500	8529	4427444	Hesen	(050) 556-66-95	2020-11-17
1732	Bakı	Hyundai	i40	2012	Universal	Ağ	2	166	Benzin	242000	Avtomat	Ön	f	20000	11765	4430502	Azər	(055) 401-51-89	2020-11-17
1733	Bakı	Mercedes	ML 350	2006	Offroader / SUV	Ağ	3.5	272	Benzin	241000	Avtomat	Tam	f	21000	12353	4475930	Yavər	(050) 899-00-93	2020-11-17
1734	Bakı	Kia	Sportage	2012	Offroader / SUV	Ağ	2	183	Dizel	102441	Avtomat	Ön	f	26400	15529	4419409	Söhrab	(055) 852-66-66	2020-11-17
1735	Xırdalan	LADA (VAZ)	Kalina	2009	Hetçbek / Liftbek	Qara	1.4	89	Benzin	250000	Mexaniki	Ön	f	9500	5588	4475929	Mehemmed	(055) 651-45-19	2020-11-17
1736	Bakı	Mitsubishi	L 200	2007	Pikap	Göy	2.5	136	Dizel	287000	Mexaniki	Tam	f	25000	14706	4475934	Polad	(050) 409-08-08	2020-11-17
1737	Bakı	Audi	Q7	2017	Offroader / SUV	Ağ	2	252	Benzin	41000	Avtomat	Tam	f	79050	46500	4455461	Həsən	(050) 541-00-41	2020-11-17
1738	Lənkəran	Mercedes	E 290	1998	Sedan	Boz	2.9	129	Dizel	625264	Avtomat	Arxa	f	11000	6471	4449806	Elşen	(050) 635-62-05	2020-11-17
1739	Bakı	Land Rover	Range Rover	2015	Offroader / SUV	Qara	5	550	Benzin	40000	Avtomat	Tam	f	212500	125000	4352260	Farid	(051) 700-85-85	2020-11-17
1740	Bakı	Aston Martin	Vanquish	2013	Kupe	Ağ	5.9	573	Benzin	32000	Avtomat	Arxa	f	127500	75000	4010289	Javanshir	(050) 399-91-11	2020-11-17
1741	Gədəbəy	LADA (VAZ)	2107	2006	Sedan	Göy	1.5	65	Benzin	130000	Mexaniki	Arxa	f	5400	3176	4475953	Mahir	(050) 428-24-48	2020-11-17
1742	Bakı	Ford	Fusion	2019	Sedan	Ağ	1.5	181	Benzin	8500	Avtomat	Ön	f	33490	19700	4444649	ÜLVİ	(050) 318-46-03	2020-11-17
1743	Bakı	LADA (VAZ)	2106	1986	Sedan	Mavi	1.5	65	Benzin	137618	Mexaniki	Arxa	f	3100	1824	4475959	Fəxrəddin	(070) 859-72-90	2020-11-17
1744	Bakı	Mercedes	190	1990	Sedan	Ağ	2.5	126	Dizel	330000	Avtomat	Arxa	f	5600	3294	4475958	Elwen	(055) 990-42-41	2020-11-17
1745	Bakı	Toyota	RAV 4	2006	Offroader / SUV	Ağ	2.4	175	Benzin	325000	Avtomat	Tam	f	15800	9294	4475963	Zaur	(070) 944-27-45	2020-11-17
1746	Masallı	Mercedes	E 350	2007	Sedan	Qara	3.5	272	Benzin	335000	Avtomat	Arxa	f	20000	11765	4463386	Nəcəf	(050) 545-44-44	2020-11-17
1747	Bakı	Nissan	Sunny	2011	Sedan	Gümüşü	1.6	109	Benzin	156430	Avtomat	Ön	f	12500	7353	4429879	Qənbər 	(050) 328-30-07	2020-11-17
1749	Sabirabad	LADA (VAZ)	2106	1983	Sedan	Qəhvəyi	1.6	75	Benzin	95213	Mexaniki	Arxa	f	4500	2647	4457230	Fuad	(050) 627-30-06	2020-11-17
1750	Bakı	Nissan	Patrol	2013	Offroader / SUV	Ağ	5.6	405	Benzin	145000	Avtomat	Tam	f	89250	52500	4428486	Aslan	(070) 290-81-81	2020-11-17
1751	Bakı	Chevrolet	Cruze	2012	Sedan	Göy	1.4	141	Benzin	135000	Avtomat	Ön	f	15600	9176	4452781	Fuad	(050) 704-06-56	2020-11-17
1752	Bakı	Porsche	Panamera 4S	2014	Hetçbek / Liftbek	Qara	3	420	Benzin	73000	Avtomat	Tam	f	84830	49900	4475898	Rufat	(055) 946-55-44	2020-11-17
1753	Şəmkir	LADA (VAZ)	Niva	2008	Offroader / SUV	Ağ	1.7	80	Benzin	245000	Mexaniki	Tam	f	8500	5000	4475897	Vazeh	(050) 479-52-74	2020-11-17
1754	Bakı	Mazda	CX-7	2006	Offroader / SUV	Ağ	2.5	238	Benzin	170000	Avtomat	Tam	f	12000	7059	4475866	Orkhan	(050) 226-26-55	2020-11-17
1755	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.3	90	Dizel	200000	Mexaniki	Ön	f	11400	6706	4475909	Famil	(055) 768-37-94	2020-11-17
1756	Bakı	Mercedes	Vito	2008	Van	Ağ	2.2	170	Dizel	210000	Mexaniki	Ön	f	20000	11765	4405745	Orxan	(050) 272-36-36	2020-11-17
1757	Bakı	Ford	Courier	2014	Minivan	Ağ	1	109	Benzin	167500	Mexaniki	Ön	f	17000	10000	4475868	Sahib	(055) 414-40-49	2020-11-17
1758	Bakı	Chevrolet	Cruze	2012	Sedan	Tünd qırmızı	1.4	141	Benzin	199890	Avtomat	Ön	f	15000	8824	4475870	Elvin	(051) 312-21-22	2020-11-17
1759	Sumqayıt	LADA (VAZ)	2107	2005	Sedan	Göy	1.6	75	Benzin	75000	Mexaniki	Arxa	f	5900	3471	4475874	Eli	(070) 315-02-38	2020-11-17
1760	Cəlilabad	LADA (VAZ)	2107	2008	Sedan	Göy	1.6	75	Benzin	400000	Mexaniki	Arxa	f	7500	4412	4475871	Izet	(050) 776-81-07	2020-11-17
1761	Bakı	LADA (VAZ)	2104	2012	Universal	Ağ	1.6	75	Benzin	125000	Mexaniki	Arxa	f	8500	5000	4475875	Turqay	(050) 647-87-07	2020-11-17
1762	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	92000	Avtomat	Ön	f	15900	9353	4436348	Kənan	(055) 252-07-97	2020-11-17
1763	Lənkəran	Infiniti	QX70	2014	Offroader / SUV	Qara	3.7	333	Benzin	91000	Avtomat	Tam	f	49300	29000	4423003	Muraf	(050) 758-11-33	2020-11-17
1764	Bakı	Mercedes	C 200	1999	Sedan	Gümüşü	2	136	Benzin	285000	Avtomat	Arxa	f	13400	7882	4457719	Sahid	(055) 201-90-94	2020-11-17
1765	Bakı	Ford	Fusion	2014	Sedan	Yaş Asfalt	1.5	181	Benzin	87000	Avtomat	Ön	f	20000	11765	4475876	Mayis	(077) 430-00-02	2020-11-17
1766	Bakı	Hyundai	Accent	2012	Sedan	Ağ	1.4	107	Benzin	179800	Avtomat	Ön	f	15800	9294	4475749	Nurlan	(055) 517-17-37	2020-11-17
1767	Bakı	Honda	Civic	2013	Sedan	Boz	1.5	110	Hibrid	156000	Avtomat	Ön	f	18500	10882	4475882	Dilqem	(050) 869-26-26	2020-11-17
1768	Bakı	Hyundai	Accent	2011	Sedan	Qara	1.6	132	Benzin	135000	Avtomat	Ön	f	12900	7588	4475886	ILKIN	(077) 546-75-11	2020-11-17
1769	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Qara	5	510	Benzin	47000	Avtomat	Tam	f	166600	98000	4420026	Nuru	(055) 211-11-33	2020-11-17
1770	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	193000	Avtomat	Ön	f	19500	11471	4458361	Fərid	(055) 203-73-23	2020-11-17
1771	Bakı	Mercedes	ML 350	2006	Offroader / SUV	Qara	3.5	272	Benzin	300000	Avtomat	Arxa	f	18000	10588	4475888	Natiq	(055) 560-09-11	2020-11-17
1772	Sumqayıt	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	125101	Avtomat	Tam	f	39780	23400	4475890	Cemil	(050) 995-39-39	2020-11-17
1773	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Ağ	3	188	Benzin	270378	Avtomat	Tam	f	23000	13529	4475887	Səfər	(077) 250-66-92	2020-11-17
1774	Bakı	Mercedes	C 220	2004	Universal	Qara	2.2	143	Dizel	208539	Avtomat	Arxa	f	12300	7235	4475895	Rustəm	(055) 232-11-96	2020-11-17
1776	Bakı	Volkswagen	Touareg	2020	Offroader / SUV	Boz	3	340	Benzin	0	Avtomat	Tam	t	153000	90000	4327680	Avtosalon "Eurostyle LTD"	(055) 555-77-88	2020-11-17
1777	Ağdaş	LADA (VAZ)	2106	1995	Sedan	Bej	1.5	65	Benzin	999990	Mexaniki	Tam	f	4500	2647	4475910	Cavid	(051) 769-87-62	2020-11-17
1778	Bakı	Lexus	ES 350	2013	Sedan	Ağ	3.5	268	Benzin	165000	Avtomat	Ön	f	41650	24500	4475908	Reshid	(070) 613-00-00	2020-11-17
1780	Bakı	Ford	Fusion	2017	Sedan	Tünd qırmızı	1.5	181	Benzin	59000	Avtomat	Ön	f	26500	15588	4348096	Əbülfəz	(050) 648-46-46	2020-11-17
1781	Bakı	BMW	525	1999	Sedan	Gümüşü	2.5	192	Benzin	298900	Avtomat	Arxa	f	8200	4824	4475864	Hikmət	(050) 202-16-53	2020-11-17
1782	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	174000	Avtomat	Ön	f	14900	8765	4456351	Mubariz	(051) 569-13-13	2020-11-17
1783	Bakı	Opel	Vectra	1998	Sedan	Yaşıl	1.6	101	Benzin	458807	Mexaniki	Ön	f	5600	3294	4475865	Nazim	(050) 379-28-41	2020-11-17
1786	Bakı	Opel	Astra	2008	Universal	Boz	1.4	90	Benzin	162000	Mexaniki	Ön	f	12800	7529	4447219	Yusif	(077) 433-00-08	2020-11-17
1787	Gəncə	LADA (VAZ)	Vesta	2016	Sedan	Qara	1.6	125	Benzin	48000	Mexaniki	Ön	f	15900	9353	4475841	İlqar	(070) 258-05-47	2020-11-17
1788	Bakı	Zongshen	Infinity	2020	Motosiklet	Yaşıl	0.3	25	Benzin	1000	Mexaniki	Arxa	f	4900	2882	4454376	Sahib	(051) 207-53-54	2020-11-17
1789	Bakı	Mercedes	A 160	2000	Hetçbek / Liftbek	Ağ	1.6	90	Benzin	280876	Avtomat	Ön	f	6450	3794	4475846	Emin	(050) 632-25-95	2020-11-17
1790	Hacıqabul	GAZ	53	1983	Yük maşını	Qəhvəyi	6	152	Benzin	58900	Mexaniki	Arxa	f	5000	2941	4475848	Isa emi	(070) 942-85-52	2020-11-17
1791	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	49000	Mexaniki	Tam	f	13800	8118	4406473	Elmir	(050) 207-87-78	2020-11-17
1792	Bakı	Toyota	Camry	2007	Sedan	Qara	2.4	167	Benzin	260132	Avtomat	Ön	f	18700	11000	4367527	Nasimi	(050) 388-86-44	2020-11-17
1793	Bakı	Hyundai	Sonata	2003	Sedan	Göy	2.4	150	Benzin	270000	Avtomat	Ön	f	8400	4941	4475812	Ayaz	(070) 720-50-35	2020-11-17
1794	Şirvan	LADA (VAZ)	2108	1987	Hetçbek / Liftbek	Göy	1.5	75	Benzin	78492	Mexaniki	Ön	f	3500	2059	4475821	Sahib	(055) 485-30-30	2020-11-17
1795	Bakı	Kia	Ceed	2007	Hetçbek / Liftbek	Boz	1.4	109	Benzin	162000	Mexaniki	Ön	f	11400	6706	4450811	Sahib	(070) 561-46-53	2020-11-17
1796	Bakı	Hyundai	Elantra	2016	Sedan	Ağ	1.8	150	Benzin	39000	Avtomat	Ön	f	20500	12059	4475822	Ramil	(055) 799-80-90	2020-11-17
1797	Bakı	Hyundai	Sonata	2015	Sedan	Ağ	2.4	166	Benzin	60000	Avtomat	Ön	f	25500	15000	4475816	Elçin	(050) 588-00-16	2020-11-17
1798	Qax	Mercedes	C 180	1997	Sedan	Ağ	1.8	122	Benzin	413731	Avtomat	Arxa	f	11900	7000	4475828	Zohrab	(070) 299-34-00	2020-11-17
1799	Bakı	Mercedes	C 180	1995	Sedan	Yaşıl	1.8	122	Benzin	340052	Mexaniki	Arxa	f	7500	4412	4475832	Rovsen	(050) 826-26-46	2020-11-17
1800	Ağsu	LADA (VAZ)	2106	1996	Sedan	Yaşıl	1.5	65	Benzin	43528	Mexaniki	Arxa	f	3300	1941	4458108	Vasif	(050) 432-58-70	2020-11-17
1801	Bakı	Volkswagen	Jetta	2014	Sedan	Ağ	2	150	Benzin	126000	Avtomat	Ön	f	17900	10529	4314084	Rauf	(050) 331-72-25	2020-11-17
1802	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	198100	Mexaniki	Ön	f	12300	7235	4418620	Vüqar	(077) 606-11-11	2020-11-17
1803	Gəncə	Hyundai	Sonata	2014	Sedan	Gümüşü	2	274	Benzin	92390	Avtomat	Ön	f	25500	15000	4475839	Muzadil	(055) 553-92-99	2020-11-17
1804	Bakı	LADA (VAZ)	2107	2010	Sedan	Tünd qırmızı	1.6	75	Benzin	59000	Mexaniki	Arxa	f	7600	4471	4475837	Hövsət	(055) 253-89-49	2020-11-17
1805	Bakı	SEAT	Toledo	2015	Sedan	Qara	1.6	127	Benzin	71300	Avtomat	Ön	f	18190	10700	4456185	Əli	(050) 316-43-93	2020-11-17
1806	Bakı	BMW	530	2006	Sedan	Gümüşü	3	231	Benzin	276000	Avtomat	Arxa	f	19300	11353	4475843	Nəsib	(051) 225-54-15	2020-11-17
1807	Bakı	Renault	12 Toros	1996	Sedan	Sarı	1.2	65	Benzin	5000	Mexaniki	Ön	f	3200	1882	4475861	Elcin	(055) 806-67-50	2020-11-17
1808	Bakı	Hyundai	Sonata	2016	Sedan	Gümüşü	1.6	191	Benzin	71000	Avtomat	Ön	f	21800	12824	4438163	Rauf	(077) 577-51-77	2020-11-17
1809	Bakı	Mitsubishi	Pajero	2017	Offroader / SUV	Ağ	3	190	Benzin	97000	Avtomat	Tam	f	51850	30500	4475863	Fuad	(070) 330-52-54	2020-11-17
1810	Bakı	Nissan	Patrol	2018	Offroader / SUV	Ağ	4	345	Benzin	70000	Avtomat	Tam	f	93500	55000	2837261	Rəşad	(050) 251-16-16	2020-11-17
1811	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2.4	180	Benzin	160000	Avtomat	Ön	f	19000	11176	4450934	Эльшан	(050) 337-51-21	2020-11-17
1812	Bakı	Mercedes	C 240	2001	Sedan	Gümüşü	2.4	170	Benzin	269000	Avtomat	Arxa	f	11800	6941	4456204	Rovsen	(055) 435-15-14	2020-11-17
1813	Bakı	Ford	Escape	2018	Offroader / SUV	Boz	1.5	185	Benzin	59000	Avtomat	Tam	f	27880	16400	4182485	Əli	(050) 342-98-48	2020-11-17
1814	Bakı	Toyota	Prado	2004	Offroader / SUV	Gümüşü	2.7	167	Benzin	435000	Avtomat	Tam	f	22500	13235	4475781	Rəsul	(050) 212-11-49	2020-11-17
1815	Bakı	BMW	320	2012	Sedan	Ağ	2	194	Dizel	170000	Avtomat	Arxa	f	33660	19800	4475784	Ali	(050) 242-82-58	2020-11-17
1816	Bakı	Opel	Astra	1995	Universal	Qırmızı	1.6	101	Benzin	270000	Mexaniki	Ön	f	5700	3353	4475788	Elman	(077) 277-50-18	2020-11-17
1817	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	268134	Mexaniki	Ön	f	7550	4441	4475792	eli	(070) 405-25-01	2020-11-17
1818	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	98530	Mexaniki	Tam	f	9800	5765	4475798	Şövqi	(051) 810-22-49	2020-11-17
1819	Sumqayıt	Mercedes	C 200	1995	Sedan	Sarı	2	136	Benzin	52000	Avtomat	Arxa	f	8500	5000	4460445	Sübhan	(055) 622-42-02	2020-11-17
1820	Bakı	Kia	Cerato	2012	Sedan	Ağ	1.6	132	Benzin	143000	Avtomat	Ön	f	16400	9647	4425329	Züheyir	(055) 441-46-65	2020-11-17
1821	Kürdəmir	Mercedes	C 230	2005	Sedan	Gümüşü	2.3	150	Benzin	127000	Avtomat	Arxa	f	18000	10588	4475752	Varasil	(055) 353-64-30	2020-11-17
1822	Bakı	LADA (VAZ)	Vesta Cross	2020	Sedan	Ağ	1.6	122	Benzin	310	Mexaniki	Ön	f	21700	12765	4448353	Elxan	(050) 769-98-64	2020-11-17
1823	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2	184	Dizel	109800	Avtomat	Ön	f	20300	11941	4425282	Ayhan	(050) 785-77-89	2020-11-17
1824	Bakı	Nissan	Sunny	2014	Sedan	Ağ	1.5	146	Benzin	158000	Avtomat	Ön	f	17300	10176	4467503	Elxan	(070) 607-52-07	2020-11-17
1825	Bakı	Mercedes	E 220	2008	Universal	Yaş Asfalt	2.2	143	Dizel	316000	Avtomat	Arxa	f	20000	11765	4469899	Elxan	(070) 990-13-13	2020-11-17
1785	Bakı	Hyundai	Elantra	2016	Sedan	Qara	2	150	Benzin	68417	Avtomat	Ön	f	24800	14588	4428108	Ilgar	(070) 900-28-48	2020-11-17
1775	Sumqayıt	Mercedes	C 240	2000	Sedan	Gümüşü	2.4	170	Benzin	271300	Avtomat	Tam	f	12700	7471	4428859	Elşan	(055) 895-48-88	2020-11-17
1826	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	1.6	180	Benzin	52000	Avtomat	Ön	f	21300	12529	4475754	Emin	(051) 333-31-14	2020-11-17
1827	Ağcabədi	Hyundai	ix35	2010	Offroader / SUV	Qara	2.4	178	Benzin	67820	Avtomat	Tam	f	23500	13824	4475766	Zahid	(050) 464-15-16	2020-11-17
1828	Bakı	Toyota	Camry	2016	Sedan	Boz	2.5	181	Benzin	97100	Avtomat	Ön	f	31450	18500	4452406	Hesen	(055) 273-23-23	2020-11-17
1829	Bakı	Opel	Astra	1998	Universal	Göy	1.6	101	Benzin	430444	Avtomat	Ön	f	8200	4824	4475761	Elçin 	(051) 840-02-02	2020-11-17
1830	Bakı	Hyundai	Elantra	2014	Sedan	Gümüşü	1.8	150	Benzin	97000	Avtomat	Ön	f	18400	10824	4441194	Taleh	(055) 410-60-07	2020-11-17
1831	Bakı	Yamaha	Vino	2012	Motosiklet	Tünd qırmızı	0.1	7	Benzin	45000	Avtomat	Ön	f	1250	735	4475774	Renat	(077) 277-23-27	2020-11-17
1832	Bakı	Chevrolet	Cruze	2013	Sedan	Tünd qırmızı	1.4	141	Benzin	102000	Avtomat	Ön	f	15000	8824	4461275	Orxan	(055) 261-31-32	2020-11-17
1833	Bakı	LADA (VAZ)	2106	1982	Sedan	Qırmızı	1.5	65	Benzin	290000	Mexaniki	Arxa	f	3400	2000	4475776	Qalib	(055) 700-45-96	2020-11-17
1834	Bakı	Toyota	Prado	2015	Offroader / SUV	Ağ	2.7	167	Benzin	61500	Avtomat	Tam	f	58990	34700	4438530	ALİ	(055) 226-22-57	2020-11-17
1835	Bakı	Kia	Optima	2006	Sedan	Gümüşü	2	144	Dizel	298000	Avtomat	Ön	f	16200	9529	4475770	Feyruz	(070) 775-21-21	2020-11-17
1836	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Göy	1.4	130	Benzin	175000	Mexaniki	Ön	f	10400	6118	4446455	Anar	(050) 766-31-92	2020-11-17
1837	Şəmkir	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.5	65	Benzin	71000	Mexaniki	Arxa	f	8500	5000	4475777	Asif	(050) 338-62-41	2020-11-17
1839	Gəncə	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	285000	Avtomat	Arxa	f	15500	9118	4475800	Ilkin	(050) 415-78-50	2020-11-17
1840	Bakı	Hyundai	Elantra	2007	Sedan	Ağ	1.6	110	Dizel	177000	Avtomat	Ön	f	14000	8235	4475801	Ceyhun	(055) 267-17-70	2020-11-17
1841	Bakı	Mercedes	190	1991	Sedan	Gümüşü	2	122	Benzin	198000	Avtomat	Arxa	f	6600	3882	4475803	Tomka	(050) 437-98-73	2020-11-17
1842	Bakı	BMW	320	2006	Sedan	Ağ	2	170	Benzin	162000	Avtomat	Arxa	f	13000	7647	4448398	Ramin	(055) 974-19-99	2020-11-17
1843	Bakı	Mercedes	C 200	1977	Universal	Yaş Asfalt	2	136	Benzin	123654	Mexaniki	Arxa	f	10000	5882	4475804	Elsad	(055) 329-19-19	2020-11-17
1844	Cəlilabad	Opel	Astra	1998	Universal	Boz	2	136	Dizel	506328	Mexaniki	Ön	f	7400	4353	4475805	AraZ	(050) 447-94-31	2020-11-17
1845	Bakı	Mercedes	190	1991	Sedan	Boz	2	122	Benzin	200000	Avtomat	Arxa	f	7000	4118	4475808	Elmir Süleymanov	(077) 271-72-72	2020-11-17
1846	Sumqayıt	Kia	Cerato	2013	Sedan	Ağ	1.6	132	Benzin	130000	Avtomat	Ön	f	19800	11647	4475793	Səid	(050) 755-13-54	2020-11-17
1847	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	97	Dizel	153000	Mexaniki	Ön	f	12500	7353	4475811	Mehemmed	(055) 991-92-98	2020-11-17
1848	Bakı	Toyota	Prado	2014	Offroader / SUV	Ağ	2.7	167	Benzin	131000	Avtomat	Tam	f	51000	30000	4448766	Ramin	(070) 876-10-20	2020-11-17
1849	Bakı	Ford	Fusion	2017	Sedan	Bənövşəyi	1.5	181	Benzin	80000	Avtomat	Ön	f	26000	15294	4423054	Eldar	(055) 349-40-66	2020-11-17
1850	Gəncə	Opel	Astra	1998	Hetçbek / Liftbek	Yaşıl	2	136	Benzin	152362	Avtomat	Ön	f	9500	5588	4475727	Ruslan	(055) 406-23-53	2020-11-17
1851	Bakı	Khazar	LX	2020	Sedan	Ağ	1.7	113	Benzin	20000	Mexaniki	Ön	f	16998	9999	4475729	Qudret	(055) 594-25-96	2020-11-17
1852	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	127000	Avtomat	Ön	f	15300	9000	4475730	Heci	(055) 947-05-05	2020-11-17
1853	Mingəçevir	Mercedes	E 230	1992	Sedan	Yaş Asfalt	2.3	150	Benzin	296000	Avtomat	Arxa	f	6900	4059	4475731	sahib	(055) 742-01-68	2020-11-17
1854	Masallı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	230000	Avtomat	Tam	f	37230	21900	4475733	İlkin	(051) 441-71-21	2020-11-17
1855	Mingəçevir	Toyota	Hilux	2013	Pikap	Ağ	2.5	143	Dizel	210000	Mexaniki	Tam	f	38000	22353	4475734	SƏBUHİ	(070) 559-25-00	2020-11-17
1856	Bakı	Ford	Fusion	2016	Sedan	Qara	1.5	181	Benzin	29577	Avtomat	Ön	f	21300	12529	4471759	Əzim	(055) 789-14-46	2020-11-17
1857	Sumqayıt	Hyundai	Santa Fe	2012	Offroader / SUV	Ağ	2.4	174	Benzin	130000	Avtomat	Tam	f	25500	15000	4475736	Aqil	(055) 430-98-88	2020-11-17
1858	Bakı	LADA (VAZ)	21099	1994	Sedan	Ağ	1.5	75	Benzin	572434	Mexaniki	Ön	f	4900	2882	4475739	Bayram	(055) 738-08-47	2020-11-17
1859	Bakı	Mercedes	Axor 3028	2007	Yük maşını	Ağ	12	625	Dizel	175357	Mexaniki	Arxa	f	45000	26471	4465043	Vahid	(055) 445-05-00	2020-11-17
1860	Bakı	Dacia	Logan	2007	Universal	Gümüşü	1.5	86	Dizel	190000	Mexaniki	Ön	f	11500	6765	4475740	Axmed	(050) 391-00-58	2020-11-17
1861	Bakı	Hyundai	i30	2007	Hetçbek / Liftbek	Boz	1.6	132	Dizel	232000	Avtomat	Ön	f	15500	9118	4403053	Nemət	(077) 444-42-00	2020-11-17
1862	Ağdaş	Mercedes	E 230	1997	Sedan	Yaş Asfalt	2.3	150	Benzin	180000	Avtomat	Arxa	f	12300	7235	4475697	Tahir	(055) 578-61-51	2020-11-17
1863	Bakı	BMW	320	2001	Sedan	Gümüşü	2.2	170	Benzin	277700	Avtomat	Arxa	f	10300	6059	4467286	Rovşən	(050) 576-50-00	2020-11-17
1864	Bakı	Mitsubishi	Pajero Pinin	2005	Offroader / SUV	Qara	2	136	Benzin	135000	Mexaniki	Tam	f	11000	6471	4475704	Elçin	(055) 816-08-16	2020-11-17
1865	Bakı	Mercedes	ML 320	2000	Offroader / SUV	Göy	3.2	218	Benzin	230000	Avtomat	Tam	f	10200	6000	4475705	Elsen	(070) 741-41-64	2020-11-17
1866	Bakı	Opel	Vectra	1991	Sedan	Yaş Asfalt	2	136	Benzin	430123	Avtomat	Ön	f	4000	2353	4475706	Mehemmed	(050) 631-63-44	2020-11-17
1867	Tərtər	LADA (VAZ)	2109	1992	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	100000	Mexaniki	Ön	f	4600	2706	4475708	Rustəm	(051) 786-23-60	2020-11-17
1868	Sumqayıt	LADA (VAZ)	2107	2009	Sedan	Göy	1.6	75	Benzin	140000	Mexaniki	Arxa	f	7300	4294	4475712	Pervin	(050) 765-92-01	2020-11-17
1869	Sumqayıt	Nissan	Tiida	2008	Hetçbek / Liftbek	Qara	1.6	110	Benzin	178000	Avtomat	Ön	f	11000	6471	4475707	Anar	(050) 318-43-64	2020-11-17
1870	Bakı	Mercedes	B 170	2006	Hetçbek / Liftbek	Qara	1.7	116	Benzin	166000	Avtomat	Ön	f	10500	6176	4475713	Cavid	(055) 742-42-11	2020-11-17
1871	Bakı	Nissan	Tiida	2007	Sedan	Bej	1.5	75	Benzin	148000	Avtomat	Ön	f	10800	6353	4475716	Ferid	(077) 715-90-10	2020-11-17
1872	Qusar	Volkswagen	Jetta	2005	Sedan	Göy	2.5	170	Benzin	190000	Avtomat	Ön	f	9200	5412	4475717	aydin	(051) 312-77-15	2020-11-17
1873	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Yaşıl	1.5	76	Hibrid	90000	Avtomat	Ön	f	20660	12153	4475715	Ilkin	(055) 409-89-68	2020-11-17
1874	Lənkəran	Mercedes	E 220	2002	Sedan	Yaşıl	2.2	170	Dizel	441362	Avtomat	Arxa	f	16300	9588	4475714	Məhərrəm	(050) 631-85-95	2020-11-17
1875	Bakı	Nissan	Sunny	2012	Sedan	Qara	1.5	105	Benzin	123000	Avtomat	Ön	f	14300	8412	4475719	Azer	(050) 254-45-55	2020-11-17
1876	Bakı	Land Rover	Range Rover	2003	Offroader / SUV	Qara	4.4	286	Benzin	285878	Avtomat	Tam	f	26900	15824	4462212	Asif	(070) 301-12-12	2020-11-17
1877	Bakı	Changan	Eado	2013	Hetçbek / Liftbek	Qara	1.6	125	Benzin	152000	Avtomat	Ön	f	13400	7882	4475720	Ferid	(055) 224-11-93	2020-11-17
1878	Bakı	Hyundai	Sonata	2008	Sedan	Yaş Asfalt	2.4	174	Benzin	130000	Avtomat	Ön	f	17500	10294	4475722	Elçin	(055) 511-57-22	2020-11-17
1879	Bakı	Toyota	Avalon	2018	Sedan	Göy	2.5	200	Hibrid	18000	Avtomat	Ön	f	72590	42700	4420535	Sultan	(055) 289-08-08	2020-11-17
1881	Bakı	Ford	Fusion	2017	Sedan	Ağ	1.5	181	Benzin	95200	Avtomat	Ön	f	22800	13412	4447675	 Əziz 	(077) 488-68-91	2020-11-17
1882	Bakı	Hyundai	Sonata	2011	Sedan	Boz	2	274	Benzin	103349	Avtomat	Ön	f	19500	11471	4475744	Zaur	(055) 613-83-31	2020-11-17
1883	Gəncə	Opel	Vectra	1994	Hetçbek / Liftbek	Yaşıl	1.8	85	Benzin	370000	Mexaniki	Ön	f	4700	2765	4475745	Ramiz	(055) 734-57-15	2020-11-17
1884	Bakı	Mercedes	Viano	2007	Van	Qırmızı	2.2	150	Dizel	254000	Avtomat	Arxa	f	25500	15000	4475738	Rövşen	(050) 621-33-94	2020-11-17
1885	Bakı	Toyota	Prius	2020	Hetçbek / Liftbek	Ağ	1.8	136	Benzin	16000	Avtomat	Ön	f	38930	22900	4348854	İlkin	(055) 697-52-15	2020-11-17
1887	Bakı	Mercedes	C 220	1998	Sedan	Tünd qırmızı	2.2	143	Dizel	376400	Avtomat	Arxa	f	12200	7176	4437324	Vüsal	(055) 427-00-33	2020-11-17
1888	Biləsuvar	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	122000	Avtomat	Ön	f	15900	9353	4475675	Zeynal	(050) 358-86-87	2020-11-17
1889	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	2	136	Benzin	245000	Avtomat	Tam	f	9000	5294	4475676	Tamerlan	(055) 853-98-07	2020-11-17
1890	Gəncə	LADA (VAZ)	2107	2010	Sedan	Ağ	1.5	65	Benzin	166194	Mexaniki	Arxa	f	7700	4529	4475682	Ismayil	(055) 412-29-28	2020-11-17
1891	Bakı	Mercedes	G 55 Brabus K8	2009	Offroader / SUV	Qara	6.1	530	Benzin	110000	Avtomat	Tam	f	119000	70000	4475678	Natiq	(050) 277-11-11	2020-11-17
1892	Bakı	LADA (VAZ)	Priora	2012	Sedan	Ağ	1.6	106	Benzin	187000	Mexaniki	Ön	f	11300	6647	4475670	Rövşən	(055) 253-06-52	2020-11-17
1893	Bakı	Opel	Corsa	2014	Hetçbek / Liftbek	Ağ	1.4	100	Benzin	186800	Avtomat	Ön	f	12000	7059	4475680	Orxan	(055) 939-88-56	2020-11-17
1894	Mingəçevir	LADA (VAZ)	2114	2005	Hetçbek / Liftbek	Boz	1.5	75	Benzin	326000	Mexaniki	Ön	f	6900	4059	4475684	Taleh	(055) 652-61-61	2020-11-17
1895	Şamaxı	LADA (VAZ)	2107	2011	Sedan	Ağ	1.5	65	Benzin	58000	Mexaniki	Arxa	f	7700	4529	4475683	Davud	(055) 222-42-02	2020-11-17
1896	Bakı	LADA (VAZ)	2106	1983	Sedan	Göy	1.6	75	Benzin	231524	Mexaniki	Arxa	f	4400	2588	4475688	Seymur	(050) 629-91-41	2020-11-17
1897	Gəncə	LADA (VAZ)	2106	1991	Sedan	Qara	1.5	65	Benzin	123000	Mexaniki	Arxa	f	3500	2059	4475654	Teymur	(055) 630-08-69	2020-11-17
1898	Sumqayıt	Mercedes	E 200	1997	Sedan	Bənövşəyi	2	136	Benzin	350000	Avtomat	Arxa	f	10300	6059	4475658	Sebuhi	(050) 765-90-03	2020-11-17
1899	Bakı	Mercedes	C 280	2000	Sedan	Göy	2.8	197	Benzin	240000	Avtomat	Arxa	f	12000	7059	4475659	Elşən	(055) 439-18-29	2020-11-17
1900	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Gümüşü	1.6	126	Dizel	53800	Avtomat	Ön	f	15000	8824	4475661	Həsən	(050) 570-84-84	2020-11-17
1901	Sumqayıt	LADA (VAZ)	2106	2004	Sedan	Ağ	1.6	75	Benzin	120000	Mexaniki	Arxa	f	4900	2882	4475664	Xanlar	(055) 511-52-82	2020-11-17
1902	Bakı	Land Rover	Range Rover	2010	Offroader / SUV	Ağ	3.6	275	Dizel	200000	Avtomat	Tam	f	58555	34444	4475665	Sirac	(055) 222-08-74	2020-11-17
1903	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Göy	1.3	90	Benzin	219000	Mexaniki	Ön	f	12600	7412	4475667	Əli	(055) 300-83-83	2020-11-17
1904	Bakı	Ford	Transit	1998	Yük maşını	Ağ	2.5	96	Dizel	423700	Mexaniki	Arxa	f	21800	12824	4475671	perviz 	(070) 563-05-55	2020-11-17
1905	Sumqayıt	Mercedes	C 220	1995	Sedan	Qara	2.2	143	Benzin	241452	Avtomat	Arxa	f	7800	4588	4469991	Allahverdi	(050) 751-93-62	2020-11-17
1906	Bakı	BMW	525	1995	Sedan	Qara	2.5	192	Benzin	352404	Mexaniki	Arxa	f	9000	5294	4475693	Эльвин	(050) 306-91-01	2020-11-17
1907	Bakı	Opel	Signum	2003	Hetçbek / Liftbek	Boz	2.2	160	Benzin	280000	Avtomat	Ön	f	8000	4706	4475694	Roman	(055) 211-75-21	2020-11-17
1908	Bakı	Hyundai	ix35	2013	Offroader / SUV	Ağ	2	166	Benzin	86000	Avtomat	Tam	f	31000	18235	4457189	Sahib	(070) 998-25-05	2020-11-17
1909	Bakı	Hyundai	Getz	2006	Hetçbek / Liftbek	Gümüşü	1.5	110	Dizel	168500	Mexaniki	Ön	f	10200	6000	4461668	TAHIR	(055) 826-10-10	2020-11-17
1910	Bakı	Kia	Optima	2012	Sedan	Mavi	2	274	Benzin	118860	Avtomat	Ön	f	19800	11647	4475647	Bəxtiyar	(055) 933-67-58	2020-11-17
1911	Ağcabədi	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	177	Benzin	299000	Avtomat	Arxa	f	15300	9000	4475648	Şahin 	(050) 664-50-76	2020-11-17
1912	Bakı	Kia	Ceed	2011	Universal	Gümüşü	1.4	125	Benzin	120000	Mexaniki	Ön	f	14500	8529	4475649	Babek	(070) 600-17-01	2020-11-17
1913	Bakı	LADA (VAZ)	2103	1983	Sedan	Yaşıl	1.3	65	Benzin	16000	Mexaniki	Arxa	f	10200	6000	4437714	Emil	(050) 280-21-80	2020-11-17
1914	Bakı	GAZ	3110	1998	Sedan	Qara	2.4	131	Benzin	150000	Mexaniki	Arxa	f	3300	1941	4475653	İnqilab	(051) 510-00-40	2020-11-17
1915	Lənkəran	GAZ	2705-757	1999	Mikroavtobus	Ağ	2.7	107	Dizel	888800	Mexaniki	Arxa	f	5000	2941	4475571	Anar	(050) 750-60-11	2020-11-17
1916	Bakı	Mercedes	E 280	2008	Sedan	Qara	3	231	Benzin	251000	Avtomat	Arxa	f	24000	14118	4475656	Aziz	(055) 324-11-34	2020-11-17
1917	Sumqayıt	Mercedes	190	1990	Sedan	Qara	1.8	109	Benzin	425000	Mexaniki	Arxa	f	5200	3059	4475638	Roman	(055) 873-96-73	2020-11-17
1918	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	130000	Avtomat	Ön	f	22800	13412	4475640	elmeddin	(055) 270-43-19	2020-11-17
1919	Sumqayıt	Land Rover	Discovery	2005	Offroader / SUV	Qara	2.7	190	Dizel	208000	Avtomat	Tam	f	25000	14706	4465495	Şahin	(050) 300-96-00	2020-11-17
1920	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	210000	Variator	Ön	f	12000	7059	4468247	Babek	(055) 455-28-37	2020-11-17
1921	Bakı	Ford	Kuga	2011	Offroader / SUV	Gümüşü	2.5	200	Benzin	115000	Avtomat	Tam	f	18000	10588	4210475	Ələkbər	(077) 355-15-07	2020-11-17
1923	Bakı	BMW	530	2011	Sedan	Gümüşü	3	272	Benzin	97685	Avtomat	Arxa	f	36550	21500	4399822	Natiq	(050) 520-95-22	2020-11-17
1924	Gəncə	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	91000	Mexaniki	Arxa	f	7500	4412	4475657	Vasif	(055) 202-23-46	2020-11-17
1925	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	90000	Avtomat	Tam	f	44540	26200	3892383	ramil	(051) 749-57-57	2020-11-17
1886	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	153	Benzin	112000	Avtomat	Ön	f	22000	12941	4421631	Sahib	(050) 211-36-29	2020-11-17
1927	Bakı	Mercedes	E 350	2010	Sedan	Ağ	3.5	306	Benzin	195000	Avtomat	Arxa	f	36550	21500	4467429	Namiq	(055) 211-01-14	2020-11-17
1929	Gəncə	Hyundai	Sonata	2008	Sedan	Ağ	2	165	Benzin	149000	Avtomat	Ön	f	19000	11176	4475625	Perviz	(055) 332-32-00	2020-11-17
1930	Bakı	Mercedes	C 180	1998	Sedan	Yaşıl	1.8	122	Benzin	345217	Mexaniki	Arxa	f	9800	5765	4475626	Ramin	(077) 270-20-20	2020-11-17
1931	Gəncə	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	132430	Mexaniki	Arxa	f	5500	3235	4475624	Huseyn 	(055) 727-76-14	2020-11-17
1932	Gəncə	BMW	740	2005	Sedan	Qara	4	306	Benzin	252000	Avtomat	Arxa	f	22950	13500	4475628	Oqtay	(055) 277-60-65	2020-11-17
1933	Bakı	LADA (VAZ)	Niva	1997	Offroader / SUV	Ağ	1.7	80	Benzin	150000	Mexaniki	Tam	f	5900	3471	4475632	Ramil	(077) 503-23-21	2020-11-17
1934	Tovuz	Mercedes	E 240	2000	Sedan	Göy	2.6	177	Benzin	180000	Avtomat	Arxa	f	11800	6941	4475633	Raqif	(051) 501-06-60	2020-11-17
1935	Bakı	BMW	X5	2005	Offroader / SUV	Boz	3	231	Dizel	462000	Avtomat	Tam	f	22500	13235	4475637	Hidayet	(050) 448-03-36	2020-11-17
1936	Goranboy	Kia	Optima	2011	Sedan	Qara	2	274	Benzin	117000	Avtomat	Ön	f	19000	11176	4475594	Ehtiram	(077) 725-22-22	2020-11-17
1937	Şabran	LADA (VAZ)	2115	2003	Sedan	Gümüşü	1.5	75	Benzin	590000	Mexaniki	Ön	f	6200	3647	4475601	Elşad	(077) 621-77-75	2020-11-17
1938	Bakı	Chevrolet	Cruze	2016	Hetçbek / Liftbek	Göy	1.4	153	Benzin	120000	Avtomat	Ön	f	18200	10706	4450345	Zaur	(050) 200-79-09	2020-11-17
1939	Saatlı	LADA (VAZ)	2107	2008	Sedan	Tünd qırmızı	1.6	75	Benzin	174222	Mexaniki	Arxa	f	7200	4235	4475597	Orxan	(050) 562-62-32	2020-11-17
1940	Xaçmaz	GAZ	330200	2003	Yük maşını	Bej	2.4	96	Benzin	99000	Mexaniki	Arxa	f	6300	3706	4475610	Ağalar	(050) 512-69-59	2020-11-17
1941	Gəncə	Mercedes	E 320	2002	Sedan	Gümüşü	3.2	224	Benzin	210000	Avtomat	Arxa	f	16600	9765	4475607	Mətləb	(051) 881-81-71	2020-11-17
1942	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	63805	Avtomat	Ön	f	15700	9235	4475609	Elcin	(050) 262-00-28	2020-11-17
1943	Sumqayıt	Toyota	Land Cruiser	2001	Offroader / SUV	Ağ	4.7	265	Benzin	352000	Avtomat	Tam	f	23000	13529	4475613	Elsad	(055) 765-52-66	2020-11-17
1944	Bakı	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	125000	Mexaniki	Arxa	f	7200	4235	4404767	Sahib	(050) 444-30-85	2020-11-17
1945	Kürdəmir	BMW	318	1998	Sedan	Qara	1.9	143	Benzin	337000	Avtomat	Arxa	f	10500	6176	4475615	İsmayil	(070) 704-22-70	2020-11-17
1946	Bakı	Chevrolet	Malibu	2017	Sedan	Boz	1.5	180	Benzin	106000	Avtomat	Ön	f	24500	14412	4475622	Adil	(055) 752-88-23	2020-11-17
1947	Mingəçevir	LADA (VAZ)	2109	1985	Sedan	Yaş Asfalt	1.3	65	Benzin	200858	Mexaniki	Arxa	f	2750	1618	4475621	Ayaz	(050) 790-47-56	2020-11-17
1948	Salyan	Mercedes	E 240	1998	Sedan	Ağ	2.4	170	Benzin	280000	Mexaniki	Arxa	f	12000	7059	4475623	Rəsad	(055) 290-04-34	2020-11-17
1949	Naxçıvan	Chery	A-15 Cowin/Amulet	2013	Sedan	Ağ	1.5	109	Benzin	156000	Mexaniki	Ön	f	13000	7647	4475618	Huseyn	(055) 526-48-46	2020-11-17
1950	Bakı	Hyundai	Accent	2005	Sedan	Gümüşü	1.4	90	Dizel	400000	Mexaniki	Ön	f	7300	4294	4475570	Tariyel	(055) 409-96-09	2020-11-17
1951	Bakı	BMW	530	2019	Sedan	Ağ	2	245	Benzin	15000	Avtomat	Arxa	f	77010	45300	4382188	Elnur	(055) 703-06-76	2020-11-17
1954	Bakı	Ford	Transit	2012	Furqon	Qırmızı	2.2	140	Dizel	231000	Mexaniki	Arxa	f	27030	15900	4448902	Sahin	(050) 477-07-58	2020-11-17
1956	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Qara	1.4	97	Benzin	179088	Mexaniki	Ön	f	10500	6176	4429607	Sahib	(050) 555-77-85	2020-11-17
1957	Bakı	Mercedes	S 350	2006	Sedan	Boz	3.5	272	Benzin	168000	Avtomat	Arxa	f	34850	20500	4411814	Tural	(050) 540-33-24	2020-11-17
1958	Bakı	BMW	328	2015	Sedan	Ağ	2	245	Dizel	87000	Avtomat	Arxa	f	38250	22500	4475555	Turac	(050) 375-00-99	2020-11-17
1959	Bakı	Mercedes	C 180	1998	Universal	Mavi	1.8	122	Benzin	248755	Mexaniki	Arxa	f	8900	5235	4475556	Samil dayi	(050) 676-92-97	2020-11-17
1960	Sumqayıt	Ford	Ranger	2018	Pikap	Boz	2.2	175	Dizel	19000	Avtomat	Tam	f	54060	31800	4346960	Shamil	(055) 204-68-88	2020-11-17
1961	Bakı	Toyota	Avalon	2006	Sedan	Ağ	3.5	268	Benzin	283000	Avtomat	Ön	f	17500	10294	4458670	Toğrul	(050) 582-92-20	2020-11-17
1962	Lənkəran	Lexus	RX 300	1999	Offroader / SUV	Gümüşü	3	223	Benzin	152000	Avtomat	Tam	f	11800	6941	4475557	Yagub	(070) 303-77-77	2020-11-17
1963	Bakı	Chevrolet	Cruze	2012	Sedan	Göy	1.4	141	Benzin	100000	Avtomat	Ön	f	14700	8647	4475565	Elnur	(050) 789-72-39	2020-11-17
1964	Bakı	Iran Khodro	Azsamand	2014	Sedan	Boz	1.8	110	Benzin	287000	Mexaniki	Ön	f	6992	4113	4475567	Anar	(055) 217-54-22	2020-11-17
1965	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2	166	Benzin	175000	Avtomat	Tam	f	22000	12941	4475572	Derya	(050) 240-26-66	2020-11-17
1966	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2	274	Benzin	65500	Avtomat	Ön	f	28500	16765	4452989	Müşfiq	(070) 739-52-67	2020-11-17
1967	Bakı	Opel	Astra	2004	Hetçbek / Liftbek	Qızılı	1.4	90	Benzin	156000	Mexaniki	Ön	f	10200	6000	4475579	Ramal	(051) 627-44-44	2020-11-17
1968	Gəncə	KamAz	5320	1989	Yük maşını	Göy	4.5	150	Dizel	600000	Mexaniki	Arxa	f	18500	10882	4475582	Sehriyar	(077) 635-90-90	2020-11-17
1969	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	174599	Mexaniki	Tam	f	8600	5059	4461027	Elekber	(055) 518-93-16	2020-11-17
1970	Bakı	Ford	Transit	1999	Furqon	Yaş Asfalt	2.5	126	Dizel	189000	Mexaniki	Arxa	f	16000	9412	4475583	Azer	(055) 743-44-53	2020-11-17
1971	Bərdə	Ford	Escort	1994	Universal	Göy	1.8	90	Dizel	214521	Mexaniki	Arxa	f	4000	2353	4475508	Elnur	(050) 851-09-27	2020-11-17
1972	Bakı	Chevrolet	Cruze	2017	Sedan	Qara	1.4	141	Benzin	69100	Avtomat	Ön	f	17700	10412	4378878	Natiq	(050) 290-58-43	2020-11-17
1973	Ucar	LADA (VAZ)	2106	1999	Sedan	Ağ	1.6	75	Benzin	135000	Mexaniki	Arxa	f	6500	3824	4475515	Murad	(055) 387-26-97	2020-11-17
1974	Bakı	Toyota	Corolla	2008	Sedan	Boz	1.4	90	Dizel	127000	Mexaniki	Ön	f	17900	10529	4291325	Murad	(050) 978-60-05	2020-11-17
1975	Bakı	Mercedes	190	1992	Sedan	Qara	2	122	Benzin	355000	Mexaniki	Arxa	f	4950	2912	4475522	Aliqadir	(050) 723-78-34	2020-11-17
1976	Mingəçevir	Mercedes	C 220	1998	Universal	Yaşıl	2.2	143	Dizel	560000	Avtomat	Arxa	f	11800	6941	4475523	Anar 	(051) 825-29-39	2020-11-17
1952	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2.4	174	Benzin	186000	Avtomat	Ön	f	16800	9882	4405957	İqbal	(055) 866-32-91	2020-11-17
1977	Bakı	Hyundai	Elantra	2015	Sedan	Yaş Asfalt	1.8	150	Benzin	69000	Avtomat	Ön	f	19500	11471	4455922	aqsin	(050) 653-71-85	2020-11-17
1978	Gəncə	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	291235	Mexaniki	Arxa	f	6000	3529	4475538	Xəqani	(055) 724-41-15	2020-11-17
1979	Bakı	Kia	Sorento	2009	Offroader / SUV	Yaş Asfalt	2	184	Dizel	129000	Avtomat	Ön	f	24500	14412	4475539	Anar	(055) 210-49-87	2020-11-17
1980	Bakı	Toyota	RAV 4	2013	Offroader / SUV	Yaş Asfalt	2	150	Benzin	52450	Avtomat	Tam	f	38250	22500	4475343	ZAUR 	(050) 207-63-63	2020-11-17
1981	Bakı	Chevrolet	Cruze	2012	Sedan	Göy	1.4	141	Benzin	235000	Avtomat	Ön	f	13300	7824	4467235	Elnur	(055) 546-00-95	2020-11-17
1982	Sumqayıt	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	110775	Mexaniki	Arxa	f	8200	4824	4475537	Murad	(070) 317-73-77	2020-11-17
1983	Bakı	GAZ	3110	2002	Sedan	Gümüşü	2.4	131	Benzin	233400	Mexaniki	Arxa	f	4950	2912	4475548	Səməd	(070) 721-96-95	2020-11-17
1984	Bakı	Mercedes	C 230	1999	Sedan	Qara	2.3	193	Benzin	260000	Avtomat	Arxa	f	11800	6941	4475243	Said	(070) 302-03-21	2020-11-17
1985	Gəncə	Toyota	Camry	2018	Sedan	Qara	2.5	181	Benzin	24000	Avtomat	Ön	f	49640	29200	4475551	Farhad	(099) 799-99-51	2020-11-17
1986	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	185000	Mexaniki	Ön	f	10600	6235	4475553	Aga	(070) 850-44-52	2020-11-17
1987	Bakı	Hyundai	Sonata	2013	Sedan	Qara	2	274	Benzin	107000	Avtomat	Ön	f	22500	13235	4419045	Malik	(055) 436-77-77	2020-11-17
1988	Bakı	BMW	520	2015	Sedan	Ağ	2	184	Dizel	96000	Avtomat	Arxa	f	48450	28500	4439720	Ali	(055) 578-78-74	2020-11-17
1989	Bakı	Hyundai	i30	2009	Universal	Yaş Asfalt	2	150	Benzin	247000	Avtomat	Ön	f	12500	7353	4448115	Eleddin	(055) 617-51-48	2020-11-17
1990	Bakı	GAZ	31029	2004	Sedan	Gümüşü	2.4	131	Benzin	150000	Mexaniki	Arxa	f	5700	3353	4475585	Qismet	(070) 299-50-75	2020-11-17
1991	Bakı	Kia	Rio	2008	Sedan	Gümüşü	1.5	110	Dizel	145000	Avtomat	Ön	f	12800	7529	4474863	Elmar	(050) 311-61-17	2020-11-17
1992	Sumqayıt	Mitsubishi	Galant	1997	Sedan	Boz	2.5	161	Benzin	240000	Avtomat	Ön	f	6500	3824	4475586	Orxan	(050) 356-55-14	2020-11-17
1993	Bakı	LADA (VAZ)	Niva	2006	Offroader / SUV	Ağ	1.7	80	Benzin	117000	Mexaniki	Tam	f	8200	4824	4475587	Server	(050) 659-49-89	2020-11-17
1994	Gəncə	Chevrolet	Cruze	2015	Sedan	Qırmızı	1.4	141	Benzin	89900	Avtomat	Ön	f	15700	9235	4443765	Genceli	(050) 280-42-42	2020-11-17
1995	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	145000	Avtomat	Ön	f	17400	10235	4475593	Sahbaz	(050) 993-80-44	2020-11-17
1996	Sumqayıt	Hyundai	Elantra	2008	Sedan	Qara	1.6	148	Benzin	180425	Avtomat	Ön	f	14300	8412	4475584	Kamran	(055) 622-32-82	2020-11-17
1997	Bakı	Chevrolet	Trax	2019	Offroader / SUV	Gümüşü	1.4	141	Benzin	13900	Avtomat	Tam	f	25800	15176	4475480	Kamran	(050) 334-41-01	2020-11-17
1998	Sumqayıt	BMW	320	1998	Sedan	Göy	2	150	Benzin	220000	Avtomat	Arxa	f	9800	5765	4457234	Ruzi	(050) 667-66-50	2020-11-17
1999	Bakı	Kia	Ceed	2010	Universal	Qəhvəyi	1.6	115	Dizel	108273	Avtomat	Ön	f	17900	10529	4455761	Elxan	(050) 441-39-89	2020-11-17
2000	Bakı	Mercedes	E 230	1991	Sedan	Gümüşü	2.3	150	Benzin	178000	Avtomat	Arxa	f	7600	4471	4475481	Nemet	(070) 268-90-09	2020-11-17
2001	Şəki	LADA (VAZ)	2107	2008	Sedan	Yaşıl	1.6	75	Benzin	150000	Mexaniki	Arxa	f	7200	4235	4475483	Feqan	(055) 397-13-36	2020-11-17
2002	Bakı	Ford	Fusion	2017	Sedan	Ağ	1.5	181	Benzin	120000	Avtomat	Ön	f	24500	14412	4448424	ilkin	(055) 259-29-29	2020-11-17
2003	Bakı	Toyota	Land Cruiser	2003	Offroader / SUV	Qara	4.5	273	Benzin	250000	Avtomat	Tam	f	19500	11471	4475485	Fexreddin	(050) 453-70-70	2020-11-17
2004	Bərdə	LADA (VAZ)	2104	2011	Universal	Ağ	1.6	75	Benzin	76000	Mexaniki	Arxa	f	9200	5412	4475490	Feyruz	(050) 324-22-85	2020-11-17
2005	Bakı	Mercedes	E 200	2007	Sedan	Qara	1.8	184	Benzin	220000	Avtomat	Arxa	f	21800	12824	4475492	Hidayet	(050) 509-19-99	2020-11-17
2006	Bakı	Mercedes	Vito 111	2009	Van	Ağ	2.2	150	Dizel	232000	Mexaniki	Arxa	f	29000	17059	4475493	Telet	(077) 337-82-42	2020-11-17
2007	Tərtər	LADA (VAZ)	2106	1994	Sedan	Ağ	1.5	65	Benzin	750000	Mexaniki	Arxa	f	3500	2059	4475494	Ramil	(050) 358-41-47	2020-11-17
2008	Bakı	Tofas	Sahin	1997	Sedan	Yaşıl	1.6	86	Benzin	213000	Mexaniki	Arxa	f	2900	1706	4428528	Resul	(050) 332-77-26	2020-11-17
2009	Bakı	LADA (VAZ)	Priora	2013	Sedan	Yaş Asfalt	1.6	106	Benzin	122000	Mexaniki	Ön	f	11900	7000	4475434	İsmayıl	(070) 833-33-98	2020-11-17
2011	Sumqayıt	Mercedes	C 240	2002	Sedan	Gümüşü	2.6	177	Benzin	223000	Avtomat	Arxa	f	8900	5235	4475440	ramil	(055) 309-65-22	2020-11-17
2012	Quba	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	144444	Mexaniki	Arxa	f	7500	4412	4475436	Murad	(055) 738-69-31	2020-11-17
2014	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	153	Benzin	140000	Avtomat	Ön	f	14300	8412	4475449	Riyad	(050) 990-47-59	2020-11-17
2015	Bakı	Dacia	Logan	2008	Universal	Boz	1.5	83	Dizel	252800	Mexaniki	Ön	f	10500	6176	4423740	Məhəmməd	(055) 478-99-77	2020-11-17
2016	Gəncə	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	96000	Mexaniki	Arxa	f	7500	4412	4475456	Tural	(055) 693-95-96	2020-11-17
2017	Bakı	Mercedes	E 240	1997	Sedan	Mavi	2.4	170	Benzin	421000	Avtomat	Arxa	f	12100	7118	4475455	Emin	(051) 998-46-40	2020-11-17
2018	Bakı	Mercedes	C 180	2000	Sedan	Gümüşü	1.8	122	Benzin	346000	Avtomat	Arxa	f	12700	7471	4475459	Anar	(055) 577-87-76	2020-11-17
2019	Bakı	Hyundai	Veloster	2012	Hetçbek / Liftbek	Göy	1.6	132	Benzin	92730	Avtomat	Ön	f	15500	9118	4405590	Xatirə	(055) 342-32-33	2020-11-17
2020	Sumqayıt	Opel	Vita	1996	Hetçbek / Liftbek	Tünd qırmızı	1.4	90	Benzin	263000	Avtomat	Ön	f	5300	3118	4475460	Perviz	(070) 835-53-69	2020-11-17
2021	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	141	Benzin	96000	Avtomat	Ön	f	17400	10235	4475461	Araz	(055) 849-89-35	2020-11-17
2022	Ağsu	Ford	Fusion	2016	Sedan	Gümüşü	2	245	Benzin	131000	Avtomat	Ön	f	25500	15000	4426112	Ilyas	(055) 870-26-06	2020-11-17
2023	Gəncə	Kia	Sorento	2012	Offroader / SUV	Gümüşü	2	184	Dizel	68500	Avtomat	Tam	f	31000	18235	4129592	Faxi	(055) 303-10-10	2020-11-17
2024	Bakı	Ford	Fusion	2014	Sedan	Ağ	1.5	181	Benzin	92876	Avtomat	Ön	f	18300	10765	4464978	Vuqar	(055) 565-26-82	2020-11-17
2025	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Göy	1.4	90	Benzin	236000	Mexaniki	Ön	f	8900	5235	4475466	Haci	(055) 257-92-31	2020-11-17
2026	Bakı	Daewoo	Nexia	2009	Sedan	Sarı	1.5	75	Benzin	338000	Mexaniki	Ön	f	5200	3059	4475467	Seyfullah 	(070) 813-74-81	2020-11-17
2027	Bakı	Toyota	Prado	2014	Offroader / SUV	Qara	2.7	167	Benzin	74000	Avtomat	Tam	f	55250	32500	4475471	Elvin	(055) 638-08-38	2020-11-17
2013	Bakı	Chevrolet	Cruze	2018	Sedan	Qara	1.4	141	Benzin	24677	Avtomat	Ön	f	18600	10941	4474873	Pərviz	(050) 205-11-72	2020-11-17
2028	Naxçıvan	LADA (VAZ)	Niva	2011	Offroader / SUV	Ağ	1.7	80	Benzin	158000	Mexaniki	Tam	f	11500	6765	4475474	Mamed	(060) 577-89-59	2020-11-17
2029	Bakı	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	130000	Mexaniki	Arxa	f	7700	4529	4475413	Behruz	(050) 378-80-38	2020-11-17
2030	Bakı	Land Rover	Discovery	2015	Offroader / SUV	Qara	3	256	Dizel	120456	Avtomat	Tam	f	73950	43500	4166069	Raul	(050) 288-22-01	2020-11-17
2032	Gəncə	LADA (VAZ)	2107	2011	Sedan	Ağ	1.6	75	Benzin	143062	Mexaniki	Arxa	f	6900	4059	4475500	Nadir	(055) 945-77-17	2020-11-17
2033	Astara	LADA (VAZ)	2106	2004	Sedan	Göy	1.6	75	Benzin	180000	Mexaniki	Arxa	f	7000	4118	4475499	Sabir	(051) 684-21-97	2020-11-17
2034	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Yaşıl	1.6	101	Benzin	232065	Avtomat	Ön	f	8600	5059	4454643	Əli	(055) 730-65-37	2020-11-17
2035	Bakı	Audi	Q5	2014	Offroader / SUV	Ağ	2	252	Benzin	120000	Avtomat	Tam	f	39950	23500	4338325	Umid	(051) 311-01-09	2020-11-17
2036	Bakı	Volkswagen	Tiguan	2014	Offroader / SUV	Qara	2	170	Benzin	47000	Avtomat	Tam	f	30000	17647	4449189	Surayya	(050) 378-03-10	2020-11-17
2037	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2	274	Benzin	74498	Avtomat	Ön	f	26500	15588	4475411	Samir	(077) 450-58-60	2020-11-17
2038	Bakı	BMW	530	2004	Sedan	Göy	3	231	Benzin	280000	Mexaniki	Arxa	f	27000	15882	4475414	Yadigar 	(055) 399-74-74	2020-11-17
2039	Şirvan	LADA (VAZ)	2106	1982	Sedan	Ağ	1.3	65	Benzin	234570	Mexaniki	Arxa	f	3700	2176	4475415	Qubad	(050) 686-47-81	2020-11-17
2040	Quba	LADA (VAZ)	2115	2011	Sedan	Yaş Asfalt	1.6	80	Benzin	369874	Mexaniki	Ön	f	7600	4471	4475357	Cina	(055) 931-60-69	2020-11-17
2041	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	2	184	Dizel	107000	Avtomat	Ön	f	24500	14412	4475410	Fikrət	(055) 744-42-22	2020-11-17
2042	Bakı	Chevrolet	Lacetti	2011	Hetçbek / Liftbek	Boz	1.4	90	Benzin	211000	Mexaniki	Ön	f	9500	5588	4475408	Ferid	(070) 709-30-35	2020-11-17
2043	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	90000	Mexaniki	Arxa	f	6300	3706	4475397	Cingiz	(050) 762-92-55	2020-11-17
2044	Şamaxı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	132912	Mexaniki	Arxa	f	7400	4353	4475409	Temur	(051) 454-49-49	2020-11-17
2045	Bakı	LADA (VAZ)	2107	1999	Sedan	Ağ	1.6	75	Benzin	406270	Mexaniki	Arxa	f	4400	2588	4443465	Babek	(055) 226-17-19	2020-11-17
2046	Bakı	LADA (VAZ)	2106	1987	Sedan	Tünd qırmızı	1.6	75	Benzin	85405	Mexaniki	Arxa	f	3300	1941	4475419	Əli	(055) 909-80-43	2020-11-17
2047	Bakı	Chevrolet	Cruze	2011	Sedan	Gümüşü	1.4	141	Benzin	150000	Avtomat	Ön	f	13500	7941	4455259	Raul	(050) 390-47-05	2020-11-17
2048	Bakı	Hyundai	Equus	2011	Sedan	Qara	3.8	290	Benzin	216000	Avtomat	Arxa	f	29700	17471	4475388	Tural	(050) 289-95-85	2020-11-17
2049	Bakı	Chevrolet	Malibu	2016	Sedan	Ağ	1.5	181	Benzin	41000	Avtomat	Ön	f	21500	12647	4448906	Yaqub 	(050) 479-84-85	2020-11-17
2050	Bakı	LADA (VAZ)	Niva	1990	Offroader / SUV	Ağ	1.7	80	Benzin	200000	Mexaniki	Arxa	f	5000	2941	4469378	Samid	(055) 645-35-35	2020-11-17
2051	Bakı	Mercedes	E 300	2010	Sedan	Qara	3	231	Dizel	283000	Avtomat	Arxa	f	37230	21900	4475399	Elçin	(055) 500-98-67	2020-11-17
2052	Bakı	Kia	Sorento	2013	Offroader / SUV	Gümüşü	2	184	Dizel	44000	Avtomat	Tam	f	29500	17353	4475405	VUSAL	(050) 201-14-10	2020-11-17
2053	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Qara	4	282	Benzin	164000	Avtomat	Tam	f	66810	39300	4446322	Elnur	(055) 384-83-82	2020-11-17
2054	Bakı	Nissan	Sentra	2017	Sedan	Boz	1.8	150	Benzin	93000	Avtomat	Ön	f	22900	13471	4472514	Razi	(070) 522-44-11	2020-11-17
2057	Bakı	Toyota	Prius	2018	Hetçbek / Liftbek	Ağ	1.8	138	Hibrid	47000	Avtomat	Ön	f	33150	19500	4281833	Nahid	(055) 779-00-04	2020-11-17
2058	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Ağ	4	282	Benzin	142000	Avtomat	Tam	f	52360	30800	4458594	Ferid	(050) 664-76-31	2020-11-17
2059	Gəncə	LADA (VAZ)	2106	1998	Sedan	Yaş Asfalt	1.6	75	Benzin	222000	Mexaniki	Arxa	f	6400	3765	4475423	Senan	(055) 458-44-66	2020-11-17
2060	Bakı	Kia	Rio	2002	Sedan	Qırmızı	1.5	75	Benzin	100000	Avtomat	Ön	f	6000	3529	4475426	rasim	(051) 450-08-00	2020-11-17
2061	Bakı	Opel	Astra	1998	Universal	Gümüşü	1.6	101	Benzin	495000	Mexaniki	Ön	f	8000	4706	4475429	İbrahim	(070) 844-37-91	2020-11-17
2062	Qusar	Mercedes	E 200	1980	Sedan	Sarı	2	136	Dizel	145300	Mexaniki	Arxa	f	5455	3209	4475431	Xelil	(050) 726-99-54	2020-11-17
2065	Bakı	Toyota	Camry	2014	Sedan	Qara	2.5	181	Benzin	172500	Avtomat	Ön	f	35700	21000	4353482	Mahir	(055) 395-46-64	2020-11-17
2066	Sumqayıt	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	338400	Avtomat	Arxa	f	11200	6588	4446822	Müşfiq	(055) 396-39-86	2020-11-17
2067	Zərdab	GAZ	32212	1997	Mikroavtobus	Yaşıl	2.5	96	Dizel	145000	Mexaniki	Arxa	f	6500	3824	4475376	Şaiq Məmmədov	(050) 573-48-50	2020-11-17
2068	Sumqayıt	Toyota	Corolla	2005	Avtobus	Mavi	1.4	97	Dizel	234000	Mexaniki	Ön	f	13500	7941	4475377	qurban	(077) 300-39-39	2020-11-17
2069	Bakı	Kia	Sorento	2014	Offroader / SUV	Ağ	2.2	200	Dizel	133000	Avtomat	Tam	f	38500	22647	4413620	Murad	(055) 642-22-24	2020-11-17
2071	Bakı	BMW	320	2006	Sedan	Qara	2	163	Dizel	285000	Mexaniki	Arxa	f	19600	11529	4443608	Huseyn	(055) 202-17-33	2020-11-17
2072	Bakı	Mercedes	E 280	1998	Sedan	Gümüşü	2.8	193	Benzin	300000	Avtomat	Arxa	f	12500	7353	4475383	Novruz	(051) 919-88-88	2020-11-17
2073	Bakı	Khazar	LX	2019	Sedan	Göy	1.7	113	Benzin	9600	Mexaniki	Ön	f	14500	8529	4475384	Ilham 	(055) 441-83-83	2020-11-17
2074	Zaqatala	LADA (VAZ)	21099	2003	Sedan	Gümüşü	1.5	75	Benzin	270000	Mexaniki	Ön	f	7200	4235	4475382	Rövşən	(051) 505-20-30	2020-11-17
2075	Bakı	Mazda	CX-9	2009	Offroader / SUV	Ağ	3.7	273	Benzin	195000	Avtomat	Tam	f	22000	12941	4474626	İlham	(077) 517-03-03	2020-11-17
2076	Sumqayıt	LADA (VAZ)	Priora	2013	Sedan	Qara	1.6	106	Benzin	98660	Mexaniki	Ön	f	10200	6000	4442450	Xeyal	(050) 556-08-63	2020-11-17
2077	Bakı	Mercedes	B 170	2009	Hetçbek / Liftbek	Ağ	1.7	117	Benzin	129000	Avtomat	Arxa	f	14500	8529	4475385	Orxan	(050) 823-23-43	2020-11-17
2055	Sumqayıt	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	178000	Avtomat	Ön	f	14000	8235	4438156	Rafiq	(050) 364-54-95	2020-11-17
2031	Bakı	Kia	Cerato	2016	Sedan	Gümüşü	2	175	Benzin	29000	Mexaniki	Ön	f	19800	11647	4438727	Namiq	(070) 350-55-66	2020-11-17
2056	Bakı	Mercedes	E 280	2007	Sedan	Qara	3	231	Benzin	355000	Avtomat	Arxa	f	22000	12941	4431770	Nihad	(055) 385-66-66	2020-11-17
2063	Bakı	Hyundai	Elantra	2010	Sedan	Ağ	1.6	132	Benzin	96200	Avtomat	Ön	f	16500	9706	4448988	Ramin	(055) 909-98-77	2020-11-17
2079	Mingəçevir	LADA (VAZ)	2107	2008	Sedan	Tünd qırmızı	1.6	75	Benzin	225000	Mexaniki	Arxa	f	7000	4118	4475355	Cavid	(050) 323-04-34	2020-11-17
2080	Bakı	Opel	Astra	2005	Universal	Yaş Asfalt	1.6	116	Benzin	244000	Mexaniki	Ön	f	11400	6706	4475356	Qiyas	(050) 621-71-88	2020-11-17
2081	Bakı	Mercedes	B 170	2006	Hetçbek / Liftbek	Ağ	1.7	116	Benzin	221546	Avtomat	Ön	f	11750	6912	4475359	Rəhim	(055) 790-08-08	2020-11-17
2082	Sumqayıt	Mercedes	190	1991	Sedan	Bənövşəyi	2	122	Benzin	321521	Avtomat	Arxa	f	5400	3176	4475360	Sakir	(050) 752-24-85	2020-11-17
2083	Bakı	Hyundai	Elantra	2007	Sedan	Gümüşü	1.6	110	Dizel	157346	Avtomat	Ön	f	15900	9353	4472633	Nicat	(055) 460-67-67	2020-11-17
2084	Sumqayıt	Mercedes	C 280	1997	Sedan	Yaşıl	2.8	193	Benzin	352652	Avtomat	Arxa	f	8400	4941	4467988	Nazim	(050) 668-37-65	2020-11-17
2085	Bakı	Nissan	Altima	2012	Sedan	Ağ	2.5	182	Benzin	166000	Avtomat	Ön	f	19500	11471	4475366	Mahir	(050) 359-05-01	2020-11-17
2086	Qəbələ	Opel	Combo	2006	Minivan	Mavi	1.7	116	Dizel	264876	Mexaniki	Ön	f	11600	6824	4474329	Mehman	(055) 605-39-00	2020-11-17
2088	Bakı	Land Rover	Freelander	2014	Offroader / SUV	Ağ	2	240	Benzin	59000	Avtomat	Tam	f	43860	25800	3189259	Ilqar	(050) 441-20-24	2020-11-17
2089	Bakı	BMW	320	1994	Sedan	Yaşıl	2	150	Benzin	45000	Mexaniki	Arxa	f	6300	3706	4475369	serxan	(055) 835-76-10	2020-11-17
2090	Gəncə	Mercedes	C 180	1998	Sedan	Qara	1.8	122	Benzin	477800	Avtomat	Arxa	f	9900	5824	4475370	Emin	(055) 448-34-66	2020-11-17
2091	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Qara	1.7	80	Benzin	31000	Mexaniki	Tam	f	17100	10059	4434270	Tebrin	(055) 211-90-40	2020-11-17
2092	Bakı	Hyundai	Accent	2009	Sedan	Ağ	1.4	108	Benzin	200000	Avtomat	Ön	f	10800	6353	4475371	Isa 	(070) 354-06-70	2020-11-17
2093	Masallı	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.2	170	Dizel	185871	Avtomat	Arxa	f	24000	14118	4475374	Dəyanət	(050) 993-00-92	2020-11-17
2094	Sumqayıt	Mercedes	E 240	1999	Sedan	Göy	2.4	170	Benzin	298000	Avtomat	Arxa	f	15000	8824	4475375	Mövlud	(050) 797-70-97	2020-11-17
2095	Bakı	Lexus	LX 470	2003	Offroader / SUV	Ağ	4.7	276	Benzin	182000	Avtomat	Tam	f	26300	15471	3920973	Bəxtiyar	(050) 521-30-88	2020-11-17
2096	Bakı	LADA (VAZ)	2105	1984	Sedan	Qırmızı	1.5	65	Benzin	130000	Mexaniki	Arxa	f	2400	1412	4475348	Məhəmməd	(055) 385-98-50	2020-11-17
2097	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2.4	178	Benzin	40520	Avtomat	Ön	f	28000	16471	4397384	Ali	(055) 778-33-33	2020-11-17
2098	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	68500	Avtomat	Ön	f	16400	9647	4438611	Hikmet 	(051) 993-22-88	2020-11-17
2099	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	145000	Mexaniki	Tam	f	9800	5765	4475350	Zahid	(055) 814-97-15	2020-11-17
2100	Bakı	Kia	Rio	2008	Sedan	Gümüşü	1.4	97	Benzin	188000	Mexaniki	Ön	f	10800	6353	4467677	Ali	(050) 967-80-99	2020-11-17
2101	Bakı	Hyundai	Accent	2005	Hetçbek / Liftbek	Qara	1.6	112	Benzin	306000	Avtomat	Ön	f	11900	7000	4471545	Rewad	(055) 210-56-87	2020-11-17
2102	Gəncə	Opel	Astra	1999	Universal	Tünd qırmızı	1.6	75	Benzin	237000	Mexaniki	Ön	f	7750	4559	4475330	rauf	(055) 591-38-81	2020-11-17
2103	Bakı	Ford	Fusion	2013	Sedan	Ağ	1.5	181	Benzin	98000	Avtomat	Ön	f	19500	11471	4475331	Samir	(077) 404-00-10	2020-11-17
2104	Göyçay	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	81000	Mexaniki	Tam	f	8000	4706	4475333	Varis	(070) 313-45-03	2020-11-17
2105	Mingəçevir	PAZ	32054	2010	Avtobus	Ağ	4	150	Dizel	333530	Mexaniki	Arxa	f	17000	10000	4475312	Celik	(055) 736-48-30	2020-11-17
2106	Bakı	GAZ	3110	2002	Sedan	Göy	2.5	131	Benzin	123000	Mexaniki	Arxa	f	5900	3471	4475314	sahin	(077) 349-47-42	2020-11-17
2107	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Göy	1.4	90	Dizel	180000	Mexaniki	Ön	f	13700	8059	4473696	Tofiq	(050) 320-12-77	2020-11-17
2108	Bakı	Infiniti	FX35	2008	Offroader / SUV	Qara	3.5	303	Benzin	142745	Avtomat	Tam	f	28900	17000	4475319	Ferid	(050) 876-76-78	2020-11-17
2109	Bakı	Chevrolet	Cruze	2015	Sedan	Yaş Asfalt	1.4	141	Benzin	135000	Avtomat	Ön	f	16800	9882	4475320	Arif	(050) 241-77-17	2020-11-17
2110	Astara	Opel	Astra	2003	Hetçbek / Liftbek	Gümüşü	1.6	75	Benzin	200000	Avtomat	Ön	f	10000	5882	4475322	Resid	(077) 251-73-93	2020-11-17
2111	Tovuz	LADA (VAZ)	2106	1988	Sedan	Bej	1.6	75	Benzin	125000	Mexaniki	Arxa	f	3700	2176	4475324	Rövşən	(055) 549-86-74	2020-11-17
2112	Bakı	LADA (VAZ)	2107	2006	Sedan	Göy	1.5	65	Benzin	150000	Mexaniki	Arxa	f	5700	3353	4475325	Aga	(055) 589-68-76	2020-11-17
2113	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	168210	Variator	Ön	f	12800	7529	4475327	Vusal	(070) 225-51-21	2020-11-17
2114	Gəncə	LADA (VAZ)	2106	1997	Sedan	Ağ	1.5	65	Benzin	150000	Mexaniki	Arxa	f	4400	2588	4475323	Kazim	(050) 464-09-16	2020-11-17
2115	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaşıl	1.5	76	Hibrid	92039	Avtomat	Ön	f	12400	7294	4459911	Davud	(055) 739-02-70	2020-11-17
2116	Bakı	Scania	R 480	2008	Yük maşını	Qırmızı	13	480	Dizel	907908	Mexaniki	Arxa	f	50000	29412	4475326	Ramil	(077) 363-58-58	2020-11-17
2117	Bakı	BMW	535	2000	Sedan	Qara	3.5	245	Benzin	75000	Avtomat	Arxa	f	11700	6882	4446149	Aqil	(055) 869-20-70	2020-11-17
2118	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	94000	Mexaniki	Tam	f	11500	6765	4475337	Amin	(050) 695-41-01	2020-11-17
2119	Bakı	Infiniti	FX35	2013	Offroader / SUV	Ağ	3.5	307	Benzin	117000	Avtomat	Arxa	f	24000	14118	4475338	Rail	(050) 362-93-26	2020-11-17
2120	Sumqayıt	Kia	Optima	2013	Sedan	Qara	2.4	200	Benzin	138500	Avtomat	Ön	f	24800	14588	4390715	Emil	(055) 364-68-20	2020-11-17
2121	Bakı	Toyota	RAV 4	1995	Offroader / SUV	Göy	2	135	Benzin	285000	Avtomat	Tam	f	7800	4588	4445101	Гусейн	(050) 242-60-01	2020-11-17
2122	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	109000	Avtomat	Tam	f	38250	22500	4251521	Kənan	(050) 510-30-70	2020-11-17
2123	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	70000	Mexaniki	Tam	f	9700	5706	4474436	Elçin	(051) 467-38-38	2020-11-17
2124	Sumqayıt	Ford	Transit	2010	Furqon	Ağ	2.2	110	Dizel	285350	Mexaniki	Ön	f	19500	11471	4475344	Sarvan 	(050) 393-50-26	2020-11-17
2125	Bakı	LADA (VAZ)	Niva	2016	Offroader / SUV	Qara	1.7	80	Benzin	84622	Mexaniki	Tam	f	14300	8412	4475346	Zaur	(050) 265-73-63	2020-11-17
2126	Sabirabad	LADA (VAZ)	2106	2005	Sedan	Ağ	1.6	75	Benzin	120000	Mexaniki	Arxa	f	6200	3647	4475310	Edalet	(050) 717-20-17	2020-11-17
2127	Bakı	Toyota	Corolla	2014	Sedan	Ağ	1.6	124	Benzin	43000	Avtomat	Ön	f	26800	15765	4465168	ELi	(070) 838-37-96	2020-11-17
2087	Sumqayıt	BMW	320	2001	Sedan	Göy	2.2	163	Benzin	253678	Avtomat	Arxa	f	9800	5765	4459791	Səbuhi	(050) 668-47-91	2020-11-17
2128	Qazax	Renault	Megane	2006	Universal	Ağ	1.5	106	Dizel	410000	Mexaniki	Ön	f	9500	5588	4475288	Arzuman	(055) 222-12-45	2020-11-17
2129	Bakı	Opel	Astra	2009	Universal	Qara	1.4	112	Benzin	159000	Mexaniki	Ön	f	13300	7824	4475294	 Beyler	(070) 543-44-43	2020-11-17
2130	Bakı	Mercedes	C 200	2001	Sedan	Gümüşü	2	136	Benzin	261000	Avtomat	Arxa	f	10700	6294	4475295	Akif	(050) 510-98-48	2020-11-17
2131	Şirvan	LADA (VAZ)	2107	2008	Sedan	Göy	1.6	75	Benzin	173450	Mexaniki	Arxa	f	6200	3647	4454774	Vasif	(051) 947-56-20	2020-11-17
2132	Sumqayıt	BMW	528	1996	Sedan	Qara	2.8	193	Benzin	240335	Mexaniki	Arxa	f	8800	5176	4475293	Mövlan	(070) 527-38-39	2020-11-17
2133	Sumqayıt	LADA (VAZ)	Priora	2014	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	135000	Mexaniki	Ön	f	12500	7353	4475299	Ramil	(070) 206-21-41	2020-11-17
2134	Bakı	Hyundai	Terracan	2003	Offroader / SUV	Gümüşü	2.9	150	Dizel	238000	Avtomat	Tam	f	16700	9824	4475297	Səid	(055) 226-13-15	2020-11-17
2135	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	250000	Avtomat	Ön	f	12500	7353	4475302	Toğrul	(050) 250-08-80	2020-11-17
2136	Sumqayıt	Mercedes	C 220	1995	Sedan	Göy	2.2	143	Benzin	351000	Avtomat	Arxa	f	9200	5412	4475303	Rəvan	(055) 698-68-86	2020-11-17
2137	Bakı	Chevrolet	Cruze	2015	Sedan	Qırmızı	1.4	141	Benzin	90000	Avtomat	Ön	f	15700	9235	4463764	Taleh 	(050) 313-33-39	2020-11-17
2138	Bakı	Kia	Ceed	2009	Universal	Boz	1.6	115	Dizel	250000	Mexaniki	Ön	f	13799	8117	4475267	Elşad	(055) 738-31-41	2020-11-17
2139	Bakı	Toyota	Land Cruiser	2016	Offroader / SUV	Qara	4.6	309	Benzin	81000	Avtomat	Tam	f	99790	58700	4434476	Ruslan	(050) 379-35-47	2020-11-17
2140	Sumqayıt	Mercedes	C 200	1999	Universal	Qara	2	136	Benzin	315860	Avtomat	Arxa	f	12500	7353	4475271	Emil	(077) 618-00-01	2020-11-17
2141	Gəncə	Mercedes	B 170	2008	Hetçbek / Liftbek	Ağ	1.7	117	Benzin	94200	Avtomat	Ön	f	14000	8235	4475274	Pərviz	(050) 614-99-19	2020-11-17
2142	Bakı	Mercedes	190	1988	Sedan	Göy	2	122	Benzin	205260	Avtomat	Arxa	f	4600	2706	4475273	Kənan	(055) 466-29-37	2020-11-17
2143	Bakı	Toyota	Corolla	2007	Sedan	Göy	1.4	90	Dizel	246300	Avtomat	Ön	f	14000	8235	4436329	Maqsud	(077) 569-56-64	2020-11-17
2144	Quba	Kia	Optima	2011	Sedan	Qara	2	165	Benzin	128500	Avtomat	Ön	f	18700	11000	4475277	Elmar	(055) 386-49-19	2020-11-17
2145	Sumqayıt	Mercedes	C 200	1998	Sedan	Göy	2	136	Benzin	196000	Avtomat	Arxa	f	9800	5765	4475283	Habil	(050) 751-95-12	2020-11-17
2146	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Qara	2	141	Benzin	130000	Avtomat	Tam	f	17500	10294	4475284	Mesud	(055) 328-33-31	2020-11-17
2147	Bakı	Nissan	Sunny	2014	Sedan	Ağ	1.5	99	Benzin	112000	Avtomat	Ön	f	17700	10412	4475285	Oktay	(077) 332-30-07	2020-11-17
2148	Bakı	Lifan	720	2015	Sedan	Ağ	1.8	125	Benzin	249000	Mexaniki	Ön	f	10900	6412	4404290	Agaselim	(055) 474-41-49	2020-11-17
2149	Bakı	BMW	528	2015	Sedan	Ağ	2	245	Benzin	65000	Avtomat	Tam	f	40290	23700	4420217	Namiq	(077) 357-57-50	2020-11-17
2150	İmişli	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	155000	Avtomat	Tam	f	39440	23200	4475279	Sahib	(050) 366-54-54	2020-11-17
2151	Bakı	Ford	Transit	2001	Mikroavtobus	Sarı	2	75	Dizel	30000	Mexaniki	Ön	f	18000	10588	4475287	Mais	(050) 487-77-77	2020-11-17
2152	Masallı	LADA (VAZ)	Niva	1986	Offroader / SUV	Ağ	1.7	80	Benzin	42800	Mexaniki	Tam	f	4200	2471	4475307	Rauf	(070) 502-28-72	2020-11-17
2153	Yevlax	Toyota	Camry	2010	Sedan	Ağ	2.4	167	Benzin	174000	Avtomat	Ön	f	23300	13706	4444017	Ismayil	(070) 990-97-97	2020-11-17
2155	Bakı	Opel	Astra	2008	Universal	Boz	1.3	90	Dizel	198000	Mexaniki	Ön	f	11600	6824	4466849	Şirayət	(070) 566-06-06	2020-11-17
2156	Bakı	Mercedes	E 200	2000	Sedan	Gümüşü	2	136	Benzin	246000	Avtomat	Arxa	f	12500	7353	4445471	Azər	(055) 776-67-77	2020-11-17
2157	Bakı	Mercedes	E 350	2010	Sedan	Qara	3.5	272	Benzin	198000	Avtomat	Arxa	f	30260	17800	4428559	Asif	(070) 618-14-15	2020-11-17
2158	Bakı	Opel	Vectra	1997	Sedan	Gümüşü	1.8	116	Benzin	532000	Mexaniki	Ön	f	5500	3235	4460994	Faiq	(050) 769-31-46	2020-11-17
2159	Bakı	Toyota	Land Cruiser	2014	Offroader / SUV	Qara	4.5	286	Dizel	167000	Avtomat	Tam	f	89250	52500	4475227	Aga	(055) 554-50-00	2020-11-17
2160	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	120000	Mexaniki	Tam	f	8300	4882	4464808	Manaf	(055) 824-18-08	2020-11-17
2161	Bakı	Chevrolet	Cruze	2015	Sedan	Yaş Asfalt	1.4	141	Benzin	114000	Avtomat	Ön	f	15500	9118	4433664	Sadiq	(051) 528-51-53	2020-11-17
2162	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	154000	Avtomat	Ön	f	16300	9588	4433386	Sadiq	(055) 555-51-53	2020-11-17
2163	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	101000	Avtomat	Ön	f	15900	9353	4467733	Ferid	(050) 401-73-64	2020-11-17
2164	Bakı	BMW	530	2003	Sedan	Qara	3	231	Benzin	320000	Avtomat	Arxa	f	18500	10882	4423231	Revan	(055) 869-00-00	2020-11-17
2165	Bakı	Hyundai	Elantra	2011	Sedan	Mavi	1.8	150	Benzin	107000	Avtomat	Ön	f	17000	10000	4475246	ILKIN	(051) 514-11-77	2020-11-17
2166	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Benzin	197503	Avtomat	Ön	f	12100	7118	4468559	Necef	(055) 538-55-05	2020-11-17
2167	Quba	LADA (VAZ)	2106	2004	Sedan	Qırmızı	1.6	75	Benzin	164000	Mexaniki	Arxa	f	5200	3059	4475247	Tural	(055) 386-49-79	2020-11-17
2168	Salyan	Mercedes	208 D	1989	Mikroavtobus	Ağ	2.3	131	Dizel	256561	Mexaniki	Arxa	f	8700	5118	4475250	Aqil	(055) 298-18-98	2020-11-17
2169	Goranboy	LADA (VAZ)	2106	1987	Sedan	Mavi	1.5	65	Benzin	200000	Mexaniki	Arxa	f	3300	1941	4475249	Saləddin	(070) 522-62-35	2020-11-17
2170	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Qızılı	1.5	76	Benzin	198343	Avtomat	Arxa	f	11200	6588	4452263	Necef	(070) 300-58-81	2020-11-17
2171	Bakı	Audi	A4	2011	Sedan	Qara	2	200	Benzin	17500	Avtomat	Ön	f	20000	11765	4475251	Ilkin	(070) 631-51-11	2020-11-17
2172	Bakı	Mercedes	190	1991	Sedan	Göy	2	122	Benzin	380000	Avtomat	Arxa	f	5700	3353	4451303	Yasar	(077) 619-20-29	2020-11-17
2173	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	71000	Avtomat	Ön	f	15200	8941	4372462	Elvin	(055) 777-95-91	2020-11-17
2174	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Benzin	128000	Avtomat	Ön	f	12500	7353	4406741	Kanan	(051) 561-80-61	2020-11-17
2175	Bakı	Ford	Fusion	2017	Sedan	Gümüşü	1.5	181	Benzin	85000	Avtomat	Ön	f	23500	13824	4475225	Elsevər	(077) 710-20-20	2020-11-17
2176	Bakı	Mercedes	E 200	1999	Sedan	Gümüşü	2	136	Benzin	253000	Avtomat	Arxa	f	8700	5118	4452495	Ramil	(070) 858-68-09	2020-11-17
2177	Bakı	BMW	520	2011	Sedan	Ağ	2	184	Dizel	165000	Avtomat	Arxa	f	39100	23000	4450936	Elvin	(051) 303-87-87	2020-11-17
2178	Bakı	Hyundai	Azera	2013	Sedan	Ağ	2.4	178	Benzin	188000	Avtomat	Ön	f	27000	15882	4421597	Natiq	(050) 607-87-78	2020-11-17
2179	Bakı	BMW	328	2015	Sedan	Göy	2	245	Benzin	23800	Avtomat	Arxa	f	42330	24900	4475264	Elsad	(055) 712-98-18	2020-11-17
2180	Bakı	LADA (VAZ)	2107	2002	Sedan	Ağ	1.6	75	Benzin	327880	Mexaniki	Arxa	f	4700	2765	4475266	Rovsen	(055) 852-52-37	2020-11-17
2181	Bakı	Kia	Sorento	2012	Offroader / SUV	Ağ	2	184	Dizel	75717	Avtomat	Tam	f	29300	17235	4441460	Elçin 	(050) 225-87-87	2020-11-17
2182	Bakı	BMW	328	2012	Sedan	Yaş Asfalt	2	245	Benzin	81000	Avtomat	Arxa	f	29750	17500	4431315	Mehdi	(051) 742-33-55	2020-11-17
2183	Bakı	Mercedes	E 270	2002	Sedan	Gümüşü	2.7	170	Dizel	251000	Avtomat	Arxa	f	14500	8529	4475213	Elmeddin	(070) 266-28-15	2020-11-17
2184	Qazax	BMW	540	1997	Sedan	Yaş Asfalt	4.4	286	Benzin	227771	Avtomat	Arxa	f	14500	8529	4475210	Subhan 	(055) 418-93-31	2020-11-17
2185	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Qara	1.7	80	Benzin	105000	Mexaniki	Tam	f	10700	6294	4475206	Vasif	(055) 513-23-33	2020-11-17
2186	Gəncə	Hyundai	Sonata	2011	Sedan	Gümüşü	2	170	Qaz	94400	Avtomat	Ön	f	16800	9882	4475211	Elcin 	(050) 425-65-55	2020-11-17
2187	Bakı	Toyota	Camry	2008	Sedan	Qara	2.4	147	Benzin	178500	Avtomat	Ön	f	19800	11647	4475212	İmran	(077) 511-04-51	2020-11-17
2188	Bakı	Mercedes	190	1992	Sedan	Qızılı	2	122	Benzin	365000	Avtomat	Arxa	f	4700	2765	4475197	Anar	(070) 990-96-28	2020-11-17
2189	Bakı	Mitsubishi	L 200	2005	Pikap	Ağ	2.5	136	Dizel	350000	Mexaniki	Tam	f	14000	8235	4475199	Vasif 	(055) 285-40-20	2020-11-17
2190	Gəncə	Renault	Kangoo	2007	Furqon	Ağ	1.4	75	Dizel	286500	Mexaniki	Ön	f	7000	4118	4475196	Intiqam	(055) 368-44-48	2020-11-17
2191	Bakı	Mercedes	S 350	2004	Sedan	Qara	3.5	272	Benzin	215759	Avtomat	Arxa	f	13200	7765	4475201	Mahmud	(055) 334-52-73	2020-11-17
2192	Gəncə	Chevrolet	Cruze	2012	Sedan	Qırmızı	1.4	141	Benzin	140000	Avtomat	Ön	f	14500	8529	4475203	Ramin	(055) 436-54-54	2020-11-17
2193	Gəncə	LADA (VAZ)	21099	2003	Sedan	Gümüşü	1.5	75	Benzin	269000	Mexaniki	Ön	f	6400	3765	4475207	Anar	(050) 597-55-22	2020-11-17
2194	Bakı	Chevrolet	Malibu	2016	Sedan	Yaş Asfalt	1.5	181	Benzin	56000	Avtomat	Ön	f	21500	12647	4475208	Samad	(050) 230-01-30	2020-11-17
2195	Şəmkir	GAZ	2705	2000	Mikroavtobus	Göy	3.2	150	Dizel	120000	Mexaniki	Arxa	f	9500	5588	4475215	Elvin	(070) 716-57-97	2020-11-17
2196	Bakı	Kia	Sorento	2010	Offroader / SUV	Yaş Asfalt	2	184	Dizel	58000	Avtomat	Ön	f	24900	14647	4456971	ILQAR	(055) 389-37-62	2020-11-17
2197	Bakı	Hyundai	Tucson	2015	Offroader / SUV	Ağ	1.7	116	Dizel	125000	Avtomat	Ön	f	35500	20882	4475214	Rafiz	(050) 588-82-44	2020-11-17
2198	Bakı	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	46600	Mexaniki	Arxa	f	5750	3382	4475221	Xeyyam	(050) 302-46-42	2020-11-17
2199	Gəncə	LADA (VAZ)	2106	1985	Sedan	Qəhvəyi	1.5	65	Benzin	70998	Mexaniki	Arxa	f	3500	2059	4475230	iman	(055) 226-80-38	2020-11-17
2200	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Mavi	1.4	90	Benzin	176000	Mexaniki	Ön	f	10700	6294	4414431	Hacı	(050) 485-47-23	2020-11-17
2202	Sumqayıt	Hyundai	Elantra	2008	Sedan	Gümüşü	2	143	Benzin	172400	Avtomat	Ön	f	13600	8000	4433832	Vüsal 	(077) 615-38-15	2020-11-17
2203	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	135820	Mexaniki	Arxa	f	5650	3324	4475190	Anar	(055) 433-94-34	2020-11-17
2204	Bakı	LADA (VAZ)	Priora	2012	Sedan	Ağ	1.6	106	Benzin	221000	Mexaniki	Ön	f	11500	6765	4475177	Xezer	(070) 455-33-14	2020-11-17
2205	Sumqayıt	Mercedes	Vito	2006	Van	Qara	2.2	116	Dizel	218000	Mexaniki	Arxa	f	25800	15176	4459438	Elmar	(051) 628-64-74	2020-11-17
2206	Bakı	LADA (VAZ)	2114	2005	Sedan	Gümüşü	1.6	80	Benzin	300000	Mexaniki	Ön	f	6900	4059	4475180	Kamran 	(055) 211-05-23	2020-11-17
2207	Bakı	Porsche	Cayenne Turbo	2008	Offroader / SUV	Qara	4.8	500	Benzin	164000	Avtomat	Tam	f	26000	15294	4475169	Samir	(055) 398-91-92	2020-11-17
2208	Mingəçevir	LADA (VAZ)	2104	2006	Universal	Ağ	1.5	72	Benzin	125688	Mexaniki	Arxa	f	12750	7500	4475182	Elnur	(070) 438-98-08	2020-11-17
2209	Bakı	Chevrolet	Equinox	2017	Offroader / SUV	Yaş Asfalt	1.6	137	Dizel	93000	Avtomat	Tam	f	32500	19118	4475165	Sərxan	(070) 718-88-82	2020-11-17
2210	Bakı	Chevrolet	Malibu	2019	Sedan	Göy	1.5	181	Benzin	25000	Avtomat	Ön	f	29500	17353	4475184	Behruz	(050) 301-57-57	2020-11-17
2211	Bakı	Mitsubishi	Airtrek	2002	Universal	Gümüşü	2	126	Benzin	245000	Avtomat	Tam	f	9300	5471	4475185	Ramin	(055) 630-70-10	2020-11-17
2212	Bakı	Nissan	Altima	2008	Sedan	Boz	2.5	158	Benzin	220000	Avtomat	Ön	f	13500	7941	4475186	Vuqar	(055) 824-42-10	2020-11-17
2213	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Ağ	3	190	Benzin	161000	Avtomat	Tam	f	24900	14647	4475187	Asif	(077) 317-69-84	2020-11-17
2214	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Hibrid	130000	Avtomat	Ön	f	11300	6647	4458760	Zaur	(070) 440-43-43	2020-11-17
2215	Bakı	Mercedes	ML 350	2005	Offroader / SUV	Ağ	3.5	272	Benzin	290000	Avtomat	Tam	f	19900	11706	4401382	Teymur	(050) 292-10-20	2020-11-17
2216	Bakı	Kia	Rio	2005	Sedan	Narıncı	1.4	97	Benzin	280000	Mexaniki	Ön	f	9900	5824	4466810	Rahib	(070) 687-58-59	2020-11-17
2217	Bakı	Mitsubishi	Pajero io	1999	Offroader / SUV	Ağ	1.8	130	Benzin	220000	Avtomat	Tam	f	6800	4000	4428950	İlqar	(050) 631-75-36	2020-11-17
2218	Bakı	Kia	Ceed	2008	Hetçbek / Liftbek	Qara	1.6	122	Benzin	162600	Avtomat	Ön	f	15000	8824	4474130	Novruz	(051) 521-31-93	2020-11-17
2220	Bakı	Mercedes	GL 500	2013	Offroader / SUV	Ağ	4.7	435	Benzin	250000	Avtomat	Tam	f	67150	39500	4364427	Aydin	(070) 434-00-54	2020-11-17
2221	Beyləqan	LADA (VAZ)	21099	2004	Sedan	Boz	1.5	78	Benzin	144000	Mexaniki	Ön	f	7600	4471	4475256	Nicat	(050) 291-11-29	2020-11-17
2225	Bakı	Saipa	132	2013	Sedan	Ağ	1.3	75	Benzin	167000	Mexaniki	Ön	f	6800	4000	4444885	Şahin	(055) 570-93-00	2020-11-17
2226	Xaçmaz	Mercedes	E 250	1986	Sedan	Qırmızı	2.5	150	Dizel	222369	Mexaniki	Arxa	f	6500	3824	4475175	Xeyyam	(099) 328-80-81	2020-11-17
2227	Bakı	Nissan	Altima	2012	Sedan	Qara	2.5	175	Benzin	87452	Avtomat	Ön	f	22000	12941	4448393	Adil	(050) 708-87-77	2020-11-17
2228	Xaçmaz	GAZ	2705	2000	Yük maşını	Bej	2.4	131	Benzin	160000	Mexaniki	Arxa	f	7000	4118	4475176	Cavid	(055) 866-33-88	2020-11-17
2229	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Qara	3.2	197	Dizel	253000	Avtomat	Tam	f	33500	19706	4411515	Isgender	(050) 420-89-27	2020-11-17
2201	Bakı	Kia	Rio	2011	Hetçbek / Liftbek	Göy	1.4	107	Benzin	137000	Avtomat	Ön	f	15400	9059	4458099	Valeh 	(055) 536-97-62	2020-11-17
2224	Bakı	Hyundai	Sonata	2015	Sedan	Narıncı	2	274	Benzin	39000	Avtomat	Ön	f	26500	15588	4374631	Elvir	(050) 433-50-53	2020-11-17
2231	Bakı	Mercedes	E 250	2009	Sedan	Qara	2.2	204	Dizel	247000	Avtomat	Arxa	f	30260	17800	4436118	Dasqin	(055) 222-77-66	2020-11-17
2235	Bakı	Hyundai	Santa Fe	2016	Offroader / SUV	Ağ	2	184	Dizel	52500	Avtomat	Tam	f	42000	24706	4475163	Sərxan	(070) 718-88-82	2020-11-17
2237	Bakı	Mercedes	E 240	2001	Sedan	Qara	2.6	177	Benzin	450000	Avtomat	Arxa	f	16000	9412	4475167	Nadir	(070) 867-18-75	2020-11-17
2238	Bakı	Mercedes	190	1992	Sedan	Yaş Asfalt	2	122	Dizel	236000	Mexaniki	Arxa	f	4700	2765	4475142	Elmin	(077) 233-02-48	2020-11-17
2239	Bakı	Toyota	Land Cruiser	2018	Offroader / SUV	Qara	4	282	Benzin	30000	Avtomat	Tam	f	118998	69999	4432208	Kamran	(051) 888-19-19	2020-11-17
2240	Bakı	Kia	Optima	2015	Sedan	Qara	2.4	178	Benzin	67000	Avtomat	Ön	f	21400	12588	4475148	Fikret	(050) 400-66-06	2020-11-17
2241	Bakı	Subaru	Forester	2007	Offroader / SUV	Gümüşü	2	130	Benzin	195000	Avtomat	Tam	f	11500	6765	4475150	Ruslan	(055) 254-69-54	2020-11-17
2242	Bakı	LADA (VAZ)	2106	1985	Sedan	Göy	1.5	65	Benzin	254666	Mexaniki	Arxa	f	2550	1500	4475147	Arif	(055) 772-78-63	2020-11-17
2243	Bakı	BMW	328	2012	Sedan	Göy	2	245	Benzin	184000	Avtomat	Arxa	f	24990	14700	4475152	Xeqan	(077) 737-57-77	2020-11-17
2244	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Qara	1.4	110	Benzin	146000	Mexaniki	Ön	f	12200	7176	4445527	Dasqin	(055) 222-77-66	2020-11-17
2245	Bakı	Honda	Civic	2017	Hetçbek / Liftbek	Qırmızı	1.5	189	Benzin	29000	Avtomat	Ön	f	29750	17500	4472015	Kenan	(055) 567-24-42	2020-11-17
2246	Bakı	Mercedes	GL 350	2012	Offroader / SUV	Yaş Asfalt	3	258	Dizel	127000	Avtomat	Tam	f	54060	31800	4453966	Yashar	(055) 760-40-55	2020-11-17
2247	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Boz	1.3	90	Dizel	290000	Mexaniki	Ön	f	11600	6824	4442653	Dasqin	(055) 222-77-66	2020-11-17
2248	Tovuz	Opel	Astra	1995	Universal	Boz	1.6	75	Benzin	411700	Mexaniki	Ön	f	5400	3176	4475153	Elşad	(050) 534-35-50	2020-11-17
2249	Bakı	Hyundai	Accent	2012	Sedan	Gümüşü	1.4	108	Benzin	49970	Avtomat	Ön	f	16900	9941	4462774	Ramin	(050) 544-70-10	2020-11-17
2251	Sumqayıt	Kia	Rio	2006	Hetçbek / Liftbek	Gümüşü	1.5	110	Dizel	136000	Mexaniki	Ön	f	11300	6647	4475171	İlkin	(077) 598-81-32	2020-11-17
2252	Bakı	LADA (VAZ)	Niva	2018	Offroader / SUV	Göy	1.7	80	Benzin	25000	Mexaniki	Arxa	f	16300	9588	4469636	Orxan	(050) 832-31-43	2020-11-17
2253	Bakı	Toyota	Prado	2007	Offroader / SUV	Qara	4	249	Benzin	157000	Avtomat	Tam	f	37060	21800	4448476	Anar	(050) 263-85-44	2020-11-17
2254	Bakı	Opel	Astra	1999	Universal	Göy	1.6	75	Benzin	450000	Mexaniki	Ön	f	8800	5176	4475120	Rufət	(055) 408-01-02	2020-11-17
2255	Gəncə	Volkswagen	Golf	1991	Hetçbek / Liftbek	Göy	1.6	87	Benzin	111111	Mexaniki	Ön	f	3800	2235	4475125	Elwad	(055) 634-54-47	2020-11-17
2256	Bakı	BMW	X5	2012	Offroader / SUV	Ağ	3.5	306	Benzin	123000	Avtomat	Tam	f	48450	28500	4371814	Emin	(051) 699-01-99	2020-11-17
2257	Bakı	Toyota	Corolla	2014	Sedan	Qara	1.6	140	Benzin	97000	Avtomat	Ön	f	26240	15435	4470079	Cavid	(055) 491-45-83	2020-11-17
2258	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	122000	Mexaniki	Arxa	f	7200	4235	4475109	Mikayıl	(055) 349-45-49	2020-11-17
2259	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	149000	Avtomat	Ön	f	12600	7412	4409240	Samir	(050) 806-04-81	2020-11-17
2260	Sumqayıt	LADA (VAZ)	2107	2008	Sedan	Ağ	1.5	65	Benzin	340000	Mexaniki	Arxa	f	5500	3235	4475131	Rovwen	(077) 322-27-34	2020-11-17
2261	Bakı	Mercedes	E 350	2005	Sedan	Ağ	3.5	272	Benzin	120530	Avtomat	Arxa	f	20000	11765	4475127	Nəbi	(070) 235-25-35	2020-11-17
2262	Bakı	Hyundai	Accent	2013	Hetçbek / Liftbek	Ağ	1.6	132	Dizel	40000	Avtomat	Ön	f	18500	10882	4475113	Mikayil	(050) 670-06-47	2020-11-17
2263	Bakı	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	92000	Mexaniki	Arxa	f	7700	4529	4469890	Zahid	(050) 310-52-84	2020-11-17
2264	Bakı	Ford	Transit	2011	Furqon	Ağ	2.2	155	Dizel	121000	Mexaniki	Arxa	f	24800	14588	4475085	Ulham	(050) 670-10-43	2020-11-17
2265	Bakı	Mercedes	E 220	2014	Sedan	Yaş Asfalt	2.2	170	Dizel	168500	Avtomat	Arxa	f	40800	24000	4311708	German	(050) 394-97-07	2020-11-17
2266	Bakı	Mercedes	E 220	1994	Sedan	Boz	2.2	146	Benzin	400000	Avtomat	Arxa	f	9400	5529	4475135	Azər	(050) 257-33-60	2020-11-17
2267	Sumqayıt	Opel	Zafira	2000	Minivan	Qara	1.8	116	Benzin	356123	Mexaniki	Ön	f	8850	5206	4425424	Radiq	(070) 268-97-00	2020-11-17
2268	Bakı	BMW	320	2005	Sedan	Gümüşü	2	170	Benzin	153000	Avtomat	Arxa	f	15300	9000	4465302	Anar	(055) 202-53-81	2020-11-17
2269	Gəncə	LADA (VAZ)	2110	2010	Sedan	Yaşıl	1.6	80	Benzin	116794	Mexaniki	Ön	f	7900	4647	4475089	tahir	(055) 796-08-08	2020-11-17
2270	Bakı	Toyota	Corolla	2006	Universal	Yaş Asfalt	1.4	90	Dizel	175460	Mexaniki	Ön	f	13500	7941	4469487	Faig	(055) 480-20-00	2020-11-17
2271	Bakı	Ford	Transit	1997	Furqon	Ağ	2.5	76	Dizel	425634	Mexaniki	Arxa	f	12900	7588	4474932	Etibar	(070) 359-81-01	2020-11-17
2272	Bakı	Hyundai	Santa Fe	2011	Offroader / SUV	Qara	2.4	175	Benzin	127000	Avtomat	Ön	f	27000	15882	4475097	Mahammad	(050) 271-03-00	2020-11-17
2273	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	68900	Avtomat	Ön	f	14800	8706	4475098	Fuad	(070) 331-29-29	2020-11-17
2274	Xırdalan	Hyundai	Elantra	2014	Sedan	Qırmızı	1.8	150	Benzin	121000	Avtomat	Ön	f	16800	9882	4475099	Anar 	(050) 210-69-21	2020-11-17
2275	Bakı	Chevrolet	Cruze	2017	Sedan	Gümüşü	1.4	153	Benzin	89000	Avtomat	Ön	f	17100	10059	4459172	Elşən	(050) 209-45-39	2020-11-17
2276	Bakı	Chevrolet	Cruze	2015	Sedan	Qırmızı	1.8	141	Benzin	54000	Avtomat	Ön	f	16800	9882	4446310	Anar	(055) 202-53-81	2020-11-17
2277	Bakı	Chevrolet	Cruze	2015	Sedan	Göy	1.4	141	Benzin	116000	Avtomat	Ön	f	14300	8412	4460953	Anar	(055) 202-53-81	2020-11-17
2278	Bakı	Nissan	X-Trail	2012	Offroader / SUV	Ağ	2.5	175	Benzin	154000	Avtomat	Tam	f	25200	14824	4475104	Akrami	(055) 742-01-23	2020-11-17
2279	Bakı	Toyota	Land Cruiser	2014	Offroader / SUV	Ağ	4.6	318	Benzin	90000	Avtomat	Tam	f	90100	53000	4475106	Анар 	(055) 555-15-25	2020-11-17
2280	Bakı	Mercedes	E 350	2009	Sedan	Gümüşü	3.5	272	Benzin	146500	Avtomat	Tam	f	21800	12824	4474884	Fuad	(050) 356-36-92	2020-11-17
2233	Sumqayıt	Mercedes	C 200	1998	Sedan	Gümüşü	2	136	Benzin	309000	Avtomat	Arxa	f	13900	8176	4471528	Alik	(055) 793-83-43	2020-11-17
2236	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	78000	Avtomat	Ön	f	22800	13412	4461791	Elvir	(050) 433-50-53	2020-11-17
2232	Bakı	Kia	Optima	2015	Sedan	Ağ	2	274	Benzin	58000	Avtomat	Ön	f	26800	15765	4461779	Elvir	(050) 433-50-53	2020-11-17
2281	Gəncə	GAZ	3102	2004	Sedan	Qara	2.3	131	Benzin	102000	Mexaniki	Arxa	f	8000	4706	4475107	Elemdar	(055) 304-82-99	2020-11-17
2282	Bakı	BMW	530	2020	Sedan	Qara	2	320	Hibrid	6000	Avtomat	Arxa	f	92650	54500	4387607	Ibrahim	(050) 216-66-11	2020-11-17
2283	Bakı	Hyundai	H-1	2014	Van	Ağ	2.5	170	Dizel	260000	Mexaniki	Tam	f	26000	15294	4475094	Vasif	(055) 748-57-89	2020-11-17
2284	Bakı	Opel	Astra	2007	Universal	Gümüşü	1.3	90	Dizel	183000	Mexaniki	Ön	f	9900	5824	4422531	Eytiram	(077) 314-01-07	2020-11-17
2285	Bakı	Mercedes	S 350	2004	Sedan	Qara	3.5	272	Benzin	278000	Avtomat	Arxa	f	15500	9118	4468182	Natiq	(050) 201-51-01	2020-11-17
2286	Gəncə	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	223362	Mexaniki	Ön	f	10800	6353	4475138	Ruslan	(055) 415-00-75	2020-11-17
2287	Bakı	Ford	Transit	2012	Furqon	Ağ	2.2	120	Dizel	135079	Mexaniki	Ön	f	26000	15294	4438636	Aydin	(050) 362-01-42	2020-11-17
2288	Bakı	DAF	105XF	2010	Dartqı	Yaşıl	13	460	Dizel	890000	Avtomat	Arxa	f	43000	25294	4368788	Fərman	(099) 889-49-98	2020-11-17
2289	Bakı	Ford	Transit	2000	Furqon	Göy	2.4	160	Dizel	400000	Mexaniki	Arxa	f	19200	11294	4475015	Elnur	(070) 822-98-92	2020-11-17
2290	Bakı	Infiniti	M56	2012	Sedan	Qara	5.6	408	Benzin	50000	Avtomat	Tam	f	16500	9706	4402196	Elmar	(055) 319-00-08	2020-11-17
2291	Bakı	Opel	Astra	2009	Universal	Gümüşü	1.3	90	Dizel	177300	Mexaniki	Ön	f	11700	6882	4466966	Musa	(077) 628-38-08	2020-11-17
2293	Sumqayıt	LADA (VAZ)	Priora	2012	Sedan	Qara	1.6	106	Benzin	308000	Mexaniki	Ön	f	10900	6412	4427403	Kamal	(051) 411-25-40	2020-11-17
2294	Bakı	Mercedes	E 270	2000	Sedan	Qara	2.7	177	Dizel	433487	Avtomat	Arxa	f	14800	8706	4208013	Rəşad	(050) 308-70-07	2020-11-17
2295	Bakı	Mercedes	S 350	2007	Sedan	Qara	3.5	272	Benzin	217000	Avtomat	Arxa	f	30260	17800	4475061	Elnur	(055) 999-78-74	2020-11-17
2296	Bakı	Ford	Fusion	2015	Sedan	Yaş Asfalt	1.5	181	Benzin	138000	Avtomat	Ön	f	18800	11059	4417143	Semed	(050) 636-09-13	2020-11-17
2297	Bakı	Nissan	Sunny	2007	Sedan	Ağ	1.6	109	Benzin	230000	Avtomat	Ön	f	13000	7647	4446366	Agha	(050) 794-08-81	2020-11-17
2298	Bakı	Ford	Transit	2008	Yük maşını	Ağ	2.4	140	Dizel	149000	Mexaniki	Arxa	f	24000	14118	4475062	İlqar	(050) 302-63-40	2020-11-17
2299	Bakı	Honda	CR-V	1999	Offroader / SUV	Qara	2	140	Benzin	309000	Avtomat	Tam	f	8600	5059	4475064	Ilgar	(050) 661-50-09	2020-11-17
2300	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	130000	Mexaniki	Tam	f	9200	5412	4475068	Sənan	(070) 808-80-20	2020-11-17
2301	Biləsuvar	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	75000	Mexaniki	Arxa	f	8400	4941	4475069	Revan	(070) 667-47-57	2020-11-17
2302	Sumqayıt	Opel	Vectra	1999	Hetçbek / Liftbek	Qırmızı	2	136	Benzin	276540	Avtomat	Ön	f	7800	4588	4475072	Matileb	(055) 663-63-39	2020-11-17
2303	Bakı	Hyundai	Elantra	2007	Sedan	Qara	2	143	Benzin	197000	Avtomat	Ön	f	14800	8706	4459563	Qalib	(055) 212-21-41	2020-11-17
2305	Bakı	Kia	Optima	2015	Sedan	Ağ	1.7	141	Dizel	88500	Avtomat	Ön	f	32300	19000	4475042	sahib	(077) 473-01-90	2020-11-17
2306	Bakı	Audi	A4	2003	Sedan	Qara	1.8	170	Benzin	197321	Avtomat	Tam	f	8900	5235	4466457	RAFİQ	(055) 286-69-15	2020-11-17
2307	Bakı	Mercedes	E 250	1991	Sedan	Yaş Asfalt	2.5	150	Dizel	140000	Avtomat	Arxa	f	9500	5588	4475043	Taleh	(077) 311-07-51	2020-11-17
2308	Şəmkir	Hyundai	Sonata	2008	Sedan	Ağ	2.4	178	Benzin	178208	Avtomat	Ön	f	18200	10706	4475046	Meherem 	(051) 657-94-94	2020-11-17
2309	Bakı	Hyundai	Elantra	2013	Sedan	Qara	1.8	150	Benzin	147000	Avtomat	Ön	f	20300	11941	4420859	Anar	(055) 329-30-30	2020-11-17
2310	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2.4	180	Benzin	185000	Avtomat	Ön	f	18400	10824	4475048	Eshref	(050) 808-20-04	2020-11-17
2328	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2.4	178	Benzin	166200	Avtomat	Tam	f	32800	19294	4428625	Anar	(055) 329-30-30	2020-11-17
2329	Masallı	Toyota	Prado	2006	Offroader / SUV	Qara	2.7	167	Benzin	183000	Avtomat	Tam	f	25500	15000	4469698	Nail	(099) 894-94-96	2020-11-17
2331	Bakı	Opel	Astra	1999	Universal	Ağ	1.8	104	Benzin	380000	Mexaniki	Ön	f	8200	4824	4475005	Emin	(055) 977-48-77	2020-11-17
2292	Bakı	Opel	Astra	2007	Universal	Göy	1.3	90	Dizel	182125	Mexaniki	Ön	f	11700	6882	4470042	Nurlan	(070) 684-33-46	2020-11-17
2337	Bakı	Hyundai	Grandeur	2013	Sedan	Ağ	2.4	180	Benzin	119000	Avtomat	Ön	f	29920	17600	4474982	Farrux	(050) 365-40-43	2020-11-17
2338	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Ağ	3	190	Benzin	147000	Avtomat	Tam	f	23300	13706	4430898	Sehran	(050) 611-48-11	2020-11-17
2339	Bakı	BMW	740	1996	Sedan	Qara	4	286	Benzin	267809	Avtomat	Arxa	f	8200	4824	4474984	roma	(050) 215-99-93	2020-11-17
2340	Bakı	Tofas	Sahin	2005	Sedan	Qara	1.6	86	Benzin	201213	Mexaniki	Arxa	f	4900	2882	4474989	Tural	(099) 732-32-31	2020-11-17
2341	Bakı	Kia	Cerato	2014	Sedan	Qara	1.8	149	Benzin	84440	Avtomat	Ön	f	17200	10118	4459959	Ilyas	(077) 562-31-38	2020-11-17
2342	Xırdalan	LADA (VAZ)	2107	2011	Sedan	Ağ	1.6	75	Benzin	27500	Mexaniki	Arxa	f	8700	5118	4442772	Akif	(050) 369-40-73	2020-11-17
2343	Bakı	Mitsubishi	Pajero	2014	Offroader / SUV	Ağ	3.8	250	Benzin	87000	Avtomat	Tam	f	46750	27500	4474990	Ali	(055) 700-05-16	2020-11-17
2345	Sumqayıt	Chevrolet	Cruze	2013	Sedan	Ağ	1.8	141	Benzin	200000	Avtomat	Ön	f	13900	8176	4474995	Tebriz	(050) 351-23-36	2020-11-17
2347	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	163000	Mexaniki	Ön	f	12800	7529	4469567	Seymur	(055) 561-22-94	2020-11-17
2348	Bakı	Hyundai	Accent	2013	Sedan	Ağ	1.6	123	Benzin	152176	Avtomat	Ön	f	16400	9647	4443653	Bəxtiyar	(050) 430-30-77	2020-11-17
2350	Ağdam	KamAz	55111	1989	Yük maşını	Qırmızı	11	191	Dizel	250000	Mexaniki	Arxa	f	13500	7941	4474951	Əbülfət	(070) 747-62-50	2020-11-17
2351	Bakı	Kia	Optima	2013	Sedan	Ağ	2	274	Benzin	176000	Avtomat	Ön	f	25800	15176	4474955	Şaiq	(050) 213-17-15	2020-11-17
2352	Bakı	DongFeng	Fengshen H30	2015	Offroader / SUV	Gümüşü	1.5	106	Benzin	133000	Avtomat	Ön	f	14500	8529	4474958	Camal	(050) 213-61-72	2020-11-17
2353	Gəncə	LADA (VAZ)	21099	2002	Sedan	Gümüşü	1.5	75	Benzin	205000	Mexaniki	Ön	f	7000	4118	4474960	Ziya	(070) 272-87-02	2020-11-17
2354	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	126000	Avtomat	Tam	f	29999	17646	4474959	Ferhad m.	(050) 353-49-98	2020-11-17
2355	Bakı	BMW	328	2014	Sedan	Ağ	2	245	Benzin	121000	Avtomat	Arxa	f	40460	23800	4474962	Nariman	(050) 334-99-89	2020-11-17
2356	Bakı	Ford	Fusion	2013	Sedan	Boz	2	240	Benzin	154000	Avtomat	Ön	f	22500	13235	4474942	Nazim	(050) 287-60-55	2020-11-17
2357	Ağdam	KamAz	55111	1991	Yük maşını	Yaş Asfalt	11	191	Dizel	280000	Mexaniki	Arxa	f	13500	7941	4474964	Əbülfət	(050) 614-63-88	2020-11-17
2358	Bakı	Hyundai	i30	2007	Hetçbek / Liftbek	Qırmızı	1.4	109	Benzin	164000	Mexaniki	Ön	f	11300	6647	4437725	Yadigar	(055) 395-55-25	2020-11-17
2359	Bakı	Mercedes	C 200	2000	Universal	Boz	2	136	Benzin	350000	Avtomat	Arxa	f	11800	6941	4474965	Azər	(050) 426-07-97	2020-11-17
2360	Sumqayıt	Opel	Zafira	1999	Minivan	Boz	1.8	116	Benzin	400300	Mexaniki	Ön	f	9200	5412	4474970	Raqif	(055) 561-63-86	2020-11-17
2361	Bakı	Mercedes	E 220	2007	Sedan	Qara	2.2	170	Dizel	198400	Avtomat	Arxa	f	22300	13118	4423594	Seyran	(055) 211-88-04	2020-11-17
2362	Sumqayıt	Mercedes	C 180	1997	Sedan	Gümüşü	1.8	122	Benzin	250000	Avtomat	Arxa	f	12400	7294	4474976	Elxan	(055) 246-30-31	2020-11-17
2363	Bakı	Chery	Tiggo 2	2020	Universal	Qırmızı	1.5	122	Benzin	0	Avtomat	Ön	t	24800	14588	4474980	Chery Azerbaijan	(050) 242-46-24	2020-11-17
2364	Bakı	Mercedes	E 240	2002	Sedan	Yaşıl	2.6	177	Benzin	267000	Avtomat	Arxa	f	16400	9647	4429014	Seyran	(055) 224-16-00	2020-11-17
2365	Bakı	Chery	Fulwin 2	2012	Hetçbek / Liftbek	Gümüşü	1.5	110	Benzin	70000	Mexaniki	Ön	f	7800	4588	4474941	Yusif	(055) 850-25-41	2020-11-17
2366	Gəncə	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	70000	Mexaniki	Arxa	f	7400	4353	4474949	Kamran	(050) 254-36-72	2020-11-17
2367	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Yaş Asfalt	1.3	160	Dizel	204000	Mexaniki	Ön	f	9700	5706	4466769	Zahir	(055) 219-50-50	2020-11-17
2368	Gəncə	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	86000	Mexaniki	Arxa	f	6700	3941	4474975	malik	(055) 410-72-16	2020-11-17
2369	Şirvan	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	100000	Mexaniki	Arxa	f	5600	3294	4474977	Ceyhun	(055) 855-61-61	2020-11-17
2370	Bakı	Kia	Rio	2011	Sedan	Gümüşü	1.5	110	Dizel	259000	Avtomat	Ön	f	14900	8765	4460273	Yusif	(077) 433-35-33	2020-11-17
2371	Bakı	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	320000	Avtomat	Arxa	f	10500	6176	4473197	Mirze	(051) 373-23-03	2020-11-17
2372	Saatlı	GAZ	53	1979	Yük maşını	Qara	4.2	130	Benzin	100000	Mexaniki	Arxa	f	3500	2059	4474911	Bəhruz	(050) 349-50-71	2020-11-17
2373	Bakı	Chevrolet	Cruze	2012	Sedan	Qara	1.4	141	Benzin	290000	Avtomat	Ön	f	14500	8529	4474912	Emil	(055) 285-86-85	2020-11-17
2374	Bakı	Mercedes	190	1988	Sedan	Qəhvəyi	2	136	Benzin	213000	Avtomat	Arxa	f	3900	2294	4474915	Asif	(070) 287-10-97	2020-11-17
2375	Bakı	BMW	525	2001	Sedan	Qara	2.5	192	Benzin	230000	Avtomat	Arxa	f	13300	7824	4474917	Namik	(050) 702-08-23	2020-11-17
2376	Bakı	LADA (VAZ)	21099	2003	Sedan	Yaşıl	1.5	75	Benzin	89000	Mexaniki	Ön	f	5800	3412	4474918	Cebrayil	(050) 962-44-19	2020-11-17
2377	Bakı	Volkswagen	Jetta	2019	Sedan	Tünd qırmızı	1.4	150	Benzin	15000	Avtomat	Ön	f	32000	18824	4474919	Musa	(050) 418-66-99	2020-11-17
2378	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Bənövşəyi	1.7	80	Benzin	80000	Mexaniki	Tam	f	11500	6765	4474920	Elvin	(055) 294-24-44	2020-11-17
2379	Qax	LADA (VAZ)	2106	1982	Sedan	Ağ	1.5	65	Benzin	60000	Mexaniki	Tam	f	3000	1765	4474922	Nihad	(055) 861-28-44	2020-11-17
2380	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	170	Benzin	239500	Avtomat	Arxa	f	16600	9765	4474923	Ağa	(055) 944-05-16	2020-11-17
2381	Bakı	Opel	Astra	2007	Universal	Göy	1.3	90	Dizel	214046	Mexaniki	Ön	f	11400	6706	4469144	Əhməd	(051) 301-30-03	2020-11-17
2382	Bakı	Mercedes	C 230	2009	Sedan	Qara	2.5	204	Benzin	220000	Avtomat	Arxa	f	19900	11706	4474889	Murad	(050) 755-76-52	2020-11-17
2383	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Benzin	175000	Avtomat	Ön	f	12400	7294	4421958	Adil	(070) 324-21-47	2020-11-17
2384	Bakı	Mercedes	E 240	1999	Sedan	Qara	2.6	177	Benzin	310000	Avtomat	Arxa	f	12500	7353	4474926	Azər	(055) 700-35-45	2020-11-17
2385	Bakı	Mercedes	GLS 350	2018	Offroader / SUV	Qara	3	258	Dizel	49000	Avtomat	Tam	f	132600	78000	4451088	 Kamran	(050) 990-99-95	2020-11-17
2386	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Qara	1.8	99	Hibrid	130000	Avtomat	Ön	f	16300	9588	4408720	Rasim	(050) 359-18-64	2020-11-17
2387	Bakı	Chevrolet	Cruze	2017	Sedan	Gümüşü	1.4	155	Benzin	67256	Avtomat	Ön	f	16200	9529	4399709	Seyid	(070) 613-13-12	2020-11-17
2388	Sumqayıt	Opel	Astra	2000	Hetçbek / Liftbek	Yaşıl	1.6	101	Benzin	281000	Avtomat	Ön	f	8800	5176	4371589	AZER	(070) 787-90-97	2020-11-17
2389	Bakı	Hyundai	Sonata	2005	Sedan	Qara	2.4	178	Benzin	211000	Avtomat	Ön	f	13800	8118	4407067	Perviz	(055) 714-70-72	2020-11-17
2390	Bakı	Mercedes	C 220	1996	Sedan	Qara	2.2	144	Benzin	313111	Avtomat	Arxa	f	8900	5235	4474892	Cavid	(055) 218-30-21	2020-11-17
2391	Bakı	Nissan	Micra	2012	Hetçbek / Liftbek	Ağ	1.2	90	Benzin	9036	Avtomat	Ön	f	14500	8529	4472394	Mahmud Rustamli	(051) 747-11-22	2020-11-17
2392	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	91600	Avtomat	Ön	f	14800	8706	4414640	Sebuhi	(055) 790-95-61	2020-11-17
2393	Bakı	Mercedes	C 220	1995	Sedan	Gümüşü	2.2	146	Benzin	366692	Avtomat	Arxa	f	8100	4765	4469387	Mehdi	(055) 990-48-24	2020-11-17
2394	Gəncə	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	176000	Avtomat	Ön	f	17900	10529	4457563	Araz	(050) 743-46-08	2020-11-17
2395	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	104000	Avtomat	Ön	f	24000	14118	4474898	Elwad	(050) 362-80-70	2020-11-17
2396	Gəncə	LADA (VAZ)	2106	1984	Sedan	Ağ	1.3	65	Benzin	460000	Mexaniki	Arxa	f	3700	2176	4474903	Elsen	(055) 795-91-97	2020-11-17
2397	Sumqayıt	Opel	Astra	1996	Hetçbek / Liftbek	Göy	1.6	101	Benzin	320000	Avtomat	Arxa	f	4800	2824	4474904	Ramin	(077) 548-11-10	2020-11-17
2398	Bakı	Daewoo	Matiz	2005	Hetçbek / Liftbek	Tünd qırmızı	0.8	50	Benzin	75469	Mexaniki	Ön	f	3300	1941	4474906	Nail	(070) 632-68-44	2020-11-17
2399	Bakı	Toyota	Prius	2006	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	254000	Avtomat	Ön	f	11200	6588	4450505	Ramin	(077) 300-92-96	2020-11-17
2400	Bakı	Hyundai	Santa Fe	2009	Offroader / SUV	Gümüşü	2.2	200	Dizel	239000	Avtomat	Tam	f	22500	13235	4407460	Fərid	(050) 207-04-21	2020-11-17
2401	Sumqayıt	Lexus	HS 250 H	2010	Sedan	Yaş Asfalt	2.4	150	Hibrid	140623	Avtomat	Ön	f	27000	15882	4474933	Kənan	(077) 422-32-55	2020-11-17
2402	Sumqayıt	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	2	184	Dizel	53200	Avtomat	Ön	f	22200	13059	4424086	Elvin	(077) 452-50-23	2020-11-17
2403	Ağcabədi	Daewoo	Lanos	2009	Sedan	Qara	1.3	75	Benzin	185200	Mexaniki	Ön	f	8000	4706	4474882	Arzuman	(050) 726-27-29	2020-11-17
2404	Bakı	Opel	Astra	2006	Universal	Mavi	1.3	90	Dizel	209429	Mexaniki	Ön	f	10900	6412	4474881	Kamal	(070) 255-76-88	2020-11-17
2405	Bakı	Mitsubishi	L 200	2013	Pikap	Qara	2.5	136	Dizel	210500	Avtomat	Tam	f	39950	23500	4471507	Cavidan	(055) 222-27-94	2020-11-17
2406	Bakı	Hyundai	Accent	2006	Hetçbek / Liftbek	Qara	1.6	125	Benzin	155713	Avtomat	Ön	f	9500	5588	4474883	Emil	(055) 251-10-01	2020-11-17
2407	Bakı	BMW	528	2013	Sedan	Qara	2	245	Benzin	135000	Avtomat	Arxa	f	38760	22800	4351199	Vuqar	(050) 314-09-00	2020-11-17
2408	Bakı	BMW	535	2011	Sedan	Ağ	3	306	Benzin	193000	Avtomat	Arxa	f	39950	23500	4473124	Rövşən	(077) 766-83-83	2020-11-17
2409	Bakı	Ford	Fusion	2014	Sedan	Ağ	1.5	181	Benzin	94000	Avtomat	Ön	f	21500	12647	4474865	Vuqar	(070) 811-00-87	2020-11-17
2410	Sumqayıt	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	198254	Mexaniki	Tam	f	9200	5412	4474868	Elxan	(055) 403-91-24	2020-11-17
2411	Bakı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	140200	Mexaniki	Arxa	f	6200	3647	4474870	Elmir	(077) 443-60-40	2020-11-17
2412	Bakı	Hyundai	i30	2009	Universal	Bej	1.6	122	Dizel	260000	Mexaniki	Ön	f	14900	8765	4474857	İlqar	(050) 299-49-79	2020-11-17
2413	Bakı	Toyota	Land Cruiser	1999	Offroader / SUV	Göy	4.2	204	Dizel	299600	Avtomat	Tam	f	30600	18000	4450364	Xaliq	(050) 394-14-62	2020-11-17
2414	Bakı	Mercedes	208 D	1994	Mikroavtobus	Qırmızı	2	150	Dizel	325614	Mexaniki	Arxa	f	14300	8412	4474871	Xəyal	(055) 544-05-05	2020-11-17
2415	Bakı	LADA (VAZ)	2106	1991	Sedan	Mavi	1.5	65	Benzin	250000	Mexaniki	Arxa	f	3000	1765	4474874	Habil	(050) 675-39-42	2020-11-17
2416	Bakı	Opel	Astra	1997	Universal	Göy	1.6	101	Benzin	100000	Mexaniki	Ön	f	6800	4000	4474876	Elçin	(070) 309-06-45	2020-11-17
2417	Şamaxı	BMW	320	2001	Sedan	Qara	2.2	170	Benzin	179000	Avtomat	Arxa	f	12600	7412	4388894	Azər	(070) 595-58-85	2020-11-17
2419	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	4	249	Benzin	175000	Avtomat	Tam	f	53550	31500	4471015	Hesen	(055) 990-29-92	2020-11-17
2421	Bakı	Toyota	Prado	2007	Offroader / SUV	Ağ	4	250	Benzin	174677	Avtomat	Tam	f	37230	21900	4426104	Naib	(055) 698-51-02	2020-11-17
2422	Sumqayıt	LADA (VAZ)	2106	1987	Sedan	Sarı	1.6	75	Benzin	100000	Mexaniki	Tam	f	3100	1824	4474864	Arzuman	(055) 941-00-41	2020-11-17
2423	Bakı	Toyota	RAV 4	2017	Offroader / SUV	Göy	2.5	176	Benzin	96000	Avtomat	Tam	f	45050	26500	4440685	Ruslan	(055) 357-18-14	2020-11-17
2424	Bakı	Land Rover	Range Rover	2008	Offroader / SUV	Qara	4.2	396	Benzin	204000	Avtomat	Tam	f	41480	24400	4472280	Haci Alim	(050) 212-00-51	2020-11-17
2425	Bakı	LADA (VAZ)	2106	1999	Sedan	Ağ	1.6	75	Benzin	56000	Mexaniki	Arxa	f	9350	5500	4452895	Miri	(050) 648-03-48	2020-11-17
2426	Bakı	Ford	Fusion	2014	Sedan	Göy	2	245	Benzin	191000	Avtomat	Ön	f	20900	12294	4474858	Rasim	(077) 303-22-52	2020-11-17
2427	Bakı	LADA (VAZ)	2107	1998	Sedan	Ağ	1.6	75	Benzin	135400	Mexaniki	Arxa	f	4150	2441	4474860	İsmail	(050) 511-78-46	2020-11-17
2428	Lənkəran	Mercedes	Vito	2007	Minivan	Qırmızı	2.2	150	Dizel	477328	Mexaniki	Arxa	f	20000	11765	4474840	Raul	(055) 581-62-00	2020-11-17
2429	Bakı	Honda	Civic	2013	Sedan	Boz	1.5	110	Hibrid	190000	Avtomat	Ön	f	18500	10882	4419970	Məhərrəm 	(050) 607-64-88	2020-11-17
2430	Gəncə	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	84000	Mexaniki	Tam	f	11800	6941	4474849	Sahib	(050) 418-26-05	2020-11-17
2431	Sumqayıt	Hyundai	Elantra	2013	Sedan	Boz	1.8	150	Benzin	90000	Avtomat	Ön	f	19500	11471	4474853	Cingiz	(070) 254-45-95	2020-11-17
2432	Sumqayıt	Opel	Astra	1999	Hetçbek / Liftbek	Tünd qırmızı	1.6	101	Benzin	305000	Avtomat	Ön	f	8600	5059	4474861	Nicat	(050) 840-74-98	2020-11-17
2433	Bakı	Mercedes	ML 320	2000	Offroader / SUV	Qara	3.2	218	Benzin	222000	Avtomat	Tam	f	10000	5882	4474824	Ağabala	(077) 414-79-31	2020-11-17
2434	Bakı	Mercedes	E 220	2008	Sedan	Gümüşü	2.2	170	Dizel	240000	Avtomat	Arxa	f	28500	16765	4474819	Elcin	(050) 313-12-11	2020-11-17
2435	Qazax	Opel	Astra	2005	Hetçbek / Liftbek	Yaş Asfalt	1.3	90	Dizel	251000	Mexaniki	Ön	f	10300	6059	4474821	Rauf	(070) 243-53-13	2020-11-17
2436	Cəlilabad	Mercedes	190	1989	Sedan	Gümüşü	2	122	Benzin	218390	Avtomat	Arxa	f	5800	3412	4474826	Subhan	(051) 488-94-94	2020-11-17
2437	Bakı	LADA (VAZ)	2107	1998	Sedan	Ağ	1.6	75	Benzin	75000	Mexaniki	Arxa	f	5200	3059	4474827	İlkiN	(070) 318-98-17	2020-11-17
2438	Bakı	Ford	Transit	2008	Yük maşını	Ağ	2.2	110	Dizel	174000	Mexaniki	Ön	f	25160	14800	4468875	Ariz	(055) 665-87-30	2020-11-17
2439	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.8	141	Benzin	104569	Avtomat	Ön	f	18500	10882	4474780	Yalçın	(055) 255-44-84	2020-11-17
2440	Bakı	Mercedes	E 320	2000	Sedan	Qara	2.8	204	Benzin	314411	Avtomat	Arxa	f	15000	8824	4474797	Eli	(060) 341-31-21	2020-11-17
2441	Bakı	Chevrolet	Niva	2019	Offroader / SUV	Ağ	1.7	80	Benzin	36000	Mexaniki	Tam	f	19000	11176	4474799	Elmar	(051) 235-50-05	2020-11-17
2442	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Göy	1.6	90	Benzin	170000	Mexaniki	Ön	f	11000	6471	4474800	Vasif	(070) 200-30-39	2020-11-17
2443	Bakı	Kia	Sorento	2006	Offroader / SUV	Qara	2.5	143	Dizel	275000	Avtomat	Tam	f	16000	9412	4474801	Рашид	(050) 898-46-48	2020-11-17
2444	Bakı	Hyundai	Santa Fe	2014	Offroader / SUV	Boz	2	274	Benzin	127000	Avtomat	Tam	f	33500	19706	4474803	Zaur	(077) 311-23-11	2020-11-17
2445	Gəncə	Tofas	Sahin	2005	Sedan	Qızılı	1.6	86	Benzin	267423	Mexaniki	Arxa	f	6300	3706	4474804	Xaliq	(055) 679-20-19	2020-11-17
2446	Bakı	Mercedes	S 350	2004	Sedan	Qara	3.5	272	Benzin	255000	Avtomat	Arxa	f	16500	9706	4474809	Ceyhun	(055) 216-38-88	2020-11-17
2447	Oğuz	Mitsubishi	Pajero	2012	Offroader / SUV	Ağ	3	190	Benzin	76000	Avtomat	Tam	f	37400	22000	4394853	Sahib	(055) 848-92-78	2020-11-17
2448	Sumqayıt	Opel	Vectra	1994	Sedan	Göy	2	136	Benzin	500000	Avtomat	Ön	f	4100	2412	4299531	Anar	(050) 710-15-54	2020-11-17
2449	Bakı	Mercedes	E 220	1993	Sedan	Gümüşü	2.2	125	Dizel	325658	Avtomat	Arxa	f	7800	4588	4466875	Elvin	(070) 366-68-66	2020-11-17
2450	Bakı	Daewoo	Nexia	2011	Sedan	Ağ	1.5	75	Benzin	132185	Mexaniki	Ön	f	7600	4471	4461319	Rufat	(055) 947-72-87	2020-11-17
2451	Bakı	Mercedes	Vito 111	2009	Van	Gümüşü	2.2	150	Dizel	200000	Mexaniki	Arxa	f	22500	13235	4474812	Mirselim	(055) 355-84-06	2020-11-17
2453	Bakı	Mercedes	GLA 250	2018	Hetçbek / Liftbek	Gümüşü	2	211	Benzin	27344	Avtomat	Ön	f	46750	27500	4470737	Elmeddin	(051) 500-00-15	2020-11-17
2455	Bakı	Mercedes	C 240	1997	Universal	Qara	2.4	170	Benzin	360000	Avtomat	Arxa	f	10000	5882	4430864	Elşən	(070) 753-32-83	2020-11-17
2456	Bakı	BMW	740	2017	Sedan	Qara	3	326	Benzin	67770	Avtomat	Arxa	f	118150	69500	4270097	Aydın	(055) 444-79-13	2020-11-17
2457	Xırdalan	Tofas	Dogan	2004	Sedan	Ağ	1.6	86	Benzin	30200	Mexaniki	Arxa	f	5300	3118	4474829	Sarvan 	(055) 430-52-53	2020-11-17
2458	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	188000	Avtomat	Ön	f	12500	7353	4446893	Заур	(050) 337-38-37	2020-11-17
2459	Zaqatala	BMW	530	2007	Sedan	Qara	3	272	Benzin	250000	Avtomat	Arxa	f	25200	14824	4400620	Vaska	(055) 385-74-00	2020-11-17
2460	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2.4	178	Benzin	204000	Avtomat	Ön	f	15200	8941	4408388	Nihat	(099) 352-32-62	2020-11-17
2462	Bakı	Hyundai	Grandeur	2011	Sedan	Qara	2.4	180	Benzin	184000	Avtomat	Ön	f	24400	14353	4466091	Vuqar	(070) 331-15-05	2020-11-17
2463	Bakı	LADA (VAZ)	2107	2002	Sedan	Qırmızı	1.6	75	Benzin	171000	Mexaniki	Arxa	f	4500	2647	4474745	Vuqar	(070) 437-88-89	2020-11-17
2464	Bakı	Ford	Fusion	2019	Sedan	Yaş Asfalt	1.5	181	Benzin	15000	Avtomat	Ön	f	29600	17412	4336464	Эмиль	(077) 314-99-66	2020-11-17
2465	Bakı	Toyota	Camry	2009	Sedan	Ağ	2.4	167	Benzin	160000	Avtomat	Ön	f	20400	12000	4474747	Farhad	(055) 211-40-17	2020-11-17
2466	Bakı	Hyundai	Santa Fe	2014	Offroader / SUV	Ağ	2.4	178	Benzin	134000	Avtomat	Tam	f	31450	18500	4278063	Cavid	(050) 999-10-19	2020-11-17
2467	Bakı	Nissan	Tiida	2008	Sedan	Qızılı	1.6	110	Benzin	152000	Avtomat	Ön	f	12800	7529	4436453	Rustəm	(070) 520-20-03	2020-11-17
2468	Bakı	Kia	Cerato	2011	Sedan	Qara	1.6	132	Benzin	240000	Avtomat	Ön	f	15800	9294	4474755	Perviz	(055) 840-26-26	2020-11-17
2469	Sumqayıt	Mercedes	E 230	1997	Sedan	Göy	2.3	150	Benzin	389180	Avtomat	Arxa	f	10600	6235	4474759	Elcin	(070) 227-08-02	2020-11-17
2470	Bakı	Mercedes	E 240	2000	Sedan	Boz	2.6	177	Benzin	315174	Avtomat	Arxa	f	14500	8529	4474761	ELNUR	(050) 230-10-18	2020-11-17
2471	Bakı	Opel	Zafira	2005	Minivan	Boz	1.9	150	Dizel	283500	Avtomat	Ön	f	12000	7059	4474768	Samir	(055) 680-84-04	2020-11-17
2472	Bakı	Chevrolet	Cruze	2016	Hetçbek / Liftbek	Göy	1.4	153	Benzin	69000	Avtomat	Ön	f	17800	10471	4474772	kenan	(070) 249-84-84	2020-11-17
2473	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	102000	Avtomat	Ön	f	13700	8059	4474774	Emil	(055) 783-20-20	2020-11-17
2474	Bakı	Mercedes	C 220	1995	Sedan	Qızılı	2.2	146	Benzin	323000	Avtomat	Arxa	f	10500	6176	4453114	Oqtay	(051) 995-04-25	2020-11-17
2475	Bakı	Kia	Sorento	2011	Offroader / SUV	Gümüşü	2	150	Dizel	46000	Avtomat	Ön	f	23500	13824	4450654	Elmir	(050) 325-85-25	2020-11-17
2476	Bakı	Ford	Transit	2007	Furqon	Ağ	2.2	125	Dizel	187000	Mexaniki	Ön	f	17600	10353	4459028	Ariz	(055) 665-87-30	2020-11-17
2487	Sumqayıt	Nissan	Teana	2003	Sedan	Bej	2.3	173	Benzin	265000	Avtomat	Ön	f	10300	6059	4474712	Rövşen	(055) 409-88-99	2020-11-17
2490	Cəlilabad	LADA (VAZ)	2107	2009	Sedan	Göy	1.6	75	Benzin	135682	Mexaniki	Arxa	f	8200	4824	4474724	Perviz	(050) 579-49-30	2020-11-17
2491	Sumqayıt	Kia	Optima	2013	Sedan	Ağ	2	274	Benzin	112000	Avtomat	Ön	f	24900	14647	4474725	Rahib	(050) 382-91-13	2020-11-17
2492	Bakı	Honda	CR-V	2009	Offroader / SUV	Ağ	2.4	180	Benzin	192000	Avtomat	Tam	f	21000	12353	4474726	Elmar	(050) 319-43-93	2020-11-17
2493	Bərdə	LADA (VAZ)	2106	1999	Sedan	Ağ	1.6	75	Benzin	75320	Mexaniki	Arxa	f	5500	3235	4474727	Sabir	(050) 752-57-07	2020-11-17
2494	Bakı	Volkswagen	Caddy	2006	Furqon	Göy	2	140	Dizel	168000	Mexaniki	Ön	f	9300	5471	4474729	Eldar	(077) 346-44-58	2020-11-17
2495	Bakı	Mercedes	E 230	1997	Sedan	Qara	2.3	150	Qaz	400000	Avtomat	Arxa	f	11000	6471	4474732	Tural	(070) 618-47-38	2020-11-17
2496	Bakı	Toyota	Camry	2008	Sedan	Ağ	2.4	158	Benzin	204300	Avtomat	Ön	f	22500	13235	4430951	Tural	(055) 274-81-07	2020-11-17
2497	Bakı	BMW	525	2003	Sedan	Gümüşü	2.5	192	Benzin	230000	Avtomat	Arxa	f	17900	10529	4474740	Rauf	(055) 746-77-77	2020-11-17
2498	Bakı	LADA (VAZ)	2106	1992	Sedan	Bej	1.5	65	Benzin	47764	Mexaniki	Arxa	f	3500	2059	4474744	Cavad 	(055) 896-36-46	2020-11-17
2499	Bakı	Kia	Ceed	2007	Universal	Yaş Asfalt	1.6	132	Dizel	208000	Mexaniki	Ön	f	14300	8412	4426667	Ramil	(055) 300-30-47	2020-11-17
2502	Bakı	Mercedes	E 220	2006	Sedan	Qara	2.2	170	Dizel	240000	Avtomat	Arxa	f	19000	11176	4474650	Nicat	(055) 802-20-10	2020-11-17
2513	Bakı	Mercedes	E 200	2016	Sedan	Qara	2	194	Dizel	104000	Avtomat	Arxa	f	67490	39700	4461696	Sərxan	(050) 280-58-00	2020-11-17
2514	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	140000	Avtomat	Arxa	f	44200	26000	4422646	Orxan	(055) 253-52-54	2020-11-17
2515	Gəncə	LADA (VAZ)	2107	1999	Sedan	Ağ	1.6	75	Benzin	180000	Mexaniki	Arxa	f	4500	2647	4474638	Serxan	(055) 549-29-79	2020-11-17
2516	Bakı	Mercedes	E 220	2003	Sedan	Qara	2.2	150	Dizel	306000	Avtomat	Arxa	f	16500	9706	4474640	Ali	(051) 455-55-05	2020-11-17
2517	Şabran	BMW	318	1993	Sedan	Yaşıl	1.8	116	Benzin	404645	Mexaniki	Arxa	f	5800	3412	4474576	Səlim	(077) 524-60-19	2020-11-17
2518	Bakı	MG	350	2012	Sedan	Ağ	1.5	110	Benzin	245000	Avtomat	Ön	f	10500	6176	4474583	Şamil	(070) 620-73-24	2020-11-17
2519	Bakı	Mercedes	C 220	1995	Sedan	Gümüşü	2.2	143	Dizel	400000	Avtomat	Arxa	f	10400	6118	4474586	Amil.doktor 	(050) 712-74-05	2020-11-17
2520	Bakı	Toyota	Prius	2007	Sedan	Yaş Asfalt	1.5	76	Hibrid	148000	Avtomat	Ön	f	12500	7353	4474588	Rasim	(070) 901-26-35	2020-11-17
2521	Bakı	LADA (VAZ)	Priora	2008	Hetçbek / Liftbek	Qara	1.6	106	Benzin	130000	Mexaniki	Ön	f	9500	5588	4474589	mehdi	(077) 555-30-35	2020-11-17
2522	Bakı	Ford	Mondeo	2009	Hetçbek / Liftbek	Ağ	2.3	176	Benzin	212500	Avtomat	Ön	f	22610	13300	4474592	Anar	(050) 390-10-55	2020-11-17
2523	Bakı	BMW	525	2007	Sedan	Ağ	2.5	218	Benzin	77000	Avtomat	Arxa	f	27000	15882	4474591	Nəcəf	(077) 490-93-00	2020-11-17
2524	Bakı	LADA (VAZ)	2115	2012	Sedan	Tünd qırmızı	1.6	80	Benzin	85000	Mexaniki	Ön	f	9700	5706	4474599	Ceyhun	(051) 866-14-44	2020-11-17
2525	Bakı	Lifan	320	2015	Hetçbek / Liftbek	Qara	1.3	83	Benzin	81000	Mexaniki	Ön	f	9000	5294	4474606	Saleh	(050) 761-25-10	2020-11-17
2526	Bakı	Mercedes	Sprinter 513	2012	Furqon	Qırmızı	2.2	150	Dizel	181000	Mexaniki	Arxa	f	28050	16500	4321546	Qiyas	(055) 204-00-24	2020-11-17
2527	Sumqayıt	Mercedes	Vito 116	2015	Van	Qırmızı	2.2	170	Dizel	241000	Mexaniki	Arxa	f	58650	34500	4474609	Məhəmməd	(050) 223-31-47	2020-11-17
2528	Bakı	Ford	Focus	2003	Sedan	Gümüşü	1.8	130	Benzin	75000	Mexaniki	Ön	f	6500	3824	4474612	Ceyhun	(051) 760-84-76	2020-11-17
2529	Bakı	Hyundai	Sonata	2012	Sedan	Ağ	2	165	Benzin	139000	Avtomat	Ön	f	19300	11353	4474610	Emin	(050) 625-57-77	2020-11-17
2530	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Ağ	1.8	99	Hibrid	160000	Robotlaşdırılmış	Ön	f	18700	11000	4474613	Emin	(050) 364-33-75	2020-11-17
2531	Bakı	Hyundai	Elantra	2012	Sedan	Qara	1.8	150	Benzin	82000	Avtomat	Ön	f	18800	11059	4474614	Rehim	(055) 211-89-05	2020-11-17
2532	Bakı	Mercedes	E 220	2011	Sedan	Qara	2.2	170	Dizel	187000	Avtomat	Arxa	f	28300	16647	4474616	Mir Aga	(070) 208-20-80	2020-11-17
2533	Bakı	Mercedes	E 200	1992	Sedan	Ağ	2	136	Benzin	300000	Avtomat	Arxa	f	5800	3412	4474619	Emin	(055) 353-52-58	2020-11-17
2534	Bakı	Opel	Vectra	2000	Hetçbek / Liftbek	Gümüşü	2	136	Benzin	359000	Mexaniki	Ön	f	7700	4529	4474623	Nicat	(070) 542-83-05	2020-11-17
2535	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Göy	1.6	101	Benzin	111111	Mexaniki	Ön	f	7500	4412	4474624	Mamed	(070) 254-73-54	2020-11-17
2536	Bakı	Mercedes	E 240	2004	Sedan	Ağ	2.6	177	Benzin	269000	Avtomat	Arxa	f	19000	11176	4474629	Yehya	(070) 878-90-00	2020-11-17
2537	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaşıl	1.5	76	Hibrid	140000	Variator	Ön	f	12555	7385	4474632	kamran	(055) 776-40-00	2020-11-17
2538	Bakı	Mercedes	E 320	2001	Sedan	Qara	3.2	224	Benzin	225000	Avtomat	Arxa	f	15000	8824	4474646	Anar	(070) 811-68-25	2020-11-17
2539	Bakı	Kia	Optima	2020	Sedan	Qara	1.6	195	Benzin	12500	Avtomat	Ön	f	33830	19900	4449634	Namaz	(055) 441-27-27	2020-11-17
2540	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2	274	Benzin	60800	Avtomat	Ön	f	29700	17471	4419828	Hamid	(050) 537-66-77	2020-11-17
2541	Sumqayıt	Nissan	X-Trail	2005	Offroader / SUV	Gümüşü	2.5	170	Benzin	226000	Avtomat	Tam	f	15500	9118	4474511	Elvin	(050) 557-69-92	2020-11-17
2542	Bakı	BMW	750	2009	Sedan	Qara	4.4	407	Benzin	192500	Avtomat	Arxa	f	46750	27500	4378941	Fərid	(077) 717-22-22	2020-11-17
2543	Sumqayıt	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	141000	Avtomat	Ön	f	16500	9706	4474512	Vusal	(070) 878-32-61	2020-11-17
2544	Bakı	Opel	Zafira	1999	Minivan	Göy	1.6	101	Benzin	470000	Mexaniki	Ön	f	8000	4706	4474520	Hamlet 	(077) 356-62-15	2020-11-17
2545	Bakı	Toyota	Prius	2013	Hetçbek / Liftbek	Yaş Asfalt	1.8	99	Hibrid	120000	Avtomat	Ön	f	19200	11294	4474526	Səxavət	(070) 880-89-86	2020-11-17
2546	Siyəzən	Hyundai	Terracan	2003	Offroader / SUV	Yaş Asfalt	2.9	163	Dizel	250000	Avtomat	Tam	f	13300	7824	4474524	Vasif 	(070) 219-19-59	2020-11-17
2547	Bakı	BMW	525	1994	Sedan	Göy	2.5	192	Dizel	366078	Mexaniki	Arxa	f	7000	4118	4474527	Elçin 	(070) 900-43-66	2020-11-17
2548	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.8	150	Benzin	114000	Avtomat	Ön	f	20700	12176	4474478	Emin	(070) 338-88-64	2020-11-17
2549	Bakı	Hyundai	Grandeur	2009	Sedan	Ağ	2.7	197	Benzin	270000	Avtomat	Ön	f	16000	9412	4474540	Nihad	(051) 854-00-08	2020-11-17
2550	Bakı	Ford	Fusion	2013	Sedan	Yaş Asfalt	1.6	181	Benzin	48200	Avtomat	Ön	f	19000	11176	4474552	Sahib	(055) 309-73-78	2020-11-17
2551	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Göy	1.8	99	Benzin	210	Avtomat	Ön	f	16300	9588	4474556	Nicat	(055) 491-51-01	2020-11-17
2552	Bakı	BMW	325	2002	Sedan	Qara	2.5	192	Benzin	240000	Avtomat	Arxa	f	14500	8529	4474563	Rafael	(077) 405-66-30	2020-11-17
2553	Qax	Nissan	Maxima	1998	Sedan	Yaşıl	3	200	Benzin	324000	Mexaniki	Ön	f	7600	4471	4474564	Rovşən	(077) 755-56-76	2020-11-17
2554	Sumqayıt	Mercedes	S 320	2001	Sedan	Gümüşü	3.2	224	Benzin	260000	Avtomat	Arxa	f	12800	7529	4474449	Muxtar	(050) 482-71-06	2020-11-17
2555	Bakı	Mercedes	E 220	1994	Sedan	Ağ	2.2	146	Benzin	419500	Avtomat	Arxa	f	8500	5000	4474450	Meherrem	(050) 701-05-77	2020-11-17
2557	Ağdaş	Toyota	Prado	2011	Offroader / SUV	Ağ	2.7	167	Benzin	57000	Avtomat	Tam	f	48280	28400	4474453	Nəriman 	(050) 446-33-99	2020-11-17
2558	Bakı	Mercedes	E 280	2005	Sedan	Qara	3	231	Benzin	221742	Avtomat	Arxa	f	23000	13529	4474451	Imran	(055) 482-05-89	2020-11-17
2559	Gəncə	BMW	325	2008	Sedan	Qara	2.5	218	Benzin	44000	Avtomat	Arxa	f	24500	14412	4392107	Seymur	(050) 338-39-09	2020-11-17
2560	Bakı	Mercedes	C 180	1995	Sedan	Qara	1.8	122	Benzin	369067	Avtomat	Arxa	f	8800	5176	4474460	Ramin 	(050) 780-73-33	2020-11-17
2561	Bakı	Mercedes	190	1991	Sedan	Gümüşü	2	122	Benzin	508000	Avtomat	Arxa	f	6200	3647	4474469	Rasim	(070) 270-00-96	2020-11-17
2562	Bakı	BMW	318	2001	Sedan	Göy	1.9	115	Benzin	308550	Mexaniki	Arxa	f	8800	5176	4449937	Zamiq 	(055) 660-27-05	2020-11-17
2563	Sumqayıt	Mitsubishi	Pajero	1996	Offroader / SUV	Boz	2.8	125	Dizel	352000	Avtomat	Tam	f	8800	5176	4474472	Binyamin	(055) 583-83-44	2020-11-17
2564	Bakı	Ford	Fusion	2011	Hetçbek / Liftbek	Ağ	1.6	89	Benzin	144000	Avtomat	Ön	f	12700	7471	4474448	Nəsib	(055) 436-94-51	2020-11-17
2565	Gəncə	LADA (VAZ)	2106	1991	Sedan	Göy	1.3	65	Benzin	76754	Mexaniki	Arxa	f	4000	2353	4474477	Elçin	(055) 654-16-23	2020-11-17
2566	Lənkəran	GAZ	2705	1999	Furqon	Yaşıl	2.5	96	Benzin	260000	Mexaniki	Arxa	f	5800	3412	4474482	Faiq	(050) 632-14-42	2020-11-17
2567	Bakı	Mercedes	Vito	2005	Van	Gümüşü	2.2	150	Dizel	272000	Avtomat	Arxa	f	25500	15000	4474492	İbrahim	(050) 999-83-72	2020-11-17
2568	Bakı	Mercedes	E 240	1998	Sedan	Yaşıl	2.4	170	Benzin	224000	Avtomat	Arxa	f	12500	7353	4474489	Samir	(077) 724-15-17	2020-11-17
2569	Bakı	BMC	Pro 827	2005	Yük maşını	Ağ	16	587	Dizel	300000	Mexaniki	Arxa	f	30000	17647	4474494	Taleh	(051) 470-41-00	2020-11-17
2570	Ağdaş	GAZ	M-21	1960	Sedan	Qara	2.1	52	Benzin	300000	Mexaniki	Arxa	f	38000	22353	4474497	Kənan	(050) 997-71-87	2020-11-17
2571	Bakı	Mercedes	Vaneo	2002	Minivan	Boz	2.2	150	Benzin	160000	Avtomat	Ön	f	8700	5118	4474501	Nihat	(055) 228-26-04	2020-11-17
2572	Qusar	LADA (VAZ)	2110	2002	Sedan	Göy	1.5	75	Benzin	220000	Mexaniki	Ön	f	6500	3824	4474505	Elvin 	(055) 896-49-88	2020-11-17
2573	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	173000	Mexaniki	Ön	f	11500	6765	4474507	Rovsen	(055) 214-90-04	2020-11-17
2574	Bakı	Jeep	Grand Cherokee	2012	Offroader / SUV	Ağ	3.6	300	Benzin	169000	Avtomat	Tam	f	33830	19900	4474516	Avtosalon "Jeep’s House 4X4"	(055) 211-91-71	2020-11-17
2575	Bakı	Infiniti	FX35	2008	Offroader / SUV	Qara	3.5	280	Benzin	217300	Avtomat	Tam	f	21200	12471	4474509	Samir	(050) 228-48-09	2020-11-17
2577	Bakı	Kia	Rio	2011	Hetçbek / Liftbek	Ağ	1.1	75	Dizel	142000	Mexaniki	Ön	f	14200	8353	4474568	Ebulfez	(070) 662-82-82	2020-11-17
2578	Bakı	Mercedes	GL 550	2008	Offroader / SUV	Ağ	5.5	388	Benzin	245000	Avtomat	Tam	f	29750	17500	4293445	Ulvi	(050) 236-06-00	2020-11-17
2579	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	199542	Avtomat	Ön	f	9036	5315	4474571	Eldar	(055) 986-40-01	2020-11-17
2580	Bakı	Kia	Cadenza	2011	Sedan	Ağ	3.5	290	Benzin	163000	Avtomat	Ön	f	25200	14824	4474574	Serxan	(050) 306-62-62	2020-11-17
2581	Bakı	Hyundai	Sonata	2014	Sedan	Qara	1.6	181	Benzin	72000	Avtomat	Ön	f	22300	13118	4298891	Emin	(055) 200-34-48	2020-11-17
2582	Bakı	Kia	Rio	2007	Hetçbek / Liftbek	Yaş Asfalt	1.5	110	Dizel	227239	Mexaniki	Ön	f	11000	6471	4474411	Elcin	(050) 686-36-56	2020-11-17
2583	Bakı	Kia	Optima	2016	Sedan	Gümüşü	1.6	187	Benzin	82000	Avtomat	Ön	f	24700	14529	4474415	Xetai	(050) 520-99-44	2020-11-17
2584	Lənkəran	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	119000	Mexaniki	Tam	f	12900	7588	4452631	Xeqani	(051) 771-77-11	2020-11-17
2585	Sumqayıt	Hyundai	County	2007	Avtobus	Ağ	3.9	150	Dizel	250000	Mexaniki	Arxa	f	41000	24118	4474420	Azər	(070) 358-49-54	2020-11-17
2586	Bakı	Opel	Astra	2005	Universal	Ağ	1.4	90	Benzin	191787	Mexaniki	Ön	f	10800	6353	4424165	Anar	(070) 334-73-99	2020-11-17
2587	Sumqayıt	Opel	Astra	1996	Hetçbek / Liftbek	Qəhvəyi	1.6	101	Benzin	337000	Avtomat	Ön	f	6200	3647	4474421	İntiqam 	(070) 884-79-90	2020-11-17
2588	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	154787	Mexaniki	Ön	f	10900	6412	4456946	Anar	(070) 334-73-99	2020-11-17
2589	Bakı	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	84346	Mexaniki	Arxa	f	7500	4412	4474425	İlkin	(055) 798-89-86	2020-11-17
2590	Bakı	BMW	530	2019	Sedan	Yaş Asfalt	2	252	Benzin	4000	Avtomat	Arxa	f	99450	58500	4474430	Ferid	(050) 211-72-51	2020-11-17
2591	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	175000	Mexaniki	Ön	f	10700	6294	4474432	Kamal	(055) 470-65-10	2020-11-17
2592	Xudat	LADA (VAZ)	2115	2008	Sedan	Boz	1.6	80	Benzin	254852	Mexaniki	Ön	f	6400	3765	4474428	zahid	(070) 352-52-70	2020-11-17
2593	Bakı	Volkswagen	Tiguan	2011	Offroader / SUV	Ağ	2	180	Benzin	166066	Avtomat	Ön	f	23500	13824	4474439	İlqar_	(055) 646-06-00	2020-11-17
2594	Bakı	Iran Khodro	Azsamand	2006	Sedan	Yaş Asfalt	1.8	110	Benzin	350000	Mexaniki	Ön	f	6700	3941	4474382	Zaur	(070) 616-08-55	2020-11-17
2595	Sumqayıt	Mercedes	E 220	2001	Sedan	Gümüşü	2.2	150	Dizel	380000	Avtomat	Arxa	f	16500	9706	4474383	Akif	(050) 366-94-15	2020-11-17
2596	Bakı	BMW	528	1998	Sedan	Yaşıl	2.8	193	Benzin	247709	Avtomat	Arxa	f	7300	4294	4474384	Həci	(070) 268-08-00	2020-11-17
2598	Bakı	Toyota	Prado	2012	Offroader / SUV	Tünd qırmızı	2.7	167	Benzin	242023	Avtomat	Tam	f	41000	24118	4474387	Hacı Mirsəfər	(050) 302-79-19	2020-11-17
2599	Bakı	LADA (VAZ)	Priora	2017	Sedan	Qara	1.6	106	Benzin	64806	Mexaniki	Ön	f	15500	9118	4474388	Fərman 	(055) 359-43-79	2020-11-17
2600	Bakı	Mitsubishi	Outlander	2002	Offroader / SUV	Ağ	2.4	170	Benzin	229000	Avtomat	Ön	f	9500	5588	4474389	Asif	(055) 607-18-77	2020-11-17
2601	Bakı	BMW	X5	2018	Offroader / SUV	Qara	3	306	Benzin	23800	Avtomat	Tam	f	96898	56999	4403384	Isfandiyar	(050) 212-37-28	2020-11-17
2602	Bakı	Chevrolet	Malibu	2016	Sedan	Ağ	1.5	181	Benzin	125000	Avtomat	Ön	f	23200	13647	4474390	Emil	(070) 585-55-57	2020-11-17
2603	Bakı	Mercedes	Vito	1999	Minivan	Boz	2.2	150	Dizel	623000	Mexaniki	Ön	f	14000	8235	4474393	Orxan	(050) 559-84-41	2020-11-17
2604	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	110000	Avtomat	Tam	f	34510	20300	4474394	Samir	(051) 410-74-74	2020-11-17
2605	Bakı	Mercedes	S 320	1999	Sedan	Gümüşü	3.2	224	Benzin	400000	Avtomat	Arxa	f	9000	5294	4474396	Murad	(070) 834-27-00	2020-11-17
2606	Bakı	Saipa	Saina	2019	Sedan	Ağ	1.5	87	Benzin	24350	Mexaniki	Ön	f	3500	2059	4474401	Mircavid	(070) 915-02-03	2020-11-17
2607	Xaçmaz	Ford	Transit	1998	Furqon	Qırmızı	2.4	140	Dizel	198000	Mexaniki	Arxa	f	15000	8824	4474406	Azad	(055) 431-99-31	2020-11-17
2608	Bakı	Lexus	RX 200t	2016	Offroader / SUV	Boz	2	300	Benzin	189000	Avtomat	Tam	f	62900	37000	4474404	Эльнур	(050) 207-47-77	2020-11-17
2609	Bakı	BMW	523	1996	Sedan	Gümüşü	2.5	170	Benzin	246000	Avtomat	Arxa	f	7500	4412	4474407	Vaqif	(050) 553-02-20	2020-11-17
2611	Bakı	Mercedes	CLK 230	2000	Kupe	Göy	2.3	193	Benzin	238000	Avtomat	Arxa	f	11700	6882	4474438	Elmir 	(055) 281-15-77	2020-11-17
2612	Bakı	Hyundai	Accent	2009	Sedan	Boz	1.5	90	Dizel	188800	Avtomat	Ön	f	12800	7529	4474441	Ramazan	(051) 574-55-55	2020-11-17
2613	Goranboy	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	98000	Mexaniki	Arxa	f	5300	3118	4474443	Ülvün	(055) 548-59-54	2020-11-17
2614	Tərtər	MAZ	65151	1986	Yük maşını	Qırmızı	12	350	Dizel	250000	Mexaniki	Arxa	f	8500	5000	4474445	Vusal	(050) 581-26-66	2020-11-17
2615	Bakı	Lexus	RX 330	2005	Offroader / SUV	Gümüşü	3.3	231	Benzin	235000	Avtomat	Tam	f	18500	10882	4474446	Bəhruz	(055) 365-30-30	2020-11-17
2616	Bakı	Land Rover	Range Rover	2011	Offroader / SUV	Qara	5	510	Benzin	100000	Avtomat	Tam	f	60860	35800	4462028	Avtosalon "OnBrend Cars"	(055) 522-02-22	2020-11-17
2617	Bakı	Hyundai	Elantra	2017	Sedan	Göy	1.6	204	Benzin	35119	Avtomat	Ön	f	29500	17353	4329029	Nigar	(050) 470-21-11	2020-11-17
2618	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Benzin	157000	Avtomat	Ön	f	12500	7353	4474362	Cavid	(055) 296-32-32	2020-11-17
2619	Bakı	Lexus	LS 460	2010	Sedan	Qara	4.6	382	Benzin	128000	Avtomat	Arxa	f	39950	23500	4474310	Behruz	(055) 221-64-64	2020-11-17
2620	Bakı	Nissan	Maxima	2005	Sedan	Çəhrayı	3	200	Benzin	223478	Avtomat	Tam	f	9500	5588	4474218	Eli	(099) 330-13-01	2020-11-17
2621	Bakı	Ford	Escape	2015	Offroader / SUV	Ağ	1.6	178	Benzin	60000	Avtomat	Tam	f	22000	12941	4474361	Şəmi	(055) 581-01-11	2020-11-17
2622	Gəncə	Opel	Vectra	1997	Universal	Yaşıl	1.6	101	Benzin	50000	Mexaniki	Ön	f	6500	3824	4474371	Anar	(055) 863-68-78	2020-11-17
2623	Bakı	Ford	Transit	2008	Mikroavtobus	Ağ	2.2	155	Dizel	300000	Mexaniki	Arxa	f	22500	13235	4474369	Şirvan	(051) 387-30-90	2020-11-17
2624	Bakı	Opel	Vectra	2004	Sedan	Gümüşü	2.2	155	Benzin	295000	Avtomat	Ön	f	10800	6353	4474372	Asif	(070) 957-17-37	2020-11-17
2625	Bakı	LADA (VAZ)	Kalina	2015	Universal	Boz	1.6	106	Benzin	124209	Mexaniki	Ön	f	13200	7765	4474376	Zohrab	(050) 274-61-48	2020-11-17
2626	Bakı	Land Rover	Range Rover	2013	Offroader / SUV	Yaş Asfalt	3	340	Dizel	170000	Avtomat	Tam	f	125800	74000	4417638	Xetai	(055) 204-80-09	2020-11-17
2627	Bakı	Mercedes	S 350	2014	Sedan	Qara	3	249	Dizel	120000	Avtomat	Arxa	f	111350	65500	4474379	intiqam	(050) 670-39-39	2020-11-17
2628	Bakı	KrAZ	65053	1991	Yük maşını	Boz	11	191	Dizel	49825	Mexaniki	Arxa	f	6500	3824	4088431	Azer	(070) 835-18-85	2020-11-17
2629	Bakı	LADA (VAZ)	Priora	2017	Sedan	Boz	1.6	98	Benzin	85000	Mexaniki	Ön	f	15800	9294	4474305	Fuad 	(077) 387-22-27	2020-11-17
2630	Zaqatala	Opel	Astra	2007	Universal	Boz	1.4	90	Benzin	202000	Mexaniki	Ön	f	11500	6765	4474297	Rustem	(077) 507-76-76	2020-11-17
2631	Bakı	LADA (VAZ)	2106	1996	Sedan	Yaşıl	1.5	65	Benzin	284200	Mexaniki	Arxa	f	4300	2529	4474308	Əli	(070) 222-50-17	2020-11-17
2632	Bakı	BMW	535	2010	Sedan	Qara	3	306	Benzin	157302	Avtomat	Arxa	f	41650	24500	4474313	Rüstəm	(055) 533-10-10	2020-11-17
2633	İmişli	Mercedes	E 280	1997	Sedan	Göy	2.8	193	Benzin	345600	Avtomat	Arxa	f	10000	5882	4474314	Eldar	(050) 625-17-58	2020-11-17
2634	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Benzin	394300	Avtomat	Ön	f	12300	7235	4474317	Azad	(070) 498-80-89	2020-11-17
2635	Gəncə	GAZ	31029	1993	Sedan	Ağ	2.4	131	Benzin	200000	Mexaniki	Arxa	f	3500	2059	4474312	Hemid	(051) 896-82-00	2020-11-17
2636	Bakı	Kia	Carens	2011	Universal	Qara	2	140	Dizel	207000	Avtomat	Ön	f	17000	10000	4474321	Ali	(050) 484-95-75	2020-11-17
2637	Lerik	Chevrolet	Niva	2005	Offroader / SUV	Gümüşü	1.7	80	Benzin	133200	Mexaniki	Tam	f	8700	5118	4474323	Elseven	(050) 357-59-01	2020-11-17
2638	Bakı	Kia	Shuma	2003	Sedan	Qara	1.6	110	Benzin	280000	Mexaniki	Ön	f	5300	3118	4474324	Farid	(055) 632-34-49	2020-11-17
2639	Gəncə	Kia	Rio	2012	Sedan	Qara	1.4	107	Benzin	112000	Avtomat	Ön	f	15700	9235	4474325	İlknur	(055) 694-37-24	2020-11-17
2640	Sumqayıt	Opel	Signum	2003	Hetçbek / Liftbek	Gümüşü	2.2	155	Dizel	282000	Avtomat	Ön	f	8300	4882	4474330	Elmin	(055) 257-58-58	2020-11-17
2641	Bakı	Opel	Astra	2006	Universal	Mavi	1.3	90	Dizel	233000	Mexaniki	Ön	f	11400	6706	4474333	Amil	(050) 374-24-47	2020-11-17
2642	Bakı	LADA (VAZ)	2115	2009	Sedan	Gümüşü	1.5	75	Benzin	170000	Mexaniki	Ön	f	8000	4706	4474332	Samir	(070) 222-34-52	2020-11-17
2643	Bakı	Tofas	Sahin	2006	Sedan	Qırmızı	1.6	86	Benzin	75365	Mexaniki	Arxa	f	6900	4059	4474340	Anar	(055) 465-25-65	2020-11-17
2644	Bakı	Mercedes	ML 350	2013	Offroader / SUV	Qara	3.5	306	Benzin	118000	Avtomat	Arxa	f	62220	36600	4474349	Ruslan	(050) 990-19-19	2020-11-17
2645	Bakı	Nissan	X-Trail	2001	Offroader / SUV	Gümüşü	2	140	Benzin	345000	Avtomat	Tam	f	11000	6471	4474351	Tural	(051) 518-60-07	2020-11-17
2646	Bakı	Mitsubishi	Outlander	2003	Offroader / SUV	Qara	2.4	170	Benzin	165000	Avtomat	Tam	f	10800	6353	4474355	Əli	(055) 787-95-35	2020-11-17
2647	Bakı	Lexus	CT 200 H	2015	Hetçbek / Liftbek	Ağ	1.8	135	Benzin	60000	Avtomat	Ön	f	35530	20900	4409779	Emin	(055) 767-50-70	2020-11-17
2648	Bakı	BMW	325	2003	Sedan	Boz	2.5	192	Benzin	307570	Avtomat	Arxa	f	12500	7353	4452950	Orxan	(055) 811-45-45	2020-11-17
2649	Bakı	Ford	Focus	2011	Sedan	Qara	1.6	125	Benzin	115000	Mexaniki	Ön	f	13300	7824	4474381	Malik	(050) 457-87-77	2020-11-17
2650	Bakı	BMW	530	2019	Sedan	Gümüşü	2	252	Benzin	18125	Avtomat	Arxa	f	83130	48900	4464384	Zulfuqar	(050) 207-08-67	2020-11-17
2657	Bakı	Chevrolet	Cruze	2015	Sedan	Yaş Asfalt	1.4	141	Benzin	187367	Avtomat	Arxa	f	16500	9706	4474279	Nizami	(070) 327-31-11	2020-11-17
2658	Bakı	Toyota	RAV 4	2013	Offroader / SUV	Ağ	2	167	Benzin	205000	Avtomat	Tam	f	37400	22000	4474281	Rasul	(055) 210-20-56	2020-11-17
2659	Gəncə	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	80000	Mexaniki	Arxa	f	7800	4588	4474282	Ramil	(055) 816-43-94	2020-11-17
2660	Bakı	Mercedes	C 250	2012	Sedan	Yaş Asfalt	1.8	204	Benzin	46562	Avtomat	Arxa	f	28560	16800	4474288	Samir	(050) 320-57-09	2020-11-17
2661	Bakı	Chevrolet	Lacetti	2006	Hetçbek / Liftbek	Gümüşü	1.6	109	Benzin	162000	Mexaniki	Ön	f	8900	5235	4474284	Azad	(050) 335-65-73	2020-11-17
2662	Bakı	DAF	105XF	2011	Dartqı	Göy	13	460	Dizel	998000	Mexaniki	Arxa	f	40500	23824	4396300	Abas	(070) 322-22-21	2020-11-17
2663	Bakı	Mercedes	C 220	1999	Sedan	Gümüşü	2.2	143	Dizel	524000	Mexaniki	Arxa	f	9900	5824	4474290	Hüseynağa	(055) 355-21-72	2020-11-17
2664	Bakı	Mercedes	E 200	1999	Sedan	Gümüşü	2	136	Benzin	321800	Avtomat	Arxa	f	10500	6176	4474293	Aqil	(050) 551-16-11	2020-11-17
2665	Bakı	Hyundai	i30	2007	Hetçbek / Liftbek	Yaş Asfalt	1.6	116	Dizel	185000	Mexaniki	Ön	f	13200	7765	4474292	Vasif	(055) 890-79-89	2020-11-17
2666	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	98230	Mexaniki	Ön	f	13000	7647	4474192	Kamran	(055) 609-96-20	2020-11-17
2667	Xırdalan	Ssang Yong	Kyron	2008	Offroader / SUV	Qara	3.2	170	Benzin	82000	Avtomat	Tam	f	16000	9412	4474203	Elçin	(055) 543-44-54	2020-11-17
2668	Xudat	GAZ	330200	1997	Yük maşını	Ağ	2.4	131	Benzin	143000	Mexaniki	Arxa	f	7000	4118	4474207	Cingiz	(070) 530-33-22	2020-11-17
2669	Ağstafa	Mercedes	E 220	1999	Sedan	Gümüşü	2.2	143	Dizel	300000	Mexaniki	Arxa	f	9800	5765	4474209	Tural	(070) 500-57-31	2020-11-17
2670	Gəncə	Hyundai	Sonata	2013	Sedan	Ağ	2.4	178	Benzin	170000	Avtomat	Ön	f	26000	15294	4474212	Tural	(055) 377-24-24	2020-11-17
2671	İmişli	Mercedes	190	1993	Sedan	Yaş Asfalt	1.8	109	Benzin	471475	Avtomat	Arxa	f	6000	3529	4474210	Ferahim	(051) 494-65-51	2020-11-17
2672	Kürdəmir	Mercedes	C 200	1993	Sedan	Gümüşü	2	136	Dizel	780000	Mexaniki	Arxa	f	7500	4412	4474214	Serxan	(055) 350-55-78	2020-11-17
2673	Bakı	Chevrolet	Cruze	2017	Sedan	Qara	1.4	153	Benzin	55735	Avtomat	Ön	f	18900	11118	4474223	Eziz	(055) 836-41-15	2020-11-17
2674	Bakı	Mercedes	E 220	2006	Sedan	Qara	2.2	150	Dizel	177000	Avtomat	Arxa	f	20000	11765	4474229	Sahib	(050) 979-95-73	2020-11-17
2676	Bakı	Toyota	Camry	2018	Sedan	Ağ	2.5	206	Benzin	36800	Avtomat	Ön	f	59500	35000	4474239	Abuzar	(055) 665-64-00	2020-11-17
2684	Sumqayıt	Mercedes	C 180	1995	Sedan	Qara	1.8	122	Benzin	350000	Avtomat	Arxa	f	8700	5118	4474295	Metleb	(070) 263-63-39	2020-11-17
2685	Bakı	BMW	523	1996	Sedan	Qara	2.5	170	Benzin	251784	Avtomat	Arxa	f	8500	5000	4474299	Emil	(055) 745-49-79	2020-11-17
2686	Bakı	BMW	528	1996	Sedan	Gümüşü	2.8	193	Benzin	444000	Avtomat	Arxa	f	7900	4647	4474300	Faxrat	(051) 621-07-07	2020-11-17
2687	Bakı	Hyundai	Accent	2008	Sedan	Gümüşü	1.5	102	Dizel	180000	Mexaniki	Ön	f	12300	7235	4474301	Teymur	(055) 601-30-26	2020-11-17
2688	Bakı	Kia	Optima	2014	Sedan	Ağ	2.4	178	Benzin	170000	Avtomat	Ön	f	20500	12059	4459831	Yaqub	(099) 829-20-01	2020-11-17
2689	Bakı	Kia	Sorento	2006	Offroader / SUV	Qara	2.5	170	Dizel	315000	Avtomat	Tam	f	16500	9706	4474156	Abdul	(055) 751-35-84	2020-11-17
2690	Bakı	Mercedes	S 300	1996	Sedan	Boz	3	173	Dizel	276634	Avtomat	Ön	f	18900	11118	4474157	Elgün	(070) 678-79-21	2020-11-17
2691	Sumqayıt	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	243	Benzin	65000	Avtomat	Tam	f	72250	42500	4399660	Emin	(099) 800-04-41	2020-11-17
2692	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	125600	Avtomat	Ön	f	12300	7235	4440059	Islam 	(050) 760-53-79	2020-11-17
2693	Bakı	Nissan	X-Trail	2002	Offroader / SUV	Qara	2	140	Benzin	130000	Avtomat	Tam	f	11500	6765	4474160	Emin	(055) 825-06-60	2020-11-17
2694	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	132539	Avtomat	Ön	f	12500	7353	4458917	Zaur	(055) 377-74-14	2020-11-17
2695	Gəncə	Chevrolet	Niva	2010	Offroader / SUV	Yaş Asfalt	1.7	80	Benzin	180000	Mexaniki	Tam	f	11000	6471	4474161	Əhməd 	(055) 775-30-30	2020-11-17
2696	Bakı	Kia	Rio	2009	Hetçbek / Liftbek	Gümüşü	1.4	97	Benzin	195000	Avtomat	Ön	f	12500	7353	4474164	Namiq	(070) 600-66-18	2020-11-17
2697	Bakı	Dacia	Logan	2009	Universal	Ağ	1.5	86	Dizel	175538	Mexaniki	Ön	f	13800	8118	4474136	Rovshan	(055) 478-72-94	2020-11-17
2698	Bakı	BMW	740	2008	Sedan	Qara	3	326	Benzin	172000	Avtomat	Arxa	f	34000	20000	4474137	Yusif	(051) 424-77-44	2020-11-17
2699	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	166400	Avtomat	Tam	f	42330	24900	4461657	Rauf	(050) 200-90-43	2020-11-17
2700	Bakı	Land Rover	Discovery	2008	Offroader / SUV	Qara	2.7	190	Dizel	206000	Avtomat	Tam	f	27500	16176	4419691	Muxammed 	(070) 316-00-05	2020-11-17
2701	Bakı	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.5	65	Benzin	93000	Mexaniki	Arxa	f	8200	4824	4474147	Zohrab	(050) 350-85-73	2020-11-17
2702	Bakı	Mercedes	E 280	2000	Sedan	Göy	2.8	193	Benzin	231000	Avtomat	Arxa	f	15200	8941	4474162	Mirze	(050) 600-04-05	2020-11-17
2703	Bakı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	200000	Mexaniki	Arxa	f	6300	3706	4474167	Ali	(070) 818-04-68	2020-11-17
2704	Gəncə	LADA (VAZ)	2106	1993	Sedan	Qara	1.5	65	Benzin	347000	Mexaniki	Arxa	f	3300	1941	4474085	Aqwin	(055) 851-66-41	2020-11-17
2705	Bakı	Kia	Rio	2012	Sedan	Ağ	1.4	107	Benzin	131000	Avtomat	Ön	f	16300	9588	4466858	Xəyal	(055) 721-00-05	2020-11-17
2706	Salyan	Toyota	Corolla	2005	Universal	Gümüşü	1.4	97	Dizel	246000	Mexaniki	Ön	f	12300	7235	4474087	Ylvi	(050) 554-63-92	2020-11-17
2707	Şəki	Tofas	Sahin	2004	Sedan	Yaşıl	1.6	86	Benzin	180000	Mexaniki	Ön	f	4200	2471	4474093	Rustem	(070) 616-12-57	2020-11-17
2708	Bakı	Opel	Astra	1999	Universal	Göy	1.6	101	Benzin	240000	Avtomat	Ön	f	8300	4882	4474092	Ruslan	(055) 218-58-54	2020-11-17
2709	Bakı	Mercedes	E 350	2006	Sedan	Qara	3.5	272	Benzin	255000	Avtomat	Arxa	f	17000	10000	4474095	Sabir	(050) 464-55-90	2020-11-17
2710	Bakı	Nissan	Teana	2012	Sedan	Ağ	2.5	182	Benzin	136000	Avtomat	Ön	f	25330	14900	4388004	Kenan	(070) 211-92-96	2020-11-17
2711	Şəmkir	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	80	Benzin	125000	Mexaniki	Arxa	f	8500	5000	4474098	Rasim	(051) 632-24-22	2020-11-17
2712	Bakı	Mercedes	E 230	1996	Sedan	Göy	2.3	150	Qaz	420000	Avtomat	Arxa	f	11300	6647	4222680	Behruz	(055) 918-00-91	2020-11-17
2713	Bakı	Mercedes	190	1991	Sedan	Gümüşü	2	122	Dizel	200000	Avtomat	Arxa	f	7000	4118	4474107	Kerimaga	(055) 949-94-39	2020-11-17
2714	Bakı	Kia	Sorento	2010	Offroader / SUV	Gümüşü	2	185	Dizel	110443	Avtomat	Ön	f	25500	15000	4474105	Seylan	(070) 317-47-99	2020-11-17
2715	Şəmkir	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	89000	Mexaniki	Ön	f	9000	5294	4474109	Resad	(055) 268-89-01	2020-11-17
2716	Mingəçevir	LADA (VAZ)	Priora	2013	Sedan	Ağ	1.6	106	Benzin	100000	Mexaniki	Ön	f	10500	6176	4474111	Surac	(070) 283-82-02	2020-11-17
2717	Sumqayıt	Nissan	Sunny	2007	Sedan	Gümüşü	1.6	109	Benzin	239500	Mexaniki	Ön	f	11000	6471	4474114	Tural	(050) 609-66-57	2020-11-17
2718	Bakı	MG	3	2011	Hetçbek / Liftbek	Göy	1.5	109	Benzin	123000	Robotlaşdırılmış	Ön	f	11600	6824	4474117	Elxan	(055) 904-74-37	2020-11-17
2719	Bakı	Lexus	LX 470	2005	Offroader / SUV	Qara	4.7	276	Benzin	180000	Avtomat	Tam	f	29800	17529	4474118	Rəvan	(070) 598-01-13	2020-11-17
2720	Bakı	Mercedes	E 300	1993	Sedan	Qızılı	3	177	Dizel	300000	Mexaniki	Arxa	f	8100	4765	4474128	Cefer	(050) 841-93-70	2020-11-17
2721	Ağcabədi	Mercedes	Vito	2007	Minivan	Ağ	2.2	150	Dizel	495000	Mexaniki	Arxa	f	23000	13529	4474131	Elsan	(050) 461-19-66	2020-11-17
2722	Bakı	Mercedes	C 250	2014	Sedan	Ağ	1.8	204	Benzin	55900	Avtomat	Arxa	f	32640	19200	4474129	Qulam	(055) 550-77-75	2020-11-17
2724	Bakı	Mercedes	S 65 AMG	2015	Sedan	Qara	6	630	Benzin	10119	Avtomat	Tam	f	235450	138500	4196683	Perviz	(050) 288-80-01	2020-11-17
2725	Bakı	Mercedes	E 240	1998	Sedan	Yaşıl	2.4	170	Benzin	380000	Avtomat	Arxa	f	10900	6412	4383818	Rövşən	(055) 790-07-97	2020-11-17
2726	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	121300	Mexaniki	Ön	f	12300	7235	4474171	Vusal	(051) 225-14-53	2020-11-17
2727	Bakı	LADA (VAZ)	Niva	2018	Offroader / SUV	Göy	1.7	80	Benzin	32000	Mexaniki	Tam	f	16600	9765	4474179	Natiq	(055) 552-35-55	2020-11-17
2728	Bakı	Mercedes	E 250	2010	Sedan	Qara	1.8	204	Benzin	114400	Avtomat	Arxa	f	33150	19500	4474176	Mahir	(050) 624-43-41	2020-11-17
2729	Bakı	Mercedes	ML 320	2000	Offroader / SUV	Qara	3.2	224	Benzin	209742	Avtomat	Tam	f	11500	6765	4474181	Toğrul	(055) 213-81-27	2020-11-17
2730	Şirvan	Mercedes	190	1985	Sedan	Qəhvəyi	1.8	109	Benzin	277000	Mexaniki	Arxa	f	4800	2824	4474187	Nizami	(055) 380-44-18	2020-11-17
2731	Şabran	Opel	Astra	1998	Universal	Göy	1.8	125	Benzin	350000	Mexaniki	Ön	f	8500	5000	4474028	Mircavad	(070) 233-64-52	2020-11-17
2732	Gəncə	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	340000	Avtomat	Arxa	f	16800	9882	4474035	Reşad	(050) 394-24-42	2020-11-17
2734	Bakı	Mercedes	E 240	2005	Sedan	Boz	2.6	177	Benzin	250000	Avtomat	Arxa	f	18500	10882	4456875	İldırım	(050) 636-85-86	2020-11-17
2735	Bakı	Opel	Combo	2006	Minivan	Ağ	1.4	105	Benzin	185000	Mexaniki	Ön	f	12500	7353	4474049	Anar	(055) 860-76-03	2020-11-17
2736	Bakı	Mercedes	E 220	2009	Sedan	Tünd qırmızı	2.2	170	Dizel	239000	Avtomat	Arxa	f	32640	19200	4474050	Vasif	(077) 751-51-91	2020-11-17
2733	Bakı	Hyundai	Sonata	2015	Sedan	Göy	1.6	184	Benzin	140870	Avtomat	Ön	f	19200	11294	4426014	Tural	(050) 555-96-98	2020-11-17
2737	Sumqayıt	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	350000	Mexaniki	Arxa	f	5100	3000	4474053	Vusal	(050) 773-09-04	2020-11-17
2738	Bakı	Nissan	Tiida	2008	Hetçbek / Liftbek	Qara	1.8	128	Benzin	229000	Avtomat	Ön	f	13000	7647	4474038	Mətin 	(077) 303-80-35	2020-11-17
2739	Sumqayıt	Opel	Vectra	1997	Hetçbek / Liftbek	Qırmızı	1.8	116	Benzin	653245	Avtomat	Ön	f	5800	3412	4474055	Rahib 	(070) 360-01-57	2020-11-17
2740	Gəncə	KamAz	55111	2005	Yük maşını	Narıncı	11	191	Dizel	245600	Mexaniki	Tam	f	28500	16765	4474060	Tunar	(055) 414-57-95	2020-11-17
2741	Bakı	Ford	Transit	2001	Furqon	Ağ	2	120	Dizel	411000	Mexaniki	Ön	f	14000	8235	4474058	Tural	(050) 312-22-32	2020-11-17
2742	Sumqayıt	Mitsubishi	Airtrek	2002	Offroader / SUV	Gümüşü	2	140	Benzin	176000	Avtomat	Ön	f	9400	5529	4474061	Asiman	(055) 739-52-39	2020-11-17
2743	Bakı	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.2	150	Dizel	360000	Avtomat	Tam	f	22000	12941	4474064	Rəvan	(070) 335-55-85	2020-11-17
2744	Goranboy	Mercedes	Sprinter 308	1996	Avtobus	Ağ	2.5	125	Dizel	120000	Mexaniki	Arxa	f	16200	9529	4473963	Elgün	(050) 725-38-08	2020-11-17
2745	Xaçmaz	Mercedes	C 230	2006	Sedan	Gümüşü	2.5	204	Benzin	33000	Avtomat	Arxa	f	14500	8529	4473969	Emin	(050) 565-55-70	2020-11-17
2746	Bakı	Hyundai	Terracan	2005	Offroader / SUV	Gümüşü	2.9	188	Dizel	283000	Avtomat	Tam	f	14200	8353	4446290	ELi	(050) 766-90-22	2020-11-17
2747	Bakı	Mercedes	E 240	2000	Sedan	Qara	2.4	170	Benzin	356754	Avtomat	Arxa	f	13700	8059	4471000	Azər.	(050) 697-22-49	2020-11-17
2748	Bakı	Opel	Zafira	2007	Universal	Göy	1.9	120	Dizel	361000	Mexaniki	Ön	f	10600	6235	4473977	Zaur	(050) 314-51-69	2020-11-17
2749	Bakı	Mercedes	E 240	1999	Sedan	Qara	2.4	170	Benzin	295000	Avtomat	Arxa	f	14700	8647	4473979	Fərman	(055) 880-99-89	2020-11-17
2750	Bakı	Mercedes	E 320	2000	Sedan	Göy	3.2	224	Benzin	405000	Avtomat	Arxa	f	16800	9882	4449666	BABEK	(050) 991-73-07	2020-11-17
2751	Bakı	Chevrolet	Lacetti	2007	Sedan	Narıncı	1.6	109	Benzin	279105	Avtomat	Ön	f	10500	6176	4473988	Mehin	(077) 630-36-46	2020-11-17
2752	Bakı	Fiat	Doblo	2007	Furqon	Gümüşü	1.3	85	Dizel	127000	Mexaniki	Ön	f	14100	8294	4473986	Anar	(050) 313-44-74	2020-11-17
2753	Bakı	Audi	A8	2008	Sedan	Qara	4.2	372	Benzin	175345	Avtomat	Tam	f	32640	19200	4269107	Rufat	(051) 777-58-20	2020-11-17
2754	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	118000	Mexaniki	Ön	f	11500	6765	4473990	Rövşən 	(070) 659-71-73	2020-11-17
2755	Bakı	LADA (VAZ)	Priora	2018	Sedan	Yaş Asfalt	1.6	106	Benzin	82000	Mexaniki	Ön	f	14000	8235	4473940	mir mehemmed	(070) 698-00-32	2020-11-17
2756	Bakı	Ford	Transit	2010	Furqon	Boz	2.2	140	Dizel	180000	Mexaniki	Ön	f	21400	12588	4473992	isa	(050) 842-21-18	2020-11-17
2757	Bakı	BMW	530	2000	Sedan	Göy	3	231	Benzin	400156	Avtomat	Arxa	f	12000	7059	4473991	vasif	(055) 770-26-65	2020-11-17
2758	Bakı	Hyundai	ix35	2010	Offroader / SUV	Qara	2.4	178	Benzin	220000	Avtomat	Tam	f	23500	13824	4473994	Nazim 	(051) 777-12-07	2020-11-17
2759	Tovuz	LADA (VAZ)	21099	1993	Sedan	Ağ	1.5	75	Benzin	94976	Mexaniki	Ön	f	3700	2176	4473996	Zəka	(050) 623-31-85	2020-11-17
2760	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4.5	235	Dizel	202000	Avtomat	Tam	f	70550	41500	4319458	Samir 	(055) 577-00-00	2020-11-17
2761	Bakı	Hyundai	i30	2009	Hetçbek / Liftbek	Gümüşü	1.6	126	Benzin	191750	Avtomat	Ön	f	13500	7941	4473997	Hafiz	(055) 928-96-75	2020-11-17
2762	Bakı	Mercedes	C 230	1999	Sedan	Ağ	2.3	150	Benzin	287000	Avtomat	Arxa	f	10900	6412	4444954	Azer	(055) 210-95-85	2020-11-17
2763	Gəncə	LADA (VAZ)	2106	1984	Sedan	Ağ	1.5	65	Benzin	99000	Mexaniki	Arxa	f	3700	2176	4474005	Elesger	(055) 497-36-57	2020-11-17
2764	Bakı	Hyundai	Elantra	2015	Sedan	Göy	1.8	150	Benzin	86000	Avtomat	Ön	f	21800	12824	4474015	Arif	(050) 667-42-10	2020-11-17
2765	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2.4	178	Benzin	134567	Avtomat	Ön	f	26500	15588	4474017	Sahib	(050) 215-05-90	2020-11-17
2766	Quba	UAZ	469	1998	Offroader / SUV	Boz	2.5	100	Benzin	150000	Mexaniki	Tam	f	5500	3235	4474018	Sahib	(050) 830-45-52	2020-11-17
2767	Bakı	Honda	Civic	2017	Sedan	Boz	1.5	174	Benzin	27500	Avtomat	Ön	f	28220	16600	4161494	Seymur	(055) 268-44-44	2020-11-17
2768	Bakı	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	93850	Mexaniki	Ön	f	8800	5176	4474071	Əfqan	(070) 632-83-84	2020-11-17
2769	Sumqayıt	Renault	Scenic	2005	Minivan	Boz	1.4	98	Dizel	307000	Mexaniki	Ön	f	7900	4647	4474067	Aydin	(077) 631-30-31	2020-11-17
2770	Bakı	Opel	Vectra	1997	Universal	Boz	1.6	101	Benzin	365555	Mexaniki	Ön	f	5300	3118	4474072	Royal	(055) 203-09-50	2020-11-17
2771	Bakı	Daewoo	Nexia	2010	Sedan	Gümüşü	1.5	75	Benzin	330000	Mexaniki	Ön	f	7500	4412	4401120	Sahbala	(055) 628-90-38	2020-11-17
2772	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Yaş Asfalt	2.4	178	Benzin	133000	Avtomat	Tam	f	32300	19000	4445698	Qismet	(050) 801-68-63	2020-11-17
2773	Gəncə	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	12000	Mexaniki	Tam	f	9800	5765	4473922	Bilal	(055) 475-52-52	2020-11-17
2774	Şəmkir	Mercedes	C 200	1997	Universal	Gümüşü	1.8	122	Benzin	264000	Mexaniki	Arxa	f	10800	6353	4473923	Rövşən	(055) 431-14-54	2020-11-17
2775	Gəncə	LADA (VAZ)	2106	2005	Sedan	Göy	1.6	75	Benzin	79010	Mexaniki	Arxa	f	6500	3824	4473925	Ramin	(070) 324-30-25	2020-11-17
2776	Bakı	Land Rover	Range Rover	2003	Offroader / SUV	Ağ	4.4	286	Benzin	160000	Avtomat	Tam	f	19500	11471	4473926	Elnur	(055) 252-55-54	2020-11-17
2777	Bakı	BMW	320	1998	Sedan	Qara	2	150	Benzin	354000	Mexaniki	Arxa	f	9300	5471	4465524	İlkin	(055) 285-15-11	2020-11-17
2778	Gəncə	Mercedes	C 240	2002	Sedan	Gümüşü	2.4	178	Benzin	206395	Avtomat	Arxa	f	11500	6765	4473930	Ruhun.	(055) 777-87-21	2020-11-17
2779	Bakı	Chevrolet	Cruze	2011	Sedan	Ağ	1.4	141	Benzin	213000	Avtomat	Ön	f	13700	8059	4473928	Lacin	(055) 838-81-73	2020-11-17
2780	Bakı	Mazda	3	2006	Sedan	Gümüşü	2.3	166	Benzin	130000	Avtomat	Arxa	f	8500	5000	4473931	Latif	(077) 300-11-01	2020-11-17
2781	Bakı	Mercedes	C 220	1998	Sedan	Gümüşü	2.2	143	Dizel	505161	Avtomat	Arxa	f	13000	7647	4473934	Zaur	(050) 382-35-69	2020-11-17
2782	Bakı	Renault	21	1990	Sedan	Ağ	2	136	Benzin	153000	Mexaniki	Ön	f	3400	2000	4473937	Elsen	(055) 610-49-61	2020-11-17
2783	Bakı	Volkswagen	Jetta	2014	Sedan	Gümüşü	1.6	105	Dizel	90000	Avtomat	Ön	f	20000	11765	4371508	Orxan	(050) 395-96-25	2020-11-17
2784	Tərtər	LADA (VAZ)	21099	1998	Sedan	Gümüşü	1.5	75	Benzin	345600	Mexaniki	Ön	f	4700	2765	4473947	Hasil	(055) 868-95-30	2020-11-17
2785	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	131000	Avtomat	Ön	f	15300	9000	4473948	Elnur	(070) 344-71-61	2020-11-17
2786	Bakı	Ford	Fusion	2019	Sedan	Boz	1.5	181	Benzin	43260	Avtomat	Ön	f	30000	17647	4473949	İbad	(055) 210-87-77	2020-11-17
2787	Bakı	Mercedes	E 230	1997	Sedan	Göy	2.3	150	Benzin	666666	Mexaniki	Arxa	f	9900	5824	4473852	Xeyal	(055) 972-06-06	2020-11-17
2788	Bakı	Hyundai	ix35	2010	Offroader / SUV	Ağ	2	166	Benzin	150000	Avtomat	Tam	f	21000	12353	4473860	Azik	(050) 539-30-81	2020-11-17
2789	Bakı	Ford	Transit	2005	Furqon	Ağ	2.4	120	Dizel	320000	Mexaniki	Arxa	f	21300	12529	4473863	Misir	(050) 584-35-39	2020-11-17
2790	Ağstafa	LADA (VAZ)	2106	1993	Sedan	Ağ	1.6	75	Benzin	197000	Mexaniki	Arxa	f	3700	2176	4473864	Behlul 	(055) 429-52-05	2020-11-17
2791	Bakı	Mercedes	E 280	2007	Sedan	Qara	3	231	Dizel	280200	Avtomat	Arxa	f	21499	12646	4331587	Fərid	(055) 675-89-38	2020-11-17
2792	Bakı	Mitsubishi	L 200	2013	Pikap	Ağ	2.5	136	Dizel	229000	Mexaniki	Tam	f	24800	14588	4473877	Ilgar	(050) 245-23-61	2020-11-17
2793	Bakı	Mercedes	190	1991	Sedan	Qırmızı	2	122	Benzin	480000	Avtomat	Arxa	f	7000	4118	4473876	Intiqam	(055) 505-31-33	2020-11-17
2794	Bakı	Mitsubishi	Airtrek	2002	Offroader / SUV	Qara	2	136	Benzin	230000	Avtomat	Ön	f	8000	4706	4473218	Meherrem	(055) 828-30-28	2020-11-17
2795	Naxçıvan	Opel	Vectra	2007	Sedan	Yaş Asfalt	2.2	147	Benzin	157000	Avtomat	Ön	f	11500	6765	4473886	Hidayət	(060) 370-63-70	2020-11-17
2796	Bakı	LADA (VAZ)	21099	2000	Sedan	Ağ	1.5	75	Benzin	113000	Mexaniki	Ön	f	5000	2941	4462427	Firdovsi 	(055) 707-11-17	2020-11-17
2797	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2	165	Benzin	215000	Avtomat	Ön	f	16500	9706	4473889	Kamran	(070) 701-20-30	2020-11-17
2798	Bakı	Hyundai	Elantra	2012	Sedan	Ağ	2	166	Benzin	144000	Avtomat	Ön	f	17700	10412	4473892	Rovshen 	(051) 440-42-43	2020-11-17
2799	Gəncə	Mercedes	E 200	1996	Sedan	Gümüşü	2	136	Benzin	400000	Mexaniki	Arxa	f	6800	4000	4473895	Xalik	(050) 463-78-85	2020-11-17
2800	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Boz	1.4	90	Benzin	226000	Mexaniki	Ön	f	9950	5853	4473894	Elvin	(070) 502-15-22	2020-11-17
2801	Gəncə	Ford	Transit	2012	Furqon	Ağ	2.2	150	Dizel	430816	Mexaniki	Arxa	f	22800	13412	4473900	Anar	(055) 290-02-32	2020-11-17
2802	Bakı	Mercedes	Atego 1222	2006	Yük maşını	Ağ	4.8	220	Dizel	458000	Mexaniki	Arxa	f	43000	25294	4473901	Emin	(055) 856-00-78	2020-11-17
2803	Şabran	IJ	Planeta 5	2004	Motosiklet	Qırmızı	0.1	18	Benzin	1200	Mexaniki	Tam	f	2000	1176	4473904	Elxan	(070) 722-82-21	2020-11-17
2804	Bakı	Daewoo	Nexia	2010	Sedan	Qara	1.5	75	Benzin	178333	Mexaniki	Ön	f	7300	4294	4473912	Ülvü	(077) 538-04-04	2020-11-17
2805	Gəncə	LADA (VAZ)	21099	1994	Sedan	Qırmızı	1.5	75	Benzin	267000	Mexaniki	Ön	f	4700	2765	4473916	şahlar	(070) 250-42-02	2020-11-17
2806	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Qızılı	1.4	90	Benzin	220000	Mexaniki	Ön	f	11700	6882	4473921	Pərviz	(050) 255-29-29	2020-11-17
2807	Bakı	Hyundai	Sonata	2017	Sedan	Qara	2.4	178	Benzin	45000	Avtomat	Arxa	f	32470	19100	4136320	Sultan	(050) 319-15-16	2020-11-17
2808	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	89000	Avtomat	Tam	f	44540	26200	4473950	Ayxan	(077) 342-00-82	2020-11-17
2809	Bakı	BMW	X5	2003	Offroader / SUV	Qara	4.4	286	Benzin	330000	Avtomat	Tam	f	16500	9706	4473956	Vahid	(055) 885-86-85	2020-11-17
2810	Bakı	Chevrolet	Malibu	2018	Sedan	Ağ	1.5	181	Benzin	14000	Avtomat	Ön	f	27000	15882	4473954	Qasan	(099) 399-00-98	2020-11-17
2811	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	4	250	Benzin	229000	Avtomat	Tam	f	31500	18529	4247386	Bayram	(055) 910-18-28	2020-11-17
2812	Bakı	Mercedes	E 240	2000	Sedan	Qara	2.4	170	Benzin	285000	Avtomat	Ön	f	12900	7588	4473961	Hacı	(050) 253-17-14	2020-11-17
2813	Bakı	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	280000	Avtomat	Arxa	f	10900	6412	4473789	Miri	(050) 826-51-63	2020-11-17
2814	Bakı	Nissan	X-Trail	2002	Offroader / SUV	Qara	2	140	Benzin	262384	Avtomat	Tam	f	11300	6647	4460964	Tural	(070) 872-50-50	2020-11-17
2815	Bakı	BMW	530	2005	Sedan	Qara	3	258	Benzin	191000	Avtomat	Arxa	f	24300	14294	4473794	Kanan	(055) 210-19-79	2020-11-17
2816	Tovuz	LADA (VAZ)	2106	1984	Sedan	Göy	1.5	65	Benzin	59677	Mexaniki	Arxa	f	2600	1529	4473804	Aqil	(050) 623-31-46	2020-11-17
2817	Gəncə	Opel	Vectra	1995	Sedan	Qızılı	2	136	Benzin	200000	Avtomat	Ön	f	4500	2647	4473803	FIRDOVSİ	(055) 289-38-05	2020-11-17
2818	Gəncə	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	180000	Mexaniki	Ön	f	8500	5000	4473805	Руслан	(055) 235-75-12	2020-11-17
2819	Bakı	Ford	Transit	2008	Furqon	Ağ	2.4	140	Dizel	158000	Mexaniki	Arxa	f	24800	14588	4458465	Ilqar	(050) 522-28-22	2020-11-17
2820	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	165000	Mexaniki	Ön	f	11300	6647	4473816	İsgəndər	(051) 448-62-91	2020-11-17
2821	Bakı	LADA (VAZ)	2106	1982	Sedan	Ağ	1.6	75	Benzin	100000	Mexaniki	Arxa	f	5000	2941	4473818	Elsad	(055) 876-13-15	2020-11-17
2822	Xırdalan	SEAT	Ibiza	2013	Sedan	Ağ	1.4	130	Benzin	87000	Mexaniki	Ön	f	10400	6118	4473827	Heyder	(055) 481-28-46	2020-11-17
2823	Gəncə	Mercedes	208 D	1993	Mikroavtobus	Yaş Asfalt	2.3	85	Dizel	150000	Mexaniki	Arxa	f	12000	7059	4473838	Vahid	(050) 264-66-94	2020-11-17
2824	Gəncə	Chevrolet	Cruze	2011	Sedan	Ağ	1.4	141	Benzin	123002	Avtomat	Ön	f	13500	7941	4473839	Sabuhi	(055) 824-70-52	2020-11-17
2825	Ucar	LADA (VAZ)	2106	1999	Sedan	Qəhvəyi	1.5	65	Benzin	136523	Mexaniki	Arxa	f	4800	2824	4473722	Nazim	(050) 669-86-20	2020-11-17
2826	Horadiz	Mercedes	E 240	1999	Sedan	Göy	2.4	170	Benzin	291000	Avtomat	Arxa	f	15500	9118	4473731	Misir	(051) 863-63-12	2020-11-17
2827	Bakı	Land Rover	Range Rover	2019	Offroader / SUV	Qara	3	340	Benzin	7500	Avtomat	Tam	f	220150	129500	4106178	Kamal	(050) 228-64-84	2020-11-17
2828	Bakı	Mercedes	C 200	2000	Sedan	Göy	2	163	Benzin	299000	Avtomat	Arxa	f	9900	5824	4299946	Salman	(055) 529-26-87	2020-11-17
2829	Sumqayıt	Mercedes	Vito	2007	Van	Qara	2.2	170	Dizel	200000	Avtomat	Arxa	f	28500	16765	4473736	shahin	(070) 320-41-41	2020-11-17
2830	Şirvan	LADA (VAZ)	2107	1998	Sedan	Ağ	1.6	75	Benzin	154543	Mexaniki	Arxa	f	4700	2765	4473738	Elmin 	(051) 665-11-71	2020-11-17
2831	Bakı	Honda	Insight	2010	Hetçbek / Liftbek	Qara	1.3	88	Hibrid	312000	Avtomat	Ön	f	12400	7294	4473744	Fərid	(077) 729-14-14	2020-11-17
2832	Bakı	Ford	Fusion	2014	Sedan	Ağ	2	245	Benzin	85000	Avtomat	Ön	f	23000	13529	4473746	Taryel 	(055) 739-66-16	2020-11-17
2833	Bakı	Kia	Rio	2008	Sedan	Gümüşü	1.4	110	Benzin	160121	Mexaniki	Ön	f	9800	5765	4473750	Şeref	(070) 241-51-50	2020-11-17
2834	Bakı	Volkswagen	Jetta	2008	Sedan	Qara	1.6	102	Benzin	225000	Avtomat	Ön	f	11000	6471	4473751	Zamiq	(070) 298-00-98	2020-11-17
2835	Quba	Mercedes	C 230	1999	Sedan	Ağ	2.3	150	Benzin	153000	Avtomat	Arxa	f	12500	7353	4473752	Şaiq	(051) 374-54-04	2020-11-17
2836	Bakı	Mercedes	C 180	1997	Universal	Göy	1.8	122	Benzin	524000	Mexaniki	Arxa	f	10500	6176	4473759	Heyder	(055) 320-10-11	2020-11-17
2837	Gədəbəy	Toyota	Fortuner	2013	Offroader / SUV	Ağ	2.7	170	Benzin	56053	Avtomat	Tam	f	35200	20706	4473762	Elyar	(051) 661-34-06	2020-11-17
2838	Bakı	Toyota	Corolla	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Dizel	197000	Mexaniki	Ön	f	12000	7059	4473765	Sahibi	(070) 598-77-35	2020-11-17
2839	Bakı	BMW	540	1997	Sedan	Göy	4.4	286	Benzin	300000	Avtomat	Arxa	f	13500	7941	4471355	Kenan	(055) 281-77-44	2020-11-17
2840	Bakı	Mercedes	190	1985	Sedan	Qırmızı	2	122	Dizel	380000	Mexaniki	Arxa	f	6500	3824	4473771	Elşen	(077) 608-48-48	2020-11-17
2841	Xaçmaz	BMW	528	2014	Sedan	Qara	2	245	Benzin	85000	Avtomat	Arxa	f	41650	24500	4473773	Cavid	(055) 342-22-23	2020-11-17
2842	Bakı	Mercedes	C 230	1997	Sedan	Gümüşü	2.3	150	Benzin	300000	Mexaniki	Arxa	f	9800	5765	4473776	Yusif	(077) 347-35-35	2020-11-17
2843	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	107	Dizel	134000	Mexaniki	Ön	f	12700	7471	4473780	Tahir	(070) 439-93-94	2020-11-17
2844	Şabran	LADA (VAZ)	2112	2005	Hetçbek / Liftbek	Qara	1.6	80	Benzin	300500	Mexaniki	Ön	f	7500	4412	4473841	Sahib	(050) 417-02-93	2020-11-17
2845	Bakı	Mercedes	E 220	2000	Sedan	Göy	2.2	143	Dizel	400000	Avtomat	Arxa	f	13200	7765	4473849	Rovsen	(070) 276-81-84	2020-11-17
2846	Sumqayıt	BMW	318	1994	Sedan	Qırmızı	1.8	116	Benzin	196000	Mexaniki	Arxa	f	4500	2647	4473851	Habil	(051) 533-78-44	2020-11-17
2847	Saatlı	Changan	Benni	2008	Hetçbek / Liftbek	Qara	1.3	86	Benzin	150000	Mexaniki	Ön	f	2500	1471	4473684	Tevekgül	(050) 398-99-62	2020-11-17
2848	Bakı	Mercedes	190	1991	Sedan	Qara	1.8	122	Benzin	235000	Avtomat	Arxa	f	5300	3118	4473688	Kənan	(055) 893-13-63	2020-11-17
2849	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Gümüşü	1.8	99	Hibrid	160000	Variator	Ön	f	17700	10412	4327626	Rahil	(050) 851-82-48	2020-11-17
2850	Sumqayıt	Opel	Astra	1995	Universal	Boz	1.6	101	Benzin	395735	Avtomat	Ön	f	5700	3353	4473697	vasif	(055) 619-92-49	2020-11-17
2851	Bakı	Mercedes	Atego 1528	2002	Yük maşını	Ağ	6.4	280	Dizel	523890	Mexaniki	Arxa	f	34500	20294	4473691	Qosqar	(050) 647-86-16	2020-11-17
2852	Naxçıvan	Iran Khodro	Azsamand	2015	Sedan	Gümüşü	1.8	110	Benzin	114000	Mexaniki	Ön	f	11000	6471	4473695	Sadiq	(060) 565-31-15	2020-11-17
2853	Zaqatala	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	92000	Avtomat	Ön	f	16300	9588	4473699	Habib	(050) 309-96-36	2020-11-17
2854	Xırdalan	Hyundai	Accent	2013	Hetçbek / Liftbek	Gümüşü	1.6	132	Benzin	170000	Avtomat	Ön	f	14414	8479	4473701	Vasif	(055) 405-50-02	2020-11-17
2855	Bakı	Mercedes	C 180	1995	Sedan	Göy	1.8	122	Benzin	358000	Mexaniki	Tam	f	7600	4471	4473700	Heci	(070) 801-86-19	2020-11-17
2856	Qəbələ	Mercedes	C 220	1995	Sedan	Qara	2.2	146	Benzin	295000	Avtomat	Ön	f	9000	5294	4473708	Toğrul 	(070) 568-22-41	2020-11-17
2857	Qəbələ	Mercedes	Axor 2528	2005	Yük maşını	Ağ	6.5	150	Dizel	245777	Mexaniki	Arxa	f	37000	21765	4473712	İlkin	(050) 654-99-23	2020-11-17
2858	Sumqayıt	Mazda	CX-5	2012	Offroader / SUV	Qara	2	150	Benzin	97000	Avtomat	Ön	f	25500	15000	4473707	Cavid	(055) 673-07-18	2020-11-17
2859	Bakı	Mercedes	S 320	2000	Sedan	Ağ	3.2	224	Benzin	439580	Avtomat	Arxa	f	13500	7941	4473715	Sunar	(051) 729-29-44	2020-11-17
2860	Gəncə	LADA (VAZ)	2107	2009	Sedan	Tünd qırmızı	1.6	75	Benzin	507000	Mexaniki	Arxa	f	7400	4353	4473717	ANAR	(055) 443-09-65	2020-11-17
2861	Şəmkir	LADA (VAZ)	2104	1997	Universal	Bej	1.3	65	Benzin	220000	Mexaniki	Arxa	f	5700	3353	4473718	Ramin	(050) 428-82-70	2020-11-17
2862	Qəbələ	GAZ	53	1987	Yük maşını	Boz	4.1	180	Benzin	58394	Mexaniki	Arxa	f	10000	5882	4473723	Qadir	(050) 384-41-71	2020-11-17
2863	Bakı	LADA (VAZ)	2107	2005	Sedan	Tünd qırmızı	1.6	75	Benzin	95098	Mexaniki	Arxa	f	5000	2941	4473644	Səfər	(077) 545-60-08	2020-11-17
2864	Bakı	Mitsubishi	Galant	1999	Sedan	Yaşıl	2	136	Benzin	398000	Avtomat	Ön	f	8500	5000	4473651	Elçin	(070) 555-45-11	2020-11-17
2865	Bakı	Kia	Ceed	2009	Universal	Gümüşü	1.6	115	Dizel	170000	Mexaniki	Ön	f	13800	8118	4473654	Rahil	(070) 388-69-76	2020-11-17
2866	Bakı	Mercedes	E 200	1993	Sedan	Qara	2	136	Benzin	370900	Avtomat	Arxa	f	8500	5000	4473652	Sahibi	(070) 725-10-00	2020-11-17
2867	Qusar	Mercedes	E 230	1996	Sedan	Göy	2.3	150	Benzin	298456	Avtomat	Arxa	f	10700	6294	4473657	Afik	(070) 310-38-00	2020-11-17
2868	Sumqayıt	Land Rover	Range Rover	2004	Offroader / SUV	Qara	4.4	310	Benzin	255224	Avtomat	Tam	f	23800	14000	4473658	Сumayil	(070) 786-00-00	2020-11-17
2869	Bakı	Mercedes	CLS 350	2005	Sedan	Boz	3.5	272	Benzin	299000	Avtomat	Tam	f	23500	13824	4473660	Ramil	(070) 944-47-44	2020-11-17
2871	Bakı	Chevrolet	Cruze	2014	Sedan	Yaş Asfalt	1.4	141	Benzin	127000	Avtomat	Ön	f	16500	9706	4440641	Fikret	(050) 829-31-93	2020-11-17
2872	Bakı	Mitsubishi	Lancer	2008	Sedan	Qara	2	170	Benzin	180000	Avtomat	Ön	f	11500	6765	4473663	Nicat	(055) 601-27-31	2020-11-17
2873	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Qara	1.8	150	Hibrid	146000	Avtomat	Ön	f	17200	10118	4473664	Farız	(070) 331-11-12	2020-11-17
2874	Bakı	Hyundai	Elantra	2011	Sedan	Qara	1.8	150	Benzin	204000	Avtomat	Ön	f	16900	9941	4473653	Tural	(050) 270-02-82	2020-11-17
2875	Bakı	Mercedes	GL 550	2013	Offroader / SUV	Ağ	5.5	435	Benzin	62000	Avtomat	Tam	f	91460	53800	4473673	Samir	(055) 200-04-22	2020-11-17
2876	Bakı	Ford	Transit	2006	Furqon	Ağ	2.2	115	Dizel	203000	Mexaniki	Ön	f	19900	11706	4473638	isa	(050) 210-44-03	2020-11-17
2877	Bakı	Kia	Rio	2008	Sedan	Gümüşü	1.5	110	Dizel	133058	Avtomat	Ön	f	12900	7588	4473672	Eli	(050) 470-60-06	2020-11-17
2878	Bakı	Chevrolet	Cruze	2014	Sedan	Qırmızı	1.4	141	Benzin	154000	Avtomat	Ön	f	16200	9529	4473675	Polad	(070) 706-24-89	2020-11-17
2879	Ağdaş	LADA (VAZ)	2115	2005	Sedan	Gümüşü	1.5	65	Benzin	37500	Mexaniki	Ön	f	7500	4412	4473678	Zamiq	(050) 764-90-37	2020-11-17
2880	Şəmkir	LADA (VAZ)	21099	1992	Sedan	Yaş Asfalt	1.5	78	Benzin	190800	Mexaniki	Ön	f	3800	2235	4473674	Sehman	(050) 637-30-64	2020-11-17
2881	Gəncə	LADA (VAZ)	Priora	2012	Hetçbek / Liftbek	Qara	1.6	106	Benzin	85700	Mexaniki	Ön	f	11400	6706	4473683	Ayxan	(070) 387-20-20	2020-11-17
2882	Bakı	Mercedes	Vito	2000	Mikroavtobus	Bej	2.2	150	Dizel	100000	Mexaniki	Ön	f	14500	8529	4473682	Ilkin	(050) 437-76-75	2020-11-17
2883	Bərdə	Nissan	Sunny	2007	Sedan	Qızılı	1.6	109	Benzin	134000	Mexaniki	Ön	f	11300	6647	4473685	Maqsud	(050) 670-78-22	2020-11-17
2884	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	300000	Mexaniki	Ön	f	11500	6765	4473721	Aqil 	(077) 399-05-05	2020-11-17
2885	Şəmkir	Chevrolet	Cruze	2013	Sedan	Narıncı	1.4	141	Benzin	115000	Avtomat	Ön	f	14000	8235	4473710	Rauf	(055) 566-67-00	2020-11-17
2886	Bərdə	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	194000	Mexaniki	Ön	f	11800	6941	4473728	Nofel	(050) 782-83-22	2020-11-17
2888	Bakı	Ford	Fusion	2018	Sedan	Gümüşü	2	240	Benzin	39000	Avtomat	Tam	f	34500	20294	4473532	Eynulla	(050) 373-07-81	2020-11-17
2889	Bakı	Toyota	Camry	2018	Sedan	Ağ	2.5	181	Benzin	47252	Avtomat	Ön	f	58650	34500	4241289	Tural	(055) 818-18-68	2020-11-17
2890	Bakı	Ford	Fusion	2015	Sedan	Gümüşü	1.5	181	Benzin	87200	Avtomat	Ön	f	19600	11529	4463273	Kənan 	(070) 508-55-83	2020-11-17
2891	Bakı	LADA (VAZ)	2107	2008	Sedan	Tünd qırmızı	1.6	75	Benzin	32960	Mexaniki	Arxa	f	6500	3824	4473618	Amiq	(070) 354-01-54	2020-11-17
2892	Gəncə	Mercedes	E 220	2004	Sedan	Gümüşü	2.2	170	Dizel	301000	Avtomat	Arxa	f	15500	9118	4473620	Bextiyar	(055) 690-32-28	2020-11-17
2893	Şəki	Volkswagen	Golf	1993	Hetçbek / Liftbek	Qara	1.6	75	Benzin	120000	Mexaniki	Ön	f	3999	2352	4473625	Rawad	(055) 396-78-40	2020-11-17
2894	Bakı	Tofas	Sahin	2004	Sedan	Gümüşü	1.6	86	Benzin	83000	Mexaniki	Arxa	f	6200	3647	4473623	Aziz	(055) 434-30-06	2020-11-17
2895	Bakı	Hyundai	Elantra	2014	Sedan	Göy	1.8	150	Benzin	63507	Avtomat	Ön	f	19000	11176	4473627	Humbetov	(055) 206-11-73	2020-11-17
2896	Göyçay	Opel	Astra	2005	Hetçbek / Liftbek	Qara	1.4	90	Benzin	201500	Mexaniki	Ön	f	10500	6176	4473574	Aziz	(050) 631-06-30	2020-11-17
2897	Bakı	Mercedes	Vito	2006	Minivan	Gümüşü	2.2	150	Dizel	400000	Mexaniki	Arxa	f	25000	14706	4473575	Kamran	(070) 276-11-15	2020-11-17
2898	Ağdaş	Ford	Transit	1999	Yük maşını	Ağ	2.5	96	Dizel	173000	Mexaniki	Arxa	f	17500	10294	4473582	Ramil	(070) 525-95-25	2020-11-17
2899	Bakı	Kia	Sorento	2012	Offroader / SUV	Ağ	2.4	176	Benzin	91000	Avtomat	Tam	f	31000	18235	4473584	Qədim	(050) 365-15-64	2020-11-17
2900	Bakı	Daewoo	Nubira	1997	Sedan	Yaşıl	2	136	Benzin	80144	Mexaniki	Ön	f	4500	2647	4473585	Elman	(050) 255-28-45	2020-11-17
2901	Bakı	Mercedes	E 350	2007	Sedan	Boz	3.5	272	Benzin	288512	Avtomat	Arxa	f	21000	12353	4473603	Nihad	(055) 214-88-60	2020-11-17
2902	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	100100	Mexaniki	Arxa	f	7200	4235	4473602	Orxan	(070) 750-88-97	2020-11-17
2903	Bakı	BMW	528	2013	Sedan	Qara	2	245	Benzin	127000	Avtomat	Ön	f	38250	22500	4473513	Nuru	(055) 210-96-59	2020-11-17
2904	Bakı	Mercedes	E 320	1997	Sedan	Boz	3.2	224	Benzin	316000	Avtomat	Arxa	f	8500	5000	4473515	Ilham	(055) 639-12-77	2020-11-17
2905	Bakı	Hyundai	Elantra	2015	Sedan	Boz	1.8	150	Benzin	87200	Avtomat	Ön	f	18500	10882	4473516	Orxan	(077) 311-04-08	2020-11-17
2906	Masallı	LADA (VAZ)	2109	1989	Hetçbek / Liftbek	Qırmızı	1.5	75	Benzin	87000	Mexaniki	Ön	f	4200	2471	4473520	Hikmet	(050) 334-47-30	2020-11-17
2907	Bakı	Mercedes	C 200	2002	Sedan	Gümüşü	2	136	Benzin	234000	Avtomat	Arxa	f	12300	7235	4473522	Bextiyar	(070) 539-90-60	2020-11-17
2908	Bakı	Mercedes	GLA 250	2015	Offroader / SUV	Qara	2	208	Benzin	68000	Avtomat	Tam	f	47600	28000	4473531	Fuad	(050) 268-49-67	2020-11-17
2909	Bakı	Toyota	RAV 4	2019	Offroader / SUV	Qara	2	173	Benzin	22000	Avtomat	Ön	f	51850	30500	4473535	Şükür	(050) 333-01-05	2020-11-17
2910	Bakı	Mercedes	E 220	1994	Sedan	Qara	2.2	143	Benzin	440000	Avtomat	Arxa	f	10300	6059	4473528	Seyid	(055) 880-31-18	2020-11-17
2911	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	96000	Avtomat	Ön	f	17500	10294	4473536	Nadim	(051) 666-10-60	2020-11-17
2912	Bakı	Mercedes	Vito	2013	Van	Ağ	2.2	170	Dizel	367000	Mexaniki	Arxa	f	28700	16882	4453360	Haci	(050) 444-44-43	2020-11-17
2913	Qusar	Mercedes	E 200	1992	Sedan	Qara	2	136	Benzin	182000	Mexaniki	Arxa	f	6500	3824	4473540	Orxan	(077) 430-55-47	2020-11-17
2914	Bakı	Lexus	LX 570	2013	Offroader / SUV	Ağ	5.7	383	Benzin	46574	Avtomat	Tam	f	110500	65000	4473545	Əli	(050) 211-91-70	2020-11-17
2915	Bərdə	GAZ	330200	1998	Yük maşını	Boz	2.3	131	Benzin	128999	Mexaniki	Arxa	f	6600	3882	4461312	Elçin	(050) 447-57-86	2020-11-17
2916	Bakı	Ford	Transit	2007	Furqon	Ağ	2.4	140	Dizel	123456	Mexaniki	Arxa	f	17000	10000	4473550	orxan	(055) 705-12-81	2020-11-17
2917	Bakı	Nissan	Altima	2007	Sedan	Qara	2.5	170	Benzin	215000	Avtomat	Ön	f	11000	6471	4473554	Eltun	(077) 255-55-40	2020-11-17
2918	Bakı	Mercedes	410 D	2002	Yük maşını	Ağ	2.8	150	Dizel	410000	Mexaniki	Arxa	f	16500	9706	4472373	Vahir	(055) 271-67-88	2020-11-17
2919	Yevlax	LADA (VAZ)	2106	2003	Sedan	Yaşıl	1.6	75	Benzin	164355	Mexaniki	Arxa	f	5300	3118	4473560	Nizam	(055) 724-74-00	2020-11-17
2920	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	179000	Mexaniki	Arxa	f	6200	3647	4473566	Elmar	(070) 623-32-52	2020-11-17
2921	Bakı	Nissan	Pathfinder	2000	Offroader / SUV	Boz	3.5	243	Benzin	410000	Avtomat	Tam	f	11500	6765	4473568	Suleyman	(051) 235-82-65	2020-11-17
2922	Bakı	LADA (VAZ)	2115	2003	Sedan	Gümüşü	1.5	75	Benzin	114500	Mexaniki	Ön	f	6200	3647	4473573	Rauf	(070) 246-22-21	2020-11-17
2923	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	245000	Mexaniki	Ön	f	11000	6471	4457493	Rahim	(055) 233-00-50	2020-11-17
2924	Bakı	FAW	Oley	2014	Sedan	Ağ	1.5	105	Benzin	152000	Mexaniki	Ön	f	7400	4353	4473606	Ruslan	(051) 622-53-59	2020-11-17
2925	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2	184	Benzin	100000	Avtomat	Tam	f	26900	15824	4384007	Xeyal	(070) 735-03-00	2020-11-17
2926	Bakı	Mercedes	Vito 116	2011	Van	Qara	2.2	170	Dizel	270133	Avtomat	Arxa	f	32500	19118	4473592	Cəmil	(055) 407-70-11	2020-11-17
2927	Gəncə	Hyundai	Sonata	2011	Sedan	Gümüşü	2	165	Benzin	94182	Avtomat	Ön	f	19600	11529	4473637	Bextiyar	(051) 597-76-75	2020-11-17
2928	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Ağ	3	190	Benzin	107000	Avtomat	Tam	f	25400	14941	4473643	Eziz 	(055) 253-72-34	2020-11-17
2929	Sumqayıt	LADA (VAZ)	2107	2002	Sedan	Ağ	1.6	75	Benzin	177000	Mexaniki	Arxa	f	4900	2882	4473646	Elvin	(050) 502-58-34	2020-11-17
2930	Ağstafa	LADA (VAZ)	2107	2000	Sedan	Yaşıl	1.6	75	Benzin	356123	Mexaniki	Arxa	f	5200	3059	4473647	Subhan	(077) 735-35-15	2020-11-17
2931	Şəki	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	217000	Mexaniki	Ön	f	9000	5294	4473466	ILQAR	(070) 323-19-97	2020-11-17
2932	Bərdə	Mercedes	E 220	2002	Universal	Gümüşü	2.2	143	Dizel	163122	Avtomat	Arxa	f	16500	9706	4473471	Şahmar 	(050) 697-75-15	2020-11-17
2933	Bakı	Kia	Optima	2014	Sedan	Boz	2	274	Benzin	81000	Avtomat	Ön	f	25300	14882	4461022	Vusal 	(050) 711-57-22	2020-11-17
2934	Bakı	Kia	Optima	2012	Sedan	Boz	2	274	Benzin	140000	Avtomat	Ön	f	20500	12059	4473462	Zaur	(055) 384-10-10	2020-11-17
2935	Bakı	BMW	535	2012	Sedan	Göy	3	306	Benzin	134000	Avtomat	Arxa	f	38080	22400	4473359	İlqar	(050) 548-00-29	2020-11-17
2936	Bakı	Hyundai	Sonata	2010	Sedan	Göy	2.4	178	Benzin	188000	Avtomat	Ön	f	18900	11118	4473472	Farid	(050) 339-82-78	2020-11-17
2937	Şəki	LADA (VAZ)	21099	2001	Sedan	Yaş Asfalt	1.5	75	Benzin	152500	Mexaniki	Ön	f	7000	4118	4473480	Ruslan	(055) 222-10-33	2020-11-17
2938	Bakı	Kia	Cerato	2013	Sedan	Ağ	1.6	132	Benzin	145000	Avtomat	Ön	f	20500	12059	4473481	xeyyam	(055) 700-00-85	2020-11-17
2939	Bakı	Mercedes	C 180	2008	Sedan	Qara	1.8	122	Benzin	218000	Avtomat	Arxa	f	21500	12647	4473473	Nurlan	(055) 215-06-87	2020-11-17
2940	Bərdə	Opel	Vectra	1995	Sedan	Göy	1.6	75	Benzin	300000	Mexaniki	Ön	f	4800	2824	4423266	Mubariz	(050) 446-20-10	2020-11-17
2941	Bakı	Mercedes	ML 320	2001	Offroader / SUV	Ağ	3.2	218	Benzin	127065	Avtomat	Tam	f	12800	7529	4473484	Fuad	(077) 765-57-87	2020-11-17
2942	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Qara	1.3	90	Dizel	208566	Mexaniki	Ön	f	12200	7176	4473494	Orxan	(077) 306-45-49	2020-11-17
2943	Bərdə	Mercedes	E 220	2006	Sedan	Qara	2.2	170	Dizel	256973	Avtomat	Arxa	f	22500	13235	4473414	Eldeniz	(051) 434-12-12	2020-11-17
2944	Bərdə	BMW	523	1998	Sedan	Qara	2.5	192	Benzin	190000	Avtomat	Arxa	f	11200	6588	4473415	Ruslan	(050) 501-90-20	2020-11-17
2945	Bakı	Kia	Picanto	2013	Hetçbek / Liftbek	Ağ	1.2	85	Benzin	96100	Avtomat	Ön	f	14999	8823	4473417	Ilkin	(050) 777-33-11	2020-11-17
2946	Bakı	Opel	Vectra	1999	Hetçbek / Liftbek	Qızılı	1.8	125	Benzin	343000	Avtomat	Ön	f	7450	4382	4473419	Resad	(055) 240-07-24	2020-11-17
2947	Bakı	Hyundai	Elantra	2016	Sedan	Yaş Asfalt	1.8	148	Benzin	53000	Avtomat	Ön	f	36550	21500	4473423	Rəşad	(050) 740-06-18	2020-11-17
2948	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Boz	1.3	90	Dizel	175000	Mexaniki	Ön	f	11300	6647	4473432	Qalib	(070) 664-45-40	2020-11-17
2949	Zaqatala	LADA (VAZ)	21099	1998	Sedan	Qızılı	1.5	75	Benzin	377472	Mexaniki	Ön	f	5200	3059	4473440	Sani	(070) 573-04-79	2020-11-17
2950	Bakı	Kia	Ceed	2007	Hetçbek / Liftbek	Gümüşü	1.6	115	Dizel	175000	Mexaniki	Ön	f	12300	7235	4473438	Aqşin	(050) 417-56-37	2020-11-17
2951	Ucar	LADA (VAZ)	Priora	2014	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	84000	Mexaniki	Ön	f	13000	7647	4473439	Ramil	(055) 690-91-55	2020-11-17
2952	Bakı	Opel	Vectra	1996	Hetçbek / Liftbek	Göy	1.6	126	Benzin	221000	Mexaniki	Tam	f	5200	3059	4473447	Hilal	(050) 828-09-95	2020-11-17
2953	Şəki	LADA (VAZ)	21099	2000	Sedan	Yaş Asfalt	1.6	75	Benzin	250000	Mexaniki	Ön	f	5500	3235	4473449	Orxan	(050) 837-10-15	2020-11-17
2954	Bakı	Nissan	Note	2006	Minivan	Qara	1.5	107	Dizel	189000	Mexaniki	Ön	f	10800	6353	4427592	Farid	(050) 577-59-57	2020-11-17
2955	Bakı	Mitsubishi	Outlander	2007	Offroader / SUV	Qızılı	2.4	170	Benzin	195000	Avtomat	Tam	f	14900	8765	4473451	Aqil	(055) 864-64-65	2020-11-17
2956	Quba	Chevrolet	Cruze	2012	Sedan	Narıncı	1.4	141	Benzin	260000	Avtomat	Ön	f	13400	7882	4473455	Elmin	(055) 293-90-10	2020-11-17
2957	Şirvan	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	67000	Mexaniki	Arxa	f	7300	4294	4473457	Mehman	(055) 308-55-54	2020-11-17
2958	Sumqayıt	Kia	Sorento	2012	Offroader / SUV	Qara	2.4	175	Benzin	128546	Avtomat	Tam	f	27200	16000	4473456	Bilal	(050) 384-26-65	2020-11-17
2959	Salyan	Mercedes	E 240	2000	Sedan	Boz	2.6	177	Benzin	200000	Avtomat	Tam	f	19000	11176	4473463	Rövşenn	(050) 644-31-36	2020-11-17
2962	Şəki	LADA (VAZ)	2109	1988	Hetçbek / Liftbek	Bej	1.5	75	Benzin	69000	Mexaniki	Ön	f	3300	1941	4473499	 Bəhram	(050) 421-74-35	2020-11-17
2963	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2	166	Benzin	137900	Avtomat	Ön	f	27900	16412	4473496	Resad	(070) 510-10-10	2020-11-17
2964	Bakı	Iran Khodro	Azsamand	2008	Sedan	Ağ	1.8	110	Benzin	114000	Mexaniki	Ön	f	6300	3706	4473504	Cəlil	(050) 383-32-02	2020-11-17
2965	Bakı	Land Rover	Discovery	2014	Offroader / SUV	Boz	3	249	Dizel	110000	Avtomat	Tam	f	63750	37500	4473501	Ismayil	(050) 211-26-47	2020-11-17
2966	Bərdə	Mercedes	410 D	1991	Mikroavtobus	Ağ	2.9	94	Dizel	392000	Mexaniki	Arxa	f	23300	13706	4473486	Hasan	(050) 636-84-34	2020-11-17
2967	Bakı	BMW	528	1998	Sedan	Ağ	2.8	193	Benzin	335000	Avtomat	Arxa	f	11800	6941	4473507	Samir	(070) 599-99-91	2020-11-17
2968	Sumqayıt	LADA (VAZ)	2115	2010	Dartqı	Boz	1.6	80	Benzin	215000	Mexaniki	Ön	f	8000	4706	4473369	Eli	(070) 404-26-30	2020-11-17
2969	Bakı	Hyundai	Sonata	2004	Sedan	Gümüşü	2	165	Benzin	247000	Avtomat	Ön	f	8500	5000	4473374	Ramin	(050) 632-12-13	2020-11-17
2970	Bakı	Ford	Fusion	2013	Sedan	Göy	1.6	181	Benzin	120000	Avtomat	Ön	f	16600	9765	4467965	Emil	(050) 966-70-43	2020-11-17
2971	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	110210	Mexaniki	Arxa	f	8000	4706	4473378	Elşən	(070) 829-91-51	2020-11-17
2972	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	170000	Mexaniki	Ön	f	11800	6941	4473371	Rövshän	(051) 313-31-38	2020-11-17
2973	Bakı	Kia	Cerato	2008	Sedan	Göy	2	143	Benzin	151641	Avtomat	Ön	f	13300	7824	4473381	ANAR məllim	(050) 580-00-09	2020-11-17
2974	Bakı	Toyota	Prius	2014	Hetçbek / Liftbek	Boz	1.8	99	Hibrid	69700	Variator	Ön	f	20800	12235	4281689	Fərid	(055) 708-08-08	2020-11-17
2975	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	300000	Mexaniki	Ön	f	7800	4588	4473384	Toğrul	(070) 658-58-38	2020-11-17
2976	Ağdaş	LADA (VAZ)	2104	2001	Universal	Narıncı	1.3	69	Benzin	243289	Mexaniki	Arxa	f	5200	3059	4473387	Vasif 	(050) 609-22-37	2020-11-17
2977	Sumqayıt	Mercedes	C 240	1997	Sedan	Gümüşü	2.4	170	Benzin	333000	Avtomat	Arxa	f	10800	6353	4473383	Vüqar	(055) 780-03-28	2020-11-17
2978	Gəncə	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	106000	Mexaniki	Tam	f	12000	7059	4473389	Atin	(070) 272-92-22	2020-11-17
2979	Bakı	Honda	Insight	2012	Hetçbek / Liftbek	Qırmızı	1.3	98	Hibrid	144000	Avtomat	Ön	f	13500	7941	4473390	Imran	(051) 682-02-30	2020-11-17
2980	Gəncə	Kia	Sorento	2015	Offroader / SUV	Yaş Asfalt	2	184	Dizel	48399	Avtomat	Ön	f	40800	24000	4473396	Elgun	(051) 313-04-08	2020-11-17
2981	Bakı	Hyundai	H-1	2008	Furqon	Göy	2.5	180	Dizel	279900	Avtomat	Arxa	f	19300	11353	4428871	Beytullah	(070) 611-82-68	2020-11-17
2983	Bakı	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	120000	Mexaniki	Arxa	f	5800	3412	4473337	Yusif	(055) 768-15-85	2020-11-17
2984	Bakı	Opel	Astra	2010	Universal	Gümüşü	1.3	90	Dizel	119800	Mexaniki	Ön	f	12300	7235	4473336	Rovsen	(055) 708-78-70	2020-11-17
2985	Bakı	Mercedes	E 250	1991	Sedan	Yaş Asfalt	2.5	150	Dizel	194400	Mexaniki	Arxa	f	8800	5176	4473345	Malik	(055) 440-22-45	2020-11-17
2986	Bakı	LADA (VAZ)	Niva	2017	Offroader / SUV	Ağ	1.7	80	Benzin	20000	Mexaniki	Tam	f	16800	9882	4473349	Rauf	(055) 200-34-41	2020-11-17
2987	Bakı	Toyota	Corolla	2014	Sedan	Boz	1.6	132	Benzin	156000	Avtomat	Ön	f	24500	14412	4473350	Ismayil	(050) 210-70-41	2020-11-17
2988	Bakı	Land Rover	Range Rover	2010	Offroader / SUV	Qara	4.4	313	Dizel	180000	Avtomat	Tam	f	59500	35000	4473347	Kamil	(070) 654-84-84	2020-11-17
2989	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.4	107	Benzin	174000	Mexaniki	Ön	f	10700	6294	4473333	Telman	(050) 424-00-55	2020-11-17
2960	Bakı	Harley-Davidson	Sportster Custom 1200	2006	Motosiklet	Qara	1.2	78	Benzin	26800	Mexaniki	Arxa	f	15000	8824	4421011	Ровшан	(050) 215-18-17	2020-11-17
2990	Quba	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	147000	Mexaniki	Arxa	f	7500	4412	4473348	Ağagül	(055) 851-06-36	2020-11-17
2991	Bakı	KamAz	5410	1989	Dartqı	Qırmızı	11	191	Dizel	300000	Mexaniki	Arxa	f	16500	9706	4473352	Qurban	(050) 667-85-02	2020-11-17
2992	Bakı	Lexus	LS 460	2008	Sedan	Qara	4.6	380	Benzin	215000	Avtomat	Arxa	f	27200	16000	4473353	Elxan	(055) 299-40-00	2020-11-17
2993	Bakı	GAZ	31105	2005	Sedan	Gümüşü	2.3	131	Benzin	112900	Mexaniki	Arxa	f	6800	4000	4473358	Bakı	(050) 547-63-73	2020-11-17
2994	Sumqayıt	LADA (VAZ)	21099	1998	Sedan	Qırmızı	1.5	75	Benzin	356256	Mexaniki	Ön	f	5600	3294	4473357	Vüqar	(050) 726-80-94	2020-11-17
2995	Cəlilabad	LADA (VAZ)	2112	2002	Hetçbek / Liftbek	Gümüşü	1.5	75	Benzin	148880	Mexaniki	Ön	f	5900	3471	4473364	Seyid	(055) 854-63-55	2020-11-17
2996	Sumqayıt	LADA (VAZ)	Niva	1995	Offroader / SUV	Tünd qırmızı	1.7	80	Benzin	258000	Mexaniki	Tam	f	5700	3353	4473363	Elvin	(055) 242-09-42	2020-11-17
2997	Bakı	Chrysler	300C	2011	Sedan	Ağ	3.6	292	Benzin	150000	Avtomat	Arxa	f	31790	18700	4473361	Orxan	(050) 572-70-70	2020-11-17
2998	Gəncə	Mercedes	Sprinter 315	2010	Furqon	Ağ	2.2	160	Dizel	198257	Mexaniki	Arxa	f	27300	16059	4463892	Samir	(055) 898-67-09	2020-11-17
2999	Mingəçevir	LADA (VAZ)	2110	2002	Sedan	Gümüşü	1.6	80	Benzin	270000	Mexaniki	Ön	f	6800	4000	4473368	Şirxan	(050) 645-68-49	2020-11-17
3000	Bakı	Opel	Astra	1999	Universal	Boz	1.8	125	Benzin	257000	Avtomat	Ön	f	8000	4706	4473366	Aziz	(055) 455-82-05	2020-11-17
3001	Bakı	Toyota	Land Cruiser	2018	Offroader / SUV	Qara	4.6	309	Benzin	21000	Avtomat	Tam	f	155550	91500	4399834	Sahib	(055) 913-66-64	2020-11-17
3002	Bakı	Opel	Astra	2006	Universal	Boz	1.9	150	Dizel	236500	Mexaniki	Ön	f	12300	7235	4473370	Anar	(077) 309-09-00	2020-11-17
3005	Salyan	Mercedes	E 240	2001	Sedan	Boz	2.6	177	Benzin	260000	Avtomat	Arxa	f	17000	10000	4473385	Serxan	(050) 212-45-54	2020-11-17
3007	Sumqayıt	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	260000	Avtomat	Arxa	f	11600	6824	4473392	Pərvin	(050) 610-47-56	2020-11-17
3008	Göyçay	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2.4	184	Benzin	130000	Avtomat	Ön	f	31500	18529	4473406	Elnur	(050) 395-64-85	2020-11-17
3010	Bakı	Mercedes	GL 550	2008	Offroader / SUV	Qara	5.5	388	Benzin	164000	Avtomat	Tam	f	33490	19700	4473281	Aga	(050) 260-02-02	2020-11-17
3011	Bakı	Chevrolet	Captiva	2016	Offroader / SUV	Qara	2.4	170	Benzin	145000	Avtomat	Ön	f	32000	18824	4473284	Cavad	(077) 428-29-99	2020-11-17
3012	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	28000	Mexaniki	Tam	f	12000	7059	4367526	Anar 	(050) 349-91-07	2020-11-17
3013	Yevlax	LADA (VAZ)	2107	1997	Sedan	Bej	1.6	75	Benzin	194000	Mexaniki	Arxa	f	3600	2118	4473285	Əfqan	(050) 685-71-39	2020-11-17
3014	Bakı	Mercedes	CLK 320	2001	Kupe	Qara	3.2	224	Benzin	339000	Avtomat	Arxa	f	13500	7941	4473286	Yusif	(050) 361-67-51	2020-11-17
3015	Bakı	Ford	Transit	2007	Yük maşını	Ağ	2.4	140	Dizel	260200	Mexaniki	Arxa	f	21200	12471	4473303	Pərvin	(070) 880-03-01	2020-11-17
3016	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	74000	Mexaniki	Tam	f	12000	7059	4473299	Aydin	(050) 741-41-51	2020-11-17
3017	Neftçala	LADA (VAZ)	Niva	2016	Offroader / SUV	Yaş Asfalt	1.7	80	Benzin	47500	Mexaniki	Tam	f	15100	8882	4473307	Nurlan	(050) 207-31-11	2020-11-17
3018	Bakı	Mitsubishi	Pajero	2001	Offroader / SUV	Göy	3.2	240	Dizel	193340	Avtomat	Tam	f	17800	10471	4473291	Vüsal	(070) 507-01-71	2020-11-17
3019	Goranboy	Nissan	Qashqai	2011	Offroader / SUV	Ağ	2	141	Benzin	195000	Avtomat	Ön	f	21500	12647	4473298	Vəli	(050) 550-94-95	2020-11-17
3020	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Qara	1.4	97	Benzin	395000	Avtomat	Ön	f	11200	6588	4473310	Soltan	(055) 413-93-50	2020-11-17
3021	Bakı	Opel	Astra	2008	Universal	Göy	1.3	90	Dizel	208000	Mexaniki	Ön	f	11900	7000	4464985	Sahin	(055) 650-09-09	2020-11-17
3023	Bakı	GAZ	31105	2006	Sedan	Qara	2.4	137	Benzin	131000	Mexaniki	Arxa	f	6900	4059	4473311	Behruz	(050) 657-41-02	2020-11-17
3024	Bakı	Chevrolet	Volt	2012	Hetçbek / Liftbek	Qırmızı	1.4	83	Elektro	190000	Avtomat	Ön	f	19000	11176	4473294	Elxan	(055) 808-98-98	2020-11-17
3025	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Mavi	1.5	76	Hibrid	171000	Variator	Ön	f	12400	7294	4460888	Ali	(055) 776-15-60	2020-11-17
3026	Bakı	Toyota	Prado	2014	Offroader / SUV	Qara	2.7	167	Benzin	125000	Avtomat	Tam	f	53550	31500	4473263	Ilyas	(070) 214-00-02	2020-11-17
3027	Bakı	Fiat	Doblo	2006	Minivan	Gümüşü	1.4	95	Benzin	133000	Mexaniki	Ön	f	12500	7353	4473258	Kamal	(051) 944-35-39	2020-11-17
3028	Quba	LADA (VAZ)	2107	2000	Sedan	Qırmızı	1.6	75	Benzin	150000	Mexaniki	Arxa	f	5000	2941	4473260	Rosen	(055) 795-81-81	2020-11-17
3029	Bakı	Renault	Megane	2006	Universal	Boz	1.5	106	Dizel	185400	Mexaniki	Ön	f	10200	6000	4443707	Sebuhi	(055) 790-95-61	2020-11-17
3030	Bakı	Ford	Fusion	2015	Sedan	Qara	2	245	Benzin	135000	Avtomat	Ön	f	25000	14706	4473269	Kamil	(050) 366-50-82	2020-11-17
3031	Cəlilabad	LADA (VAZ)	2106	1991	Sedan	Ağ	1.5	65	Benzin	451000	Mexaniki	Arxa	f	4700	2765	4473265	Zamin	(050) 747-15-18	2020-11-17
3032	Gəncə	Mercedes	E 280	1996	Sedan	Qəhvəyi	2.8	193	Benzin	180000	Avtomat	Arxa	f	9500	5588	4473267	Ravil	(070) 600-01-91	2020-11-17
3033	Bakı	Nissan	X-Trail	2004	Offroader / SUV	Boz	2	140	Benzin	252828	Avtomat	Tam	f	13500	7941	4473268	Fariz Orucov	(070) 215-15-55	2020-11-17
3034	Bakı	LADA (VAZ)	2107	2002	Sedan	Ağ	1.6	75	Benzin	91000	Mexaniki	Arxa	f	7300	4294	4473273	Mustafa	(050) 505-93-96	2020-11-17
3035	Bakı	Kia	Rio	2007	Hetçbek / Liftbek	Qara	1.4	97	Benzin	138150	Mexaniki	Ön	f	11800	6941	4473274	Neriman	(050) 573-20-17	2020-11-17
3036	Salyan	Ford	Transit	1996	Mikroavtobus	Ağ	2.4	85	Dizel	225000	Mexaniki	Arxa	f	13500	7941	4432803	Sefer	(051) 306-53-19	2020-11-17
3037	Sumqayıt	Hyundai	Elantra	2010	Sedan	Ağ	2.4	174	Benzin	186000	Avtomat	Tam	f	17500	10294	4473277	Ruslan	(077) 538-35-39	2020-11-17
3038	Şəki	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	589630	Mexaniki	Arxa	f	5500	3235	4473279	Dilqəm 	(077) 529-62-57	2020-11-17
3039	Bakı	Hyundai	Accent	2014	Sedan	Ağ	1.4	108	Benzin	242100	Avtomat	Ön	f	15900	9353	4426049	Amil	(055) 563-16-17	2020-11-17
3022	Bakı	Toyota	Prado	2007	Offroader / SUV	Ağ	2.7	167	Benzin	135000	Avtomat	Tam	f	31400	18471	4473313	Ramin	(050) 304-08-57	2020-11-17
3009	Bakı	BMW	740	2001	Sedan	Qara	4.4	286	Benzin	315700	Avtomat	Arxa	f	28900	17000	4361619	Ahmed	(050) 428-30-89	2020-11-17
3040	Bakı	Nissan	Qashqai	2007	Offroader / SUV	Qara	2	140	Benzin	209000	Avtomat	Ön	f	14700	8647	4473278	Famiq 	(055) 254-74-25	2020-11-17
3041	Bakı	Mazda	6	2004	Sedan	Boz	2	160	Benzin	236542	Avtomat	Ön	f	8800	5176	4473280	Zaur	(050) 763-52-24	2020-11-17
3042	Bakı	Lexus	IS 200	2016	Sedan	Yaş Asfalt	2	245	Benzin	38000	Avtomat	Arxa	f	44200	26000	4473327	Zaur	(055) 224-50-06	2020-11-17
3043	Bakı	Hyundai	Elantra	2013	Sedan	Yaş Asfalt	1.6	132	Dizel	44000	Avtomat	Ön	f	19900	11706	4473328	Hüseyn	(050) 564-81-06	2020-11-17
3044	Bakı	Nissan	Tiida	2006	Hetçbek / Liftbek	Qızılı	1.6	109	Benzin	165000	Avtomat	Ön	f	10500	6176	4473331	Mehman	(070) 266-33-11	2020-11-17
3045	Qusar	LADA (VAZ)	2106	1994	Sedan	Göy	1.6	75	Benzin	180000	Mexaniki	Arxa	f	4400	2588	4473329	Sahib	(070) 660-70-78	2020-11-17
3046	Tovuz	GAZ	3110	2005	Sedan	Ağ	2.4	131	Benzin	96000	Mexaniki	Arxa	f	8300	4882	4473334	Abdulla	(055) 691-50-24	2020-11-17
3047	Gəncə	Mitsubishi	Airtrek	2001	Universal	Boz	2.4	139	Benzin	235000	Avtomat	Ön	f	8000	4706	4473207	Rafael	(055) 592-92-64	2020-11-17
3048	Qazax	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	245163	Avtomat	Arxa	f	14700	8647	4473213	Namiq	(055) 221-05-06	2020-11-17
3049	Bakı	Kia	Cerato	2016	Sedan	Ağ	1.8	150	Benzin	65600	Avtomat	Ön	f	20500	12059	4473209	Eyyub	(055) 367-13-13	2020-11-17
3050	Göyçay	LADA (VAZ)	2107	1994	Sedan	Ağ	1.5	65	Benzin	250000	Mexaniki	Arxa	f	2808	1652	4473216	Ilqar	(050) 794-69-11	2020-11-17
3051	Bakı	Mercedes	E 220	2011	Sedan	Qara	2.2	170	Dizel	193000	Avtomat	Arxa	f	29700	17471	4457202	Nicat	(050) 210-47-95	2020-11-17
3052	Bakı	Kia	Cerato	2011	Sedan	Gümüşü	1.6	124	Benzin	156559	Avtomat	Ön	f	16700	9824	4473224	Fuad	(050) 656-44-79	2020-11-17
3053	Sumqayıt	Kia	Cerato	2012	Sedan	Qara	2	150	Benzin	207000	Avtomat	Ön	f	15500	9118	4473226	Səbuhi	(070) 735-74-75	2020-11-17
3054	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	4	282	Benzin	105000	Avtomat	Tam	f	53550	31500	4425613	sohret 	(055) 670-88-18	2020-11-17
3055	Sumqayıt	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	162000	Mexaniki	Ön	f	10500	6176	4473227	Ramin	(070) 861-63-88	2020-11-17
3056	Bakı	LADA (VAZ)	Priora	2010	Hetçbek / Liftbek	Qara	1.6	98	Benzin	265000	Mexaniki	Ön	f	8800	5176	4449291	Mirəli	(055) 739-06-06	2020-11-17
3057	Bakı	Hyundai	Sonata	2012	Sedan	Tünd qırmızı	2	150	Benzin	99000	Avtomat	Ön	f	21500	12647	4473232	Ceyhun	(051) 487-55-55	2020-11-17
3058	Bakı	GAZ	2705	1999	Yük maşını	Ağ	2.4	131	Benzin	102000	Mexaniki	Arxa	f	5500	3235	4473203	Aliya	(077) 601-13-13	2020-11-17
3059	Bakı	Ford	Transit	2000	Furqon	Ağ	2.5	125	Dizel	364120	Mexaniki	Arxa	f	16000	9412	4472717	bexdiyar	(070) 297-97-62	2020-11-17
3060	Balakən	Hyundai	Coupe	1997	Kupe	Tünd qırmızı	1.6	114	Benzin	170000	Mexaniki	Ön	f	6300	3706	4473170	Mehralı	(050) 866-52-76	2020-11-17
3061	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.3	90	Dizel	222340	Mexaniki	Arxa	f	11200	6588	4473092	Feqan 	(055) 225-95-04	2020-11-17
3062	Bakı	Hyundai	Sonata	2015	Sedan	Gümüşü	2.4	178	Benzin	90000	Avtomat	Ön	f	21000	12353	4473175	Hikmet	(055) 211-17-87	2020-11-17
3063	Bakı	Hyundai	Matrix	2006	Minivan	Yaşıl	1.5	110	Dizel	219300	Mexaniki	Ön	f	10300	6059	4473177	Rövşən	(055) 741-91-46	2020-11-17
3064	Sumqayıt	Changan	EU-Love	2014	Minivan	Tünd qırmızı	1.4	110	Benzin	184000	Mexaniki	Ön	f	9800	5765	4473178	Vasif	(050) 768-29-65	2020-11-17
3065	Bakı	Nissan	Navara	2011	Pikap	Qara	2.5	190	Dizel	190000	Mexaniki	Tam	f	27000	15882	4473174	Əli	(050) 348-48-57	2020-11-17
3067	Ağcabədi	Mitsubishi	Pajero io	2000	Offroader / SUV	Gümüşü	1.8	136	Benzin	221456	Avtomat	Ön	f	8300	4882	4473184	Emin	(050) 556-06-06	2020-11-17
3068	Bakı	Mercedes	E 270	2002	Sedan	Gümüşü	2.7	170	Dizel	428000	Avtomat	Arxa	f	17400	10235	4473186	Fizuli	(050) 545-53-33	2020-11-17
3069	Bakı	Mercedes	C 220	1998	Universal	Boz	2.2	122	Dizel	270451	Avtomat	Arxa	f	10800	6353	4473187	İlkin	(070) 866-46-66	2020-11-17
3070	Bakı	Mercedes	Viano	2005	Van	Gümüşü	2.2	150	Dizel	350000	Avtomat	Arxa	f	25500	15000	4473185	Aslan	(050) 554-84-54	2020-11-17
3071	Sumqayıt	Daewoo	Nexia	1998	Sedan	Ağ	1.5	85	Benzin	234567	Mexaniki	Ön	f	3200	1882	4473189	Ulfet	(077) 616-00-36	2020-11-17
3072	Bakı	Kia	Sorento	2010	Offroader / SUV	Ağ	2	187	Dizel	121720	Avtomat	Ön	f	24800	14588	4473176	Dəniz	(055) 450-73-64	2020-11-17
3073	Bakı	Renault	Scenic	2007	Minivan	Gümüşü	1.5	110	Dizel	271700	Mexaniki	Ön	f	10400	6118	4473192	Nicat	(050) 978-26-63	2020-11-17
3074	Bakı	Lifan	X60	2012	Offroader / SUV	Gümüşü	1.8	110	Benzin	163000	Mexaniki	Tam	f	11000	6471	4473194	Novruz	(055) 282-76-66	2020-11-17
3075	Bakı	Mercedes	Vito 111	2005	Minivan	Gümüşü	2.2	170	Dizel	611111	Mexaniki	Arxa	f	22000	12941	4473196	Teymur	(055) 444-73-44	2020-11-17
3076	Bakı	Mercedes	E 200	1993	Sedan	Gümüşü	2	136	Benzin	356000	Avtomat	Arxa	f	7800	4588	4473198	Vüqar	(050) 205-83-85	2020-11-17
3077	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	118000	Avtomat	Ön	f	20900	12294	4438580	Elshen 	(070) 777-10-97	2020-11-17
3078	Bakı	Opel	Astra	1996	Universal	Bənövşəyi	1.6	75	Benzin	318444	Mexaniki	Ön	f	4700	2765	4473193	Qurban	(077) 218-41-41	2020-11-17
3079	Gədəbəy	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	118000	Mexaniki	Tam	f	12500	7353	4473199	Kenan	(050) 872-33-33	2020-11-17
3080	Quba	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	343169	Avtomat	Arxa	f	13000	7647	4473204	seyid	(051) 757-71-51	2020-11-17
3081	Bakı	Toyota	Corolla	1998	Sedan	Qırmızı	1.6	110	Benzin	416446	Mexaniki	Ön	f	5500	3235	4473206	Yusif	(050) 824-59-99	2020-11-17
3083	Bakı	Audi	A4	2008	Sedan	Ağ	2	200	Benzin	307253	Avtomat	Ön	f	13500	7941	4473237	Murad	(050) 380-15-87	2020-11-17
3084	Bakı	Mercedes	E 200	2015	Universal	Gümüşü	2	184	Dizel	179000	Avtomat	Arxa	f	42330	24900	4473219	FARID	(050) 221-72-00	2020-11-17
3085	Bakı	Mercedes	E 240	1997	Sedan	Boz	2.4	170	Benzin	369000	Avtomat	Arxa	f	10900	6412	4473236	Qabil	(055) 335-70-00	2020-11-17
3086	Bakı	Hyundai	Accent	2006	Sedan	Mavi	1.4	97	Benzin	138000	Mexaniki	Ön	f	10700	6294	4473235	Novruz	(070) 282-76-66	2020-11-17
3087	Bakı	Ford	Transit	1998	Yük maşını	Ağ	2.5	96	Dizel	445000	Mexaniki	Arxa	f	16300	9588	4473240	Elgun	(050) 640-08-88	2020-11-17
3088	Bakı	BMW	525	2001	Sedan	Gümüşü	2.5	192	Benzin	174000	Avtomat	Arxa	f	13700	8059	4473135	Faik	(055) 771-22-42	2020-11-17
3089	Bakı	Mercedes	C 180	1999	Universal	Göy	1.8	122	Qaz	598000	Mexaniki	Arxa	f	10800	6353	4473139	Seddam	(070) 271-44-40	2020-11-17
3090	Qəbələ	Opel	Astra	1999	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	277000	Mexaniki	Ön	f	9000	5294	4473143	Sexavet	(055) 610-98-22	2020-11-17
3091	Quba	Mercedes	190	1991	Sedan	Gümüşü	2	122	Benzin	200000	Mexaniki	Tam	f	5600	3294	4473141	Sultan	(070) 497-11-46	2020-11-17
3092	Gəncə	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	104380	Mexaniki	Arxa	f	6000	3529	4473149	Resad	(055) 681-66-77	2020-11-17
3093	Bakı	Mercedes	C 180	1998	Universal	Göy	1.8	122	Benzin	347856	Mexaniki	Arxa	f	11400	6706	4473146	Alim	(050) 733-13-37	2020-11-17
3094	Bakı	Hyundai	i30	2008	Universal	Göy	1.6	130	Dizel	221000	Mexaniki	Ön	f	13800	8118	4473157	Eldar	(055) 490-95-81	2020-11-17
3095	Bakı	Mercedes	C 280	1997	Sedan	Qara	2.8	193	Benzin	339938	Avtomat	Arxa	f	11000	6471	4473161	Cosqun	(050) 214-04-23	2020-11-17
3096	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	107000	Avtomat	Ön	f	25700	15118	4473158	Telman	(055) 660-60-50	2020-11-17
3097	Bakı	Mercedes	E 200	1997	Sedan	Göy	2	136	Benzin	371000	Avtomat	Arxa	f	10500	6176	4473168	Taleh	(055) 537-84-52	2020-11-17
3098	Bakı	Hyundai	Accent	2007	Sedan	Göy	1.5	110	Dizel	210427	Mexaniki	Ön	f	12000	7059	4459839	Xəyal	(050) 412-63-35	2020-11-17
3099	Gəncə	Mitsubishi	Airtrek	2003	Offroader / SUV	Boz	2.4	200	Benzin	137000	Avtomat	Ön	f	8700	5118	4473172	Elsen	(055) 670-88-03	2020-11-17
3100	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	4	250	Benzin	80000	Avtomat	Tam	f	50660	29800	3853131	salman	(070) 670-88-18	2020-11-17
3101	Bakı	Mercedes	300 D	1994	Sedan	Qara	3	113	Dizel	500000	Mexaniki	Arxa	f	6200	3647	4473077	İlqar	(055) 826-77-29	2020-11-17
3102	Bakı	Mercedes	Viano	2006	Minivan	Qara	2.2	170	Dizel	500000	Avtomat	Arxa	f	24500	14412	4473093	Asım aliyev	(055) 309-13-39	2020-11-17
3103	Sumqayıt	Hyundai	Genesis Coupe	2014	Kupe	Yaş Asfalt	3.8	256	Benzin	157393	Avtomat	Arxa	f	21000	12353	4473094	Fariz	(050) 398-43-72	2020-11-17
3104	Bakı	Opel	Astra	2007	Universal	Ağ	1.3	90	Dizel	174500	Mexaniki	Ön	f	11000	6471	4440816	Sebuhi	(055) 790-95-61	2020-11-17
3105	Bakı	Hyundai	Elantra	2013	Sedan	Boz	1.8	150	Benzin	67906	Avtomat	Ön	f	19700	11588	4473097	SEBUHI	(050) 415-39-39	2020-11-17
3106	Bakı	Renault	Scenic	2006	Minivan	Mavi	1.5	110	Dizel	150000	Mexaniki	Ön	f	9600	5647	4448025	Cəlal	(099) 879-09-00	2020-11-17
3107	Xırdalan	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	107147	Avtomat	Ön	f	15500	9118	4320912	Ramil	(077) 399-89-02	2020-11-17
3108	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2.2	150	Dizel	280000	Avtomat	Tam	f	20000	11765	3561839	Samir	(077) 761-03-33	2020-11-17
3109	Bakı	Iran Khodro	Azsamand	2008	Sedan	Boz	1.8	100	Benzin	148500	Mexaniki	Ön	f	7300	4294	4473069	Nurlan 	(055) 560-50-28	2020-11-17
3110	Bakı	Hyundai	Terracan	2002	Universal	Göy	2.9	127	Dizel	400000	Avtomat	Tam	f	14500	8529	4473108	Yaşar	(070) 631-96-36	2020-11-17
3111	Sumqayıt	LADA (VAZ)	2106	2001	Hetçbek / Liftbek	Gümüşü	1.6	75	Benzin	86230	Mexaniki	Arxa	f	6200	3647	4473117	Ceyhun	(070) 808-98-28	2020-11-17
3112	Bakı	Tofas	Sahin	2005	Sedan	Qara	1.6	86	Benzin	156000	Mexaniki	Arxa	f	4000	2353	4473118	Anar	(055) 651-47-17	2020-11-17
3113	Sumqayıt	Hyundai	Grandeur	2012	Sedan	Ağ	2.4	180	Benzin	100484	Avtomat	Ön	f	32500	19118	4463277	pervin	(050) 210-40-22	2020-11-17
3114	Sumqayıt	Nissan	Sunny	2006	Sedan	Qızılı	1.3	90	Benzin	250000	Avtomat	Ön	f	10750	6324	4473107	Əlvan	(050) 367-22-43	2020-11-17
3115	Bakı	Mercedes	E 200	2000	Sedan	Göy	2	136	Benzin	284000	Avtomat	Arxa	f	16700	9824	4473119	Asif	(055) 518-68-51	2020-11-17
3116	Sumqayıt	LADA (VAZ)	Niva	2007	Offroader / SUV	Ağ	1.7	80	Benzin	72134	Mexaniki	Tam	f	7400	4353	4473121	Tural	(055) 694-95-70	2020-11-17
3117	Xırdalan	Subaru	Impreza	2010	Hetçbek / Liftbek	Göy	2	150	Benzin	187800	Avtomat	Tam	f	15640	9200	4473122	Vusal	(055) 744-33-36	2020-11-17
3118	Bakı	Mercedes	E 220	2015	Sedan	Qara	2.2	170	Dizel	105000	Avtomat	Arxa	f	53550	31500	4473123	Fərid	(055) 345-99-88	2020-11-17
3119	Bakı	Mercedes	E 220	2012	Sedan	Gümüşü	2.2	170	Dizel	189000	Avtomat	Ön	f	31800	18706	4315888	Samir	(070) 664-03-92	2020-11-17
3120	Bakı	Opel	Corsa	1996	Hetçbek / Liftbek	Göy	1.4	90	Benzin	333457	Mexaniki	Ön	f	4000	2353	4468932	Serxan	(050) 400-01-71	2020-11-17
3121	Gəncə	Mercedes	B 170	2008	Hetçbek / Liftbek	Qara	1.7	117	Benzin	60000	Avtomat	Ön	f	14000	8235	4473130	Xəyal	(070) 434-46-44	2020-11-17
3122	Bakı	Mercedes	190	1992	Sedan	Gümüşü	2	122	Benzin	360000	Avtomat	Arxa	f	5500	3235	4473131	Musa	(070) 655-20-60	2020-11-17
3124	Balakən	Mercedes	S 320	1999	Sedan	Gümüşü	3.2	224	Benzin	357000	Avtomat	Arxa	f	12900	7588	4473040	samir	(050) 713-08-08	2020-11-17
3125	Goranboy	Opel	Astra	1993	Universal	Ağ	1.7	80	Dizel	250000	Mexaniki	Ön	f	6700	3941	4473043	Ruslan	(070) 342-25-62	2020-11-17
3126	Bakı	Mercedes	E 270	2002	Sedan	Göy	2.7	170	Dizel	370000	Avtomat	Arxa	f	15000	8824	4473036	Kamil	(055) 306-49-49	2020-11-17
3127	Bakı	Mercedes	Sprinter 316	2015	Mikroavtobus	Ağ	2.2	156	Dizel	250000	Mexaniki	Arxa	f	49000	28824	4177477	xeli	(050) 204-44-04	2020-11-17
3128	Bakı	Renault	Laguna	2008	Universal	Göy	1.5	110	Dizel	177711	Mexaniki	Ön	f	14900	8765	4438219	Etibar	(070) 664-70-60	2020-11-17
3129	Mingəçevir	BMW	X5	2003	Offroader / SUV	Ağ	4.4	333	Benzin	222000	Avtomat	Tam	f	18500	10882	4472583	Elcin	(055) 638-44-43	2020-11-17
3130	Şirvan	Subaru	Forester	2008	Offroader / SUV	Ağ	2	158	Benzin	217314	Avtomat	Tam	f	15300	9000	4473050	Ramil	(050) 669-18-68	2020-11-17
3131	Bakı	BMW	528	2012	Sedan	Yaş Asfalt	2	245	Benzin	130000	Avtomat	Tam	f	33150	19500	4473053	Huseyin	(077) 306-76-19	2020-11-17
3132	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	213000	Mexaniki	Ön	f	10000	5882	4473054	Anar	(051) 561-54-19	2020-11-17
3133	Bakı	Mercedes	E 320	2003	Sedan	Ağ	3.2	224	Benzin	238000	Avtomat	Arxa	f	18400	10824	4473052	Server	(077) 328-03-02	2020-11-17
3134	Bakı	Nissan	Maxima	1998	Sedan	Göy	3	200	Benzin	442616	Mexaniki	Ön	f	6000	3529	4473063	Yusif	(055) 380-03-56	2020-11-17
3135	Şəmkir	LADA (VAZ)	2105	1993	Sedan	Göy	1.5	65	Benzin	145680	Mexaniki	Arxa	f	2900	1706	4473064	Rövşən	(050) 871-41-05	2020-11-17
3136	Bakı	BMW	320	1994	Sedan	Mavi	2	150	Benzin	311000	Avtomat	Arxa	f	7200	4235	4473065	Emil	(070) 506-82-82	2020-11-17
3137	Bakı	Opel	Astra	2005	Universal	Göy	1.4	90	Benzin	198000	Mexaniki	Ön	f	11000	6471	4473059	Nihat	(077) 584-30-04	2020-11-17
3138	Bakı	Land Rover	Range Rover	2008	Offroader / SUV	Ağ	4.2	396	Benzin	195000	Avtomat	Tam	f	39100	23000	4473056	Orxan	(055) 404-64-67	2020-11-17
3139	Salyan	KamAz	5320	1987	Yük maşını	Boz	11	191	Dizel	250000	Mexaniki	Arxa	f	14200	8353	4472995	Yaşar	(050) 605-96-70	2020-11-17
3140	Bakı	LADA (VAZ)	2107	2001	Sedan	Ağ	1.6	75	Benzin	61880	Mexaniki	Arxa	f	4500	2647	4473002	Fərəc	(055) 209-40-45	2020-11-17
3141	Quba	Mercedes	E 320	2000	Sedan	Yaşıl	3.2	224	Benzin	327000	Avtomat	Arxa	f	13900	8176	4472989	Moxlat	(051) 538-77-00	2020-11-17
3142	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Ağ	2	170	Benzin	140000	Avtomat	Tam	f	18500	10882	4473006	Azər	(050) 263-14-46	2020-11-17
3143	Bakı	Toyota	Prius V	2011	Minivan	Ağ	1.8	136	Hibrid	195200	Avtomat	Ön	f	23300	13706	4473011	Rafail	(050) 559-55-75	2020-11-17
3144	Bakı	Kia	Cerato	2011	Sedan	Ağ	1.6	124	Benzin	200000	Avtomat	Ön	f	14800	8706	4473007	Elşən	(055) 211-57-54	2020-11-17
3145	Bakı	Chevrolet	Cruze	2015	Sedan	Qəhvəyi	1.4	153	Benzin	160000	Avtomat	Ön	f	14500	8529	4473009	Resul	(050) 786-33-02	2020-11-17
3146	Bakı	LADA (VAZ)	2109	1989	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	265658	Mexaniki	Ön	f	4200	2471	4473013	Ebulfez	(055) 232-32-17	2020-11-17
3147	Bakı	Kia	Sorento	2012	Offroader / SUV	Ağ	2.4	175	Benzin	113000	Avtomat	Tam	f	29000	17059	4473004	İlham	(050) 361-91-19	2020-11-17
3148	Bakı	Chevrolet	Cruze	2011	Sedan	Yaş Asfalt	1.4	141	Benzin	224000	Avtomat	Ön	f	14300	8412	4473016	Fikret	(055) 302-10-40	2020-11-17
3149	Bakı	Nissan	Micra	2013	Hetçbek / Liftbek	Bənövşəyi	1.2	85	Benzin	110000	Avtomat	Ön	f	12400	7294	4473020	Siyavus	(070) 206-99-49	2020-11-17
3150	Bakı	Toyota	Land Cruiser	2012	Offroader / SUV	Ağ	4	282	Benzin	53400	Avtomat	Tam	f	70550	41500	4473021	Hesen	(051) 565-05-65	2020-11-17
3151	Bakı	Renault	Megane	2007	Universal	Göy	1.5	106	Dizel	280000	Mexaniki	Ön	f	10000	5882	4473026	Kamran 	(050) 215-81-05	2020-11-17
3152	Bakı	Opel	Combo	2007	Minivan	Gümüşü	1.3	75	Dizel	133500	Mexaniki	Ön	f	11800	6941	4473017	XEYYAM	(055) 786-07-07	2020-11-17
3153	Bakı	Hyundai	Elantra	2017	Sedan	Göy	2	170	Benzin	47800	Avtomat	Ön	f	26000	15294	4473028	Tural	(050) 210-20-18	2020-11-17
3154	Lənkəran	Mitsubishi	Galant	1998	Sedan	Mavi	2	136	Benzin	323000	Avtomat	Ön	f	6000	3529	4473031	Etibar	(055) 216-91-42	2020-11-17
3155	Bakı	Mercedes	A 170	1999	Hetçbek / Liftbek	Yaş Asfalt	1.7	116	Dizel	111111	Avtomat	Ön	f	7000	4118	4473022	babek	(070) 406-03-08	2020-11-17
3157	Bakı	BMW	530	1999	Sedan	Gümüşü	3	231	Dizel	300000	Avtomat	Arxa	f	14000	8235	4473027	Surxay	(055) 205-74-73	2020-11-17
3158	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	131000	Avtomat	Ön	f	18800	11059	4209788	Aydın	(050) 291-91-51	2020-11-17
3159	Bakı	BMW	530	2017	Sedan	Yaş Asfalt	2	252	Benzin	78000	Avtomat	Arxa	f	63750	37500	4473039	Haci Rafael 	(055) 313-88-82	2020-11-17
3160	Bakı	BMW	740	2016	Sedan	Mavi	3	340	Benzin	62000	Avtomat	Arxa	f	118150	69500	4343862	Shamil	(050) 304-42-33	2020-11-17
3161	Qəbələ	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	203000	Mexaniki	Ön	f	8500	5000	4473081	İlkin	(077) 277-89-75	2020-11-17
3162	Bakı	Kia	Optima	2014	Sedan	Qəhvəyi	2.4	180	Benzin	126500	Avtomat	Ön	f	23800	14000	4456140	Elnur	(050) 411-31-31	2020-11-17
3163	Bakı	Lifan	720	2015	Sedan	Ağ	1.8	128	Benzin	198000	Mexaniki	Ön	f	11500	6765	4473085	Üzeyir	(070) 826-17-24	2020-11-17
3164	Bakı	Kia	Rio	2009	Sedan	Qara	1.4	107	Benzin	260000	Mexaniki	Ön	f	9700	5706	4473088	Toğrul	(070) 600-02-26	2020-11-17
3166	Bakı	Kia	Sorento	2010	Offroader / SUV	Yaş Asfalt	2	184	Dizel	186000	Avtomat	Ön	f	24500	14412	4472973	Ceyhun	(070) 297-23-27	2020-11-17
3167	Biləsuvar	BMW	320	2008	Universal	Qara	2	170	Dizel	128000	Mexaniki	Arxa	f	19800	11647	4472975	Murad	(050) 504-86-11	2020-11-17
3168	Bakı	Mercedes	E 280	2000	Sedan	Göy	2.8	204	Benzin	393055	Avtomat	Arxa	f	15900	9353	4472977	Logman	(070) 637-31-31	2020-11-17
3169	Bakı	Hyundai	H-1	2010	Van	Ağ	2.5	170	Dizel	380000	Mexaniki	Arxa	f	20300	11941	4472983	Tural	(051) 707-70-87	2020-11-17
3170	Xırdalan	Kia	Sorento	2007	Offroader / SUV	Qara	2.5	170	Dizel	290000	Avtomat	Tam	f	18500	10882	4472970	Baba	(050) 311-28-28	2020-11-17
3171	Bakı	Dacia	Logan	2007	Sedan	Göy	1.5	86	Dizel	374000	Mexaniki	Ön	f	9800	5765	4472982	Isa	(055) 508-85-84	2020-11-17
3172	Şabran	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	100000	Mexaniki	Arxa	f	8800	5176	4472979	Intiqam	(055) 926-99-00	2020-11-17
3174	Bakı	Kia	Cerato	2016	Sedan	Gümüşü	1.8	149	Benzin	98000	Avtomat	Ön	f	18800	11059	4472969	İlkin	(070) 234-09-19	2020-11-17
3175	Bakı	Kia	Rio	2016	Sedan	Boz	1.6	130	Benzin	51000	Avtomat	Ön	f	16400	9647	4472950	Emil	(055) 229-27-21	2020-11-17
3176	Sumqayıt	Mitsubishi	Pajero	1995	Offroader / SUV	Gümüşü	2.8	125	Dizel	189000	Avtomat	Tam	f	10900	6412	4472981	Kamil	(050) 328-96-71	2020-11-17
3177	Bakı	Iran Khodro	Azsamand	2007	Sedan	Gümüşü	1.8	107	Benzin	298956	Mexaniki	Ön	f	7100	4176	4439749	Elvin	(050) 536-16-93	2020-11-17
3178	Sumqayıt	Mercedes	C 180	1994	Sedan	Yaşıl	1.8	122	Benzin	286000	Avtomat	Arxa	f	7700	4529	4472997	MÖHÖBBƏT	(070) 606-06-39	2020-11-17
3179	Bakı	LADA (VAZ)	2114	2011	Hetçbek / Liftbek	Qara	1.6	75	Benzin	202881	Mexaniki	Ön	f	8500	5000	4472991	Evez	(070) 764-31-31	2020-11-17
3180	Bakı	LADA (VAZ)	2106	1983	Sedan	Gümüşü	1.3	65	Benzin	123486	Mexaniki	Arxa	f	3300	1941	4472936	Ağalar	(051) 524-46-46	2020-11-17
3181	Bakı	Mercedes	C 240	2000	Sedan	Gümüşü	2.6	177	Benzin	198000	Avtomat	Arxa	f	13500	7941	4472934	Elnur 	(055) 213-28-33	2020-11-17
3182	Bakı	Kia	Sorento	2005	Offroader / SUV	Gümüşü	3.5	230	Benzin	274000	Avtomat	Arxa	f	14000	8235	4324748	ELMEDDIN	(055) 828-68-98	2020-11-17
3183	Bakı	GAZ	Next A21R22-30	2018	Yük maşını	Boz	2.8	149	Dizel	30000	Mexaniki	Arxa	f	32000	18824	4472933	elmeddin	(050) 831-80-00	2020-11-17
3184	Bakı	Mercedes	E 280	1999	Sedan	Gümüşü	2.8	204	Benzin	226000	Avtomat	Arxa	f	16000	9412	4472942	Senan	(055) 657-47-00	2020-11-17
3185	Balakən	Mercedes	Vito	2001	Minivan	Qara	2.2	150	Dizel	680000	Mexaniki	Ön	f	15500	9118	4471195	Mamed	(077) 744-08-08	2020-11-17
3186	Bakı	Toyota	Corolla	2008	Sedan	Gümüşü	1.4	90	Dizel	170000	Mexaniki	Ön	f	15200	8941	4472892	Natiq 	(050) 546-84-04	2020-11-17
3187	Bakı	Mercedes	S 350	2010	Sedan	Qara	3.5	306	Benzin	180000	Avtomat	Arxa	f	46750	27500	4472955	Rasad	(060) 224-74-74	2020-11-17
3188	Şirvan	LADA (VAZ)	2106	1990	Sedan	Bej	1.3	65	Benzin	25800	Mexaniki	Arxa	f	4000	2353	4472956	Eli	(055) 841-09-06	2020-11-17
3189	Bakı	Toyota	Yaris	2008	Hetçbek / Liftbek	Göy	1.3	90	Benzin	170000	Avtomat	Ön	f	10500	6176	4472959	Xezer	(050) 835-23-30	2020-11-17
3190	Bakı	Land Rover	Discovery	2006	Offroader / SUV	Qara	2.7	190	Dizel	305444	Avtomat	Tam	f	26300	15471	4472963	Zaur	(055) 277-52-00	2020-11-17
3191	Bakı	Mitsubishi	Airtrek	2003	Offroader / SUV	Ağ	2	136	Benzin	299500	Avtomat	Ön	f	9500	5588	4472961	Ali	(055) 564-03-42	2020-11-17
3156	Bakı	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	220000	Avtomat	Arxa	f	16900	9941	4473032	Ramin	(050) 787-31-60	2020-11-17
3192	Bakı	Nissan	Sentra	2013	Sedan	Ağ	1.6	132	Benzin	107000	Avtomat	Ön	f	16000	9412	4472966	vuqar	(055) 377-34-35	2020-11-17
3193	Göyçay	LADA (VAZ)	2107	2010	Sedan	Ağ	1.5	65	Benzin	120000	Mexaniki	Arxa	f	8200	4824	4472996	Fərid	(050) 390-36-66	2020-11-17
3194	Bakı	Mercedes	190	1990	Sedan	Qara	2	120	Benzin	250852	Mexaniki	Ön	f	5500	3235	4472994	Ulvi	(055) 400-93-58	2020-11-17
3195	Bərdə	LADA (VAZ)	2106	1980	Sedan	Ağ	1.6	75	Benzin	745586	Mexaniki	Arxa	f	3000	1765	4473005	Eliş	(051) 708-60-00	2020-11-17
3196	Bakı	Mercedes	C 180	1994	Sedan	Ağ	1.8	122	Benzin	365251	Avtomat	Arxa	f	7550	4441	4437807	Elsen	(050) 386-92-89	2020-11-17
3197	Lənkəran	Mercedes	E 220	1997	Sedan	Ağ	2.2	143	Dizel	170241	Avtomat	Arxa	f	9000	5294	4473003	Huseyin	(050) 768-33-36	2020-11-17
3198	Bakı	BMW	525	1992	Sedan	Göy	2.5	170	Benzin	306987	Mexaniki	Arxa	f	3700	2176	4472890	Arif	(055) 284-14-24	2020-11-17
3199	Göygöl	Hyundai	Accent	2011	Sedan	Ağ	1.4	75	Benzin	230000	Avtomat	Ön	f	13000	7647	4472896	Elcan	(050) 751-49-99	2020-11-17
3200	Bakı	Kia	Rio	2016	Sedan	Ağ	1.6	130	Benzin	74000	Avtomat	Ön	f	17300	10176	4472886	Elgiz	(055) 214-53-84	2020-11-17
3201	Bakı	Ford	Transit	2001	Furqon	Ağ	2.4	120	Dizel	303000	Mexaniki	Arxa	f	18700	11000	4450241	Rasim	(050) 320-39-88	2020-11-17
3202	Bakı	BMW	X5	2011	Offroader / SUV	Qara	3	306	Benzin	45500	Avtomat	Tam	f	46750	27500	4472872	Samir	(055) 469-72-71	2020-11-17
3203	Bakı	Chevrolet	Volt	2012	Hetçbek / Liftbek	Qara	1.4	85	Hibrid	142300	Avtomat	Ön	f	21000	12353	4472902	Adil	(055) 990-32-21	2020-11-17
3204	Bakı	Opel	Astra	2005	Universal	Göy	1.8	141	Benzin	236000	Avtomat	Ön	f	13300	7824	4469812	Kənan	(050) 394-99-18	2020-11-17
3205	Zaqatala	Opel	Astra	2007	Hetçbek / Liftbek	Qara	1.4	101	Benzin	132000	Mexaniki	Ön	f	12200	7176	4472912	Наиль 	(050) 681-56-67	2020-11-17
3206	Cəlilabad	Mercedes	E 250	1991	Sedan	Qızılı	2.5	125	Benzin	500000	Avtomat	Arxa	f	6500	3824	4472920	Mahir Müəllim	(050) 464-33-66	2020-11-17
3207	Bakı	BMW	528	2013	Sedan	Boz	2	245	Benzin	117000	Avtomat	Arxa	f	42330	24900	4472921	Elvin	(050) 281-11-10	2020-11-17
3208	Zaqatala	Mercedes	E 250	2010	Sedan	Qara	1.8	204	Benzin	212000	Avtomat	Arxa	f	30600	18000	4472852	oktay	(070) 866-44-55	2020-11-17
3209	Bakı	BMW	528	2012	Sedan	Yaş Asfalt	2	245	Benzin	84000	Avtomat	Arxa	f	40120	23600	4472853	Vusal	(055) 571-08-20	2020-11-17
3210	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2	274	Benzin	30000	Avtomat	Ön	f	31500	18529	4402950	Teymur	(050) 627-23-07	2020-11-17
3211	Sumqayıt	LADA (VAZ)	2106	1978	Sedan	Bej	1.3	65	Benzin	200000	Mexaniki	Arxa	f	1900	1118	4472859	Habil	(051) 656-47-82	2020-11-17
3212	Bakı	GAZ	31105	2004	Sedan	Qara	2.3	131	Benzin	200000	Mexaniki	Arxa	f	6500	3824	4472858	Vahid	(055) 682-64-03	2020-11-17
3213	Bakı	Volkswagen	Jetta	1999	Sedan	Qara	2	150	Benzin	250000	Mexaniki	Ön	f	6600	3882	4472834	Emil	(050) 207-08-43	2020-11-17
3214	Bakı	Mercedes	E 320	1998	Sedan	Yaşıl	3.2	224	Benzin	418000	Avtomat	Arxa	f	13700	8059	4472862	Cosqun	(070) 215-47-47	2020-11-17
3215	Bakı	Hyundai	Elantra	2016	Sedan	Qara	1.6	128	Benzin	33600	Avtomat	Ön	f	29000	17059	4472863	Nicat	(050) 993-31-88	2020-11-17
3216	Şəmkir	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	80	Benzin	186000	Mexaniki	Ön	f	8500	5000	4472868	Maarif	(051) 979-77-97	2020-11-17
3217	Bakı	Mercedes	190	1990	Sedan	Qara	2	122	Benzin	295010	Avtomat	Arxa	f	6200	3647	4472873	Xalid	(077) 487-59-80	2020-11-17
3218	Bakı	Mercedes	C 180	1995	Sedan	Göy	1.8	125	Benzin	390000	Avtomat	Arxa	f	8900	5235	4472626	RAFIQ	(077) 307-67-74	2020-11-17
3219	Bakı	Hyundai	Terracan	2004	Offroader / SUV	Qara	2.9	170	Dizel	211500	Avtomat	Tam	f	12800	7529	4472865	Fərzayıl	(070) 291-28-30	2020-11-17
3220	Xaçmaz	GAZ	31029	1993	Sedan	Qara	2.5	100	Benzin	83859	Mexaniki	Arxa	f	3500	2059	4472877	Nahid	(077) 557-59-00	2020-11-17
3221	Qəbələ	Ford	Escort	1996	Hetçbek / Liftbek	Gümüşü	1.8	105	Benzin	230000	Mexaniki	Ön	f	3200	1882	4472879	Seyahet	(050) 654-35-24	2020-11-17
3222	Hacıqabul	KamAz	53229	1989	Yük maşını	Qara	10	191	Dizel	202000	Mexaniki	Tam	f	18500	10882	4472880	Eli	(099) 864-58-68	2020-11-17
3223	Bakı	Hyundai	Elantra	2012	Sedan	Ağ	1.8	150	Benzin	179000	Avtomat	Ön	f	16500	9706	4460444	Mirmurad	(055) 203-37-19	2020-11-17
3224	Bakı	Mercedes	E 200	2007	Sedan	Qara	1.8	204	Benzin	191000	Avtomat	Arxa	f	24500	14412	4472888	Sultan	(050) 657-00-75	2020-11-17
3225	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	137400	Avtomat	Ön	f	12000	7059	4252780	Toğrul	(055) 216-07-77	2020-11-17
3226	Bakı	Mazda	CX-7	2007	Offroader / SUV	Qara	2.3	244	Benzin	187000	Avtomat	Tam	f	12900	7588	4472930	Ilqar	(050) 359-18-96	2020-11-17
3227	Xırdalan	LADA (VAZ)	2107	2007	Sedan	Göy	1.6	75	Benzin	77000	Mexaniki	Arxa	f	6500	3824	4472931	Anar	(070) 301-03-74	2020-11-17
3229	Bakı	Opel	Vectra	1999	Sedan	Göy	2	136	Benzin	404544	Avtomat	Ön	f	6800	4000	4472826	Nurlan	(055) 225-38-23	2020-11-17
3230	Sumqayıt	BMW	530	2011	Sedan	Göy	3	306	Benzin	180000	Avtomat	Arxa	f	31000	18235	4452367	Sahil	(050) 366-88-25	2020-11-17
3231	Bakı	Toyota	Corolla	2009	Sedan	Yaş Asfalt	1.6	140	Benzin	186000	Avtomat	Ön	f	15500	9118	4472835	Miri	(050) 447-62-73	2020-11-17
3232	Zərdab	Mitsubishi	L 200	2012	Pikap	Ağ	2.5	136	Dizel	211000	Mexaniki	Tam	f	26600	15647	4472837	Aqşin	(050) 351-51-94	2020-11-17
3233	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	4	282	Benzin	78000	Avtomat	Tam	f	60180	35400	4472805	Orxan	(055) 338-39-37	2020-11-17
3234	Bakı	LADA (VAZ)	Priora	2015	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	110000	Mexaniki	Ön	f	13400	7882	4472838	Hesen	(077) 329-53-43	2020-11-17
3235	Sumqayıt	Kia	Optima	2015	Sedan	Yaş Asfalt	2.4	178	Benzin	120000	Avtomat	Ön	f	25500	15000	4472839	Emin	(050) 549-05-93	2020-11-17
3236	Bakı	Tofas	Sahin	2006	Sedan	Qırmızı	1.6	86	Benzin	32800	Mexaniki	Arxa	f	7200	4235	4472840	Ruslan	(055) 806-03-03	2020-11-17
3237	Qusar	Dnepr	K-750	1980	Motosiklet	Qara	0.7	30	Benzin	10000	Mexaniki	Arxa	f	550	324	4472844	Albert	(070) 561-75-18	2020-11-17
3238	Tovuz	BMW	745	2002	Sedan	Qara	4.4	333	Benzin	333000	Avtomat	Arxa	f	14000	8235	4472815	Niyamıddin	(055) 402-44-57	2020-11-17
3239	Sumqayıt	Toyota	Prado	2008	Offroader / SUV	Ağ	4	250	Benzin	198000	Avtomat	Tam	f	41650	24500	4450276	Sahil	(055) 462-34-89	2020-11-17
3240	Bakı	Toyota	RAV 4	2003	Offroader / SUV	Boz	2	150	Benzin	315456	Avtomat	Tam	f	13600	8000	4472822	Mahir	(055) 722-13-32	2020-11-17
3241	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Bənövşəyi	1.5	76	Hibrid	156000	Avtomat	Ön	f	12500	7353	4472824	Emin	(050) 394-77-77	2020-11-17
3242	Şabran	LADA (VAZ)	2107	1993	Sedan	Ağ	1.6	75	Benzin	163284	Mexaniki	Arxa	f	3500	2059	4472766	Sənan	(050) 404-44-94	2020-11-17
3243	Bakı	Mercedes	E 220	2010	Sedan	Gümüşü	2.2	170	Dizel	206000	Avtomat	Arxa	f	27000	15882	4428265	Агаселим	(050) 878-95-01	2020-11-17
3244	Bakı	UAZ	31514	2004	Offroader / SUV	Boz	2.4	100	Benzin	10000	Mexaniki	Tam	f	8000	4706	4472769	Abulfət	(070) 665-94-57	2020-11-17
3245	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	213500	Variator	Ön	f	12300	7235	4472772	Tofik	(051) 863-41-10	2020-11-17
3246	Bakı	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	300000	Avtomat	Arxa	f	18500	10882	4472777	Xəyal	(077) 323-33-99	2020-11-17
3247	Ağdam	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	80	Benzin	105110	Mexaniki	Ön	f	9200	5412	4472778	Oxday	(050) 771-28-16	2020-11-17
3248	Lənkəran	Mitsubishi	Pajero io	1998	Offroader / SUV	Göy	1.8	130	Benzin	255000	Avtomat	Tam	f	8700	5118	4418713	Anar	(050) 634-11-01	2020-11-17
3249	Bakı	LADA (VAZ)	2106	2003	Sedan	Tünd qırmızı	1.6	75	Benzin	200000	Mexaniki	Arxa	f	4700	2765	4472780	Maksim	(070) 360-36-03	2020-11-17
3250	Bakı	Opel	Astra	1998	Universal	Tünd qırmızı	1.6	101	Benzin	300000	Mexaniki	Ön	f	5700	3353	4472782	Zahir	(077) 317-69-25	2020-11-17
3251	Bakı	Ford	Fusion	2017	Sedan	Ağ	2	245	Benzin	26822	Avtomat	Tam	f	30800	18118	4403913	Rufet	(050) 319-21-50	2020-11-17
3252	Gəncə	Opel	Vectra	1996	Sedan	Gümüşü	2	136	Benzin	253000	Mexaniki	Ön	f	6000	3529	4472794	Vidadi	(070) 905-59-90	2020-11-17
3253	Bakı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	95097	Mexaniki	Arxa	f	5500	3235	4472793	Ceyhun	(055) 274-54-21	2020-11-17
3254	Sumqayıt	Renault	Megane	2005	Universal	Gümüşü	1.5	106	Dizel	241041	Mexaniki	Ön	f	7500	4412	4472792	Elsan 	(070) 206-08-41	2020-11-17
3255	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	92000	Avtomat	Ön	f	19800	11647	4472799	Elsad	(055) 691-00-50	2020-11-17
3256	Bakı	Mercedes	Vito 111	2010	Van	Göy	2.2	150	Dizel	177800	Mexaniki	Arxa	f	26500	15588	4472796	Şamil	(051) 917-43-43	2020-11-17
3257	Sumqayıt	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	2	184	Dizel	79000	Avtomat	Ön	f	23200	13647	4426194	Ramil	(070) 631-83-01	2020-11-17
3258	Bakı	Mercedes	190	1991	Sedan	Boz	2	122	Benzin	360000	Avtomat	Arxa	f	7200	4235	4472803	Qabil	(050) 344-43-39	2020-11-17
3259	Gəncə	Mercedes	190	1989	Sedan	Yaşıl	2	122	Benzin	400000	Mexaniki	Arxa	f	5300	3118	4472808	Aslan	(050) 454-10-53	2020-11-17
3260	Zaqatala	Toyota	Camry	2012	Sedan	Yaş Asfalt	2.5	181	Benzin	176000	Avtomat	Ön	f	31790	18700	4472812	Ruslan	(070) 622-23-23	2020-11-17
3261	Şirvan	Mercedes	190	1992	Sedan	Qızılı	2	122	Benzin	350000	Avtomat	Arxa	f	4500	2647	4472813	Baharetdin	(070) 335-62-62	2020-11-17
3262	Cəlilabad	Nissan	Teana	2009	Sedan	Ağ	2.5	182	Benzin	178000	Avtomat	Ön	f	18900	11118	4472827	Tural	(055) 294-96-98	2020-11-17
3263	Sumqayıt	Mercedes	E 200	1999	Sedan	Gümüşü	2	136	Benzin	320000	Avtomat	Arxa	f	12000	7059	4472847	Rais	(070) 381-50-05	2020-11-17
3264	Bakı	Ford	Fusion	2016	Sedan	Qırmızı	1.5	181	Benzin	65000	Avtomat	Ön	f	26500	15588	4467599	Teymur	(055) 274-60-63	2020-11-17
3265	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	125000	Avtomat	Ön	f	12850	7559	4472851	Canpolad	(050) 633-56-94	2020-11-17
3266	Gəncə	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	150000	Mexaniki	Arxa	f	5000	2941	4472737	Elmin	(099) 772-73-74	2020-11-17
3267	Bakı	Hyundai	Accent	2007	Sedan	Qara	1.5	94	Benzin	152000	Avtomat	Ön	f	11000	6471	4472738	Elvin	(055) 232-78-97	2020-11-17
3268	Bakı	Mercedes	E 220	1994	Sedan	Gümüşü	2.2	146	Benzin	482000	Avtomat	Arxa	f	9500	5588	4472739	Ilkin	(055) 212-12-27	2020-11-17
3269	Gəncə	LADA (VAZ)	2107	2007	Sedan	Ağ	1.5	65	Benzin	250000	Mexaniki	Arxa	f	7000	4118	4472741	Emil	(070) 379-79-77	2020-11-17
3270	Bakı	Toyota	Prius	2006	Hetçbek / Liftbek	Qırmızı	1.5	76	Benzin	267000	Avtomat	Ön	f	11000	6471	4464625	Tofiq	(050) 204-40-30	2020-11-17
3271	Bakı	Mercedes	E 240	2000	Sedan	Qara	2.6	177	Benzin	350000	Avtomat	Arxa	f	15000	8824	4472742	Elxan	(070) 981-17-96	2020-11-17
3272	Sumqayıt	Nissan	Pathfinder	1998	Offroader / SUV	Yaşıl	3.3	121	Benzin	189041	Avtomat	Tam	f	7300	4294	4472745	Elsan	(070) 405-40-19	2020-11-17
3273	Bakı	Chery	A-15 Cowin/Amulet	2006	Sedan	Qızılı	1.5	105	Benzin	360418	Mexaniki	Ön	f	4800	2824	4472746	şəmsi	(070) 974-83-19	2020-11-17
3274	Goranboy	LADA (VAZ)	2108	1993	Sedan	Yaş Asfalt	1.5	75	Benzin	68000	Mexaniki	Ön	f	6500	3824	4472749	Akif	(051) 540-34-74	2020-11-17
3275	Bakı	Mercedes	190	1990	Sedan	Qara	2	122	Benzin	211541	Mexaniki	Arxa	f	5500	3235	4472748	Rəşid	(050) 347-91-41	2020-11-17
3276	Bakı	Kia	Optima	2014	Sedan	Qəhvəyi	2	274	Benzin	89000	Avtomat	Ön	f	24800	14588	4472750	Vüsal	(077) 579-00-07	2020-11-17
3277	Bakı	LADA (VAZ)	Priora	2016	Sedan	Ağ	1.6	106	Benzin	198000	Mexaniki	Ön	f	13100	7706	4472753	Vusal	(070) 600-68-61	2020-11-17
3278	Bakı	Tofas	Sahin	2005	Sedan	Gümüşü	1.6	86	Benzin	95000	Mexaniki	Arxa	f	6000	3529	4472754	Ramin 	(070) 280-30-31	2020-11-17
3279	Bakı	Hyundai	Sonata	2009	Sedan	Tünd qırmızı	2.4	178	Benzin	148000	Avtomat	Ön	f	16800	9882	4472757	Ferid	(051) 696-39-12	2020-11-17
3280	Şəmkir	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	39000	Mexaniki	Tam	f	12000	7059	4472759	Elçin	(051) 730-29-30	2020-11-17
3281	Bakı	Ford	Transit	2008	Yük maşını	Göy	2.4	150	Dizel	182141	Mexaniki	Arxa	f	22500	13235	4472702	Arif	(050) 787-57-77	2020-11-17
3282	Bakı	Hyundai	i30	2009	Universal	Göy	1.6	115	Dizel	180000	Mexaniki	Ön	f	15200	8941	4472700	Islam	(070) 757-06-00	2020-11-17
3283	Bakı	Lexus	RX 300	2000	Offroader / SUV	Gümüşü	3	220	Benzin	213000	Avtomat	Tam	f	10500	6176	4383907	atakişi	(070) 391-80-81	2020-11-17
3284	Bakı	Honda	Civic	2009	Sedan	Gümüşü	1.3	90	Hibrid	189000	Avtomat	Ön	f	11300	6647	4421031	Ismayil	(055) 208-67-88	2020-11-17
3285	Bakı	Kia	Optima	2011	Sedan	Ağ	2.4	180	Benzin	182000	Avtomat	Ön	f	21500	12647	4472712	Azər	(050) 889-00-14	2020-11-17
3286	Gəncə	LADA (VAZ)	2107	2006	Sedan	Ağ	1.5	65	Benzin	125800	Mexaniki	Arxa	f	5800	3412	4472714	Rasim	(055) 253-75-90	2020-11-17
3287	Bakı	Toyota	Camry	2019	Sedan	Qara	2.5	181	Benzin	15667	Avtomat	Tam	f	69889	41111	4440586	Ilkin	(055) 426-00-56	2020-11-17
3288	Bakı	Hyundai	Elantra	2015	Sedan	Qara	1.8	150	Benzin	78000	Avtomat	Ön	f	24800	14588	4472716	Ceyhun 	(050) 354-00-44	2020-11-17
3289	Bakı	Hyundai	Accent	2011	Sedan	Qara	1.6	126	Benzin	131000	Avtomat	Ön	f	17300	10176	4472719	Emil	(055) 715-35-16	2020-11-17
3290	Bakı	Ford	Transit	2008	Yük maşını	Ağ	2.4	140	Dizel	243963	Mexaniki	Arxa	f	24000	14118	4472718	Arif	(050) 787-57-77	2020-11-17
3291	Bakı	Land Rover	Range Rover	2007	Offroader / SUV	Ağ	4.2	396	Benzin	158000	Avtomat	Tam	f	39950	23500	4466512	Rasim	(051) 423-00-03	2020-11-17
3292	Bakı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	300000	Avtomat	Ön	f	19000	11176	4434941	Elnur	(070) 991-99-99	2020-11-17
3293	Bakı	Mercedes	E 320	1999	Sedan	Boz	3.2	224	Dizel	417365	Avtomat	Arxa	f	14800	8706	4472725	Hüseyn	(077) 387-90-00	2020-11-17
3294	Hacıqabul	GAZ	3302-744	1998	Yük maşını	Ağ	2.5	131	Benzin	300000	Mexaniki	Arxa	f	9200	5412	4472729	Sadiq	(055) 379-34-06	2020-11-17
3295	Bakı	Daewoo	Gentra	2014	Sedan	Tünd qırmızı	1.5	107	Benzin	157000	Mexaniki	Ön	f	11000	6471	4472726	Nurəddin	(077) 529-27-98	2020-11-17
3296	Bakı	Opel	Astra	2008	Universal	Göy	1.3	90	Dizel	141382	Mexaniki	Ön	f	11300	6647	4472730	Royal	(050) 633-76-71	2020-11-17
3297	Bakı	LADA (VAZ)	Priora	2015	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	72000	Robotlaşdırılmış	Ön	f	15000	8824	4472732	Anar	(055) 949-56-70	2020-11-17
3298	Bakı	Mercedes	Actros 2544	2015	Yük maşını	Ağ	13	420	Dizel	680000	Avtomat	Arxa	f	98600	58000	4472758	Tahir 	(055) 478-95-50	2020-11-17
3300	Bakı	Mercedes	C 180	2000	Universal	Qara	1.8	122	Benzin	300000	Avtomat	Arxa	f	10750	6324	4472763	Mehemmed	(050) 319-22-26	2020-11-17
3301	Sumqayıt	LADA (VAZ)	2115	2012	Sedan	Tünd qırmızı	1.6	80	Benzin	155000	Mexaniki	Ön	f	8900	5235	4472764	Oktay	(055) 274-49-49	2020-11-17
3302	Bakı	Toyota	RAV 4	2020	Offroader / SUV	Ağ	2.5	218	Benzin	6012	Avtomat	Tam	f	65450	38500	4411785	Babek	(070) 210-04-04	2020-11-17
3303	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	155000	Avtomat	Ön	f	15700	9235	4472686	Samir	(050) 620-02-00	2020-11-17
3304	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	110	Dizel	202000	Avtomat	Ön	f	13000	7647	4472690	Resad	(050) 400-64-86	2020-11-17
3305	Bakı	Kia	Optima	2011	Sedan	Ağ	2	165	Benzin	175000	Avtomat	Ön	f	21500	12647	4472691	Ruslan	(050) 616-65-66	2020-11-17
3306	Bərdə	LADA (VAZ)	2112	2004	Sedan	Gümüşü	1.5	65	Benzin	155000	Mexaniki	Ön	f	7200	4235	4472695	Alahveren	(050) 339-47-17	2020-11-17
3307	Sumqayıt	Opel	Vectra	2000	Sedan	Boz	1.8	125	Benzin	215000	Mexaniki	Ön	f	7900	4647	4472692	Tural	(070) 593-93-15	2020-11-17
3308	Gəncə	Mercedes	C 230	1998	Universal	Göy	2.3	150	Benzin	461000	Avtomat	Arxa	f	11300	6647	4472696	Sahib	(055) 364-95-57	2020-11-17
3309	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	103000	Avtomat	Tam	f	45050	26500	4396764	Hamlet	(077) 363-63-03	2020-11-17
3310	Füzuli	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	110000	Mexaniki	Arxa	f	7800	4588	4472668	Yusif	(050) 850-31-56	2020-11-17
3311	Bakı	Hyundai	ix35	2011	Offroader / SUV	Qara	2	166	Benzin	121000	Avtomat	Tam	f	21900	12882	4445918	Zəki	(050) 836-22-02	2020-11-17
3312	Zaqatala	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	182000	Mexaniki	Ön	f	10600	6235	4472673	Muxtar	(050) 371-35-39	2020-11-17
3313	Bakı	Hyundai	Grandeur	2011	Sedan	Qara	2.4	178	Benzin	153000	Avtomat	Ön	f	25800	15176	4472675	Sənan	(050) 208-20-52	2020-11-17
3314	Bakı	Haojue	KA150	2020	Motosiklet	Qırmızı	0.2	15	Benzin	9980	Mexaniki	Arxa	f	3500	2059	4472676	Ibrahim	(055) 460-40-33	2020-11-17
3315	Sumqayıt	LADA (VAZ)	2106	1992	Sedan	Göy	1.6	75	Benzin	145241	Mexaniki	Arxa	f	3800	2235	4472679	Elsen	(070) 525-25-10	2020-11-17
3316	Xaçmaz	Mercedes	C 200	1996	Sedan	Göy	2	136	Benzin	482000	Avtomat	Arxa	f	9400	5529	4446286	Mübariz	(070) 686-80-90	2020-11-17
3317	Bakı	Opel	Astra	2007	Universal	Qara	1.3	90	Dizel	259580	Mexaniki	Ön	f	11500	6765	4463377	Məmməd	(050) 789-21-33	2020-11-17
3318	Bakı	BMW	530	2006	Sedan	Qara	3	231	Benzin	280000	Avtomat	Arxa	f	25000	14706	4472648	Aqşın	(055) 229-22-28	2020-11-17
3319	Bakı	Mercedes	A 170	2008	Hetçbek / Liftbek	Ağ	1.7	116	Benzin	95000	Avtomat	Ön	f	12000	7059	4472651	Ruslan m.	(050) 770-99-05	2020-11-17
3320	Bakı	Mercedes	E 240	2000	Sedan	Yaşıl	2.6	177	Benzin	206263	Avtomat	Arxa	f	16800	9882	4472652	Samir	(050) 300-80-88	2020-11-17
3321	Gəncə	Chevrolet	Niva	2005	Offroader / SUV	Göy	1.7	80	Benzin	273130	Mexaniki	Arxa	f	7500	4412	4472655	Adil	(070) 477-79-99	2020-11-17
3322	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.5	65	Benzin	290000	Mexaniki	Arxa	f	5600	3294	4472657	Ruslan	(055) 715-13-15	2020-11-17
3323	Bakı	Mercedes	Vito 111	2008	Van	Yaşıl	2.2	118	Dizel	331000	Mexaniki	Arxa	f	25600	15059	4472662	Eldar	(055) 277-44-96	2020-11-17
3324	Bakı	Renault	Megane	2012	Universal	Qara	1.5	110	Dizel	201800	Mexaniki	Ön	f	16800	9882	4472656	Roma	(050) 697-68-95	2020-11-17
3325	Bakı	Mercedes	E 230	1996	Sedan	Boz	2.3	150	Benzin	400000	Avtomat	Arxa	f	11900	7000	4472644	Vüqar	(050) 285-09-82	2020-11-17
3326	Bakı	Mercedes	E 350	2011	Sedan	Qara	3.5	272	Benzin	122431	Avtomat	Arxa	f	31000	18235	4472663	Kamran	(055) 299-95-93	2020-11-17
3327	Bakı	Baic	X 25	2017	Offroader / SUV	Göy	1.5	124	Benzin	109000	Avtomat	Ön	f	19500	11471	4403500	Turan	(055) 315-11-15	2020-11-17
3328	Bakı	BMW	328	2015	Sedan	Qara	2	245	Benzin	76000	Avtomat	Arxa	f	34850	20500	4452376	Miri	(050) 754-00-03	2020-11-17
3329	Bakı	Chery	Tiggo	2014	Offroader / SUV	Ağ	1.6	132	Benzin	152541	Avtomat	Ön	f	13700	8059	4464958	ILQAR	(070) 803-58-95	2020-11-17
3330	Bakı	Honda	City	2014	Sedan	Ağ	1.5	118	Benzin	101000	Avtomat	Ön	f	19500	11471	4472687	Kanan	(050) 592-32-44	2020-11-17
3331	Bakı	BMW	520	1998	Sedan	Gümüşü	2	150	Benzin	244000	Mexaniki	Arxa	f	7800	4588	4472697	Nicat	(055) 467-74-35	2020-11-17
3332	Bakı	Mercedes	E 220	2002	Sedan	Göy	2.2	170	Dizel	300000	Avtomat	Arxa	f	15500	9118	4472699	Nicat	(055) 236-77-88	2020-11-17
3333	Bakı	Mercedes	E 220	2001	Sedan	Göy	2.2	150	Dizel	300000	Avtomat	Arxa	f	15300	9000	4409812	Ruslan	(050) 341-73-90	2020-11-17
3334	Bakı	Hyundai	Veracruz	2008	Offroader / SUV	Bənövşəyi	3	240	Dizel	275000	Avtomat	Tam	f	27000	15882	4472642	Elgiz	(050) 421-81-51	2020-11-17
3335	Bakı	Hyundai	Coupe	2005	Kupe	Ağ	2	150	Benzin	148400	Avtomat	Ön	f	10500	6176	4472643	Eldeniz	(051) 201-28-32	2020-11-17
3336	Zərdab	Mercedes	C 200	1999	Sedan	Göy	2	136	Benzin	305000	Avtomat	Arxa	f	12500	7353	4472641	Ferid	(050) 987-32-26	2020-11-17
3337	Xırdalan	Toyota	Yaris	2008	Hetçbek / Liftbek	Qara	1.3	87	Benzin	135000	Avtomat	Ön	f	13500	7941	4472614	Xeyal	(055) 419-20-24	2020-11-17
3338	Bakı	Land Rover	Discovery	2007	Offroader / SUV	Gümüşü	2.7	197	Dizel	308000	Avtomat	Tam	f	21000	12353	4472600	Murad	(077) 731-61-61	2020-11-17
3339	Bakı	Opel	Combo	2008	Minivan	Ağ	1.6	94	Benzin	211000	Mexaniki	Ön	f	12200	7176	4472627	Nihad	(055) 209-05-85	2020-11-17
3340	Bakı	Mercedes	S 320	1998	Sedan	Gümüşü	3.2	224	Benzin	350000	Avtomat	Arxa	f	8500	5000	4400047	Elçin	(051) 600-00-13	2020-11-17
3342	Bakı	LADA (VAZ)	2114	2012	Hetçbek / Liftbek	Ağ	1.6	80	Benzin	180000	Mexaniki	Ön	f	8600	5059	4472636	Xeyyam	(055) 740-54-80	2020-11-17
3343	Bakı	Ford	Fusion	2014	Sedan	Ağ	1.5	181	Benzin	132000	Avtomat	Ön	f	16800	9882	4472635	Baris	(050) 852-78-47	2020-11-17
3299	Bakı	Mercedes	E 280	1999	Sedan	Gümüşü	2.8	193	Benzin	251000	Avtomat	Arxa	f	15000	8824	4421419	Djamal	(050) 797-13-25	2020-11-17
3344	Bakı	LADA (VAZ)	2102	1983	Universal	Tünd qırmızı	1.5	75	Benzin	250000	Mexaniki	Arxa	f	3000	1765	4472581	Əflan 	(050) 374-17-26	2020-11-17
3345	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Yaşıl	2	136	Benzin	189875	Avtomat	Ön	f	9500	5588	4472589	Əvəz	(050) 633-60-92	2020-11-17
3346	Sumqayıt	LADA (VAZ)	2106	1991	Sedan	Göy	1.3	65	Benzin	100000	Mexaniki	Arxa	f	4900	2882	4472593	Behruz	(050) 771-13-11	2020-11-17
3347	Bakı	Chevrolet	Cruze	2012	Sedan	Göy	1.4	141	Benzin	139000	Avtomat	Ön	f	13300	7824	4472594	Elvin	(050) 752-08-85	2020-11-17
3348	Bakı	Hyundai	Elantra	2015	Sedan	Qara	2	174	Benzin	85500	Avtomat	Ön	f	22500	13235	4435855	Eynar	(055) 753-15-33	2020-11-17
3349	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Göy	1.6	101	Benzin	215342	Mexaniki	Ön	f	8500	5000	4450435	Cavidan	(050) 491-05-85	2020-11-17
3350	Bakı	Opel	Vectra	1999	Sedan	Gümüşü	1.6	101	Benzin	325658	Avtomat	Ön	f	6400	3765	4472596	Hikmət	(055) 991-35-22	2020-11-17
3351	Bakı	Hyundai	Elantra	2014	Sedan	Boz	1.8	150	Benzin	149000	Avtomat	Ön	f	17500	10294	4472599	Rufat	(055) 674-76-76	2020-11-17
3352	Bakı	Mercedes	E 270	2003	Sedan	Gümüşü	2.7	177	Dizel	300826	Avtomat	Arxa	f	15500	9118	4472598	Namik	(070) 230-02-02	2020-11-17
3353	Bakı	Isuzu	Ecobus	2009	Avtobus	Ağ	4	240	Dizel	90000	Mexaniki	Arxa	f	22000	12941	4472288	Elnur	(055) 307-23-74	2020-11-17
3354	Lənkəran	LADA (VAZ)	2104	1990	Universal	Bej	1.5	65	Benzin	233000	Mexaniki	Arxa	f	3200	1882	4472604	habil	(050) 308-04-62	2020-11-17
3355	Bakı	Mercedes	Viano	2006	Van	Yaş Asfalt	3.5	258	Benzin	172000	Avtomat	Arxa	f	26300	15471	4472609	Ruslan	(070) 261-00-06	2020-11-17
3356	Bakı	Kia	Rio	2013	Hetçbek / Liftbek	Yaş Asfalt	1.6	123	Benzin	167000	Avtomat	Ön	f	15800	9294	4472611	Şəmistan	(051) 598-88-93	2020-11-17
3357	Bakı	Ford	Mondeo	2007	Sedan	Gümüşü	2	145	Benzin	275000	Avtomat	Ön	f	7950	4676	4472612	Namiq	(050) 250-59-36	2020-11-17
3358	Quba	Mercedes	E 240	1997	Sedan	Gümüşü	2.4	170	Benzin	342854	Avtomat	Arxa	f	11500	6765	4472617	Ramin	(050) 648-95-38	2020-11-17
3359	Bakı	LADA (VAZ)	2106	1998	Sedan	Qırmızı	1.6	75	Benzin	150000	Mexaniki	Arxa	f	5500	3235	4472618	Teyrun	(050) 991-31-99	2020-11-17
3360	Gəncə	LADA (VAZ)	2101	1973	Sedan	Sarı	1.3	65	Benzin	543686	Mexaniki	Arxa	f	4600	2706	4472620	Habil	(050) 458-33-57	2020-11-17
3361	Bakı	LADA (VAZ)	2106	1988	Sedan	Qəhvəyi	1.3	65	Benzin	43000	Mexaniki	Arxa	f	6000	3529	4472621	Ramin	(055) 216-88-09	2020-11-17
3362	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	163000	Avtomat	Ön	f	11400	6706	4462955	Zakir	(050) 264-29-61	2020-11-17
3363	Bakı	Toyota	Yaris	2007	Hetçbek / Liftbek	Gümüşü	1.3	87	Benzin	158000	Avtomat	Ön	f	9860	5800	4472639	Hacıbala	(055) 214-44-31	2020-11-17
3364	Bakı	Kia	Sportage	2012	Offroader / SUV	Ağ	2	166	Benzin	149500	Avtomat	Tam	f	22700	13353	4472640	Sahib	(055) 209-17-90	2020-11-17
3365	Bakı	Nissan	Sunny	2007	Sedan	Qara	1.6	109	Benzin	116000	Avtomat	Ön	f	13500	7941	4472546	Suleyman	(077) 514-23-69	2020-11-17
3366	Goranboy	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	167880	Mexaniki	Arxa	f	5500	3235	4472548	Elcin 	(055) 226-34-14	2020-11-17
3367	Sumqayıt	Mercedes	208 D	1990	Mikroavtobus	Ağ	2.3	131	Dizel	347000	Mexaniki	Arxa	f	8800	5176	4441704	Ramil	(070) 310-00-03	2020-11-17
3368	Mingəçevir	Mercedes	E 230	1992	Sedan	Gümüşü	2.5	150	Benzin	351994	Mexaniki	Arxa	f	7200	4235	4472547	Ağasəf	(051) 793-33-63	2020-11-17
3370	Bakı	Hyundai	ix35	2011	Offroader / SUV	Gümüşü	2	166	Dizel	73000	Avtomat	Ön	f	24500	14412	4472551	CAVID	(050) 200-04-77	2020-11-17
3371	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Qızılı	2	141	Benzin	268000	Avtomat	Tam	f	14500	8529	4472553	Qezenfer	(070) 718-87-58	2020-11-17
3372	Bakı	Daewoo	Nexia	2007	Sedan	Ağ	1.5	75	Benzin	216000	Mexaniki	Ön	f	5800	3412	4472550	Ilham	(055) 709-93-81	2020-11-17
3373	Quba	ZIL	MMZ 45023	1980	Yük maşını	Mavi	6	150	Benzin	300000	Mexaniki	Arxa	f	5000	2941	4472541	Murad	(070) 641-46-47	2020-11-17
3374	Bakı	Mercedes	E 280	1994	Sedan	Qara	2.8	193	Benzin	228475	Avtomat	Arxa	f	7800	4588	4472557	Tarlan	(051) 500-91-91	2020-11-17
3375	Bakı	Mercedes	E 200	1999	Sedan	Gümüşü	2	136	Benzin	330000	Avtomat	Arxa	f	12800	7529	4472561	Rəvan	(055) 603-34-18	2020-11-17
3376	Sumqayıt	LADA (VAZ)	2107	2004	Sedan	Göy	1.6	75	Benzin	273894	Mexaniki	Arxa	f	4500	2647	4472566	Namiq	(070) 909-39-14	2020-11-17
3377	Bakı	BMW	316	1995	Sedan	Yaşıl	1.6	102	Benzin	360000	Avtomat	Arxa	f	5700	3353	4470522	Zaur	(050) 410-05-11	2020-11-17
3378	Bakı	Mercedes	E 250	2009	Sedan	Göy	1.8	204	Benzin	196000	Avtomat	Arxa	f	25840	15200	4472570	Hikmət	(050) 750-65-70	2020-11-17
3379	Bakı	Toyota	Prius	2008	Sedan	Gümüşü	1.5	76	Benzin	210000	Avtomat	Ön	f	11300	6647	4413750	Alik	(050) 359-19-85	2020-11-17
3380	Sumqayıt	Mercedes	C 230	1996	Sedan	Yaşıl	2.3	150	Benzin	392000	Avtomat	Arxa	f	8500	5000	4472490	Sahib	(055) 738-39-29	2020-11-17
3381	Sumqayıt	LADA (VAZ)	2108	1992	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	60000	Mexaniki	Ön	f	2500	1471	4472499	Farux	(051) 379-19-19	2020-11-17
3382	Bakı	Hyundai	ix35	2010	Offroader / SUV	Yaş Asfalt	2	167	Benzin	130000	Avtomat	Tam	f	20800	12235	4378322	Ali	(050) 750-09-82	2020-11-17
3383	Bakı	Mercedes	C 240	1999	Sedan	Gümüşü	2.4	170	Benzin	189000	Avtomat	Arxa	f	15500	9118	4472501	Orxan	(055) 555-54-63	2020-11-17
3384	Ağcabədi	LADA (VAZ)	Niva	2019	Offroader / SUV	Qara	1.7	80	Benzin	20000	Mexaniki	Tam	f	18000	10588	4472507	Veli	(051) 777-54-54	2020-11-17
3385	Bakı	Mercedes	C 240	1997	Sedan	Qara	2.4	170	Benzin	267000	Avtomat	Arxa	f	10700	6294	4472509	Mehemmed	(050) 870-07-03	2020-11-17
3386	Bakı	LADA (VAZ)	21013	1986	Sedan	Bej	1.2	55	Benzin	111013	Mexaniki	Arxa	f	2800	1647	4472515	Vüqar 	(055) 802-96-26	2020-11-17
3387	Bakı	Chevrolet	Cruze	2015	Sedan	Yaş Asfalt	1.4	141	Benzin	45000	Avtomat	Ön	f	16200	9529	4448580	Turan 	(055) 965-99-88	2020-11-17
3388	Quba	Chevrolet	Lacetti	2007	Sedan	Ağ	1.6	109	Benzin	295000	Avtomat	Ön	f	9800	5765	4472516	Qalib	(055) 887-25-32	2020-11-17
3389	Bakı	Ford	Transit	1999	Yük maşını	Ağ	2.5	122	Dizel	214521	Mexaniki	Arxa	f	16800	9882	4472517	Samir	(055) 297-15-52	2020-11-17
3390	Bakı	Toyota	RAV 4	1998	Offroader / SUV	Ağ	2	156	Benzin	400000	Avtomat	Tam	f	5600	3294	4472520	Cavid	(077) 333-48-73	2020-11-17
3391	Bakı	Hyundai	Sonata	1998	Sedan	Yaşıl	2	136	Benzin	423417	Mexaniki	Ön	f	4200	2471	4472522	Kənan	(055) 224-25-44	2020-11-17
3392	Bakı	Chevrolet	Malibu	2016	Sedan	Boz	1.5	181	Benzin	89000	Avtomat	Ön	f	24500	14412	4472525	Rövşən	(050) 215-54-62	2020-11-17
3393	Bakı	Ford	Maverick	2003	Offroader / SUV	Qara	2	124	Benzin	579120	Mexaniki	Tam	f	10900	6412	4472529	Esqin	(050) 841-24-83	2020-11-17
3394	Bakı	Mercedes	Vito	2016	Furqon	Ağ	2.2	211	Benzin	170000	Avtomat	Arxa	f	30600	18000	4472532	Ramal	(050) 656-47-03	2020-11-17
3395	Sumqayıt	GAZ	2705	1998	Furqon	Yaşıl	2.4	86	Benzin	223415	Mexaniki	Arxa	f	5600	3294	4472521	Mehdi	(070) 878-58-22	2020-11-17
3396	Gəncə	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	169000	Avtomat	Ön	f	19000	11176	4441314	Əbülfəz	(099) 799-02-22	2020-11-17
3397	Bakı	Nissan	X-Trail	2007	Offroader / SUV	Qara	2.5	169	Benzin	309000	Avtomat	Tam	f	17000	10000	4472523	Ruslan	(050) 286-51-02	2020-11-17
3398	Bakı	Ford	Fusion	2014	Sedan	Yaş Asfalt	1.5	181	Benzin	98000	Avtomat	Ön	f	19600	11529	4407148	Fuad	(055) 957-14-99	2020-11-17
3399	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Ağ	2.7	170	Benzin	172000	Avtomat	Tam	f	20800	12235	4472542	Zaur	(070) 862-28-29	2020-11-17
3400	Bakı	Opel	Astra	2002	Sedan	Göy	1.6	101	Benzin	550000	Avtomat	Ön	f	9200	5412	4472543	Huseyin	(077) 519-40-78	2020-11-17
3401	Bakı	Hyundai	Accent	2011	Sedan	Qara	1.6	125	Benzin	200000	Avtomat	Ön	f	15400	9059	4472545	Veten	(077) 359-21-21	2020-11-17
3402	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	110	Benzin	161000	Mexaniki	Ön	f	10600	6235	4447857	Ibaret 	(050) 365-61-10	2020-11-17
3403	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Göy	1.8	99	Benzin	216000	Avtomat	Ön	f	15800	9294	4443705	Nurlan	(050) 854-74-61	2020-11-17
3404	Bakı	Ford	Transit	2010	Furqon	Ağ	2.2	140	Dizel	153250	Mexaniki	Ön	f	16900	9941	4436189	Elvin	(050) 253-93-63	2020-11-17
3405	Bakı	Zontes	R310	2019	Motosiklet	Bənövşəyi	0.3	35	Benzin	12450	Mexaniki	Arxa	f	6600	3882	4472579	Umid	(055) 824-53-63	2020-11-17
3406	Şabran	Mercedes	C 180	1993	Sedan	Göy	1.8	122	Benzin	390000	Mexaniki	Arxa	f	6800	4000	4472587	Anar	(070) 591-12-34	2020-11-17
3407	Bakı	BMW	530	2004	Sedan	Qara	3	231	Benzin	366000	Avtomat	Arxa	f	18800	11059	4472588	Orxan	(050) 706-60-09	2020-11-17
3408	Bakı	Hyundai	Elantra	2014	Sedan	Boz	2	166	Benzin	90000	Avtomat	Ön	f	21300	12529	4409880	Hafiz	(070) 222-06-62	2020-11-17
3409	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Ağ	3	178	Benzin	184000	Avtomat	Tam	f	24000	14118	4472458	Rinat	(055) 488-44-84	2020-11-17
3410	Sumqayıt	Hyundai	i10	2010	Hetçbek / Liftbek	Gümüşü	1.2	86	Benzin	216000	Avtomat	Ön	f	10000	5882	4472461	Intiqam	(055) 422-72-22	2020-11-17
3411	Bakı	Opel	Astra	1998	Universal	Yaşıl	1.6	101	Benzin	250000	Mexaniki	Ön	f	7600	4471	4472462	Elnur	(055) 265-62-85	2020-11-17
3412	Bakı	BMW	535	2008	Sedan	Yaş Asfalt	3	306	Benzin	237000	Avtomat	Tam	f	23500	13824	4460887	Pərviz	(077) 330-30-03	2020-11-17
3413	Bakı	Kia	Sportage	2010	Offroader / SUV	Qara	2	150	Benzin	260000	Avtomat	Tam	f	19500	11471	4472463	Elcin	(077) 379-91-06	2020-11-17
3414	Bakı	Mercedes	C 220	1996	Sedan	Ağ	2.2	146	Benzin	222222	Avtomat	Arxa	f	6500	3824	4472472	Samir	(055) 403-83-70	2020-11-17
3415	Bakı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.5	65	Benzin	85000	Mexaniki	Arxa	f	5500	3235	4472475	Elcin	(050) 483-92-93	2020-11-17
3416	Bakı	Kia	Optima	2014	Sedan	Ağ	2	274	Benzin	112000	Avtomat	Ön	f	24800	14588	4472242	Efqan	(050) 966-86-65	2020-11-17
3417	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	153	Benzin	104876	Avtomat	Ön	f	14200	8353	4472477	Tural	(055) 342-64-01	2020-11-17
3418	Bakı	Ford	Fusion	2014	Sedan	Boz	2	245	Benzin	90000	Avtomat	Ön	f	22500	13235	4472427	ilkin	(077) 380-00-98	2020-11-17
3419	Bərdə	Mercedes	190	1991	Sedan	Gümüşü	2	122	Benzin	241621	Avtomat	Arxa	f	6500	3824	4472482	İlkin	(050) 337-34-97	2020-11-17
3420	Bakı	Mercedes	ML 350	2012	Offroader / SUV	Ağ	3.5	272	Benzin	161000	Avtomat	Tam	f	47600	28000	4472484	Ələddin	(051) 574-90-90	2020-11-17
3421	Bakı	LADA (VAZ)	2115	2000	Sedan	Qara	1.5	75	Benzin	427000	Mexaniki	Ön	f	5300	3118	4472406	Cəlal	(050) 513-68-18	2020-11-17
3422	Bakı	Lexus	IS 200	2018	Sedan	Qara	2	245	Benzin	22000	Avtomat	Arxa	f	47430	27900	4469508	zeynal	(055) 429-90-90	2020-11-17
3423	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Yaşıl	1.7	80	Benzin	96000	Mexaniki	Tam	f	13500	7941	4472400	Elnur	(070) 677-08-78	2020-11-17
3424	Bakı	Hyundai	Santa Fe	2004	Offroader / SUV	Ağ	2.4	166	Benzin	222220	Avtomat	Ön	f	10800	6353	4472413	orxan	(050) 292-29-21	2020-11-17
3425	Xaçmaz	LADA (VAZ)	21099	1998	Sedan	Yaşıl	1.6	75	Benzin	500000	Mexaniki	Ön	f	3600	2118	4472414	Ali	(055) 515-83-41	2020-11-17
3426	Bakı	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	15000	Mexaniki	Arxa	f	7000	4118	4472417	Ramazan	(070) 739-52-61	2020-11-17
3427	Xırdalan	Iran Khodro	Azsamand	2007	Sedan	Ağ	1.8	110	Benzin	355000	Mexaniki	Ön	f	4900	2882	4472416	Enver	(055) 235-25-21	2020-11-17
3428	Gəncə	Opel	Astra	2011	Universal	Yaş Asfalt	1.3	90	Dizel	197000	Mexaniki	Ön	f	14500	8529	4464010	Səməd	(070) 358-20-20	2020-11-17
3429	Bakı	Lifan	520	2010	Hetçbek / Liftbek	Ağ	1.6	115	Benzin	215000	Mexaniki	Ön	f	6000	3529	4472418	Xalid	(070) 729-00-05	2020-11-17
3430	Bakı	DAF	105XF	2007	Dartqı	Ağ	12	460	Dizel	1300000	Avtomat	Arxa	f	48000	28235	4472422	Ruslan	(070) 205-80-97	2020-11-17
3431	Sumqayıt	Kia	Sorento	2002	Offroader / SUV	Ağ	2.5	140	Dizel	281000	Avtomat	Tam	f	14200	8353	4472429	ARIF	(050) 367-89-40	2020-11-17
3432	Gəncə	LADA (VAZ)	2107	2003	Sedan	Göy	1.6	75	Benzin	128000	Mexaniki	Arxa	f	6150	3618	4472423	Rehman	(055) 235-98-43	2020-11-17
3433	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Yaş Asfalt	1.7	80	Benzin	18000	Mexaniki	Ön	f	14900	8765	4449457	Cavid	(070) 878-73-64	2020-11-17
3434	Tovuz	LADA (VAZ)	2115	2012	Sedan	Qara	1.5	75	Benzin	111400	Mexaniki	Ön	f	11500	6765	4472439	Ehtiram	(050) 732-27-82	2020-11-17
3435	Bakı	Mercedes	C 230	1997	Sedan	Qızılı	2.3	150	Benzin	163000	Avtomat	Arxa	f	11000	6471	4444439	Vuqar	(055) 229-07-77	2020-11-17
3436	Şirvan	Opel	Vectra	1994	Sedan	Yaşıl	2	136	Benzin	221000	Mexaniki	Ön	f	3600	2118	4472441	Elvin	(070) 251-51-75	2020-11-17
3437	Xırdalan	Kia	Optima	2015	Sedan	Gümüşü	2	165	Qaz	41000	Avtomat	Ön	f	25200	14824	4472443	Sabutay	(050) 214-55-74	2020-11-17
3438	Gəncə	Opel	Astra	2011	Universal	Boz	1.4	140	Benzin	158000	Mexaniki	Ön	f	14500	8529	4463076	Səməd	(070) 358-20-20	2020-11-17
3439	Bakı	BMW	530	1983	Sedan	Qara	3	235	Benzin	183000	Mexaniki	Arxa	f	16800	9882	4472450	Vusal	(055) 440-00-14	2020-11-17
3440	Bakı	LADA (VAZ)	21099	2002	Hetçbek / Liftbek	Gümüşü	1.5	75	Benzin	189652	Mexaniki	Ön	f	7550	4441	4472452	Elşad	(055) 848-80-87	2020-11-17
3441	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.4	90	Benzin	244000	Mexaniki	Arxa	f	10600	6235	4472453	Vusal	(077) 447-37-71	2020-11-17
3442	Xırdalan	DongFeng	Fengshen S30	2015	Sedan	Yaş Asfalt	1.6	110	Benzin	100000	Avtomat	Ön	f	12000	7059	4472487	Anar	(055) 368-68-69	2020-11-17
3443	Quba	GAZ	24-10	1989	Sedan	Ağ	2.4	100	Benzin	200000	Mexaniki	Arxa	f	1700	1000	4472480	Cavad	(055) 648-58-88	2020-11-17
3444	Bakı	Opel	Astra	1997	Sedan	Yaşıl	1.6	101	Benzin	444444	Mexaniki	Ön	f	5100	3000	4472489	Ibrahim	(050) 528-17-78	2020-11-17
3445	Mingəçevir	Opel	Vectra	1997	Sedan	Qızılı	1.8	86	Benzin	231898	Mexaniki	Ön	f	5400	3176	4472492	Tural	(050) 663-86-56	2020-11-17
3446	Bakı	Mercedes	Vito 116	2015	Minivan	Qara	2.2	167	Dizel	200158	Avtomat	Ön	f	53550	31500	4472493	Ziya	(055) 475-01-19	2020-11-17
3447	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	178000	Mexaniki	Ön	f	10800	6353	4458869	Zamin	(055) 633-59-54	2020-11-17
3448	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Mavi	2	141	Benzin	186390	Avtomat	Tam	f	16900	9941	4472377	Rizvan	(055) 612-84-88	2020-11-17
3449	Bakı	Mercedes	E 220	2000	Sedan	Qara	2.2	143	Dizel	468000	Avtomat	Arxa	f	15999	9411	4472379	Nesrulla	(070) 220-33-88	2020-11-17
3450	Bakı	Hyundai	ix35	2011	Offroader / SUV	Ağ	2	163	Benzin	148000	Avtomat	Tam	f	25200	14824	4472383	Ayxan	(055) 758-88-33	2020-11-17
3451	Bakı	Mercedes	190	1993	Sedan	Qəhvəyi	1.8	109	Benzin	335000	Mexaniki	Arxa	f	4450	2618	4439713	Ramin	(050) 414-51-73	2020-11-17
3452	Bakı	Kia	Cadenza	2013	Sedan	Yaş Asfalt	3.5	290	Benzin	192600	Avtomat	Ön	f	29000	17059	4472371	Xeyal	(051) 570-08-00	2020-11-17
3453	Bakı	BMW	528	2016	Sedan	Gümüşü	2	245	Benzin	91500	Avtomat	Arxa	f	47260	27800	4413610	Rashad	(055) 288-33-88	2020-11-17
3454	Bakı	Mercedes	Sprinter 311	2008	Mikroavtobus	Ağ	2.2	150	Dizel	478450	Mexaniki	Arxa	f	31500	18529	4472386	Shakir	(055) 677-21-33	2020-11-17
3455	Bakı	Yamaha	SZ-RR	2018	Motosiklet	Qara	0.2	15	Benzin	31000	Mexaniki	Arxa	f	2750	1618	4472389	Vuqar	(050) 718-87-71	2020-11-17
3456	Bakı	BMW	523	1998	Sedan	Boz	2.5	170	Benzin	165000	Avtomat	Arxa	f	8400	4941	4472391	Elsevər m	(050) 310-21-61	2020-11-17
3457	Bakı	Hyundai	Tucson	2009	Offroader / SUV	Qara	2	141	Benzin	226000	Avtomat	Tam	f	16000	9412	4472392	Vusal	(070) 347-79-79	2020-11-17
3458	Sumqayıt	Mercedes	C 240	1997	Sedan	Göy	2.4	170	Benzin	245463	Avtomat	Arxa	f	9500	5588	4472395	Nusuret	(077) 510-75-43	2020-11-17
3459	Bakı	Nissan	Tiida	2008	Hetçbek / Liftbek	Qızılı	1.6	109	Benzin	180000	Avtomat	Ön	f	11500	6765	4472396	Elxan	(050) 640-18-68	2020-11-17
3460	Qax	Opel	Vectra	1997	Sedan	Qızılı	1.8	116	Benzin	450000	Mexaniki	Ön	f	5300	3118	4472385	Həmid	(070) 765-88-44	2020-11-17
3461	Bakı	Kia	Rio	2009	Hetçbek / Liftbek	Qara	1.4	97	Benzin	180767	Mexaniki	Ön	f	10500	6176	4417135	QURBAN	(051) 631-22-22	2020-11-17
3462	Qax	Isuzu	NKR 55 E	2008	Yük maşını	Ağ	2.8	150	Dizel	328000	Mexaniki	Arxa	f	17700	10412	4400617	Seymur	(051) 250-13-31	2020-11-17
3463	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	159600	Mexaniki	Ön	f	11000	6471	4472295	Qədir	(055) 341-43-45	2020-11-17
3464	Bakı	Daewoo	Nexia	2008	Sedan	Gümüşü	1.5	75	Benzin	280000	Mexaniki	Ön	f	7200	4235	4472347	Nesreddin	(050) 703-40-70	2020-11-17
3465	Ağdaş	LADA (VAZ)	Priora	2008	Sedan	Qara	1.6	98	Benzin	231210	Mexaniki	Ön	f	8500	5000	4472349	İsmayıl	(050) 996-20-20	2020-11-17
3466	Bakı	Kia	Optima	2011	Sedan	Qara	2.4	274	Benzin	185000	Avtomat	Ön	f	22000	12941	4472351	Rafiq	(055) 204-61-77	2020-11-17
3467	Bakı	Hyundai	Tucson	2016	Offroader / SUV	Göy	1.7	167	Dizel	42000	Avtomat	Ön	f	31800	18706	4472355	Faik	(055) 633-71-86	2020-11-17
3468	Neftçala	LADA (VAZ)	2107	2008	Sedan	Qara	1.6	75	Benzin	222545	Mexaniki	Arxa	f	6300	3706	4472361	Ataw	(055) 392-86-25	2020-11-17
3469	Bakı	Opel	Astra	1995	Universal	Qızılı	1.6	75	Benzin	328611	Avtomat	Ön	f	4000	2353	4472363	Elnur	(070) 215-31-37	2020-11-17
3470	Sumqayıt	Mercedes	E 240	2001	Sedan	Gümüşü	2.6	177	Benzin	520000	Avtomat	Arxa	f	13000	7647	4472365	Orxan	(070) 512-82-07	2020-11-17
3471	Bakı	GAZ	53	1990	Yük maşını	Göy	4.3	115	Benzin	170000	Mexaniki	Arxa	f	5800	3412	4458242	Nizami	(070) 252-65-55	2020-11-17
3472	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	157000	Avtomat	Ön	f	15500	9118	4350762	Emin	(055) 713-10-44	2020-11-17
3473	Bakı	Mercedes	C 180	1995	Sedan	Tünd qırmızı	1.8	122	Benzin	545500	Avtomat	Arxa	f	9800	5765	4472369	Aydin	(077) 307-10-17	2020-11-17
3474	Bakı	Mercedes	Sprinter 313	2009	Mikroavtobus	Ağ	2.2	187	Dizel	215385	Mexaniki	Arxa	f	25500	15000	4472375	Sadiq	(055) 549-67-86	2020-11-17
3475	Bakı	Kia	Rio	2010	Sedan	Gümüşü	1.5	110	Dizel	80423	Mexaniki	Ön	f	14000	8235	4472374	Mahir	(055) 677-65-76	2020-11-17
3476	Bakı	Volkswagen	Jetta	2006	Sedan	Qara	2.5	150	Benzin	170000	Avtomat	Tam	f	10700	6294	4472368	Vaqif	(055) 590-90-85	2020-11-17
3477	Bakı	Chevrolet	Malibu	2017	Sedan	Gümüşü	1.5	180	Benzin	67000	Avtomat	Ön	f	21800	12824	4358962	Əli	(050) 208-48-68	2020-11-17
3478	Balakən	Nissan	Teana	2007	Sedan	Qara	2.3	175	Benzin	200000	Avtomat	Ön	f	15000	8824	4472402	Elnur	(055) 232-92-71	2020-11-17
3479	Bakı	Nissan	Tiida	2007	Hetçbek / Liftbek	Göy	1.6	109	Benzin	225000	Avtomat	Ön	f	11800	6941	4472405	Qoçu	(051) 475-75-71	2020-11-17
3481	Bakı	Chevrolet	Cruze	2014	Sedan	Tünd qırmızı	1.4	153	Benzin	135550	Avtomat	Ön	f	16200	9529	4470354	AQIL 	(055) 513-55-13	2020-11-17
3482	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	90300	Mexaniki	Tam	f	10800	6353	4461107	Anar	(070) 327-30-00	2020-11-17
3484	Bakı	Daewoo	Nexia	2006	Sedan	Sarı	1.5	75	Benzin	452000	Mexaniki	Ön	f	5600	3294	4472289	Sahmar	(070) 741-31-10	2020-11-17
3485	Bakı	Mercedes	E 240	1997	Sedan	Qara	2.4	170	Benzin	337000	Avtomat	Arxa	f	12500	7353	4472300	Rauf	(055) 252-92-55	2020-11-17
3486	Bakı	Opel	Zafira	2007	Minivan	Qara	1.9	150	Dizel	182635	Mexaniki	Arxa	f	17000	10000	4471632	Ferid	(055) 570-07-70	2020-11-17
3487	Masallı	GAZ	53	1978	Yük maşını	Yaş Asfalt	4.5	150	Benzin	200000	Mexaniki	Arxa	f	4200	2471	4472305	Celil	(050) 624-99-23	2020-11-17
3488	Ağcabədi	UAZ	31512	1990	Offroader / SUV	Yaşıl	2.4	76	Benzin	150000	Mexaniki	Tam	f	3300	1941	4472292	Etibar	(055) 602-77-66	2020-11-17
3489	Bakı	Opel	Astra	1999	Universal	Göy	1.6	101	Benzin	246000	Mexaniki	Ön	f	7400	4353	4472309	Nadir	(050) 321-22-91	2020-11-17
3490	Bakı	BMW	728	1997	Sedan	Qara	2.8	193	Benzin	372000	Avtomat	Arxa	f	10700	6294	4472312	Elvin	(055) 262-57-18	2020-11-17
3491	Şəki	LADA (VAZ)	Niva	2008	Offroader / SUV	Qara	1.7	80	Benzin	227000	Mexaniki	Tam	f	7900	4647	4472314	Muradd	(055) 785-55-79	2020-11-17
3492	Bakı	Mercedes	E 270	2002	Sedan	Gümüşü	2.7	170	Dizel	268000	Avtomat	Arxa	f	18500	10882	4472311	Elbrus	(055) 210-88-05	2020-11-17
3493	Sabirabad	Daewoo	Nexia	1997	Sedan	Ağ	1.5	75	Benzin	350000	Mexaniki	Ön	f	5000	2941	4472322	Ismayil	(050) 998-19-09	2020-11-17
3494	Bakı	BMW	X5	2012	Offroader / SUV	Boz	3	306	Dizel	150000	Avtomat	Tam	f	47600	28000	4472329	Elvin	(055) 211-04-70	2020-11-17
3480	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	2.4	176	Benzin	124000	Avtomat	Tam	f	27000	15882	4306467	Toğrul	(050) 675-50-55	2020-11-17
3483	Şirvan	Hyundai	Sonata	2012	Sedan	Gümüşü	2.4	178	Benzin	256000	Avtomat	Ön	f	21400	12588	4477740	Çingiz	(055) 568-91-66	2020-11-17
3496	Bakı	Nissan	Serena	2014	Sedan	Gümüşü	1.6	132	Benzin	122000	Avtomat	Ön	f	20500	12059	4472331	Elnur	(051) 540-05-52	2020-11-17
3497	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2	165	Benzin	64000	Avtomat	Ön	f	19800	11647	4454957	Nurlan	(077) 730-09-08	2020-11-17
3498	Bakı	Chevrolet	Malibu	2016	Sedan	Göy	1.5	181	Benzin	65000	Avtomat	Ön	f	19600	11529	4472266	Vahid	(055) 762-81-89	2020-11-17
3499	Bakı	Chevrolet	Cruze	2016	Sedan	Gümüşü	1.4	141	Benzin	16300	Avtomat	Ön	f	17200	10118	4472270	Samir	(050) 701-84-68	2020-11-17
3501	Bakı	Opel	Zafira	2003	Universal	Göy	2	101	Dizel	147495	Avtomat	Ön	f	10500	6176	4472259	Zaur	(070) 542-83-00	2020-11-17
3502	Yevlax	LADA (VAZ)	2107	2005	Sedan	Qırmızı	1.6	75	Benzin	147558	Mexaniki	Arxa	f	5500	3235	4472271	Novruz	(055) 571-54-77	2020-11-17
3503	Gəncə	Volkswagen	Crafter	2007	Yük maşını	Ağ	2.5	136	Dizel	260000	Mexaniki	Arxa	f	25000	14706	4472275	Mahir	(055) 689-44-44	2020-11-17
3504	Bakı	Mercedes	C 280	1997	Sedan	Göy	2.8	193	Benzin	224000	Avtomat	Arxa	f	13200	7765	4472278	Adil	(055) 425-12-75	2020-11-17
3505	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2.5	185	Benzin	171000	Avtomat	Tam	f	19000	11176	4472281	Elmir	(055) 514-22-52	2020-11-17
3506	Bakı	Nissan	X-Trail	2004	Universal	Ağ	2	140	Benzin	298000	Avtomat	Tam	f	10900	6412	4406559	Elnur	(050) 855-42-11	2020-11-17
3507	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.4	90	Benzin	170000	Mexaniki	Ön	f	10600	6235	4472284	Logman	(077) 565-59-91	2020-11-17
3508	Bakı	Opel	Astra	1999	Universal	Gümüşü	2	136	Benzin	356000	Mexaniki	Ön	f	7500	4412	4472279	Elman 	(077) 337-37-84	2020-11-17
3509	Bakı	Toyota	Fortuner	2013	Offroader / SUV	Ağ	2.7	167	Benzin	135300	Avtomat	Tam	f	34300	20176	4472287	Musdafa	(077) 744-22-77	2020-11-17
3510	Bakı	Nissan	Teana	2006	Sedan	Ağ	2.3	173	Benzin	237000	Avtomat	Ön	f	10000	5882	4472285	Saddam	(055) 576-45-55	2020-11-17
3511	Qazax	LADA (VAZ)	2106	1987	Sedan	Mavi	1.6	75	Benzin	110000	Mexaniki	Arxa	f	3300	1941	4472293	Mahireliyev	(077) 516-91-08	2020-11-17
3512	Bakı	Porsche	Cayenne GTS	2014	Offroader / SUV	Ağ	4.8	420	Benzin	136000	Avtomat	Tam	f	72250	42500	4378209	Ulvi	(050) 295-45-12	2020-11-17
3513	Bakı	Kia	Optima	2014	Sedan	Ağ	2	165	Benzin	38000	Avtomat	Ön	f	36500	21471	4472297	Cavid	(099) 311-14-56	2020-11-17
3514	Bakı	Hyundai	Accent	2011	Sedan	Yaş Asfalt	1.6	130	Dizel	216800	Avtomat	Ön	f	14500	8529	4472296	Qəhrəman	(055) 897-37-56	2020-11-17
3515	Xırdalan	LADA (VAZ)	2115	2012	Sedan	Yaş Asfalt	1.6	80	Benzin	265825	Mexaniki	Ön	f	8800	5176	4472332	Efser	(070) 405-22-02	2020-11-17
3516	Bakı	Mercedes	C 240	1997	Sedan	Gümüşü	2.4	170	Benzin	325600	Avtomat	Arxa	f	13300	7824	4472328	Rahman	(050) 365-46-45	2020-11-17
3517	Masallı	LADA (VAZ)	2106	2003	Sedan	Tünd qırmızı	1.6	75	Benzin	183501	Mexaniki	Arxa	f	4900	2882	4472334	seccad	(050) 771-44-33	2020-11-17
3518	Bakı	Mercedes	C 200	2000	Sedan	Bənövşəyi	2	163	Benzin	420000	Avtomat	Arxa	f	10700	6294	4461244	Kazim	(055) 487-93-90	2020-11-17
3519	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	49000	Avtomat	Arxa	f	42160	24800	4442351	Aqşin	(050) 351-72-18	2020-11-17
3520	Bakı	Hyundai	i30	2008	Universal	Boz	1.6	113	Dizel	243668	Mexaniki	Ön	f	11650	6853	4472236	Vaqif	(070) 839-17-83	2020-11-17
3521	Gəncə	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	65354	Mexaniki	Arxa	f	8500	5000	4472239	Intiqam	(055) 564-15-67	2020-11-17
3522	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	1.8	130	Benzin	378000	Avtomat	Tam	f	7800	4588	4454571	Emin	(050) 709-00-89	2020-11-17
3523	Sumqayıt	Renault	Megane	2012	Universal	Ağ	1.6	110	Dizel	240000	Avtomat	Ön	f	14700	8647	4451926	Ruslan 	(070) 305-13-77	2020-11-17
3524	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	151000	Avtomat	Tam	f	46580	27400	4472231	Faiq	(055) 320-56-78	2020-11-17
3525	Bakı	Renault	Megane	2007	Sedan	Qara	1.6	125	Benzin	128000	Avtomat	Ön	f	7000	4118	4472234	Fariz	(050) 532-71-04	2020-11-17
3526	Sumqayıt	Opel	Astra	1993	Universal	Göy	1.6	75	Benzin	350000	Mexaniki	Ön	f	4500	2647	4472237	Elnur	(050) 336-76-49	2020-11-17
3527	Bakı	Opel	Astra	2000	Sedan	Tünd qırmızı	1.6	101	Benzin	251000	Avtomat	Ön	f	9400	5529	4466301	Sahib	(077) 392-00-01	2020-11-17
3528	Bakı	BMW	X5	2004	Offroader / SUV	Qara	4.8	360	Benzin	83000	Avtomat	Tam	f	22100	13000	4472244	Seymur	(050) 325-65-15	2020-11-17
3529	Bakı	Dacia	Logan	2008	Universal	Göy	1.5	98	Dizel	225000	Mexaniki	Ön	f	11800	6941	4472249	pasa	(050) 201-04-63	2020-11-17
3530	Hacıqabul	KamAz	65115	2008	Yük maşını	Qara	11	191	Dizel	250000	Mexaniki	Arxa	f	30000	17647	4472246	Vusal	(055) 645-45-35	2020-11-17
3531	Gəncə	Mercedes	E 230	1996	Sedan	Göy	2.3	150	Benzin	445496	Avtomat	Arxa	f	9200	5412	4472183	Razi	(055) 814-90-25	2020-11-17
3532	Bakı	Kia	Carens	2016	Universal	Göy	2	170	Benzin	90000	Avtomat	Ön	f	30600	18000	4472027	Xalid	(055) 438-00-15	2020-11-17
3533	Bakı	BMW	520	1999	Sedan	Gümüşü	2	170	Benzin	111111	Avtomat	Arxa	f	9900	5824	4472184	Perviz	(051) 654-54-23	2020-11-17
3534	Gəncə	Ford	Mondeo	2007	Sedan	Göy	2.3	200	Benzin	340000	Avtomat	Ön	f	13800	8118	4472191	Hədis 	(050) 432-43-44	2020-11-17
3535	Sabirabad	Mercedes	E 240	1999	Sedan	Göy	2.4	177	Benzin	302590	Avtomat	Arxa	f	13900	8176	4472192	Qadir	(050) 746-72-72	2020-11-17
3536	Bakı	Opel	Astra	2005	Universal	Göy	1.4	90	Benzin	190000	Mexaniki	Ön	f	10500	6176	4472194	Mahir	(070) 599-97-90	2020-11-17
3537	Bakı	LADA (VAZ)	Priora	2014	Sedan	Qəhvəyi	1.6	106	Benzin	68182	Robotlaşdırılmış	Ön	f	13500	7941	4472198	Vüsal	(050) 505-56-56	2020-11-17
3538	Bakı	Land Rover	Range Rover	2006	Offroader / SUV	Qara	4.4	286	Benzin	291000	Avtomat	Tam	f	25160	14800	4472196	Rasad	(055) 269-17-17	2020-11-17
3539	Bakı	Mercedes	E 220	2001	Sedan	Gümüşü	2.2	143	Dizel	453000	Avtomat	Arxa	f	15500	9118	4472199	Ülvi	(055) 867-02-02	2020-11-17
3540	Bakı	Mercedes	C 200	2011	Sedan	Yaş Asfalt	1.8	184	Benzin	167000	Avtomat	Arxa	f	29000	17059	4472189	Elsen 	(050) 680-97-98	2020-11-17
3541	Bakı	Changan	Star	2014	Pikap	Ağ	1.3	82	Benzin	38000	Mexaniki	Arxa	f	8500	5000	4163543	Sahib	(055) 488-07-62	2020-11-17
3542	Bakı	Mercedes	C 220	1993	Sedan	Qara	2.2	143	Benzin	380088	Avtomat	Arxa	f	8000	4706	4472210	Vasif	(070) 548-25-56	2020-11-17
3543	Bakı	Hyundai	ix35	2010	Offroader / SUV	Yaş Asfalt	2	166	Benzin	135000	Avtomat	Tam	f	21500	12647	4472215	Zaman	(070) 220-34-97	2020-11-17
3544	Bakı	Chevrolet	Malibu	2016	Sedan	Qara	1.5	181	Benzin	98000	Avtomat	Ön	f	21500	12647	4472213	Tale	(050) 210-10-79	2020-11-17
3545	Bakı	Nissan	Sunny	2019	Sedan	Ağ	1.5	101	Benzin	3241	Mexaniki	Ön	f	19600	11529	4472225	tural	(050) 666-33-77	2020-11-17
3546	Bakı	Renault	Megane	2006	Universal	Yaş Asfalt	1.5	106	Dizel	300300	Mexaniki	Ön	f	10600	6235	4472226	Rauf	(055) 210-28-95	2020-11-17
3547	Bakı	Mercedes	E 350	2008	Sedan	Ağ	3.5	272	Benzin	222402	Avtomat	Arxa	f	27500	16176	4472220	Ruslan	(050) 205-80-97	2020-11-17
3548	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2	150	Dizel	75441	Avtomat	Ön	f	25850	15206	4472209	Söhrab	(055) 852-66-66	2020-11-17
3549	Bakı	LADA (VAZ)	2106	2004	Sedan	Yaşıl	1.6	75	Benzin	75628	Mexaniki	Arxa	f	6600	3882	4472230	Anar	(055) 904-29-71	2020-11-17
3550	Bakı	Hyundai	Elantra	2010	Sedan	Gümüşü	1.6	132	Benzin	37000	Avtomat	Ön	f	16800	9882	4472186	Elçin	(055) 839-99-50	2020-11-17
3551	Zərdab	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	141705	Mexaniki	Arxa	f	7800	4588	4472165	Xeyyam 	(050) 967-38-38	2020-11-17
3552	İmişli	Mercedes	C 180	1996	Sedan	Gümüşü	1.8	122	Benzin	399010	Avtomat	Arxa	f	10300	6059	4472166	Samir	(077) 219-81-11	2020-11-17
3553	Bakı	BMW	535	2011	Sedan	Qara	3	306	Benzin	185000	Avtomat	Arxa	f	35700	21000	4472168	Ruslan	(050) 860-00-86	2020-11-17
3554	Sumqayıt	Mitsubishi	Lancer	2008	Sedan	Ağ	2	150	Benzin	226500	Variator	Ön	f	14500	8529	4400544	Əmrah	(070) 494-14-94	2020-11-17
3555	Bakı	Ford	Fusion	2014	Sedan	Qara	2	245	Benzin	128000	Avtomat	Ön	f	23700	13941	4426420	Huseyn	(051) 904-00-09	2020-11-17
3556	Bakı	Mercedes	E 220	1999	Sedan	Gümüşü	2.2	170	Dizel	310000	Avtomat	Arxa	f	12300	7235	4413611	Tural	(050) 391-49-50	2020-11-17
3557	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	162000	Mexaniki	Ön	f	11300	6647	4408897	Fazil	(055) 800-20-40	2020-11-17
3558	Bakı	Porsche	Cayenne GTS	2009	Offroader / SUV	Qara	4.8	405	Benzin	54000	Avtomat	Tam	f	41650	24500	4255710	Tural	(055) 504-58-88	2020-11-17
3559	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	127500	Mexaniki	Ön	f	11100	6529	4451212	Coşqun	(050) 775-21-52	2020-11-17
3560	Bakı	Ford	Tourneo Connect	2007	Minivan	Ağ	1.5	105	Dizel	398000	Mexaniki	Ön	f	12500	7353	4472181	Evez	(055) 255-66-09	2020-11-17
3561	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	218000	Avtomat	Ön	f	12900	7588	4472182	Roma	(055) 609-20-01	2020-11-17
3563	Bakı	Nissan	Sunny	2018	Sedan	Ağ	1.5	99	Benzin	59000	Mexaniki	Ön	f	17800	10471	4369576	Elnur	(050) 603-03-71	2020-11-17
3564	Bakı	Land Rover	Discovery	2013	Offroader / SUV	Boz	3	249	Dizel	82200	Avtomat	Tam	f	58650	34500	4462928	Nicat	(055) 445-55-85	2020-11-17
3565	Bakı	Hyundai	Sonata	2008	Sedan	Qara	2.4	178	Benzin	223000	Avtomat	Ön	f	17300	10176	4450935	Mirze	(055) 877-95-83	2020-11-17
3566	Bakı	Chevrolet	Cruze	2012	Sedan	Göy	1.4	141	Benzin	180000	Avtomat	Ön	f	13200	7765	4472138	İsmət	(055) 616-08-10	2020-11-17
3567	Bakı	Maserati	Quattroporte	2011	Sedan	Boz	4.7	440	Benzin	91000	Avtomat	Arxa	f	44200	26000	4472121	Nurlan	(055) 781-29-28	2020-11-17
3568	Bakı	BMW	728	1997	Sedan	Qara	2.8	194	Benzin	280000	Avtomat	Arxa	f	9800	5765	4472127	Elnur	(055) 211-10-51	2020-11-17
3569	Bakı	Mercedes	E 300	1989	Sedan	Ağ	3	177	Dizel	300400	Mexaniki	Arxa	f	5000	2941	4472139	Emin	(077) 559-86-17	2020-11-17
3570	Bakı	Ford	Tourneo Connect	2008	Furqon	Ağ	1.8	125	Dizel	140000	Mexaniki	Ön	f	13500	7941	4472141	Qərib	(070) 494-42-04	2020-11-17
3571	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4	243	Benzin	76000	Avtomat	Arxa	f	60010	35300	4457770	Camal	(051) 477-33-37	2020-11-17
3572	Bakı	Kia	Cerato	2014	Sedan	Boz	1.8	150	Benzin	94000	Avtomat	Ön	f	17800	10471	4400126	Valeh	(055) 200-92-98	2020-11-17
3573	Bakı	Ford	Fusion	2014	Sedan	Yaş Asfalt	2	250	Benzin	97000	Avtomat	Ön	f	35700	21000	4472147	Miri	(055) 866-65-63	2020-11-17
3574	Bakı	Nissan	Murano	2007	Offroader / SUV	Qara	3.5	248	Benzin	360000	Avtomat	Tam	f	12000	7059	4472144	Telman	(077) 402-01-81	2020-11-17
3575	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	170000	Mexaniki	Ön	f	10900	6412	4472146	Cavidan	(050) 772-86-25	2020-11-17
3576	Bakı	Hyundai	Excel	1994	Sedan	Ağ	1.5	85	Benzin	300000	Mexaniki	Ön	f	3750	2206	4472149	Mehemmed	(070) 655-07-02	2020-11-17
3577	Qəbələ	Mercedes	C 240	1998	Sedan	Gümüşü	2.4	170	Benzin	490000	Avtomat	Arxa	f	11900	7000	4219884	Sebri	(055) 245-55-60	2020-11-17
3578	Bakı	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	181	Benzin	64000	Avtomat	Ön	f	20800	12235	4411662	Elton 	(055) 362-52-42	2020-11-17
3579	Bakı	Dacia	Logan	2007	Minivan	Yaş Asfalt	1.5	105	Dizel	277000	Mexaniki	Ön	f	10500	6176	4472099	Emil	(055) 284-64-60	2020-11-17
3580	Bakı	Lexus	LS 460	2012	Sedan	Qara	4.6	380	Benzin	150000	Avtomat	Arxa	f	59500	35000	4472101	İsmayıl	(070) 202-90-96	2020-11-17
3581	Gəncə	Hyundai	Grandeur	2013	Sedan	Qara	3	250	Benzin	110000	Avtomat	Ön	f	35500	20882	4472102	Mustafa	(050) 267-44-44	2020-11-17
3582	Sumqayıt	Mitsubishi	Pajero	1995	Offroader / SUV	Qızılı	2.8	136	Dizel	399000	Avtomat	Tam	f	8500	5000	4472104	Anar	(055) 222-10-55	2020-11-17
3583	Bakı	Opel	Omega	1996	Sedan	Gümüşü	2	135	Benzin	325687	Avtomat	Arxa	f	4500	2647	4472109	Cavid	(055) 241-02-30	2020-11-17
3584	Bakı	Opel	Vectra	2000	Universal	Boz	1.6	101	Benzin	348819	Mexaniki	Ön	f	6500	3824	4472108	Eldar	(050) 321-29-86	2020-11-17
3585	Bakı	Opel	Vectra	1997	Hetçbek / Liftbek	Qara	2	136	Benzin	334000	Avtomat	Ön	f	6400	3765	4472112	Vuqar	(055) 774-04-74	2020-11-17
3586	Bakı	Hyundai	Grandeur	2017	Sedan	Yaş Asfalt	3	250	Benzin	53000	Avtomat	Ön	f	52700	31000	4472114	Babek	(055) 344-44-11	2020-11-17
3587	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	141	Benzin	109000	Avtomat	Ön	f	17000	10000	4472117	Ruslan	(050) 688-68-47	2020-11-17
3588	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qəhvəyi	1.5	76	Hibrid	140000	Avtomat	Ön	f	12700	7471	4446576	Anar	(050) 766-27-48	2020-11-17
3589	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Göy	1.8	125	Benzin	72000	Avtomat	Ön	f	12000	7059	4472118	Ferhad	(070) 981-33-81	2020-11-17
3590	Bakı	BMW	530	2000	Sedan	Göy	3	231	Dizel	408059	Mexaniki	Arxa	f	12500	7353	4472107	Ökkea	(050) 697-76-00	2020-11-17
3591	Bakı	Opel	Astra	2004	Universal	Göy	1.7	113	Dizel	398234	Mexaniki	Ön	f	8900	5235	4472130	Emil	(070) 646-62-62	2020-11-17
3592	Bakı	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	222222	Mexaniki	Ön	f	6900	4059	4451279	Eli	(055) 893-91-96	2020-11-17
3593	Bakı	Toyota	Land Cruiser	2018	Offroader / SUV	Ağ	4	282	Benzin	37000	Avtomat	Tam	f	117130	68900	4312018	Elmir	(050) 766-23-17	2020-11-17
3594	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	141	Benzin	151000	Avtomat	Ön	f	21000	12353	4472132	Ferid	(050) 260-20-23	2020-11-17
3595	Şəmkir	Hyundai	Sonata	2007	Sedan	Qara	2	165	Benzin	150000	Avtomat	Arxa	f	14500	8529	4472133	Həzret	(055) 475-94-97	2020-11-17
3596	Bakı	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.2	165	Dizel	220520	Avtomat	Tam	f	20600	12118	4472157	Nizami	(055) 877-88-66	2020-11-17
3597	Qəbələ	Kia	Sorento	2011	Offroader / SUV	Yaş Asfalt	2	184	Dizel	97000	Avtomat	Ön	f	27000	15882	4451014	Vusal	(050) 449-26-84	2020-11-17
3598	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	174	Benzin	169300	Avtomat	Ön	f	19720	11600	4470213	Rauf	(070) 320-76-56	2020-11-17
3599	Bakı	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	88370	Mexaniki	Arxa	f	7300	4294	4472161	Ilkin	(055) 214-90-67	2020-11-17
3600	Bakı	Opel	Astra	1995	Universal	Göy	1.6	101	Benzin	270000	Mexaniki	Ön	f	5700	3353	4472162	Hakim	(077) 365-03-03	2020-11-17
3601	Bakı	Mercedes	E 240	2001	Sedan	Göy	2.6	177	Benzin	270000	Avtomat	Arxa	f	13700	8059	4458839	Elcin	(077) 304-86-65	2020-11-17
3602	Masallı	BMW	525	1996	Sedan	Qara	2.5	218	Benzin	42000	Avtomat	Arxa	f	10000	5882	4472164	Hacibaba	(050) 513-03-05	2020-11-17
3603	Sumqayıt	Mercedes	E 200	1987	Sedan	Yaşıl	2	136	Qaz	245000	Mexaniki	Arxa	f	3900	2294	4472066	Vusal	(050) 321-43-86	2020-11-17
3604	Sumqayıt	Mercedes	C 200	1997	Sedan	Ağ	2	136	Benzin	500000	Avtomat	Arxa	f	12800	7529	4472065	Yasin	(051) 669-35-00	2020-11-17
3605	Bakı	Hyundai	Sonata	2012	Sedan	Göy	2	274	Benzin	110000	Avtomat	Ön	f	19200	11294	4472070	Nicat	(070) 228-43-43	2020-11-17
3606	Bakı	BMW	X5	2005	Offroader / SUV	Qara	4.8	360	Benzin	183000	Avtomat	Tam	f	26800	15765	4472069	Jeyhun	(055) 814-18-12	2020-11-17
3607	Bakı	LADA (VAZ)	2105	2005	Sedan	Tünd qırmızı	1.5	65	Benzin	45200	Mexaniki	Arxa	f	5500	3235	4472074	Cabbar	(050) 530-16-46	2020-11-17
3608	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Qara	1.6	147	Dizel	174235	Mexaniki	Ön	f	13800	8118	4472076	Hetem	(070) 265-00-56	2020-11-17
3609	Bakı	Mercedes	A 160	2004	Hetçbek / Liftbek	Ağ	1.6	101	Benzin	162567	Avtomat	Ön	f	8500	5000	4472077	Mahmud	(055) 317-30-50	2020-11-17
3610	Göyçay	Ford	Transit	1998	Furqon	Ağ	2.5	86	Dizel	401000	Mexaniki	Arxa	f	15000	8824	4305349	İbrahim 	(050) 640-45-91	2020-11-17
3611	Sumqayıt	Kia	Clarus	1998	Sedan	Gümüşü	2	136	Benzin	236000	Avtomat	Ön	f	3500	2059	4472078	Əmrah	(055) 859-17-95	2020-11-17
3612	Bakı	Land Rover	Range Rover	2007	Offroader / SUV	Qara	4.2	275	Benzin	164000	Avtomat	Tam	f	36890	21700	4422141	Sahid	(055) 288-11-81	2020-11-17
3613	Bakı	GAZ	330232-744	2000	Yük maşını	Göy	2	75	Benzin	150000	Mexaniki	Arxa	f	6000	3529	4472082	Reşad	(070) 602-12-07	2020-11-17
3614	Qax	Toyota	Prius	2008	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	233000	Avtomat	Ön	f	12300	7235	4472086	Emil	(055) 561-63-55	2020-11-17
3615	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Gümüşü	3.5	272	Benzin	117000	Avtomat	Tam	f	24800	14588	4462923	SERXAN	(070) 311-22-02	2020-11-17
3616	Bakı	BMW	328	1999	Sedan	Göy	2.8	192	Benzin	308000	Avtomat	Arxa	f	11800	6941	4472093	Yunis	(055) 923-51-51	2020-11-17
3617	Şəki	Mercedes	208 D	1990	Mikroavtobus	Göy	2.3	82	Dizel	555555	Mexaniki	Arxa	f	8400	4941	4472089	İsrafil	(070) 655-95-22	2020-11-17
3618	Bakı	BMW	528	2014	Sedan	Ağ	2	245	Benzin	105000	Avtomat	Arxa	f	37910	22300	4472019	Samir	(077) 530-00-00	2020-11-17
3619	Qəbələ	Mercedes	C 240	2000	Sedan	Gümüşü	2.4	170	Benzin	223130	Avtomat	Arxa	f	13500	7941	4472021	Mensur	(050) 348-28-16	2020-11-17
3620	Bakı	Chevrolet	Cruze	2009	Sedan	Ağ	1.6	114	Benzin	188000	Avtomat	Tam	f	15400	9059	4472023	İmil	(050) 246-12-50	2020-11-17
3621	Bakı	Mercedes	C 240	1998	Sedan	Qara	2.4	172	Benzin	325499	Avtomat	Arxa	f	10500	6176	4472024	Rafayıl	(050) 644-48-48	2020-11-17
3622	Bakı	Hyundai	i30	2010	Hetçbek / Liftbek	Yaş Asfalt	1.6	124	Dizel	187301	Mexaniki	Ön	f	14800	8706	4426109	Nizami	(099) 387-97-09	2020-11-17
3623	Bakı	Opel	Astra	2010	Universal	Boz	1.9	130	Dizel	214000	Avtomat	Ön	f	16800	9882	4472026	Azər	(055) 201-42-64	2020-11-17
3624	Sumqayıt	Opel	Astra	1999	Hetçbek / Liftbek	Yaşıl	1.6	101	Benzin	370000	Mexaniki	Ön	f	8400	4941	4472033	Cavid	(050) 692-93-97	2020-11-17
3625	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	165300	Avtomat	Ön	f	15400	9059	4472030	Ruslan	(050) 334-15-67	2020-11-17
3626	Bakı	BMW	523	1996	Sedan	Gümüşü	2.5	170	Benzin	545487	Avtomat	Arxa	f	9000	5294	4472037	Perviz	(050) 389-38-98	2020-11-17
3627	Bakı	BMW	320	2001	Sedan	Qara	2.2	170	Benzin	290000	Avtomat	Arxa	f	12500	7353	4472035	Sahib	(055) 305-11-90	2020-11-17
3628	Bakı	Daewoo	Nexia	2005	Sedan	Gümüşü	1.5	75	Benzin	286620	Mexaniki	Ön	f	5200	3059	4472043	Samir	(055) 576-37-38	2020-11-17
3629	Bakı	Chevrolet	Cruze	2012	Sedan	Boz	1.4	141	Benzin	279000	Avtomat	Ön	f	13500	7941	4472045	Ceyhun 	(077) 594-28-64	2020-11-17
3630	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2	274	Benzin	88000	Avtomat	Ön	f	23800	14000	4437390	Royal	(051) 811-11-31	2020-11-17
3631	Bakı	Hyundai	Sonata	2011	Sedan	Ağ	2.4	178	Benzin	200000	Avtomat	Ön	f	18400	10824	4472050	Aksana	(070) 967-30-00	2020-11-17
3632	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	76879	Mexaniki	Arxa	f	7700	4529	4437077	İlkin 	(055) 489-98-52	2020-11-17
3633	Ağcabədi	GMC	Terrain	2017	Offroader / SUV	Gümüşü	1.5	180	Benzin	21500	Avtomat	Ön	f	51000	30000	4472055	Natig	(070) 628-97-26	2020-11-17
3634	Bakı	Hyundai	Tucson	2016	Offroader / SUV	Qara	2	166	Benzin	64000	Avtomat	Tam	f	31000	18235	4450766	Elsever	(050) 643-72-17	2020-11-17
3635	Salyan	Iran Khodro	Azsamand	2006	Sedan	Mavi	1.8	100	Benzin	518625	Mexaniki	Ön	f	6700	3941	4472061	Şaiq	(051) 891-76-21	2020-11-17
3636	Bakı	Chevrolet	Malibu	2019	Sedan	Gümüşü	1.5	181	Benzin	17100	Avtomat	Ön	f	29500	17353	4472067	Vuqar	(055) 247-03-99	2020-11-17
3638	Bakı	Opel	Vectra	1997	Sedan	Yaşıl	2	136	Benzin	354000	Avtomat	Ön	f	4800	2824	4472095	Cavid	(055) 754-83-93	2020-11-17
3639	Bakı	BMW	530	2018	Sedan	Ağ	2	245	Benzin	39000	Avtomat	Arxa	f	79900	47000	4472094	Zamin	(055) 211-70-81	2020-11-17
3640	Bakı	Toyota	Prado	2007	Offroader / SUV	Qara	3	173	Dizel	240765	Avtomat	Tam	f	37800	22235	4470818	Farid	(050) 212-03-50	2020-11-17
3641	Bakı	Kia	Cerato	2013	Sedan	Ağ	1.6	130	Benzin	98000	Avtomat	Ön	f	20600	12118	4471993	Farid	(050) 593-88-80	2020-11-17
3642	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Narıncı	1.4	97	Benzin	179563	Mexaniki	Ön	f	10500	6176	4471995	Intigam	(070) 200-10-40	2020-11-17
3643	Bakı	Nissan	X-Trail	2003	Offroader / SUV	Qırmızı	2	140	Benzin	280000	Avtomat	Tam	f	8000	4706	4471997	Pervin	(077) 555-30-05	2020-11-17
3644	Bakı	Chevrolet	Malibu	2018	Sedan	Qara	1.5	160	Benzin	29000	Avtomat	Ön	f	27500	16176	4445939	Mamed	(050) 350-57-67	2020-11-17
3645	Ağdaş	Mercedes	E 280	2000	Sedan	Yaşıl	2.8	204	Benzin	334000	Avtomat	Arxa	f	13700	8059	4471999	Səfər	(050) 327-03-04	2020-11-17
3646	Sumqayıt	Jeep	Patriot	2007	Offroader / SUV	Ağ	2.4	170	Benzin	201000	Avtomat	Tam	f	12800	7529	4467557	Sahin	(077) 575-80-40	2020-11-17
3647	Bakı	Hyundai	Accent	2010	Sedan	Ağ	1.4	108	Benzin	163789	Avtomat	Ön	f	13000	7647	4471958	Yusif	(055) 350-22-55	2020-11-17
3648	Quba	GAZ	31105	2005	Sedan	Qara	2.3	131	Benzin	280000	Mexaniki	Arxa	f	5500	3235	4471171	Rəşad	(050) 626-70-99	2020-11-17
3649	Bakı	Kia	Optima	2011	Sedan	Qara	2	165	Benzin	112400	Avtomat	Ön	f	19300	11353	4466579	Vüqar	(050) 250-89-35	2020-11-17
3650	Bakı	LADA (VAZ)	2107	1998	Sedan	Ağ	1.6	75	Benzin	278256	Mexaniki	Arxa	f	4500	2647	4471964	rafət	(051) 777-27-96	2020-11-17
3651	Bakı	Opel	Corsa	2009	Hetçbek / Liftbek	Boz	1.4	90	Benzin	190000	Avtomat	Ön	f	14000	8235	4471965	Rəşad	(070) 828-71-48	2020-11-17
3652	Bakı	Lexus	LX 570	2008	Offroader / SUV	Ağ	5.7	383	Benzin	128356	Avtomat	Tam	f	60350	35500	4471967	Fərhad	(055) 233-10-88	2020-11-17
3653	Bakı	Kia	Rio	2016	Sedan	Qara	1.6	123	Benzin	69500	Avtomat	Ön	f	17100	10059	4436234	Vuqar	(055) 211-86-85	2020-11-17
3654	Bakı	Mercedes	C 220	1995	Sedan	Yaşıl	2.2	146	Benzin	456000	Avtomat	Arxa	f	8500	5000	4471968	Elsen	(070) 360-27-37	2020-11-17
3655	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Boz	1.3	90	Dizel	185000	Mexaniki	Ön	f	13200	7765	4471972	İsfəndiyar	(055) 201-58-12	2020-11-17
3656	Bakı	Hyundai	Accent	2008	Sedan	Qara	1.4	97	Benzin	220000	Avtomat	Ön	f	11500	6765	4453130	Meher	(055) 585-83-01	2020-11-17
3657	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	88000	Avtomat	Ön	f	24000	14118	4456341	Elçin	(099) 700-73-11	2020-11-17
3658	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Boz	1.3	90	Dizel	145200	Mexaniki	Ön	f	12700	7471	4471973	Ruslan	(055) 204-76-80	2020-11-17
3659	Bakı	Mercedes	E 200	1998	Sedan	Göy	2	136	Benzin	479000	Avtomat	Arxa	f	11700	6882	4471384	Fuad	(050) 489-87-86	2020-11-17
3660	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	270000	Mexaniki	Ön	f	10900	6412	4460748	Kamran	(070) 222-30-90	2020-11-17
3661	Göytəpə	GAZ	3302-744	2003	Yük maşını	Ağ	2.3	131	Benzin	165000	Mexaniki	Arxa	f	9700	5706	4471985	Mehemmed	(051) 806-00-35	2020-11-17
3662	Bərdə	Opel	Astra	1998	Hetçbek / Liftbek	Gümüşü	1.8	125	Benzin	317000	Avtomat	Ön	f	9400	5529	4471984	Nuru	(050) 207-46-57	2020-11-17
3663	Bakı	Zontes	R250	2019	Motosiklet	Göy	0.3	25	Benzin	16000	Mexaniki	Arxa	f	5450	3206	4471982	Yusif	(050) 537-16-66	2020-11-17
3664	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	154360	Mexaniki	Arxa	f	7500	4412	4471991	Firat	(055) 617-27-98	2020-11-17
3665	Bakı	Hyundai	Sonata	2013	Sedan	Göy	2.4	178	Benzin	115000	Avtomat	Ön	f	20500	12059	4442201	Tunis	(055) 222-93-03	2020-11-17
3666	Gəncə	Mercedes	E 220	2000	Sedan	Ağ	2.2	140	Dizel	406499	Mexaniki	Arxa	f	12800	7529	4472005	Rovsen	(055) 781-28-10	2020-11-17
3667	Bakı	Toyota	Corolla	2007	Sedan	Yaş Asfalt	1.8	150	Benzin	215000	Avtomat	Ön	f	17500	10294	4472006	Anar	(055) 543-11-55	2020-11-17
3668	Bərdə	GAZ	330202-740	1998	Yük maşını	Boz	2.4	131	Benzin	214552	Mexaniki	Arxa	f	8000	4706	4472007	Elgiz	(050) 889-13-55	2020-11-17
3669	Bakı	Audi	A5	2008	Kupe	Narıncı	3.2	265	Benzin	138200	Avtomat	Ön	f	25500	15000	4472012	Ebdul	(055) 666-06-66	2020-11-17
3670	Balakən	LADA (VAZ)	2106	1990	Sedan	Bej	1.3	65	Benzin	85000	Mexaniki	Arxa	f	4700	2765	4472016	RAMAZAN	(051) 433-71-42	2020-11-17
3671	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Boz	1.8	125	Benzin	250000	Avtomat	Ön	f	9300	5471	4471901	Cavid	(055) 762-33-55	2020-11-17
3672	Bakı	Mercedes	E 200	2000	Sedan	Boz	2	136	Benzin	321568	Avtomat	Arxa	f	14700	8647	4472020	CEFER	(055) 776-85-77	2020-11-17
3673	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	146000	Avtomat	Tam	f	33800	19882	4463123	Elcin	(055) 380-37-93	2020-11-17
3674	Bakı	Mercedes	C 180	1995	Sedan	Ağ	1.8	122	Benzin	245365	Avtomat	Arxa	f	8300	4882	4471930	rosen	(077) 331-84-99	2020-11-17
3675	Bakı	BMW	X1	2017	Offroader / SUV	Qara	2	231	Benzin	35000	Avtomat	Ön	f	46750	27500	4422114	Aydın	(050) 300-35-39	2020-11-17
3676	Bakı	Opel	Astra	2009	Universal	Ağ	1.7	130	Dizel	237500	Mexaniki	Ön	f	12200	7176	4458027	EMIN	(055) 781-84-09	2020-11-17
3677	Bakı	Hyundai	Elantra	2015	Sedan	Yaş Asfalt	1.8	150	Benzin	51000	Avtomat	Ön	f	21700	12765	4471921	Aydin	(070) 373-83-83	2020-11-17
3678	Bakı	Mercedes	E 220	1999	Universal	Gümüşü	2.2	143	Dizel	347000	Avtomat	Arxa	f	16000	9412	4471939	Natiq	(099) 852-54-52	2020-11-17
3679	Bakı	Mercedes	E 220	2014	Sedan	Qara	2.2	176	Dizel	139000	Avtomat	Arxa	f	54740	32200	4471940	Elçin	(055) 211-07-37	2020-11-17
3680	Bakı	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	80	Benzin	157486	Mexaniki	Ön	f	8350	4912	4471942	Kenan	(051) 643-79-19	2020-11-17
3681	Bakı	Daewoo	Leganza	1999	Sedan	Yaşıl	2	136	Benzin	196000	Mexaniki	Ön	f	6400	3765	4471943	Rauf	(055) 505-43-39	2020-11-17
3682	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	144000	Avtomat	Ön	f	15800	9294	4470011	Nicat	(055) 973-73-03	2020-11-17
3683	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.8	150	Benzin	132567	Avtomat	Ön	f	23800	14000	4430522	Nicat	(077) 579-39-26	2020-11-17
3684	Bakı	Hyundai	ix35	2013	Offroader / SUV	Ağ	2	166	Benzin	77000	Avtomat	Tam	f	31000	18235	4317258	Kenan	(050) 284-20-16	2020-11-17
3685	Bakı	Hyundai	Accent	2013	Sedan	Qara	1.6	140	Benzin	15000	Mexaniki	Ön	f	12300	7235	4471944	Vasif 	(050) 580-20-52	2020-11-17
3686	Sumqayıt	Opel	Astra	2000	Universal	Gümüşü	1.8	125	Benzin	258912	Mexaniki	Ön	f	7800	4588	4471950	Emirxan	(055) 382-82-85	2020-11-17
3687	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.5	65	Benzin	196582	Mexaniki	Arxa	f	5000	2941	4435268	Seid	(050) 763-79-16	2020-11-17
3688	Bakı	Lexus	LX 470	2006	Offroader / SUV	Qara	4.7	275	Benzin	360000	Avtomat	Tam	f	28730	16900	4435119	Zaur	(070) 337-73-37	2020-11-17
3689	Bakı	Toyota	Corolla	2007	Sedan	Yaş Asfalt	1.4	90	Dizel	196000	Mexaniki	Ön	f	15000	8824	4471908	Fizuli	(055) 411-89-67	2020-11-17
3690	Bakı	BMW	528	2013	Sedan	Qara	2	245	Benzin	160000	Avtomat	Arxa	f	33490	19700	4471914	Zahid	(050) 220-47-89	2020-11-17
3691	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.6	132	Benzin	107000	Avtomat	Ön	f	19500	11471	4457477	Cavid	(051) 311-65-26	2020-11-17
3692	Bakı	Mercedes	E 240	2001	Sedan	Qara	2.4	170	Benzin	320000	Avtomat	Arxa	f	15800	9294	4471912	Ferid	(055) 691-71-10	2020-11-17
3693	Bakı	Mercedes	GL 550	2008	Offroader / SUV	Ağ	5.5	388	Benzin	188430	Avtomat	Tam	f	33490	19700	4462875	Nicat	(050) 669-17-62	2020-11-17
3694	Bakı	Volvo	S 80	1999	Sedan	Qızılı	2.9	136	Benzin	196200	Avtomat	Ön	f	5700	3353	4471916	Terlan	(050) 370-64-84	2020-11-17
3695	Bakı	Mercedes	C 220	1999	Sedan	Gümüşü	2.2	143	Dizel	350000	Avtomat	Arxa	f	11800	6941	4471918	Hesen	(050) 585-82-43	2020-11-17
3696	Bakı	Mercedes	C 230	2000	Sedan	Gümüşü	2.3	193	Benzin	205000	Avtomat	Arxa	f	11200	6588	4471919	Ramin	(077) 328-34-36	2020-11-17
3697	Şabran	LADA (VAZ)	2115	2007	Sedan	Yaş Asfalt	1.5	75	Benzin	126762	Mexaniki	Ön	f	7500	4412	4471920	Cəfər	(055) 691-15-87	2020-11-17
3698	Bakı	Hyundai	ix35	2015	Offroader / SUV	Qara	2	166	Benzin	68100	Avtomat	Tam	f	32000	18824	4471915	Natik	(050) 216-03-39	2020-11-17
3699	Bakı	Ford	Transit	2012	Mikroavtobus	Sarı	2.4	170	Dizel	230000	Mexaniki	Arxa	f	35000	20588	4378151	Vüsal	(055) 225-55-89	2020-11-17
3700	Bakı	Mercedes	E 220	2008	Sedan	Qara	2.2	170	Dizel	188200	Avtomat	Arxa	f	26900	15824	4471852	OQTAY.M	(055) 210-49-30	2020-11-17
3702	Bakı	Mercedes	A 160	2002	Hetçbek / Liftbek	Ağ	1.6	122	Benzin	190000	Avtomat	Ön	f	5300	3118	4471925	behruz	(050) 540-47-13	2020-11-17
3703	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Gümüşü	2	141	Dizel	233000	Avtomat	Ön	f	15700	9235	4417989	Yunis	(070) 557-34-10	2020-11-17
3704	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	74000	Avtomat	Ön	f	20000	11765	4326207	Sahib	(077) 505-40-40	2020-11-17
3705	Bakı	Hyundai	Sonata	2011	Sedan	Göy	2	274	Benzin	143000	Avtomat	Ön	f	17900	10529	4437167	Nihad	(050) 355-55-45	2020-11-17
3706	Bakı	Toyota	Prado	2016	Offroader / SUV	Ağ	2.7	167	Benzin	131000	Avtomat	Tam	f	62050	36500	4464598	Elsever	(055) 350-73-44	2020-11-17
3707	Bakı	Mercedes	E 220	1998	Sedan	Gümüşü	2.2	170	Dizel	300000	Avtomat	Arxa	f	13500	7941	4471929	Telman	(055) 809-98-34	2020-11-17
3708	Bakı	Kia	Carens	2003	Universal	Gümüşü	2	112	Dizel	350000	Avtomat	Ön	f	11500	6765	4471952	Əhmədov	(055) 711-00-90	2020-11-17
3709	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	90000	Mexaniki	Arxa	f	7200	4235	4471959	Rəsul	(055) 275-07-17	2020-11-17
3710	Bakı	Mercedes	E 240	1997	Sedan	Yaş Asfalt	2.4	170	Benzin	353000	Avtomat	Arxa	f	10750	6324	4471960	Namiq	(055) 824-76-75	2020-11-17
3711	Bakı	Toyota	Prado	2006	Offroader / SUV	Qara	2.7	167	Benzin	82000	Avtomat	Tam	f	30500	17941	4463325	AZAD	(055) 580-82-72	2020-11-17
3712	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	150000	Mexaniki	Arxa	f	5000	2941	4471897	Ekrem	(055) 367-57-47	2020-11-17
3713	Bakı	Kia	Optima	2014	Sedan	Ağ	2	274	Qaz	100700	Avtomat	Ön	f	24000	14118	4410124	TOLIK	(050) 855-75-15	2020-11-17
3714	Bakı	Chevrolet	Cruze	2014	Sedan	Qırmızı	1.4	141	Benzin	140000	Avtomat	Ön	f	15800	9294	4452745	Emil	(050) 411-12-85	2020-11-17
3715	Bakı	Changan	Eado	2013	Hetçbek / Liftbek	Ağ	1.6	125	Benzin	183000	Avtomat	Ön	f	12300	7235	4471900	Ramil	(055) 480-40-86	2020-11-17
3716	Xırdalan	Skoda	Fabia	2006	Universal	Gümüşü	1.4	90	Benzin	280000	Mexaniki	Ön	f	10800	6353	4471902	Cavid	(077) 628-36-33	2020-11-17
3717	Sumqayıt	Mercedes	C 200	1997	Sedan	Yaşıl	2	136	Benzin	435000	Avtomat	Arxa	f	10800	6353	4471907	Elman	(050) 670-82-56	2020-11-17
3718	Bakı	Kia	Optima	2014	Sedan	Ağ	2	274	Benzin	106000	Avtomat	Ön	f	26000	15294	4430227	TOLIK	(050) 855-75-15	2020-11-17
3719	Şəki	Opel	Vectra	1998	Sedan	Göy	2	136	Benzin	400168	Avtomat	Ön	f	6800	4000	4471884	Guloglan	(050) 746-84-74	2020-11-17
3720	Bakı	Nissan	X-Trail	2001	Offroader / SUV	Gümüşü	2	140	Benzin	260000	Avtomat	Tam	f	9900	5824	4471886	Farid	(055) 768-95-35	2020-11-17
3721	Bakı	Nissan	Pathfinder	2003	Offroader / SUV	Gümüşü	3.5	243	Benzin	287000	Avtomat	Tam	f	10000	5882	4471880	Emil	(055) 600-07-07	2020-11-17
3722	Bakı	Mercedes	E 270	2000	Sedan	Gümüşü	2.7	170	Dizel	380000	Avtomat	Arxa	f	16900	9941	4462052	Samir	(055) 782-05-16	2020-11-17
3723	Bakı	Daewoo	Nexia	1997	Sedan	Göy	1.5	75	Benzin	266000	Mexaniki	Ön	f	3700	2176	4471888	Ceyhun	(070) 219-44-44	2020-11-17
3724	Naxçıvan	LADA (VAZ)	2107	1992	Sedan	Ağ	1.6	75	Benzin	404500	Mexaniki	Arxa	f	3500	2059	4471890	Ilham	(060) 202-45-00	2020-11-17
3725	Bakı	Ford	Ranger	2017	Pikap	Ağ	2.2	163	Dizel	127000	Avtomat	Tam	f	47000	27647	4471891	Elmar	(050) 505-00-46	2020-11-17
3726	Bakı	Opel	Astra	2002	Universal	Gümüşü	2	136	Dizel	350000	Mexaniki	Ön	f	9000	5294	4471894	Nureddin	(077) 348-81-71	2020-11-17
3727	Bakı	Kia	Rio	2013	Sedan	Ağ	1.4	110	Benzin	155000	Mexaniki	Ön	f	12800	7529	4430279	Urfan	(050) 889-66-31	2020-11-17
3728	Sumqayıt	Hyundai	Santa Fe	2006	Offroader / SUV	Yaş Asfalt	2.2	150	Dizel	217367	Avtomat	Tam	f	18400	10824	4402466	Vuqar	(050) 809-20-83	2020-11-17
3729	Bakı	LADA (VAZ)	2109	1988	Hetçbek / Liftbek	Ağ	1.5	78	Benzin	345161	Mexaniki	Ön	f	4800	2824	4471836	Zamin	(070) 257-00-21	2020-11-17
3730	Bakı	Toyota	Camry	2008	Sedan	Ağ	2.4	178	Benzin	161000	Avtomat	Ön	f	17500	10294	4471843	Ehmed	(051) 410-20-00	2020-11-17
3731	Bakı	Hyundai	Elantra	2013	Sedan	Göy	1.8	150	Benzin	160000	Avtomat	Ön	f	17950	10559	4471847	İbrahim	(070) 724-20-09	2020-11-17
3732	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	281000	Avtomat	Arxa	f	16000	9412	4471848	Mirsadiq M	(051) 743-33-33	2020-11-17
3733	Bakı	Mercedes	C 220	1995	Sedan	Yaş Asfalt	2.2	143	Benzin	456000	Avtomat	Arxa	f	9500	5588	4471849	Ramil 	(055) 763-52-27	2020-11-17
3734	Bakı	BMW	528	2013	Sedan	Ağ	2	245	Benzin	169752	Avtomat	Arxa	f	34850	20500	4442769	Cosqun	(077) 395-25-25	2020-11-17
3735	Hacıqabul	Opel	Astra	1993	Universal	Göy	1.6	75	Benzin	250000	Mexaniki	Ön	f	6100	3588	4471853	Anar	(050) 602-60-32	2020-11-17
3736	Bakı	Nissan	Sunny	2008	Sedan	Qara	1.6	109	Benzin	234000	Avtomat	Ön	f	12700	7471	4471842	Elman	(055) 705-41-70	2020-11-17
3737	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	90300	Avtomat	Arxa	f	15800	9294	4471864	Ferid	(051) 495-40-02	2020-11-17
3738	Bakı	Opel	Astra	2008	Universal	Gümüşü	1.3	90	Dizel	162000	Mexaniki	Ön	f	11700	6882	4471874	Əli	(070) 399-38-39	2020-11-17
3739	Bakı	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	144500	Mexaniki	Ön	f	8700	5118	4471799	Balakişi	(055) 440-62-23	2020-11-17
3740	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Narıncı	1.4	97	Benzin	146523	Mexaniki	Ön	f	10300	6059	4471801	Resad	(050) 612-88-33	2020-11-17
3741	Bakı	Chevrolet	Cruze	2012	Hetçbek / Liftbek	Qara	1.6	140	Benzin	174000	Mexaniki	Ön	f	12700	7471	4465122	Amin	(055) 224-41-24	2020-11-17
3742	Biləsuvar	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	80000	Mexaniki	Arxa	f	8700	5118	4431382	XEYAL 	(050) 669-92-48	2020-11-17
3743	Bakı	Toyota	Camry	2014	Sedan	Yaş Asfalt	2.5	181	Benzin	125800	Avtomat	Ön	f	24700	14529	4448698	Ferid	(050) 336-32-20	2020-11-17
3744	Bakı	Nissan	Murano	2004	Offroader / SUV	Ağ	3.5	270	Benzin	214000	Avtomat	Tam	f	10700	6294	4471803	Arif	(060) 241-41-41	2020-11-17
3745	Bakı	Dodge	Journey	2012	Offroader / SUV	Qara	3.5	283	Benzin	158000	Avtomat	Ön	f	25000	14706	4442061	parviz	(050) 224-54-35	2020-11-17
3746	Quba	Mercedes	Sprinter 516	2011	Mikroavtobus	Ağ	3	193	Dizel	286000	Mexaniki	Arxa	f	39900	23471	4471813	Ruslan 	(070) 251-80-86	2020-11-17
3747	Göyçay	LADA (VAZ)	2101	1980	Sedan	Ağ	1.2	64	Benzin	830000	Mexaniki	Arxa	f	4500	2647	4471812	Tehran	(050) 712-91-96	2020-11-17
3748	Bakı	Ford	Fusion	2013	Sedan	Boz	2	245	Benzin	99000	Avtomat	Ön	f	20500	12059	4440472	Huseyin	(070) 911-00-63	2020-11-17
3749	Bakı	Nissan	Altima	2014	Sedan	Qara	2.5	182	Benzin	159490	Avtomat	Ön	f	22800	13412	4462783	vuqar	(050) 669-17-62	2020-11-17
3750	Şəmkir	Mercedes	E 280	2005	Sedan	Qara	3	190	Benzin	170000	Avtomat	Arxa	f	19800	11647	4471818	Sakit	(050) 616-01-57	2020-11-17
3751	Gədəbəy	Mercedes	Vito 111	2009	Furqon	Ağ	2.2	150	Dizel	314000	Mexaniki	Arxa	f	17000	10000	4471820	Firdovsi 	(051) 610-40-90	2020-11-17
3752	Bakı	Chevrolet	Cruze	2013	Sedan	Gümüşü	1.4	141	Benzin	129000	Avtomat	Ön	f	13800	8118	4471822	Resad	(050) 778-83-16	2020-11-17
3753	Bakı	Mercedes	E 240	2000	Sedan	Göy	2.4	170	Benzin	265398	Avtomat	Arxa	f	12800	7529	4471828	Heydər	(070) 858-84-15	2020-11-17
3754	Bakı	Mercedes	E 220	2000	Sedan	Boz	2.2	170	Dizel	375000	Avtomat	Arxa	f	15000	8824	4471831	Müşviq	(055) 660-94-90	2020-11-17
3755	Bakı	BMW	318	2001	Sedan	Yaş Asfalt	1.8	128	Benzin	225000	Avtomat	Arxa	f	13500	7941	4471835	Kanan	(050) 363-08-09	2020-11-17
3756	Bakı	Toyota	Land Cruiser	2008	Offroader / SUV	Yaş Asfalt	4.7	288	Benzin	262000	Avtomat	Tam	f	58650	34500	4431811	vusal	(055) 763-60-60	2020-11-17
3757	Şirvan	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	63948	Mexaniki	Arxa	f	5800	3412	4471875	Elvin	(055) 340-44-34	2020-11-17
3758	Salyan	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	195000	Mexaniki	Arxa	f	4800	2824	4471872	Ceyhun	(050) 670-97-47	2020-11-17
3759	Bakı	Porsche	Cayenne S	2012	Offroader / SUV	Ağ	3.6	300	Benzin	170000	Avtomat	Tam	f	57800	34000	4418540	Rustem	(050) 665-05-95	2020-11-17
3760	Xırdalan	Iran Khodro	Runna	2014	Sedan	Ağ	1.6	110	Benzin	191457	Mexaniki	Ön	f	8700	5118	4461975	Tural	(050) 978-99-98	2020-11-17
3761	Bakı	Opel	Astra	2007	Universal	Ağ	1.4	90	Benzin	219000	Mexaniki	Ön	f	11500	6765	4471779	Elvin	(055) 600-97-00	2020-11-17
3762	Qəbələ	Opel	Vectra	2000	Sedan	Yaşıl	1.8	125	Benzin	344549	Mexaniki	Ön	f	8000	4706	4471785	Rövşən	(051) 999-93-34	2020-11-17
3763	Bakı	Ford	Fusion	2019	Sedan	Yaş Asfalt	1.5	181	Benzin	26000	Avtomat	Ön	f	24400	14353	4397983	Rufat	(077) 308-44-32	2020-11-17
3764	Bakı	Mercedes	C 200	2000	Sedan	Gümüşü	2	136	Benzin	254000	Avtomat	Arxa	f	12100	7118	4410182	Ayxan	(055) 515-66-65	2020-11-17
3765	Bakı	Kia	Optima	2016	Sedan	Ağ	2	274	Benzin	79000	Avtomat	Ön	f	26800	15765	4440435	Farxad	(050) 513-10-10	2020-11-17
3766	Bakı	Mercedes	C 230	1998	Sedan	Qara	2.3	150	Benzin	360000	Avtomat	Arxa	f	10500	6176	4471741	ILQAR	(050) 653-10-53	2020-11-17
3767	Sumqayıt	GAZ	31105	2008	Sedan	Qara	2.3	131	Benzin	195000	Mexaniki	Arxa	f	8500	5000	4460713	Rahib	(051) 931-91-91	2020-11-17
3768	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	124500	Avtomat	Ön	f	14000	8235	4471749	Nurlan	(055) 241-49-54	2020-11-17
3769	Bakı	LADA (VAZ)	2108	1986	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	240000	Mexaniki	Ön	f	2800	1647	4471750	Sahib	(050) 971-00-87	2020-11-17
3770	Şəmkir	Ford	Transit	2006	Yük maşını	Ağ	2.4	120	Dizel	220000	Mexaniki	Arxa	f	25000	14706	4471756	Ceyhun	(050) 539-20-43	2020-11-17
3771	Bakı	Opel	Astra	2006	Universal	Qara	1.4	90	Benzin	134807	Mexaniki	Ön	f	11300	6647	4471757	Anar	(050) 709-44-59	2020-11-17
3772	Bakı	Hyundai	Elantra	2010	Sedan	Ağ	1.6	132	Benzin	211000	Avtomat	Ön	f	16000	9412	4462380	Elnur	(050) 302-60-61	2020-11-17
3773	Bakı	Mercedes	E 200	1998	Sedan	Gümüşü	2	136	Benzin	349000	Avtomat	Arxa	f	12200	7176	4471762	Telman	(055) 974-75-76	2020-11-17
3774	Balakən	LADA (VAZ)	Niva	1980	Offroader / SUV	Qırmızı	1.7	80	Benzin	280000	Mexaniki	Tam	f	3850	2265	4471765	Fuad	(055) 330-80-60	2020-11-17
3775	Bakı	Mercedes	E 220	1993	Sedan	Qara	2.2	150	Dizel	190000	Avtomat	Arxa	f	7700	4529	4471767	Yusif	(051) 610-33-33	2020-11-17
3776	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.8	125	Benzin	324500	Avtomat	Ön	f	12800	7529	4427189	Elsen	(077) 422-31-53	2020-11-17
3777	Bakı	Mercedes	C 180	1993	Sedan	Bej	1.8	122	Benzin	393200	Avtomat	Arxa	f	7500	4412	4471544	Habil	(055) 599-31-09	2020-11-17
3778	Bakı	BMW	530	2008	Sedan	Ağ	3	258	Benzin	244000	Avtomat	Arxa	f	26000	15294	4471711	Tural	(055) 317-31-38	2020-11-17
3779	Bakı	Mercedes	E 230	1992	Sedan	Qırmızı	2.3	136	Benzin	358900	Mexaniki	Arxa	f	4700	2765	4471774	Elcin	(070) 369-69-06	2020-11-17
3780	Bakı	BMW	X5	2004	Offroader / SUV	Qara	4.8	360	Benzin	282000	Avtomat	Tam	f	22400	13176	4471605	Ramin	(050) 379-18-42	2020-11-17
3782	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	52209	Mexaniki	Arxa	f	8500	5000	4471771	Qorxmaz	(051) 612-77-07	2020-11-17
3783	Bakı	Mercedes	C 200	1995	Sedan	Ağ	2	136	Benzin	330000	Avtomat	Arxa	f	8800	5176	4471777	Tural	(077) 528-99-11	2020-11-17
3784	Bakı	Toyota	Corolla	2014	Sedan	Ağ	1.6	122	Benzin	129000	Avtomat	Ön	f	26200	15412	4431420	Rufiz	(050) 509-15-98	2020-11-17
3785	Bakı	Mercedes	Viano	2011	Van	Qara	3	231	Dizel	265658	Avtomat	Ön	f	44030	25900	4283036	serxan	(055) 200-18-22	2020-11-17
3786	Zaqatala	Mercedes	C 240	2001	Sedan	Qara	2.4	170	Benzin	286000	Avtomat	Arxa	f	11200	6588	4383238	Natiq	(051) 426-30-50	2020-11-17
3787	Bakı	Mercedes	E 350	2010	Sedan	Gümüşü	3	265	Dizel	153580	Avtomat	Arxa	f	34800	20471	4471795	Vüqar	(050) 467-05-38	2020-11-17
3789	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	291500	Mexaniki	Ön	f	7400	4353	4471680	Elçin	(050) 973-53-83	2020-11-17
3790	Bakı	Ford	Fusion	2014	Sedan	Ağ	1.5	181	Benzin	90000	Avtomat	Ön	f	20800	12235	4421092	ELÇİN	(077) 447-14-18	2020-11-17
3791	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qızılı	1.5	76	Benzin	150000	Avtomat	Ön	f	11500	6765	4471721	Zaur	(055) 490-84-00	2020-11-17
3792	Bakı	Toyota	Prius	2012	Sedan	Yaş Asfalt	1.8	99	Benzin	170000	Avtomat	Arxa	f	20900	12294	4471722	Eli	(055) 758-67-78	2020-11-17
3793	Bakı	Mercedes	C 180	1993	Sedan	Ağ	1.8	122	Benzin	355425	Avtomat	Arxa	f	9320	5482	4471725	Roşən	(055) 394-09-51	2020-11-17
3794	Bakı	Chevrolet	Cruze	2011	Sedan	Gümüşü	1.4	141	Benzin	160766	Avtomat	Ön	f	13200	7765	4420864	Emil	(055) 212-19-86	2020-11-17
3795	Bakı	Nissan	Tiida	2007	Hetçbek / Liftbek	Qara	1.8	128	Benzin	125000	Avtomat	Ön	f	10500	6176	4449260	Kamran	(050) 728-76-47	2020-11-17
3796	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	141530	Avtomat	Ön	f	13300	7824	4442124	Emil	(070) 294-77-77	2020-11-17
3797	Bakı	Mercedes	C 200	2001	Sedan	Boz	2	149	Benzin	252000	Avtomat	Arxa	f	11800	6941	4471735	Ferhad	(050) 657-32-84	2020-11-17
3798	Bakı	Kia	Optima	2016	Sedan	Ağ	2	274	Benzin	56000	Avtomat	Ön	f	30430	17900	4418225	Cavid	(070) 670-36-26	2020-11-17
3799	Göygöl	LADA (VAZ)	2107	1995	Sedan	Ağ	1.5	65	Benzin	399100	Mexaniki	Arxa	f	4000	2353	4471691	timur	(055) 802-08-22	2020-11-17
3800	Naxçıvan	Kia	Sportage	2016	Offroader / SUV	Ağ	1.7	115	Dizel	60900	Avtomat	Ön	f	31000	18235	4471697	Məhərrəm 	(050) 420-04-00	2020-11-17
3801	Bakı	Renault	Laguna	2008	Universal	Göy	1.5	110	Dizel	301000	Mexaniki	Ön	f	11800	6941	4471699	Ali	(055) 258-89-00	2020-11-17
3802	Bakı	BMW	528	2012	Sedan	Ağ	2	245	Benzin	153000	Avtomat	Arxa	f	33830	19900	4471698	Turan	(050) 200-82-11	2020-11-17
3803	Bakı	Iran Khodro	Azsamand	2007	Sedan	Boz	1.8	110	Benzin	409800	Mexaniki	Ön	f	6900	4059	4471702	Rəşad	(077) 225-15-85	2020-11-17
3804	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	47000	Avtomat	Ön	f	14700	8647	4436470	Ramil	(070) 653-12-99	2020-11-17
3805	Bakı	Hyundai	Elantra	2013	Sedan	Qara	1.8	150	Benzin	88000	Avtomat	Tam	f	18000	10588	4471696	Cemil	(055) 350-20-12	2020-11-17
3806	Bakı	Mercedes	S 320	1999	Sedan	Qara	3.2	224	Benzin	257000	Avtomat	Arxa	f	11000	6471	4471706	vuqar	(055) 316-74-58	2020-11-17
3807	Bakı	Chevrolet	Cruze	2011	Sedan	Gümüşü	1.4	141	Benzin	95000	Avtomat	Ön	f	14000	8235	4364733	Murad	(070) 260-60-17	2020-11-17
3808	Sumqayıt	LADA (VAZ)	2101	1982	Sedan	Ağ	1.5	65	Benzin	333333	Mexaniki	Arxa	f	1650	971	4471707	Kamran	(070) 814-11-47	2020-11-17
3809	Xaçmaz	Ford	Transit	2008	Furqon	Ağ	2.4	140	Dizel	200000	Mexaniki	Arxa	f	21500	12647	4471710	Aziz	(055) 249-97-99	2020-11-17
3810	Bakı	BMW	535	2011	Sedan	Yaş Asfalt	3	306	Benzin	196000	Avtomat	Arxa	f	36550	21500	4460693	Kamal	(055) 600-40-00	2020-11-17
3811	Salyan	Mercedes	E 200	1994	Sedan	Göy	2	136	Benzin	390000	Avtomat	Arxa	f	7000	4118	4471704	Suleyman	(051) 206-95-20	2020-11-17
3812	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	88000	Mexaniki	Arxa	f	7800	4588	4430804	Əmir	(055) 774-18-90	2020-11-17
3813	Bakı	Ford	Transit	2010	Furqon	Ağ	2.4	140	Dizel	123500	Mexaniki	Arxa	f	21750	12794	4461970	Nebi	(050) 635-35-39	2020-11-17
3814	Bakı	Opel	Astra	2006	Universal	Yaş Asfalt	1.4	90	Benzin	223000	Mexaniki	Ön	f	12300	7235	4471740	Murad	(050) 277-75-47	2020-11-17
3815	Bakı	Toyota	RAV 4	1996	Offroader / SUV	Gümüşü	2	105	Benzin	350275	Avtomat	Tam	f	7000	4118	4471746	Anar	(055) 212-64-74	2020-11-17
3816	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	2	184	Dizel	108000	Avtomat	Ön	f	26500	15588	4471745	Asif	(055) 226-37-57	2020-11-17
3817	Bakı	Mercedes	E 200	2013	Sedan	Qara	2	184	Benzin	159600	Avtomat	Arxa	f	46410	27300	4478458	Kamran	(055) 325-52-52	2020-11-17
3818	Bakı	BMW	530	2003	Sedan	Qara	3	231	Benzin	320000	Avtomat	Arxa	f	16500	9706	4471639	Ceyhun	(070) 662-99-99	2020-11-17
3819	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qızılı	1.5	76	Benzin	230000	Avtomat	Ön	f	12500	7353	4471659	TOLIK	(050) 855-75-15	2020-11-17
3820	Bakı	Mercedes	C 320	2000	Sedan	Gümüşü	3.2	224	Benzin	318000	Avtomat	Arxa	f	15500	9118	4471674	Elzamin	(051) 331-31-31	2020-11-17
3821	Bakı	Mercedes	C 250	1999	Sedan	Qara	2.5	150	Dizel	418466	Avtomat	Arxa	f	12100	7118	4471675	Qəşəm 	(070) 292-44-44	2020-11-17
3822	Bakı	Mercedes	C 200	2000	Universal	Bej	2	136	Benzin	281000	Avtomat	Ön	f	12000	7059	4471676	Amid	(060) 330-17-86	2020-11-17
3823	Bakı	Mercedes	Vito	2011	Van	Ağ	2.2	163	Dizel	253400	Mexaniki	Arxa	f	27500	16176	4434198	Qara	(070) 292-17-89	2020-11-17
3824	Bakı	Mercedes	C 200	1998	Universal	Mavi	2	136	Benzin	250000	Avtomat	Arxa	f	11500	6765	4402205	Nemet	(051) 544-63-14	2020-11-17
3825	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	102000	Avtomat	Tam	f	45500	26765	4410991	Anar	(055) 563-00-08	2020-11-17
3826	Bakı	Mercedes	Sprinter 313	2009	Furqon	Ağ	2.2	129	Dizel	235000	Mexaniki	Arxa	f	28500	16765	4471661	Bextiyar	(077) 320-55-06	2020-11-17
3827	Bakı	Mercedes	S 350	2006	Sedan	Qara	3.5	272	Benzin	169000	Avtomat	Arxa	f	29750	17500	4425957	Qara	(050) 680-04-76	2020-11-17
3828	Bakı	Toyota	Camry	2013	Sedan	Ağ	2.5	181	Benzin	94000	Avtomat	Tam	f	34850	20500	4471614	Samir	(050) 318-83-73	2020-11-17
3829	Bakı	Kia	Optima	2014	Sedan	Ağ	2	274	Benzin	75000	Avtomat	Ön	f	23000	13529	4471600	TOLIK	(050) 855-75-15	2020-11-17
3830	Bakı	Land Rover	Range Rover	2014	Offroader / SUV	Qara	3	340	Dizel	67000	Avtomat	Tam	f	111350	65500	4432963	Erkin	(050) 415-58-88	2020-11-17
3831	Bakı	Mercedes	C 250	2013	Sedan	Qara	1.8	204	Benzin	101500	Avtomat	Arxa	f	28730	16900	4453636	Fariz	(077) 308-62-76	2020-11-17
3832	Bakı	Hyundai	Sonata	2002	Sedan	Ağ	2.4	180	Benzin	220000	Avtomat	Ön	f	7500	4412	4471622	ELVİN	(055) 810-85-80	2020-11-17
3833	Bakı	Mercedes	E 220	2014	Sedan	Göy	2.2	170	Dizel	210000	Avtomat	Arxa	f	40800	24000	4471621	Zaur	(050) 278-33-23	2020-11-17
3834	Qazax	BMW	525	1988	Sedan	Ağ	2.5	170	Benzin	222000	Mexaniki	Arxa	f	3500	2059	4471623	Tofiq	(055) 617-39-15	2020-11-17
3835	Bakı	Mercedes	Sprinter 313	2007	Furqon	Ağ	2.2	150	Dizel	171000	Mexaniki	Arxa	f	27300	16059	4471618	Bextiyar	(077) 320-55-09	2020-11-17
3836	Bakı	Mitsubishi	Pajero	1993	Offroader / SUV	Ağ	2.8	136	Dizel	352727	Avtomat	Tam	f	10400	6118	4431124	Cavid	(050) 342-83-09	2020-11-17
3837	Bakı	Mercedes	E 200	2000	Sedan	Gümüşü	2	136	Benzin	325000	Avtomat	Arxa	f	14700	8647	4471630	Bəhruz	(055) 858-88-10	2020-11-17
3838	Bakı	Mercedes	B 170	2006	Hetçbek / Liftbek	Gümüşü	1.7	116	Benzin	132000	Avtomat	Ön	f	10800	6353	4471625	Nail	(055) 341-28-90	2020-11-17
3839	Bakı	Ford	Escape	2016	Offroader / SUV	Qara	1.6	176	Benzin	88000	Avtomat	Ön	f	22900	13471	4439473	Nusret	(070) 663-68-68	2020-11-17
3840	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	78000	Mexaniki	Arxa	f	7600	4471	4430833	Elşən	(055) 773-32-83	2020-11-17
3841	Bakı	Hyundai	Elantra	2013	Sedan	Göy	1.8	150	Benzin	155000	Avtomat	Ön	f	16900	9941	4471646	Namiq	(051) 225-52-92	2020-11-17
3842	Bakı	Mercedes	E 280	2006	Sedan	Qara	3	190	Dizel	400000	Avtomat	Arxa	f	19700	11588	4471654	Nurlan	(050) 661-69-16	2020-11-17
3843	Bakı	Mercedes	Vito	2001	Van	Yaşıl	2.2	150	Dizel	650000	Mexaniki	Ön	f	13700	8059	4471679	Faiq	(070) 826-61-61	2020-11-17
3844	Bakı	Changan	Eado	2014	Sedan	Boz	1.6	125	Benzin	190000	Avtomat	Ön	f	13400	7882	4471681	Qudret	(050) 212-82-39	2020-11-17
3845	Hacıqabul	Mercedes	C 220	1994	Sedan	Boz	2.2	143	Benzin	383000	Avtomat	Arxa	f	7700	4529	4471684	Xeyyam	(055) 984-43-03	2020-11-17
3846	Bakı	LADA (VAZ)	2106	1983	Sedan	Sarı	1.6	75	Benzin	43200	Mexaniki	Arxa	f	3700	2176	4471593	Ömər	(055) 229-09-41	2020-11-17
3847	Ağcabədi	LADA (VAZ)	2107	2001	Sedan	Ağ	1.6	75	Benzin	194265	Mexaniki	Arxa	f	4500	2647	4471601	Edalet	(051) 634-90-90	2020-11-17
3848	Sumqayıt	Mercedes	E 320	2000	Sedan	Yaş Asfalt	3.2	224	Dizel	385000	Avtomat	Arxa	f	15500	9118	4439712	Rafael	(050) 702-37-96	2020-11-17
3849	Zaqatala	Mercedes	Vito	2005	Van	Tünd qırmızı	2.2	88	Dizel	423325	Mexaniki	Arxa	f	25200	14824	4471604	Mahmud	(055) 399-10-19	2020-11-17
3850	Bakı	BMW	528	2015	Sedan	Qara	2	245	Benzin	80000	Avtomat	Arxa	f	41990	24700	4376172	ilkin	(051) 707-07-23	2020-11-17
3851	Bakı	Mercedes	190	1987	Sedan	Gümüşü	2	122	Dizel	278901	Mexaniki	Arxa	f	5200	3059	4471567	Samir	(050) 382-83-02	2020-11-17
3852	Bakı	LADA (VAZ)	2106	1986	Sedan	Bej	1.3	65	Benzin	81207	Mexaniki	Arxa	f	2900	1706	4471571	Elgiz	(050) 570-42-38	2020-11-17
3853	Bakı	Honda	CR-V	1996	Offroader / SUV	Gümüşü	2	147	Benzin	342919	Avtomat	Tam	f	5700	3353	4471572	Ibrahim	(077) 737-11-37	2020-11-17
3854	Bakı	Mercedes	S 350	2006	Sedan	Ağ	3.5	272	Benzin	219000	Avtomat	Arxa	f	32300	19000	4458606	Famil	(055) 513-39-69	2020-11-17
3855	Bakı	Volkswagen	Tiguan	2012	Offroader / SUV	Ağ	2	143	Benzin	174000	Avtomat	Tam	f	20500	12059	4369539	Elçin	(050) 598-67-72	2020-11-17
3856	Quba	GAZ	33021	2000	Yük maşını	Boz	2.4	90	Benzin	182740	Mexaniki	Arxa	f	5700	3353	4471576	Arif	(070) 657-19-60	2020-11-17
3857	Sumqayıt	Kia	Opirus	2004	Sedan	Qara	3.5	198	Benzin	187200	Avtomat	Ön	f	10400	6118	4461947	Eliş	(070) 478-17-07	2020-11-17
3858	Bakı	Hyundai	Accent	2014	Sedan	Qırmızı	1.6	140	Benzin	86000	Avtomat	Ön	f	16000	9412	4454738	Pasha	(050) 840-90-66	2020-11-17
3859	Bakı	Opel	Astra	2007	Universal	Qızılı	1.4	90	Benzin	187000	Mexaniki	Ön	f	11800	6941	4416237	Elşən	(055) 960-17-67	2020-11-17
3860	Ucar	Mercedes	E 220	1999	Universal	Ağ	2.2	170	Dizel	527000	Avtomat	Arxa	f	17500	10294	4471582	Kamal	(050) 575-19-99	2020-11-17
3861	Bakı	Audi	S7	2015	Hetçbek / Liftbek	Göy	4	450	Benzin	43500	Avtomat	Tam	f	93500	55000	4208241	Şahin	(055) 320-55-55	2020-11-17
3863	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Qara	1.5	76	Benzin	170000	Avtomat	Ön	f	12300	7235	4461966	Iskəndər	(050) 355-29-88	2020-11-17
3864	Bakı	Land Rover	RR Sport	2018	Offroader / SUV	Qara	2	300	Benzin	4500	Avtomat	Tam	f	153850	90500	4467493	Ali	(070) 288-00-18	2020-11-17
3865	Bakı	Mercedes	190	1991	Sedan	Yaş Asfalt	2	122	Benzin	425000	Avtomat	Arxa	f	5500	3235	4471537	Serxan	(055) 866-44-45	2020-11-17
3866	Qazax	Mercedes	E 230	1996	Sedan	Gümüşü	2.3	150	Benzin	387000	Avtomat	Arxa	f	10500	6176	4471542	Elnar	(055) 606-04-93	2020-11-17
3867	Bakı	Fiat	Tempra	1996	Sedan	Qəhvəyi	1.6	75	Benzin	236580	Mexaniki	Ön	f	3600	2118	4400505	Rustem	(070) 876-04-74	2020-11-17
3868	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	3.5	280	Benzin	165000	Avtomat	Tam	f	20400	12000	4448340	Mehebbet	(055) 912-32-72	2020-11-17
3869	Bakı	Kia	Cerato	2013	Sedan	Qara	2	150	Benzin	143000	Avtomat	Ön	f	21000	12353	4471550	İbrahim	(055) 837-80-49	2020-11-17
3870	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Qara	1.7	80	Benzin	68500	Mexaniki	Tam	f	14500	8529	4459374	Davud	(050) 323-68-19	2020-11-17
3871	Bakı	Toyota	Yaris	2008	Sedan	Boz	1.3	101	Benzin	370000	Mexaniki	Ön	f	8800	5176	4471554	Bakhtiyar	(050) 714-06-45	2020-11-17
3872	Sumqayıt	Kia	Sorento	2012	Offroader / SUV	Ağ	2.4	175	Benzin	163000	Avtomat	Tam	f	25800	15176	4471555	Azər	(070) 373-33-38	2020-11-17
3873	Bakı	Opel	Astra	1999	Universal	Ağ	1.6	101	Benzin	422000	Mexaniki	Ön	f	9000	5294	4471556	Elxan	(055) 574-29-20	2020-11-17
3874	Şəmkir	Chevrolet	Cruze	2012	Sedan	Göy	1.4	141	Benzin	110000	Avtomat	Ön	f	13000	7647	4471559	Emin	(050) 626-50-02	2020-11-17
3875	Bakı	Ford	Transit	2000	Furqon	Ağ	2.4	120	Dizel	280000	Mexaniki	Arxa	f	19500	11471	4410769	Elnur	(077) 329-94-51	2020-11-17
3876	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	191000	Mexaniki	Ön	f	10100	5941	4443911	Ülvi	(055) 735-27-77	2020-11-17
3877	Bakı	Hyundai	Elantra	2019	Sedan	Ağ	1.6	201	Benzin	13000	Avtomat	Ön	f	32800	19294	4471512	Terlan	(050) 609-44-44	2020-11-17
3878	Ağstafa	GAZ	24-10	1986	Sedan	Ağ	2.4	70	Benzin	212555	Mexaniki	Arxa	f	2500	1471	4471515	Ferhad	(055) 206-18-45	2020-11-17
3879	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.5	65	Benzin	73000	Mexaniki	Arxa	f	8000	4706	4471520	Fəqan	(050) 960-98-13	2020-11-17
3880	Ağcabədi	Volvo	S 70	1999	Sedan	Ağ	2.5	140	Benzin	355590	Mexaniki	Ön	f	7000	4118	4471517	Мири 	(050) 329-70-55	2020-11-17
3881	Bakı	Mercedes	E 240	2001	Sedan	Qara	2.6	177	Benzin	240000	Avtomat	Arxa	f	13200	7765	4471519	Vilayet	(055) 339-58-08	2020-11-17
3882	Bakı	Hyundai	Grandeur	2009	Sedan	Ağ	2.7	197	Benzin	292000	Avtomat	Ön	f	15800	9294	4422562	Orxan	(050) 592-55-44	2020-11-17
3883	Bakı	Toyota	Corolla	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Dizel	223854	Mexaniki	Ön	f	12300	7235	4470814	Mammed	(055) 726-73-80	2020-11-17
3884	İmişli	Ford	Focus	2013	Sedan	Göy	2	156	Benzin	190000	Robotlaşdırılmış	Ön	f	11500	6765	4408440	ISMAYIL	(070) 363-61-61	2020-11-17
3885	Bakı	Mercedes	C 280	1999	Sedan	Boz	2.8	197	Benzin	171000	Avtomat	Arxa	f	10300	6059	4471530	Ferid	(070) 514-41-55	2020-11-17
3886	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaşıl	1.5	76	Hibrid	123559	Variator	Ön	f	12200	7176	4471532	ELÇIN	(055) 871-17-41	2020-11-17
3887	Bakı	Hyundai	Elantra	2015	Sedan	Ağ	1.8	150	Benzin	46011	Avtomat	Ön	f	20500	12059	4353239	Asim	(050) 513-09-00	2020-11-17
3888	Bakı	Ford	Fusion	2017	Sedan	Ağ	2	240	Benzin	81000	Avtomat	Ön	f	28000	16471	4471535	Sebuhi	(070) 544-55-66	2020-11-17
3889	Bakı	Chevrolet	Cruze	2015	Sedan	Boz	1.4	141	Benzin	123000	Avtomat	Ön	f	14900	8765	4471560	Ramil	(077) 710-00-04	2020-11-17
3890	Bakı	GAZ	3102	1989	Sedan	Qara	2.4	90	Benzin	35000	Mexaniki	Arxa	f	3700	2176	4471460	Calal	(070) 311-93-73	2020-11-17
3891	Cəlilabad	Ford	Transit	2007	Furqon	Ağ	2.4	140	Dizel	193000	Mexaniki	Arxa	f	18500	10882	4470671	İsmət 	(050) 832-50-48	2020-11-17
3892	Bakı	Chevrolet	Captiva	2009	Offroader / SUV	Boz	3.2	230	Benzin	180000	Avtomat	Tam	f	16600	9765	4471467	Amid	(055) 348-18-18	2020-11-17
3893	Bakı	Chevrolet	Cruze	2013	Sedan	Qara	1.4	141	Benzin	224000	Avtomat	Ön	f	15700	9235	4471468	Orxan	(055) 940-46-76	2020-11-17
3894	Bakı	Mercedes	E 270	1999	Sedan	Yaş Asfalt	2.7	170	Dizel	200000	Avtomat	Ön	f	15500	9118	4471469	İbrahim	(070) 349-01-11	2020-11-17
3895	Bakı	Kia	Sportage	2012	Offroader / SUV	Boz	2	185	Dizel	147000	Avtomat	Ön	f	24900	14647	4433713	Ferhad	(070) 503-33-32	2020-11-17
3896	Bakı	Mercedes	E 280	2001	Sedan	Göy	2.8	204	Benzin	303000	Avtomat	Arxa	f	13300	7824	4435385	Rəşid	(070) 231-37-15	2020-11-17
3897	Bakı	Iran Khodro	Azsamand	2008	Sedan	Qara	1.6	110	Benzin	232323	Mexaniki	Ön	f	4700	2765	4471473	Ilkin	(070) 430-19-79	2020-11-17
3898	Gəncə	LADA (VAZ)	2112	2005	Hetçbek / Liftbek	Boz	1.6	80	Benzin	332200	Mexaniki	Ön	f	6700	3941	4471474	Elmir	(055) 754-31-84	2020-11-17
3899	Gəncə	Opel	Vectra	1996	Sedan	Gümüşü	1.8	125	Benzin	225000	Mexaniki	Ön	f	5800	3412	4471475	ELNUR	(055) 883-38-38	2020-11-17
3900	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2	150	Benzin	78000	Avtomat	Ön	f	22500	13235	4392803	Ismayil	(055) 380-22-66	2020-11-17
3901	Zaqatala	Mercedes	E 280	1998	Sedan	Gümüşü	2.8	192	Benzin	239500	Avtomat	Arxa	f	11000	6471	4471476	Ramin	(070) 341-90-41	2020-11-17
3902	Bakı	Opel	Astra	1999	Universal	Gümüşü	1.6	101	Benzin	229000	Mexaniki	Ön	f	8900	5235	4348529	Rasim	(050) 528-44-11	2020-11-17
3903	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Ağ	2.7	197	Benzin	190000	Avtomat	Tam	f	21800	12824	4471488	Ceyhun	(099) 855-21-11	2020-11-17
3904	Qusar	LADA (VAZ)	2109	1997	Hetçbek / Liftbek	Yaşıl	1.5	75	Benzin	100000	Mexaniki	Ön	f	4800	2824	4471378	Mulku	(070) 993-93-70	2020-11-17
3905	Bakı	Jonway	YY50QT-21B	2020	Motosiklet	Göy	0.5	10	Benzin	19220	Variator	Arxa	f	1250	735	4471379	Sahib	(055) 396-83-93	2020-11-17
3906	Ağdaş	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	130000	Mexaniki	Arxa	f	7900	4647	4471383	İlkin	(050) 993-90-00	2020-11-17
3907	Bakı	Mercedes	E 200	2015	Sedan	Ağ	2	184	Benzin	155000	Avtomat	Arxa	f	54400	32000	4425927	Elsun	(099) 333-39-94	2020-11-17
3908	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	167000	Mexaniki	Ön	f	11400	6706	4388742	ilqar	(070) 310-01-23	2020-11-17
3909	Bakı	Opel	Vectra	1998	Hetçbek / Liftbek	Gümüşü	2	136	Benzin	350000	Avtomat	Ön	f	7000	4118	4471403	Rufet	(070) 227-86-86	2020-11-17
3910	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Qara	2	141	Benzin	135000	Avtomat	Tam	f	14800	8706	4471412	Akşin	(050) 790-65-90	2020-11-17
3911	Xaçmaz	Mercedes	E 220	2000	Sedan	Göy	2.2	143	Dizel	228000	Avtomat	Arxa	f	16700	9824	4414674	Ayaz	(070) 688-51-41	2020-11-17
3912	Sumqayıt	Volkswagen	Jetta	2013	Sedan	Qara	1.8	160	Benzin	104000	Mexaniki	Ön	f	13200	7765	4471416	Elman	(050) 350-35-13	2020-11-17
3913	Bakı	Lexus	LX 570	2014	Offroader / SUV	Qara	5.7	383	Benzin	93000	Avtomat	Tam	f	110500	65000	4470034	Cavid	(050) 999-99-96	2020-11-17
3914	Sumqayıt	Mercedes	C 180	1998	Sedan	Göy	1.8	122	Benzin	264000	Avtomat	Arxa	f	10300	6059	4471423	Edik	(055) 977-07-38	2020-11-17
3915	Bakı	Hyundai	Elantra	2012	Sedan	Qara	1.6	132	Benzin	117000	Avtomat	Ön	f	17900	10529	4471425	Fuad	(055) 766-62-04	2020-11-17
3916	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	2.7	167	Benzin	93000	Avtomat	Tam	f	42330	24900	4471428	Elvin	(055) 532-03-85	2020-11-17
3917	Bakı	Mercedes	E 220	2012	Sedan	Boz	2.2	170	Dizel	180000	Avtomat	Arxa	f	42500	25000	4463276	Vuqar	(077) 755-57-55	2020-11-17
3918	Bakı	LADA (VAZ)	Vesta	2019	Sedan	Qara	1.8	122	Benzin	69377	Mexaniki	Ön	f	19377	11398	4471429	Rasul	(099) 800-03-77	2020-11-17
3919	Mingəçevir	BMW	325	2006	Sedan	Tünd qırmızı	2.5	218	Benzin	205000	Avtomat	Arxa	f	18200	10706	4471433	Orxan	(055) 916-19-16	2020-11-17
3920	Qax	GAZ	2705	1999	Mikroavtobus	Tünd qırmızı	2.4	76	Benzin	150000	Mexaniki	Arxa	f	3000	1765	4471440	Rüstəm	(055) 868-53-41	2020-11-17
3921	Bakı	Opel	Astra	2006	Universal	Qara	1.3	90	Dizel	192000	Mexaniki	Ön	f	9800	5765	4478003	Elekber	(050) 879-29-29	2020-11-17
3922	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Göy	1.4	97	Benzin	132000	Mexaniki	Ön	f	10700	6294	4471490	Elvin	(051) 917-95-95	2020-11-17
3923	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Yaş Asfalt	1.4	97	Benzin	167000	Mexaniki	Ön	f	10000	5882	4471493	Perviz	(050) 752-26-57	2020-11-17
3924	Bakı	Kia	Sportage	2008	Offroader / SUV	Gümüşü	2	141	Benzin	240000	Avtomat	Tam	f	17600	10353	4455804	Samir	(050) 898-50-90	2020-11-17
3925	Bakı	Renault	Clio	2007	Hetçbek / Liftbek	Yaş Asfalt	1.2	90	Benzin	239000	Avtomat	Ön	f	8200	4824	4471497	Ramin	(070) 300-20-17	2020-11-17
3926	Sumqayıt	Ford	Transit	1997	Yük maşını	Ağ	2.5	96	Dizel	290000	Mexaniki	Arxa	f	23000	13529	4430035	Elnur	(051) 498-70-00	2020-11-17
3927	Göyçay	Mercedes	Axor 1840	2007	Dartqı	Ağ	12	400	Dizel	852000	Avtomat	Arxa	f	68000	40000	4471318	Cavid	(050) 647-69-64	2020-11-17
3928	Zaqatala	LADA (VAZ)	2114	2011	Hetçbek / Liftbek	Gümüşü	1.6	80	Benzin	200000	Mexaniki	Ön	f	9300	5471	4471321	Emin	(070) 213-63-13	2020-11-17
3929	Bakı	Mercedes	E 240	2002	Sedan	Gümüşü	2.6	177	Benzin	322000	Avtomat	Arxa	f	16400	9647	4471323	Sadiq	(070) 219-99-27	2020-11-17
3930	Bakı	Opel	Frontera	1998	Offroader / SUV	Göy	3.2	205	Benzin	250000	Mexaniki	Tam	f	10000	5882	4471324	Elgun	(070) 239-68-88	2020-11-17
3931	Bakı	Mitsubishi	Pajero io	2001	Offroader / SUV	Qara	1.8	136	Benzin	140000	Avtomat	Arxa	f	8500	5000	4471326	Камран	(051) 229-58-35	2020-11-17
3932	Bakı	LADA (VAZ)	2106	2000	Sedan	Göy	1.6	75	Benzin	57000	Mexaniki	Arxa	f	15000	8824	4471334	Elxan	(050) 335-44-01	2020-11-17
3933	Bakı	Mercedes	E 200	2000	Sedan	Göy	2	136	Benzin	191000	Avtomat	Arxa	f	15200	8941	4471331	Rahim	(050) 244-47-75	2020-11-17
3934	Bakı	Nissan	X-Trail	2001	Offroader / SUV	Qara	2	140	Benzin	301596	Avtomat	Tam	f	9400	5529	4471336	Zöhrab	(070) 243-46-97	2020-11-17
3935	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Yaşıl	1.5	76	Hibrid	183000	Variator	Ön	f	11600	6824	4471338	Eynulla	(055) 251-18-16	2020-11-17
3936	Bakı	Mercedes	Vito 116	2011	Minivan	Qara	2.2	170	Dizel	235500	Mexaniki	Arxa	f	45700	26882	4471340	Samir	(050) 440-04-19	2020-11-17
3937	Bakı	BMW	520	1996	Universal	Gümüşü	2	150	Benzin	307612	Avtomat	Arxa	f	18500	10882	4471343	Sahib	(070) 404-44-80	2020-11-17
3938	Şirvan	LADA (VAZ)	2107	1984	Sedan	Ağ	1.5	65	Benzin	221459	Mexaniki	Arxa	f	3000	1765	4471344	Eli	(055) 212-39-00	2020-11-17
3939	Bakı	Kia	Sportage	2012	Offroader / SUV	Ağ	2	150	Dizel	120000	Avtomat	Ön	f	25300	14882	4471325	Elnur	(055) 413-23-32	2020-11-17
3940	Bakı	Mercedes	190	1991	Sedan	Qızılı	1.8	109	Benzin	409000	Mexaniki	Arxa	f	7200	4235	4471348	Cemil	(055) 260-61-35	2020-11-17
3941	Bakı	Mercedes	E 240	2003	Sedan	Ağ	2.6	177	Benzin	230000	Avtomat	Tam	f	16400	9647	4415853	Amin	(051) 718-09-99	2020-11-17
3942	Bakı	Nissan	X-Trail	2014	Offroader / SUV	Qara	2.5	171	Benzin	119500	Avtomat	Tam	f	28500	16765	4471247	Samir	(070) 755-46-22	2020-11-17
3943	Bakı	Mercedes	C 200	1997	Sedan	Gümüşü	2	136	Benzin	367300	Avtomat	Arxa	f	10800	6353	4471249	Sameddin 	(070) 200-16-77	2020-11-17
3944	Gəncə	LADA (VAZ)	2106	2005	Offroader / SUV	Göy	1.5	65	Benzin	86000	Mexaniki	Arxa	f	5200	3059	4471250	Ceyhun 	(055) 691-31-59	2020-11-17
3945	Bakı	Hyundai	i30	2008	Universal	Boz	1.6	116	Dizel	177000	Mexaniki	Ön	f	14200	8353	4471252	Nadir Bəy	(055) 711-85-91	2020-11-17
3946	Bakı	Lexus	LX 570	2010	Offroader / SUV	Ağ	5.7	383	Benzin	135000	Avtomat	Tam	f	75650	44500	4471253	Nuru	(051) 691-09-09	2020-11-17
3947	Bakı	Saipa	141	2010	Hetçbek / Liftbek	Qara	1.3	75	Benzin	308000	Mexaniki	Ön	f	5200	3059	4471191	Əli	(055) 895-03-02	2020-11-17
3948	Bakı	Mercedes	E 220	2001	Universal	Gümüşü	2.2	143	Dizel	384000	Avtomat	Arxa	f	15000	8824	4471263	Emin	(050) 210-84-77	2020-11-17
3949	Şirvan	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	177000	Avtomat	Ön	f	22200	13059	4471268	Aqil	(050) 447-70-20	2020-11-17
3950	Bakı	Mercedes	E 200	2018	Sedan	Qara	2	184	Dizel	88000	Avtomat	Arxa	f	98600	58000	4471269	Vüsal	(050) 253-01-23	2020-11-17
3951	Bakı	Renault	Clio	2007	Hetçbek / Liftbek	Boz	1.6	112	Benzin	240000	Avtomat	Ön	f	8200	4824	4471270	İlgün	(070) 356-18-88	2020-11-17
3952	Bakı	Renault	Megane Scenic	2007	Hetçbek / Liftbek	Boz	1.5	110	Dizel	158000	Mexaniki	Ön	f	11000	6471	4471275	Emin	(070) 205-43-05	2020-11-17
3953	Biləsuvar	Suzuki	Grand Vitara	2006	Offroader / SUV	Ağ	2.7	184	Benzin	219000	Avtomat	Ön	f	12900	7588	4471276	Emin	(070) 354-15-10	2020-11-17
3954	Bakı	Nissan	Tiida	2007	Hetçbek / Liftbek	Qara	1.6	110	Benzin	145000	Avtomat	Ön	f	13400	7882	4471278	Eldar	(070) 255-66-46	2020-11-17
3955	Mingəçevir	Ford	Focus	2007	Universal	Boz	1.6	110	Dizel	327000	Mexaniki	Ön	f	11800	6941	4471280	Murad	(070) 367-30-36	2020-11-17
3956	Masallı	Mercedes	E 240	2002	Sedan	Qara	2.6	177	Benzin	256000	Avtomat	Arxa	f	16300	9588	4471291	mirzağa	(051) 440-53-53	2020-11-17
3957	Bakı	Kia	Rio	2012	Sedan	Qara	1.4	107	Benzin	115000	Avtomat	Ön	f	16800	9882	4471300	Fuad	(055) 441-30-00	2020-11-17
3958	Bakı	Honda	Civic	2016	Sedan	Yaş Asfalt	1.5	174	Benzin	82200	Avtomat	Ön	f	26690	15700	4471309	Ali	(050) 465-07-04	2020-11-17
3959	Mingəçevir	Mercedes	Vito	2011	Van	Ağ	2.2	170	Dizel	230000	Mexaniki	Arxa	f	28500	16765	4471310	Cahid	(070) 811-45-45	2020-11-17
3960	Bakı	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	375000	Avtomat	Arxa	f	11500	6765	4471286	Oqtay	(070) 760-15-55	2020-11-17
3961	Bakı	BMW	320	1997	Sedan	Qırmızı	1.9	118	Benzin	364900	Mexaniki	Arxa	f	5700	3353	4471317	Rəhim	(050) 600-00-98	2020-11-17
3962	Bakı	Hyundai	Sonata	2011	Sedan	Ağ	2	150	Hibrid	70000	Avtomat	Ön	f	22900	13471	3985222	Руслан	(050) 210-57-94	2020-11-17
3963	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	197500	Mexaniki	Ön	f	10600	6235	4471356	Orxan	(055) 205-47-31	2020-11-17
3964	Bakı	Mercedes	E 230	1992	Sedan	Boz	2.3	150	Benzin	227000	Avtomat	Arxa	f	9200	5412	4471359	Vahid	(055) 621-10-00	2020-11-17
3965	Xırdalan	Mercedes	Viano	2004	Van	Qara	2.2	170	Dizel	482050	Avtomat	Arxa	f	25000	14706	4471363	Vuqar	(055) 610-33-66	2020-11-17
3966	Bakı	Mercedes	E 270	1999	Sedan	Göy	2.7	170	Dizel	350000	Avtomat	Arxa	f	16800	9882	4343443	Royal	(070) 511-12-10	2020-11-17
3967	Bakı	BMW	528	2010	Sedan	Qara	2.5	235	Benzin	85035	Robotlaşdırılmış	Arxa	f	43860	25800	4453545	Eli	(050) 299-80-79	2020-11-17
3968	Bakı	Land Rover	Discovery	2015	Offroader / SUV	Ağ	3	190	Benzin	165000	Avtomat	Tam	f	62730	36900	4324717	Oruc	(051) 309-29-29	2020-11-17
3969	Bakı	Subaru	Impreza	2009	Sedan	Qara	2	150	Benzin	209000	Avtomat	Tam	f	12900	7588	4471213	Elçin	(077) 717-22-27	2020-11-17
3970	Bakı	Ford	Fusion	2013	Sedan	Yaş Asfalt	1.5	181	Benzin	90000	Avtomat	Ön	f	26830	15782	4471215	Ruslan	(050) 514-16-13	2020-11-17
3971	Bakı	Kia	Cerato	2014	Sedan	Qara	1.6	130	Benzin	101000	Avtomat	Ön	f	19400	11412	4471212	Faiq	(050) 405-75-15	2020-11-17
3972	Bakı	Daewoo	Gentra	2014	Sedan	Qara	1.5	107	Benzin	250000	Mexaniki	Ön	f	14000	8235	4471216	Səməd	(070) 360-81-52	2020-11-17
3973	Bakı	Nissan	Maxima	2004	Sedan	Gümüşü	3	200	Benzin	420000	Avtomat	Ön	f	11300	6647	4471225	Behruz	(070) 881-38-68	2020-11-17
3974	Gəncə	Opel	Astra	2004	Universal	Boz	1.6	110	Benzin	270000	Mexaniki	Ön	f	10600	6235	4471227	zaur	(055) 457-67-41	2020-11-17
3975	Bakı	Jeep	Wrangler	2015	Offroader / SUV	Ağ	3.6	284	Benzin	0	Avtomat	Tam	t	84830	49900	4407903	Avtosalon "Jeep’s House 4X4"	(055) 211-91-71	2020-11-17
3976	Bakı	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	237000	Mexaniki	Ön	f	8800	5176	4471230	Ənvər	(050) 244-99-20	2020-11-17
3977	Bakı	Mercedes	E 200	1993	Sedan	Tünd qırmızı	2	136	Benzin	300000	Mexaniki	Arxa	f	4900	2882	4471229	Eli	(050) 475-24-59	2020-11-17
3978	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Göy	1.4	90	Benzin	187000	Mexaniki	Ön	f	11500	6765	4471233	Huseyn	(050) 410-10-44	2020-11-17
3979	Lənkəran	LADA (VAZ)	2115	2008	Sedan	Qara	1.6	80	Benzin	247000	Mexaniki	Arxa	f	8300	4882	4471232	Şahin	(050) 984-09-94	2020-11-17
3980	Gəncə	LADA (VAZ)	2106	1988	Sedan	Bej	1.5	65	Benzin	260000	Mexaniki	Arxa	f	2600	1529	4471235	Zamiq	(055) 530-31-66	2020-11-17
3981	Bakı	Ford	Cargo	2006	Yük maşını	Ağ	7	340	Dizel	18000	Mexaniki	Tam	f	23000	13529	4471236	esger	(050) 580-11-16	2020-11-17
3982	Bakı	LADA (VAZ)	2106	1985	Sedan	Boz	1.5	65	Benzin	250652	Mexaniki	Arxa	f	3500	2059	4471130	Seddam	(077) 484-51-30	2020-11-17
3983	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	228500	Avtomat	Tam	f	37400	22000	4471129	Anar 	(051) 404-08-98	2020-11-17
3984	Bakı	Hyundai	Accent	2009	Sedan	Yaş Asfalt	1.4	97	Benzin	363000	Mexaniki	Ön	f	10500	6176	4471137	Rövşən	(055) 202-40-44	2020-11-17
3985	Naxçıvan	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	95000	Avtomat	Ön	f	16800	9882	4471140	Zaur	(051) 559-85-15	2020-11-17
3986	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	122000	Avtomat	Ön	f	13700	8059	4471139	Terman	(055) 695-02-60	2020-11-17
3987	Bakı	Kia	Ceed	2007	Universal	Mavi	1.6	132	Dizel	186000	Mexaniki	Ön	f	13600	8000	4471152	Elvin	(055) 725-67-66	2020-11-17
3988	Bakı	Volkswagen	Jetta	2012	Sedan	Yaş Asfalt	1.4	160	Benzin	150	Avtomat	Ön	f	16660	9800	4471155	İsmayılov Aydın	(050) 741-21-38	2020-11-17
3989	Bakı	Mercedes	E 200	1997	Sedan	Gümüşü	2	136	Benzin	450632	Variator	Arxa	f	11500	6765	4471156	zahir	(050) 974-40-16	2020-11-17
3990	Bakı	Harley-Davidson	FXDWG Dyna Wide Glide	2013	Motosiklet	Qara	1.7	67	Benzin	30555	Mexaniki	Arxa	f	22950	13500	4471157	Orxan	(050) 535-05-05	2020-11-17
3991	Göygöl	LADA (VAZ)	21099	1996	Sedan	Bej	1.6	80	Benzin	100000	Mexaniki	Ön	f	4300	2529	4471160	Cela	(055) 254-75-70	2020-11-17
3992	Bakı	Mercedes	GL 350	2009	Offroader / SUV	Qara	3	265	Dizel	252000	Avtomat	Tam	f	46750	27500	4471163	Cavid	(055) 208-10-00	2020-11-17
3993	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Gümüşü	1.8	99	Hibrid	126000	Avtomat	Ön	f	15200	8941	4471175	Fuad	(055) 360-00-43	2020-11-17
3994	Bakı	Mercedes	Vito 115	2010	Van	Qara	2.2	170	Dizel	185000	Mexaniki	Tam	f	32000	18824	4471176	Ramal	(055) 222-08-05	2020-11-17
3995	Bakı	Hyundai	Elantra	2012	Sedan	Ağ	1.8	150	Benzin	130000	Avtomat	Arxa	f	20800	12235	4471179	Orxan	(055) 922-41-61	2020-11-17
3996	Bakı	Mercedes	Vito	1998	Van	Ağ	2.3	150	Dizel	800000	Mexaniki	Ön	f	12000	7059	4471182	celal	(050) 989-75-53	2020-11-17
3997	Bakı	Hyundai	Santa Fe	2012	Offroader / SUV	Yaş Asfalt	2.4	178	Benzin	151000	Avtomat	Ön	f	25000	14706	4471184	Perviz	(070) 279-59-59	2020-11-17
3998	Bakı	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	85000	Mexaniki	Arxa	f	7900	4647	4471192	Tural	(055) 947-90-19	2020-11-17
3999	Bakı	LADA (VAZ)	Priora	2015	Hetçbek / Liftbek	Göy	1.6	106	Benzin	82000	Mexaniki	Ön	f	12800	7529	4471201	Nail	(051) 557-00-74	2020-11-17
4000	Bakı	BMW	318	1997	Sedan	Göy	1.8	116	Benzin	389999	Mexaniki	Arxa	f	7500	4412	4471203	Hüseyn	(055) 600-64-61	2020-11-17
4001	Bakı	BMW	328	2014	Sedan	Ağ	2	245	Benzin	115000	Avtomat	Arxa	f	38250	22500	4439746	Ceyhun	(055) 222-00-07	2020-11-17
4002	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Qara	1.9	130	Dizel	310000	Avtomat	Ön	f	11200	6588	4471206	Anar	(055) 701-12-61	2020-11-17
4003	Ağdaş	LADA (VAZ)	2106	1985	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	4800	2824	4471207	ilham	(050) 627-83-11	2020-11-17
4004	Bakı	Infiniti	FX35	2012	Offroader / SUV	Ağ	3.5	307	Benzin	121000	Avtomat	Tam	f	37400	22000	4455939	Timur	(055) 653-33-33	2020-11-17
4005	Xırdalan	Lexus	LX 470	1999	Offroader / SUV	Qara	4.7	234	Benzin	215000	Avtomat	Tam	f	19000	11176	4471244	Eleddin	(050) 495-95-95	2020-11-17
4006	Bakı	LADA (VAZ)	2106	2004	Sedan	Qırmızı	1.6	75	Benzin	150000	Mexaniki	Arxa	f	5000	2941	4471245	Efqan	(070) 361-33-66	2020-11-17
4007	Bakı	Toyota	Land Cruiser	2009	Offroader / SUV	Ağ	4	243	Benzin	180000	Avtomat	Tam	f	59500	35000	4471246	Elnur	(070) 321-59-33	2020-11-17
4008	Bakı	Mercedes	C 250	2012	Sedan	Ağ	1.8	204	Benzin	135000	Avtomat	Arxa	f	27500	16176	4436923	Sahil 	(055) 333-10-30	2020-11-17
4010	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Göy	1.5	110	Dizel	151000	Mexaniki	Ön	f	10850	6382	4471071	Murad	(050) 737-29-78	2020-11-17
4011	Bakı	Mercedes	Viano	2011	Van	Qara	2.2	170	Dizel	305000	Avtomat	Arxa	f	42160	24800	4471078	Rəşad	(050) 561-44-11	2020-11-17
4012	Lənkəran	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	1.8	136	Benzin	155333	Avtomat	Tam	f	8500	5000	4471079	Vasif	(055) 694-08-64	2020-11-17
4013	Mingəçevir	LADA (VAZ)	2112	2003	Hetçbek / Liftbek	Gümüşü	1.6	80	Benzin	304550	Mexaniki	Ön	f	8000	4706	4471084	Rövşən	(050) 342-62-52	2020-11-17
4014	Bakı	Opel	Astra	1993	Hetçbek / Liftbek	Göy	1.8	116	Benzin	250000	Avtomat	Ön	f	4600	2706	4471086	Cəlil	(055) 897-92-02	2020-11-17
4015	Ağstafa	LADA (VAZ)	2106	2004	Sedan	Ağ	1.5	65	Benzin	212555	Mexaniki	Arxa	f	6000	3529	4471088	Nicat	(055) 442-12-02	2020-11-17
4016	Bakı	BMW	320	2002	Sedan	Mavi	2	150	Benzin	220000	Avtomat	Arxa	f	13500	7941	4471089	Agasen	(055) 937-91-91	2020-11-17
4017	Bakı	Fiat	Doblo	2007	Furqon	Gümüşü	1.3	85	Dizel	216277	Mexaniki	Ön	f	9500	5588	4471091	Oktay	(050) 378-29-19	2020-11-17
4018	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	69600	Mexaniki	Tam	f	13300	7824	4471098	Rasim	(070) 291-23-70	2020-11-17
4019	Bakı	Opel	Vectra	1996	Sedan	Yaşıl	2	136	Benzin	557844	Avtomat	Ön	f	5500	3235	4471100	Ruslan	(070) 515-29-03	2020-11-17
4020	Oğuz	Mitsubishi	Airtrek	2002	Offroader / SUV	Ağ	2	140	Benzin	300000	Avtomat	Ön	f	9500	5588	4471108	Murad	(051) 306-65-22	2020-11-17
4021	Qəbələ	LADA (VAZ)	Niva	2020	Offroader / SUV	Göy	1.7	80	Benzin	5800	Mexaniki	Tam	f	25710	15124	4293459	Namiq	(050) 316-42-32	2020-11-17
4022	Bakı	Toyota	Prado	2012	Offroader / SUV	Qara	2.7	167	Benzin	124000	Avtomat	Tam	f	45390	26700	4465303	Aqil	(050) 715-35-06	2020-11-17
4023	Bakı	Nissan	Juke	2014	Offroader / SUV	Ağ	1.6	117	Benzin	58577	Avtomat	Ön	f	22000	12941	4471116	Sahib	(050) 966-70-39	2020-11-17
4024	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Gümüşü	1.4	95	Benzin	174000	Mexaniki	Ön	f	11800	6941	4471004	Mahmud	(051) 402-71-27	2020-11-17
4025	Bakı	Ford	Transit	2000	Yük maşını	Ağ	2.4	140	Dizel	200000	Mexaniki	Arxa	f	23900	14059	4471016	Hacı	(070) 629-34-44	2020-11-17
4026	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	2	136	Benzin	218000	Avtomat	Tam	f	9500	5588	4471019	Fuad	(070) 876-30-78	2020-11-17
4027	Bakı	Hyundai	Elantra	2015	Sedan	Qara	1.8	150	Benzin	48000	Avtomat	Ön	f	20800	12235	4409998	Aqil	(050) 306-17-37	2020-11-17
4028	Bakı	Opel	Astra	1998	Universal	Gümüşü	1.6	101	Benzin	356099	Avtomat	Ön	f	9200	5412	4471026	Ruslan	(055) 600-15-69	2020-11-17
4029	Gəncə	Opel	Vectra	1996	Sedan	Göy	1.8	125	Benzin	250000	Mexaniki	Ön	f	5700	3353	4471027	Ceyhun 	(070) 605-54-56	2020-11-17
4030	Bakı	Nissan	Patrol	2007	Offroader / SUV	Qara	3	160	Dizel	174000	Avtomat	Tam	f	29500	17353	4471028	Ilqar	(070) 609-00-28	2020-11-17
4031	Zaqatala	Opel	Vectra	1992	Sedan	Tünd qırmızı	2	136	Benzin	329000	Mexaniki	Ön	f	4850	2853	4471039	Muhamad	(055) 755-78-09	2020-11-17
4032	Bakı	Volkswagen	Jetta	2017	Sedan	Göy	1.4	150	Benzin	18900	Avtomat	Ön	f	17900	10529	4471040	İlham	(055) 205-43-07	2020-11-17
4033	Sumqayıt	Tofas	Dogan	2004	Sedan	Ağ	1.6	86	Benzin	120000	Mexaniki	Arxa	f	8500	5000	4471047	Fərid  	(055) 681-55-66	2020-11-17
4034	Bakı	Mercedes	E 220	2014	Sedan	Yaş Asfalt	2.2	170	Dizel	198000	Avtomat	Arxa	f	43860	25800	4471050	Suleyman 	(050) 729-07-77	2020-11-17
4035	Sumqayıt	Mercedes	E 240	2003	Sedan	Mavi	2.6	177	Benzin	280000	Avtomat	Arxa	f	16000	9412	4471055	Cesur	(070) 555-35-83	2020-11-17
4036	Bakı	BMW	528	2002	Offroader / SUV	Qara	2.5	192	Benzin	200000	Avtomat	Arxa	f	15000	8824	4471068	Akaw	(070) 990-19-49	2020-11-17
4037	Bakı	Chevrolet	Cruze	2013	Sedan	Gümüşü	1.4	141	Benzin	150000	Avtomat	Ön	f	13600	8000	4471069	Adem	(050) 205-40-18	2020-11-17
4038	Göyçay	Mercedes	E 300	2006	Sedan	Qara	3	231	Benzin	226000	Avtomat	Arxa	f	20000	11765	4471065	ZAUR	(055) 480-09-99	2020-11-17
4039	Bakı	Iran Khodro	Azsamand	2006	Sedan	Yaş Asfalt	1.8	110	Benzin	333333	Mexaniki	Ön	f	8888	5228	4471072	Orxan	(055) 589-93-33	2020-11-17
4040	Bakı	Mercedes	E 200	2018	Sedan	Qara	2	184	Benzin	42000	Avtomat	Arxa	f	67830	39900	4469868	Zaur	(050) 215-18-86	2020-11-17
4041	Bakı	Toyota	Solara	2004	Sedan	Bej	3.3	225	Benzin	150000	Avtomat	Tam	f	20000	11765	4471121	sahib	(055) 777-91-98	2020-11-17
4042	İmişli	Hyundai	Santa Fe	2012	Offroader / SUV	Ağ	2.4	178	Benzin	153000	Avtomat	Tam	f	27000	15882	4471123	Baloglan 	(050) 366-54-73	2020-11-17
4043	Bakı	Hyundai	Veloster	2011	Hetçbek / Liftbek	Narıncı	1.6	132	Benzin	80000	Avtomat	Ön	f	16000	9412	4471120	kadir	(050) 868-90-27	2020-11-17
4044	Bakı	Iveco	Otoyol	1998	Avtobus	Yaşıl	3.9	120	Dizel	250000	Mexaniki	Arxa	f	14200	8353	4471128	Elmar	(055) 766-88-10	2020-11-17
4045	Bakı	Opel	Corsa	2001	Hetçbek / Liftbek	Yaşıl	1.4	93	Benzin	205000	Avtomat	Ön	f	8600	5059	4471124	Ramil	(050) 686-18-18	2020-11-17
4046	Sumqayıt	Opel	Vectra	1996	Sedan	Yaşıl	1.8	125	Benzin	253008	Avtomat	Arxa	f	5500	3235	4470967	Mahmud	(050) 460-32-12	2020-11-17
4047	Zərdab	Hyundai	ix35	2010	Offroader / SUV	Ağ	2	165	Benzin	170000	Avtomat	Tam	f	22500	13235	4470970	Kamil	(055) 800-95-24	2020-11-17
4048	Gəncə	Hyundai	Sonata	2013	Sedan	Ağ	2	274	Benzin	55000	Avtomat	Ön	f	20800	12235	4470969	Ruslan	(055) 516-40-42	2020-11-17
4049	Bakı	Tofas	Dogan	2005	Sedan	Boz	1.6	86	Benzin	83000	Mexaniki	Arxa	f	6000	3529	4470979	Əli	(055) 508-44-45	2020-11-17
4050	Bakı	Mercedes	C 200	1999	Sedan	Yaşıl	2	136	Benzin	278623	Avtomat	Arxa	f	12100	7118	4470953	Aqil	(055) 285-80-81	2020-11-17
4051	Bakı	Mercedes	E 350	2009	Sedan	Qara	3.5	272	Benzin	240000	Avtomat	Arxa	f	35530	20900	4470960	Emil	(055) 400-16-66	2020-11-17
4052	Bakı	Toyota	Prado	2010	Offroader / SUV	Qara	2.7	167	Benzin	222000	Avtomat	Tam	f	37230	21900	4470935	Məhəmməd	(050) 325-66-76	2020-11-17
4053	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	110000	Avtomat	Ön	f	13000	7647	4470706	Subhan	(055) 360-30-10	2020-11-17
4054	Bakı	Hyundai	Sonata	2013	Sedan	Göy	2	274	Benzin	85000	Avtomat	Ön	f	23500	13824	4470983	Anar	(050) 632-65-69	2020-11-17
4055	Bakı	BMW	525	1995	Sedan	Göy	2.5	192	Benzin	388888	Mexaniki	Arxa	f	6900	4059	4457832	Sultan	(050) 476-49-88	2020-11-17
4056	Bakı	LADA (VAZ)	2106	2004	Sedan	Yaşıl	1.6	75	Benzin	126000	Mexaniki	Arxa	f	5500	3235	4470985	Nicat	(055) 470-05-00	2020-11-17
4057	Bakı	Volkswagen	Amarok	2012	Pikap	Ağ	2	180	Dizel	120000	Avtomat	Tam	f	30000	17647	4470622	Sənan	(050) 510-19-10	2020-11-17
4058	Bakı	Nissan	X-Trail	2008	Offroader / SUV	Qara	2.5	170	Benzin	216000	Avtomat	Tam	f	17500	10294	4470508	Elsen	(055) 535-88-20	2020-11-17
4059	Bakı	Mazda	CX-9	2010	Offroader / SUV	Qara	3.7	273	Benzin	250000	Avtomat	Tam	f	21000	12353	4470901	Fərid	(050) 263-20-55	2020-11-17
4060	Bakı	Opel	Vectra	1996	Sedan	Qara	1.6	101	Benzin	400000	Mexaniki	Ön	f	6500	3824	4470904	Elwad	(055) 202-67-42	2020-11-17
4061	Bakı	Toyota	Prado	2013	Offroader / SUV	Qara	2.7	167	Benzin	165000	Avtomat	Tam	f	43860	25800	4447768	Anar	(077) 310-97-21	2020-11-17
4062	Bakı	Opel	Insignia	2009	Sedan	Ağ	2	195	Benzin	180000	Avtomat	Tam	f	15500	9118	4470907	Rahib	(099) 762-51-52	2020-11-17
4063	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	156000	Mexaniki	Tam	f	9900	5824	4470908	Reşad 	(051) 321-22-22	2020-11-17
4064	Bakı	Opel	Astra	1996	Universal	Bənövşəyi	1.6	101	Benzin	272000	Mexaniki	Ön	f	4300	2529	4470912	Cavid	(055) 717-33-53	2020-11-17
4065	Bakı	Subaru	Forester	2014	Offroader / SUV	Yaş Asfalt	2.5	171	Benzin	127000	Avtomat	Tam	f	27000	15882	4470915	Samir	(055) 500-33-55	2020-11-17
4066	Gəncə	Volkswagen	Jetta	2002	Sedan	Gümüşü	2	140	Benzin	300000	Avtomat	Ön	f	7000	4118	4470909	Dilqem	(070) 955-52-57	2020-11-17
4067	Bakı	Opel	Zafira	2007	Minivan	Bej	1.9	150	Dizel	249550	Mexaniki	Ön	f	13500	7941	4470918	Zirəddin	(050) 212-34-25	2020-11-17
4068	Bakı	Ford	Fusion	2013	Sedan	Qara	1.5	181	Benzin	210479	Avtomat	Ön	f	18400	10824	4470922	Eli	(077) 571-12-13	2020-11-17
4069	Bakı	Mercedes	E 250	2009	Sedan	Yaş Asfalt	1.8	204	Benzin	160000	Avtomat	Arxa	f	32300	19000	4470924	Mehran	(050) 549-41-81	2020-11-17
4070	Bakı	LADA (VAZ)	2106	1990	Sedan	Bej	1.6	75	Benzin	350000	Mexaniki	Arxa	f	4800	2824	4470923	Azer	(077) 306-47-16	2020-11-17
4071	Bakı	Iran Khodro	Azsamand	2008	Sedan	Boz	1.6	110	Benzin	257000	Mexaniki	Ön	f	6500	3824	4470926	Məqsəd	(055) 215-40-62	2020-11-17
4072	Naftalan	LADA (VAZ)	2104	1998	Universal	Ağ	1.6	75	Benzin	195000	Mexaniki	Arxa	f	5000	2941	4470934	Nicat	(055) 649-49-09	2020-11-17
4073	Xaçmaz	LADA (VAZ)	Kalina	2005	Sedan	Bej	1.6	98	Benzin	270000	Mexaniki	Ön	f	7000	4118	4470939	Elxan	(055) 242-62-58	2020-11-17
4074	Tovuz	LADA (VAZ)	Niva	1999	Offroader / SUV	Yaşıl	1.7	80	Benzin	201420	Mexaniki	Tam	f	4600	2706	4470944	Zahid	(055) 465-52-18	2020-11-17
4075	Yevlax	Mercedes	E 250	1994	Sedan	Yaş Asfalt	2.5	150	Dizel	350000	Avtomat	Arxa	f	15000	8824	4470949	Elbrus	(055) 313-46-49	2020-11-17
4076	Göygöl	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	99000	Mexaniki	Arxa	f	9300	5471	4470951	Ruhin	(070) 746-20-92	2020-11-17
4077	Bakı	Renault	Grand Scenic	2011	Minivan	Ağ	1.5	110	Dizel	290000	Mexaniki	Ön	f	16000	9412	4470958	İlkin 	(055) 850-88-40	2020-11-17
4078	Bakı	LADA (VAZ)	2114	2004	Hetçbek / Liftbek	Boz	1.5	75	Benzin	285000	Mexaniki	Ön	f	6000	3529	4470952	Nicat	(077) 570-25-26	2020-11-17
4079	Bakı	Mercedes	E 220	2011	Sedan	Yaş Asfalt	2.2	170	Dizel	250000	Avtomat	Arxa	f	34510	20300	4283617	Mirəhməd	(050) 244-46-06	2020-11-17
4080	Biləsuvar	Chevrolet	Cruze	2010	Sedan	Qara	1.6	124	Benzin	31000	Mexaniki	Ön	f	11300	6647	4470990	Rəşad	(070) 645-65-25	2020-11-17
4081	Sumqayıt	LADA (VAZ)	2109	1990	Hetçbek / Liftbek	Qara	1.6	80	Benzin	290001	Mexaniki	Ön	f	3800	2235	4470996	Taleh	(070) 209-59-24	2020-11-17
4082	Xaçmaz	KamAz	5511	1989	Yük maşını	Narıncı	11	191	Dizel	199999	Mexaniki	Arxa	f	16000	9412	4471001	Elnur	(070) 679-39-49	2020-11-17
4083	Astara	LADA (VAZ)	Niva	1991	Offroader / SUV	Ağ	1.7	80	Benzin	249000	Mexaniki	Arxa	f	4500	2647	4471002	Orxan	(050) 354-33-88	2020-11-17
4084	Bakı	Mercedes	C 200	1994	Sedan	Ağ	2	136	Benzin	514000	Avtomat	Arxa	f	8000	4706	4471003	Vusal	(050) 307-17-77	2020-11-17
4085	Bakı	LADA (VAZ)	2106	1983	Sedan	Göy	1.3	65	Benzin	2170	Mexaniki	Arxa	f	54400	32000	3617836	Nurlan	(050) 230-90-92	2020-11-17
4086	Bakı	Mercedes	S 350	2006	Sedan	Qara	3.5	272	Benzin	261000	Avtomat	Arxa	f	32300	19000	4463428	Ulvi	(050) 480-44-72	2020-11-17
4087	Bakı	Mercedes	E 200	2017	Universal	Qara	2	194	Benzin	113000	Avtomat	Arxa	f	58650	34500	4470853	Ruslan	(050) 353-54-54	2020-11-17
4088	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	111300	Avtomat	Tam	f	72760	42800	4452303	Nicat	(050) 888-00-19	2020-11-17
4089	Xaçmaz	LADA (VAZ)	2106	1987	Sedan	Sarı	1.5	65	Benzin	200240	Mexaniki	Tam	f	3300	1941	4470854	Yasar	(077) 343-32-00	2020-11-17
4090	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	132500	Avtomat	Ön	f	15400	9059	4470860	kadir	(050) 851-02-23	2020-11-17
4091	Bakı	Opel	Vectra	1998	Sedan	Gümüşü	1.8	125	Benzin	630000	Avtomat	Ön	f	6000	3529	4470862	Nazim	(050) 444-26-37	2020-11-17
4092	Gəncə	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	92140	Mexaniki	Arxa	f	8800	5176	4470850	Vuqar	(055) 872-96-91	2020-11-17
4093	Bakı	Chevrolet	Volt	2014	Hetçbek / Liftbek	Qara	1.4	86	Hibrid	165000	Avtomat	Ön	f	21500	12647	3919157	Nureddin	(050) 330-77-70	2020-11-17
4094	Gəncə	Hyundai	Accent	2011	Sedan	Qara	1.6	140	Benzin	224000	Avtomat	Ön	f	16200	9529	4470863	Ferman	(070) 622-00-61	2020-11-17
4095	Bakı	Daewoo	Gentra	2014	Sedan	Qara	1.5	107	Benzin	160000	Mexaniki	Ön	f	9999	5882	4470868	Ramazan	(070) 866-54-88	2020-11-17
4096	Sumqayıt	Nissan	Qashqai	2010	Offroader / SUV	Ağ	2	150	Benzin	188520	Avtomat	Ön	f	17500	10294	4470867	Anar	(070) 880-37-95	2020-11-17
4097	Bakı	Toyota	Prado	2006	Offroader / SUV	Qara	4	250	Benzin	256000	Avtomat	Tam	f	30600	18000	4470877	Şahin	(050) 336-91-19	2020-11-17
4098	Bakı	Mercedes	E 240	2001	Sedan	Göy	2.6	177	Benzin	166000	Avtomat	Arxa	f	15500	9118	4470878	Rakif	(077) 377-85-45	2020-11-17
4099	Lənkəran	Mercedes	410 D	1994	Mikroavtobus	Ağ	2.9	75	Dizel	450000	Mexaniki	Arxa	f	18900	11118	4470803	Vüqar 	(051) 653-23-03	2020-11-17
4100	Sumqayıt	Mercedes	S 320	1998	Sedan	Ağ	3.2	224	Benzin	300000	Avtomat	Arxa	f	13900	8176	4470805	Valeh	(077) 444-49-14	2020-11-17
4101	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	69000	Mexaniki	Tam	f	9700	5706	4470806	Ruslan	(055) 302-99-46	2020-11-17
4102	Sumqayıt	Mercedes	E 280	1994	Sedan	Yaş Asfalt	2.8	193	Benzin	334213	Avtomat	Arxa	f	8500	5000	4470810	Orxan	(070) 715-16-68	2020-11-17
4103	Ağdam	GAZ	24-10	1982	Sedan	Boz	2.4	90	Benzin	108000	Mexaniki	Ön	f	4700	2765	4470809	Mamed	(055) 210-11-68	2020-11-17
4104	Bakı	Ford	Transit	2013	Furqon	Ağ	2.2	140	Dizel	128300	Mexaniki	Arxa	f	24300	14294	4440072	Murad	(099) 803-00-83	2020-11-17
4105	Bakı	Lexus	RX 300	2019	Offroader / SUV	Boz	3	300	Benzin	13000	Avtomat	Tam	f	99450	58500	4470812	Namiq	(050) 398-50-00	2020-11-17
4106	Masallı	Mercedes	E 320	2000	Sedan	Göy	3.2	224	Benzin	279000	Avtomat	Arxa	f	15600	9176	4412549	Ağa 	(070) 977-18-00	2020-11-17
4107	Bakı	Mercedes	Vito 111	2010	Van	Qara	2.2	170	Dizel	400000	Avtomat	Arxa	f	25500	15000	4470825	Azər	(051) 443-00-02	2020-11-17
4108	Bakı	Hyundai	Sonata	2013	Sedan	Ağ	2	274	Benzin	119000	Avtomat	Ön	f	20800	12235	4425598	Aydin	(070) 818-62-48	2020-11-17
4109	Bakı	Mercedes	GL 400	2014	Offroader / SUV	Qara	3	333	Benzin	108000	Avtomat	Tam	f	88400	52000	4470831	İsmayıl	(070) 492-17-77	2020-11-17
4110	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Göy	1.4	110	Benzin	165000	Mexaniki	Ön	f	11500	6765	4470834	Veli	(055) 200-00-63	2020-11-17
4111	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Qara	1.3	90	Dizel	183000	Mexaniki	Ön	f	10900	6412	4470838	Qabil	(070) 873-40-70	2020-11-17
4112	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.4	100	Benzin	153809	Mexaniki	Ön	f	10700	6294	4470841	Ruslan	(055) 603-32-67	2020-11-17
4113	Bakı	LADA (VAZ)	Priora	2013	Sedan	Qara	1.6	106	Benzin	170000	Mexaniki	Ön	f	11800	6941	4470842	Arif	(055) 509-50-88	2020-11-17
4114	Bakı	Mercedes	C 180	1994	Sedan	Boz	1.8	122	Benzin	150000	Avtomat	Arxa	f	7400	4353	4470846	Alim	(055) 255-67-46	2020-11-17
4115	Qax	Kia	Sorento	2006	Offroader / SUV	Boz	2.5	170	Dizel	216700	Avtomat	Tam	f	16900	9941	4470848	Nüsrət	(050) 340-88-11	2020-11-17
4117	Şirvan	Nissan	Sunny	2007	Sedan	Gümüşü	1.3	99	Benzin	277000	Avtomat	Ön	f	10700	6294	4470886	Bəhram	(055) 869-94-08	2020-11-17
4118	Bakı	Ford	Fusion	2016	Sedan	Tünd qırmızı	1.5	181	Benzin	52000	Avtomat	Ön	f	23000	13529	4470891	Məlik	(077) 365-33-65	2020-11-17
4119	Bakı	Toyota	Camry	2018	Sedan	Ağ	2.5	181	Benzin	39000	Avtomat	Ön	f	62050	36500	4466899	Roma	(050) 406-88-89	2020-11-17
4120	Bakı	Mercedes	E 220	2012	Sedan	Qara	2.2	184	Dizel	164000	Avtomat	Arxa	f	31450	18500	3555604	Rovshan	(050) 311-19-00	2020-11-17
4121	Bakı	GAZ	3102	2000	Sedan	Qara	2.4	131	Benzin	170000	Mexaniki	Arxa	f	4800	2824	4470743	Bayram	(050) 568-79-69	2020-11-17
4122	Bakı	Ford	Fusion	2014	Sedan	Gümüşü	1.5	181	Benzin	72000	Avtomat	Ön	f	19900	11706	4360473	Yusif 	(070) 574-44-44	2020-11-17
4123	Sumqayıt	Opel	Zafira	2001	Minivan	Yaşıl	2.2	147	Benzin	322000	Mexaniki	Ön	f	9700	5706	4470744	Nazim	(055) 422-19-56	2020-11-17
4125	Bakı	Kia	Sorento	2010	Offroader / SUV	Boz	3.5	277	Benzin	132500	Avtomat	Tam	f	24500	14412	3226137	Xəqani	(055) 419-66-99	2020-11-17
4126	Bakı	Mitsubishi	Pajero	2014	Offroader / SUV	Ağ	3.8	250	Benzin	95500	Avtomat	Tam	f	47260	27800	4470746	rauf	(050) 448-05-55	2020-11-17
4127	Bakı	LADA (VAZ)	Niva	2016	Offroader / SUV	Ağ	1.7	80	Benzin	70000	Mexaniki	Tam	f	13700	8059	4470752	Fuad	(070) 661-61-16	2020-11-17
4128	Bakı	Porsche	Cayenne GTS	2013	Offroader / SUV	Göy	4.8	420	Benzin	82000	Avtomat	Tam	f	76500	45000	4470756	Kamal	(050) 693-70-70	2020-11-17
4129	Balakən	Mercedes	E 200	2001	Sedan	Boz	2	136	Benzin	243000	Avtomat	Arxa	f	15000	8824	4470769	Nail	(050) 300-09-22	2020-11-17
4130	İsmayıllı	Mercedes	E 230	1992	Sedan	Göy	2.3	150	Benzin	325000	Mexaniki	Arxa	f	8500	5000	4470770	Samir	(070) 286-00-31	2020-11-17
4131	Gəncə	Mercedes	E 240	1999	Sedan	Göy	2.4	170	Benzin	360000	Avtomat	Arxa	f	13600	8000	4470771	Əli	(050) 247-11-01	2020-11-17
4132	Bakı	Subaru	Impreza	2003	Sedan	Göy	2	280	Benzin	190000	Mexaniki	Tam	f	21500	12647	4368837	Кямран	(050) 210-33-88	2020-11-17
4133	Bakı	Hyundai	Sonata	2007	Sedan	Ağ	2	165	Benzin	210000	Avtomat	Ön	f	14700	8647	4470772	Sahib	(055) 767-20-08	2020-11-17
4134	Bakı	Mercedes	C 280	1997	Sedan	Qara	2.8	197	Benzin	254000	Avtomat	Arxa	f	11500	6765	4470775	Sahib	(070) 314-75-35	2020-11-17
4135	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	77000	Avtomat	Ön	f	18800	11059	4470680	Mahır	(055) 211-48-58	2020-11-17
4136	Astara	LADA (VAZ)	2106	1981	Sedan	Bej	1.3	69	Benzin	258000	Mexaniki	Arxa	f	3400	2000	4470691	Nizaməli 	(050) 454-86-29	2020-11-17
4137	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	120000	Avtomat	Tam	f	48450	28500	4470689	Həmid	(050) 274-74-65	2020-11-17
4138	Bakı	Chevrolet	Equinox	2018	Offroader / SUV	Ağ	1.5	172	Benzin	8000	Avtomat	Ön	f	30940	18200	4470692	Elmir	(070) 240-00-23	2020-11-17
4139	Xaçmaz	Opel	Astra	1999	Hetçbek / Liftbek	Bənövşəyi	1.6	75	Benzin	356000	Mexaniki	Ön	f	8600	5059	4470693	Resul	(070) 511-93-00	2020-11-17
4140	Bakı	LADA (VAZ)	2106	2000	Sedan	Tünd qırmızı	1.6	75	Benzin	85000	Mexaniki	Arxa	f	6100	3588	4470700	Məhəmməd	(050) 404-44-80	2020-11-17
4141	Bakı	Mercedes	GLS 400	2016	Offroader / SUV	Qara	3	333	Benzin	44000	Avtomat	Tam	f	116450	68500	4470701	Farid	(070) 250-11-51	2020-11-17
4142	Bakı	Toyota	Avalon	2014	Sedan	Qara	3.5	268	Benzin	82300	Avtomat	Ön	f	48110	28300	4470717	Mehrali	(050) 753-15-51	2020-11-17
4143	Bakı	Ford	Transit	2006	Furqon	Ağ	2.4	150	Dizel	168860	Mexaniki	Arxa	f	21500	12647	4401263	Arif	(050) 787-57-77	2020-11-17
4144	Bakı	Ford	Transit	2008	Furqon	Ağ	2.4	140	Dizel	244863	Mexaniki	Arxa	f	23500	13824	4391632	Arif	(050) 787-57-77	2020-11-17
4145	Xudat	LADA (VAZ)	2106	1999	Sedan	Ağ	1.6	75	Benzin	170000	Mexaniki	Arxa	f	4600	2706	4470723	Ruslan	(077) 560-76-78	2020-11-17
4147	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	152000	Avtomat	Ön	f	20770	12218	4470725	Rasim	(055) 692-32-18	2020-11-17
4148	Biləsuvar	LADA (VAZ)	2107	1992	Sedan	Qırmızı	1.6	75	Benzin	768768	Mexaniki	Arxa	f	3700	2176	4470729	royal	(070) 383-43-43	2020-11-17
4149	Bakı	Suzuki	Grand Vitara	2006	Offroader / SUV	Qara	2	140	Benzin	206575	Avtomat	Tam	f	9800	5765	4400208	Sevil	(070) 216-94-16	2020-11-17
4150	Xaçmaz	Mercedes	C 180	1993	Sedan	Qırmızı	1.8	122	Benzin	350000	Avtomat	Arxa	f	7500	4412	4470731	Mehman	(055) 836-91-95	2020-11-17
4151	Salyan	LADA (VAZ)	Niva	2014	Offroader / SUV	Göy	1.7	80	Benzin	130000	Mexaniki	Tam	f	10000	5882	4470734	Mirze	(055) 434-25-45	2020-11-17
4153	Tovuz	Opel	Astra	2008	Universal	Qızılı	1.6	105	Benzin	180642	Mexaniki	Ön	f	12000	7059	4470777	Namiq	(055) 723-53-87	2020-11-17
4154	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Qızılı	1.6	90	Dizel	170000	Mexaniki	Ön	f	12600	7412	4427007	Elturan	(055) 221-25-55	2020-11-17
4155	Beyləqan	Mercedes	E 300	1996	Sedan	Yaşıl	3	177	Dizel	350000	Avtomat	Arxa	f	10000	5882	4470784	Zahir	(051) 719-99-87	2020-11-17
4156	Sumqayıt	Hyundai	Sonata	2008	Sedan	Ağ	2	165	Benzin	230000	Avtomat	Ön	f	16500	9706	4470787	Namiq	(055) 463-63-94	2020-11-17
4152	Bakı	Mercedes	E 320	2003	Sedan	Gümüşü	3.2	224	Benzin	215000	Avtomat	Arxa	f	16800	9882	4441251	Tural	(050) 487-56-52	2020-11-17
4116	Bakı	Ford	Fusion	2018	Sedan	Gümüşü	1.5	181	Benzin	29500	Avtomat	Ön	f	23900	14059	4434030	ANAR	(055) 895-00-30	2020-11-17
4146	Bakı	Chevrolet	Cruze	2014	Sedan	Qəhvəyi	1.4	141	Benzin	77000	Avtomat	Ön	f	13900	8176	4376777	Renat	(055) 215-59-25	2020-11-17
4157	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	150000	Avtomat	Ön	f	13000	7647	4470794	Musa	(050) 511-84-81	2020-11-17
4158	Sumqayıt	LADA (VAZ)	2107	2002	Sedan	Ağ	1.6	75	Benzin	219882	Mexaniki	Arxa	f	5300	3118	4470799	Ravil	(070) 653-84-74	2020-11-17
4159	Bakı	Chevrolet	Malibu	2018	Sedan	Qara	1.5	180	Benzin	12400	Avtomat	Ön	f	25300	14882	4458015	Akshin	(050) 250-07-44	2020-11-17
4160	Qax	LADA (VAZ)	2107	2006	Sedan	Ağ	1.5	65	Benzin	140000	Mexaniki	Ön	f	5300	3118	4470609	Sultan	(077) 742-12-27	2020-11-17
4161	Goranboy	LADA (VAZ)	2101	1981	Sedan	Yaşıl	1.2	58	Benzin	210000	Mexaniki	Arxa	f	4800	2824	4470612	Evez	(070) 518-40-34	2020-11-17
4162	Bakı	Ford	Fusion	2014	Sedan	Ağ	2	240	Hibrid	95000	Avtomat	Ön	f	27540	16200	4436950	Nuri	(050) 521-59-08	2020-11-17
4163	Kürdəmir	Mercedes	C 220	1995	Sedan	Göy	2.2	143	Benzin	345000	Avtomat	Arxa	f	8500	5000	4470626	Samir	(070) 741-27-77	2020-11-17
4164	Zaqatala	LADA (VAZ)	2107	2009	Sedan	Tünd qırmızı	1.6	75	Benzin	160000	Mexaniki	Arxa	f	8000	4706	4470628	Adem	(055) 460-53-54	2020-11-17
4165	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	115000	Avtomat	Ön	f	16300	9588	4470641	Xeyyam	(050) 224-48-58	2020-11-17
4166	Bakı	Toyota	Land Cruiser	2007	Offroader / SUV	Ağ	4.2	286	Dizel	270000	Avtomat	Tam	f	43350	25500	4470633	Senan	(050) 630-44-99	2020-11-17
4167	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	153	Benzin	91700	Avtomat	Ön	f	18600	10941	4470645	Nurlan	(099) 880-61-90	2020-11-17
4168	Bakı	Mitsubishi	Lancer	2010	Sedan	Ağ	2	150	Benzin	210000	Avtomat	Ön	f	16300	9588	4470648	Vuqar	(051) 650-17-77	2020-11-17
4169	Bakı	Mercedes	ML 350	2010	Offroader / SUV	Qara	3.5	272	Benzin	165000	Avtomat	Tam	f	29800	17529	4418838	Ali	(077) 524-53-03	2020-11-17
4170	Şəmkir	Mercedes	Vito	1997	Van	Ağ	2.3	143	Dizel	230000	Mexaniki	Ön	f	13500	7941	4470654	Nebi	(051) 822-82-35	2020-11-17
4171	Gəncə	LADA (VAZ)	2106	1997	Sedan	Bej	1.5	65	Benzin	275000	Mexaniki	Arxa	f	4300	2529	4470538	Mehdi	(077) 552-82-73	2020-11-17
4172	Qazax	LADA (VAZ)	2115	2006	Sedan	Gümüşü	1.5	78	Benzin	320000	Mexaniki	Ön	f	7200	4235	4470537	Sahib	(051) 887-28-87	2020-11-17
4173	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	143225	Avtomat	Tam	f	31000	18235	4418169	İLQAR	(055) 727-30-05	2020-11-17
4174	Lənkəran	Mercedes	E 200	1996	Sedan	Göy	2	136	Benzin	250000	Mexaniki	Arxa	f	9200	5412	4470548	İlkin	(051) 561-45-44	2020-11-17
4175	Hacıqabul	Mercedes	C 280	1995	Sedan	Göy	2.8	197	Benzin	250000	Avtomat	Arxa	f	7500	4412	4470550	Cavid	(051) 380-48-81	2020-11-17
4176	Bakı	LADA (VAZ)	2107	1998	Sedan	Göy	1.6	75	Benzin	88800	Mexaniki	Arxa	f	4200	2471	4446638	Rauf	(055) 434-11-99	2020-11-17
4177	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	92800	Mexaniki	Tam	f	11600	6824	4470554	Sahin	(055) 202-55-94	2020-11-17
4178	Bakı	Chevrolet	Lacetti	2012	Universal	Bənövşəyi	1.6	109	Benzin	195000	Mexaniki	Ön	f	12740	7494	4470563	Taleh	(050) 664-99-04	2020-11-17
4179	Bakı	Chevrolet	Epica	2006	Sedan	Qara	2	150	Benzin	289000	Mexaniki	Ön	f	10500	6176	4470565	Tural	(055) 236-02-30	2020-11-17
4180	Oğuz	Tofas	Sahin	2006	Sedan	Tünd qırmızı	1.6	86	Benzin	116000	Mexaniki	Arxa	f	5800	3412	4470568	Yusif	(055) 311-89-91	2020-11-17
4181	Xırdalan	Ford	Tourneo Connect	2010	Minivan	Gümüşü	1.8	90	Dizel	165000	Mexaniki	Ön	f	17300	10176	4470566	Şahin	(070) 491-76-86	2020-11-17
4182	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	333841	Avtomat	Arxa	f	16400	9647	4470573	Sehriyar	(055) 400-70-10	2020-11-17
4183	Gəncə	Mercedes	E 200	2005	Sedan	Boz	2	136	Benzin	214000	Avtomat	Ön	f	14800	8706	4470579	Elsen	(070) 752-11-20	2020-11-17
4184	Bakı	LADA (VAZ)	2107	2011	Sedan	Bej	1.6	75	Benzin	96000	Mexaniki	Ön	f	7700	4529	4470580	Ramil	(055) 525-10-47	2020-11-17
4185	Gəncə	Mercedes	Vito 115	2009	Van	Gümüşü	2.2	150	Dizel	338252	Mexaniki	Arxa	f	24200	14235	4470584	Elcin	(051) 383-35-88	2020-11-17
4186	Bakı	Opel	Zafira	2008	Minivan	Boz	1.7	125	Dizel	284000	Mexaniki	Ön	f	12600	7412	4470586	Ferid	(050) 634-44-56	2020-11-17
4187	Bakı	Tofas	Sahin	2006	Sedan	Qara	1.6	92	Benzin	235000	Mexaniki	Arxa	f	4800	2824	4470590	Senan	(077) 313-56-42	2020-11-17
4188	Bakı	Toyota	Prius	2015	Hetçbek / Liftbek	Boz	1.8	99	Hibrid	107000	Avtomat	Ön	f	22695	13350	4429451	Rahman	(070) 693-34-76	2020-11-17
4189	Bakı	Iran Khodro	Runna	2013	Sedan	Boz	1.6	110	Benzin	280000	Mexaniki	Ön	f	7800	4588	4470592	Nasir	(051) 332-01-33	2020-11-17
4190	Bakı	Toyota	Corolla	2006	Sedan	Yaş Asfalt	1.4	90	Dizel	205000	Mexaniki	Ön	f	12300	7235	4470605	Fizuli	(055) 440-59-74	2020-11-17
4191	Bakı	Opel	Astra	2011	Hetçbek / Liftbek	Qara	1.4	140	Benzin	105000	Mexaniki	Ön	f	14500	8529	4427497	Zaur	(055) 214-66-88	2020-11-17
4192	Yevlax	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	176490	Mexaniki	Arxa	f	6000	3529	4470596	Qurban	(055) 615-54-53	2020-11-17
4193	Sumqayıt	Opel	Astra	1999	Universal	Yaş Asfalt	1.6	101	Benzin	296521	Mexaniki	Tam	f	8000	4706	4470653	Elsad	(050) 333-60-44	2020-11-17
4194	Bakı	Kia	Optima	2017	Sedan	Ağ	2.4	180	Benzin	51000	Avtomat	Ön	f	27700	16294	4418709	Yasar	(070) 833-07-93	2020-11-17
4195	Sumqayıt	Opel	Astra	2000	Hetçbek / Liftbek	Göy	1.6	115	Benzin	290000	Mexaniki	Ön	f	9000	5294	4470658	Sebuhi	(070) 202-55-30	2020-11-17
4196	Bakı	Toyota	Prius C	2013	Hetçbek / Liftbek	Mavi	1.5	99	Hibrid	59000	Avtomat	Ön	f	15800	9294	4446138	Sadiq	(055) 404-20-20	2020-11-17
4198	Bakı	Kia	Optima	2006	Sedan	Çəhrayı	2	144	Benzin	240000	Avtomat	Ön	f	11800	6941	4470670	Murad	(055) 788-34-48	2020-11-17
4199	Bakı	Mercedes	ML 320	2000	Offroader / SUV	Gümüşü	3.2	218	Benzin	280000	Avtomat	Tam	f	11500	6765	4470673	Ramil	(055) 792-28-46	2020-11-17
4200	Xaçmaz	LADA (VAZ)	2107	1992	Sedan	Göy	1.6	75	Benzin	189000	Mexaniki	Arxa	f	4200	2471	4470486	Edalet	(070) 412-27-77	2020-11-17
4201	Ağstafa	LADA (VAZ)	2109	1987	Hetçbek / Liftbek	Yaşıl	1.6	80	Benzin	353455	Mexaniki	Ön	f	2200	1294	4470488	Elvin	(055) 296-14-84	2020-11-17
4202	Lənkəran	LADA (VAZ)	2115	2011	Sedan	Ağ	1.5	78	Benzin	168000	Mexaniki	Ön	f	7750	4559	4470497	Əli	(050) 862-17-36	2020-11-17
4203	Bakı	BMW	318	1998	Sedan	Boz	1.9	118	Benzin	360000	Avtomat	Arxa	f	9300	5471	4470503	Mustafa	(055) 630-09-42	2020-11-17
4204	Bakı	Mercedes	E 200	1991	Sedan	Boz	2	136	Benzin	600000	Mexaniki	Arxa	f	5800	3412	4470510	Semed	(055) 219-78-02	2020-11-17
4206	Şəki	LADA (VAZ)	Niva	2010	Offroader / SUV	Ağ	1.7	80	Benzin	181000	Mexaniki	Tam	f	8400	4941	4470476	Velixan	(051) 459-89-99	2020-11-17
4207	Masallı	LADA (VAZ)	2107	1993	Sedan	Bej	1.5	65	Benzin	311111	Mexaniki	Arxa	f	3400	2000	4470477	Samir	(070) 621-93-21	2020-11-17
4208	Bakı	Land Rover	RR Sport	2006	Offroader / SUV	Qara	4.4	286	Benzin	143000	Avtomat	Ön	f	32300	19000	4436588	Rasul	(050) 872-89-65	2020-11-17
4209	Ağsu	Ford	Transit	2006	Yük maşını	Göy	2.4	90	Dizel	544700	Mexaniki	Arxa	f	25000	14706	4470480	Mirhesen	(051) 672-88-12	2020-11-17
4210	Bakı	Mercedes	C 180	1997	Sedan	Göy	1.8	122	Benzin	274300	Avtomat	Arxa	f	11300	6647	4470484	Babek	(055) 778-55-99	2020-11-17
4211	Bakı	Mercedes	E 240	1998	Sedan	Bənövşəyi	2.4	170	Benzin	296596	Avtomat	Arxa	f	12500	7353	4470513	Rəhim	(055) 545-00-75	2020-11-17
4212	Bakı	Chevrolet	Cruze	2013	Sedan	Gümüşü	1.4	141	Benzin	172300	Avtomat	Ön	f	13900	8176	4470516	Rantik	(077) 251-33-34	2020-11-17
4213	Bakı	Mercedes	E 280	1996	Sedan	Yaş Asfalt	2.8	193	Benzin	453000	Avtomat	Arxa	f	8700	5118	4470521	zamin	(055) 291-99-94	2020-11-17
4214	Bakı	Chevrolet	Malibu	2016	Sedan	Göy	1.5	181	Benzin	78350	Avtomat	Ön	f	27500	16176	4470417	Emrah	(050) 459-89-29	2020-11-17
4215	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Qızılı	1.5	76	Hibrid	218000	Avtomat	Ön	f	10700	6294	4382740	Zakir	(051) 388-11-11	2020-11-17
4216	Neftçala	Kia	Pride	2005	Sedan	Ağ	1.5	110	Dizel	85412	Avtomat	Ön	f	13000	7647	4470421	Elsever	(051) 816-65-27	2020-11-17
4217	Bakı	Nissan	Teana	2006	Sedan	Ağ	2.3	173	Benzin	306000	Avtomat	Ön	f	10500	6176	4470427	Səməd	(050) 519-47-87	2020-11-17
4218	Bakı	Renault	Fluence	2014	Sedan	Ağ	2	142	Benzin	132000	Avtomat	Ön	f	20000	11765	4470425	Rahim	(050) 631-00-51	2020-11-17
4219	Bakı	Mercedes	S 320	2000	Offroader / SUV	Qara	3.2	224	Benzin	254000	Avtomat	Arxa	f	11200	6588	4470419	Rauf	(050) 609-58-58	2020-11-17
4220	Ağcabədi	GAZ	3102	1994	Sedan	Qara	2.5	96	Benzin	80000	Mexaniki	Arxa	f	4200	2471	4470438	Vusal	(050) 474-33-22	2020-11-17
4221	Ağcabədi	LADA (VAZ)	2106	2006	Sedan	Göy	1.6	75	Benzin	200000	Mexaniki	Arxa	f	5500	3235	4470442	Etibar	(050) 684-22-00	2020-11-17
4222	Bakı	Peugeot	Partner	2006	Minivan	Göy	2	90	Dizel	245000	Mexaniki	Ön	f	10700	6294	4470435	Eziz	(050) 220-75-50	2020-11-17
4223	Bakı	Chevrolet	Cruze	2016	Sedan	Qara	1.4	153	Benzin	69000	Avtomat	Ön	f	16200	9529	4470319	Terane	(055) 414-26-25	2020-11-17
4224	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	213000	Avtomat	Ön	f	12000	7059	4470253	Orxan	(055) 386-85-11	2020-11-17
4225	Tərtər	Mercedes	C 230	1997	Sedan	Göy	2.3	150	Benzin	321705	Avtomat	Arxa	f	11500	6765	4470452	Təhmin	(055) 721-31-97	2020-11-17
4226	Bakı	Kia	Rio	2009	Hetçbek / Liftbek	Qara	1.4	97	Benzin	149100	Mexaniki	Ön	f	12800	7529	4470454	Aydin	(070) 220-55-05	2020-11-17
4227	Bakı	Mercedes	E 200	1997	Sedan	Gümüşü	2	136	Benzin	310000	Avtomat	Arxa	f	10400	6118	4470459	Rəşad	(050) 627-95-71	2020-11-17
4228	Bakı	Chevrolet	Cruze	2015	Sedan	Qırmızı	1.4	153	Benzin	100000	Avtomat	Ön	f	15700	9235	4470458	Yusif	(051) 535-83-88	2020-11-17
4229	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	89400	Mexaniki	Tam	f	12600	7412	4442074	Emin	(070) 347-60-90	2020-11-17
4230	Bakı	Mercedes	E 220	2012	Sedan	Yaş Asfalt	2.2	170	Dizel	180000	Avtomat	Arxa	f	37230	21900	4386851	Penah	(070) 343-66-52	2020-11-17
4231	Qəbələ	Hyundai	Santa Fe	2009	Offroader / SUV	Ağ	2.2	150	Dizel	58000	Avtomat	Tam	f	23000	13529	4470473	ismayil	(050) 290-99-82	2020-11-17
4232	Bakı	Volkswagen	Tiguan	2009	Offroader / SUV	Ağ	2	170	Benzin	123000	Avtomat	Tam	f	15300	9000	4470523	Afqan	(077) 477-77-73	2020-11-17
4233	Bakı	Mercedes	C 180	1993	Sedan	Göy	1.8	122	Benzin	518000	Mexaniki	Arxa	f	6800	4000	4470525	ilkin	(070) 554-00-25	2020-11-17
4234	Bakı	Kia	Cerato	2006	Sedan	Qara	1.6	105	Dizel	199850	Mexaniki	Ön	f	11800	6941	4470526	Vaqif	(051) 528-68-44	2020-11-17
4235	Bakı	LADA (VAZ)	2115	2000	Sedan	Yaş Asfalt	1.5	75	Benzin	327000	Mexaniki	Ön	f	6500	3824	4470531	Perviz	(055) 422-44-03	2020-11-17
4236	Bakı	Khazar	LX	2020	Sedan	Ağ	1.7	113	Benzin	3000	Mexaniki	Ön	f	17860	10506	4470532	Tofiq	(051) 455-79-79	2020-11-17
4237	Quba	Nissan	Maxima	1997	Sedan	Yaşıl	3	193	Benzin	145000	Mexaniki	Ön	f	5200	3059	4470535	Zaur	(055) 429-93-46	2020-11-17
4238	Bakı	LADA (VAZ)	Niva	2010	Offroader / SUV	Göy	1.7	80	Benzin	79000	Mexaniki	Tam	f	10100	5941	4451501	sa	(055) 235-00-09	2020-11-17
4239	Bakı	Mercedes	S 350	2006	Sedan	Qara	3.5	272	Benzin	251000	Avtomat	Arxa	f	31450	18500	4470364	Said	(050) 510-10-52	2020-11-17
4240	Bakı	LADA (VAZ)	2107	2002	Sedan	Qırmızı	1.6	75	Benzin	98589	Mexaniki	Tam	f	5200	3059	4470363	NURUW	(055) 668-07-84	2020-11-17
4241	Bərdə	Changan	CS 35	2015	Offroader / SUV	Boz	1.6	130	Benzin	150000	Avtomat	Ön	f	16500	9706	4470368	Gündüz	(050) 431-38-77	2020-11-17
4242	Bakı	LADA (VAZ)	2106	1986	Sedan	Qəhvəyi	1.5	65	Benzin	140000	Mexaniki	Tam	f	4200	2471	4470370	Vusal 	(055) 768-73-83	2020-11-17
4243	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Benzin	206000	Avtomat	Ön	f	14200	8353	4470376	Aslan 	(050) 502-83-04	2020-11-17
4244	Bakı	Mercedes	C 180	1998	Sedan	Qara	1.8	122	Benzin	450000	Avtomat	Arxa	f	8700	5118	4298898	Perviz	(070) 553-53-79	2020-11-17
4245	Sumqayıt	Mercedes	C 180	1994	Sedan	Gümüşü	1.8	122	Benzin	280000	Avtomat	Arxa	f	7700	4529	4470386	Ramin	(070) 560-00-19	2020-11-17
4246	Quba	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	440000	Mexaniki	Arxa	f	5600	3294	4470378	Nurlan	(055) 689-26-86	2020-11-17
4247	Sumqayıt	Mercedes	E 240	1999	Sedan	Göy	2.4	170	Benzin	250000	Avtomat	Arxa	f	14900	8765	4457062	Elgun	(070) 606-65-65	2020-11-17
4248	Bakı	Mercedes	C 220	1994	Sedan	Qızılı	2.2	146	Dizel	427000	Avtomat	Arxa	f	8500	5000	4470389	Nuru	(051) 445-62-22	2020-11-17
4249	Bakı	Daewoo	Lanos	2011	Furqon	Ağ	1.5	75	Benzin	367000	Mexaniki	Ön	f	5800	3412	4470398	Rizvan	(051) 351-32-82	2020-11-17
4250	Sumqayıt	Mercedes	E 240	2000	Sedan	Qızılı	2.4	170	Benzin	339000	Avtomat	Arxa	f	13700	8059	4470403	Orxan	(055) 399-38-77	2020-11-17
4251	Sumqayıt	Foton	Forland	2006	Yük maşını	Ağ	3.2	150	Dizel	94040	Mexaniki	Arxa	f	6500	3824	4470407	Nahid	(077) 578-00-39	2020-11-17
4252	Bakı	Kia	Cerato	2014	Sedan	Gümüşü	1.8	150	Benzin	150000	Avtomat	Ön	f	17500	10294	4423751	Taleh	(055) 312-22-34	2020-11-17
4253	Şəmkir	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	80	Benzin	108000	Mexaniki	Ön	f	9800	5765	4470299	Ayxan	(051) 310-11-11	2020-11-17
4254	Şamaxı	Ford	Transit	1997	Furqon	Ağ	2.5	96	Dizel	250000	Mexaniki	Arxa	f	14500	8529	4470286	Şakir	(050) 384-43-91	2020-11-17
4255	Astara	Ford	Transit	2009	Furqon	Göy	2.4	115	Dizel	115489	Mexaniki	Arxa	f	26000	15294	4470317	Sahib	(050) 633-25-30	2020-11-17
4256	Lənkəran	BMW	535	2000	Sedan	Qara	3.5	245	Benzin	163178	Avtomat	Arxa	f	14900	8765	4470309	Mubariz	(050) 527-76-77	2020-11-17
4257	Xırdalan	Chevrolet	Cruze	2017	Sedan	Qara	1.4	153	Benzin	61981	Avtomat	Ön	f	17500	10294	4459423	Rəşid	(077) 364-34-33	2020-11-17
4258	Bakı	Ducati	Monster 796	2012	Motosiklet	Qara	0.8	87	Benzin	20000	Mexaniki	Arxa	f	11500	6765	4229472	Pasha	(055) 977-77-66	2020-11-17
4259	Xaçmaz	GAZ	31029	1992	Sedan	Qara	2.4	131	Benzin	58453	Mexaniki	Arxa	f	2200	1294	4470322	Ferid	(077) 503-95-75	2020-11-17
4260	Bakı	BMW	530	2010	Sedan	Ağ	3	272	Benzin	207000	Avtomat	Arxa	f	36550	21500	4469649	Ruslan	(050) 311-53-05	2020-11-17
4261	Bakı	Kia	Ceed	2008	Hetçbek / Liftbek	Qara	1.6	115	Dizel	214000	Mexaniki	Ön	f	13500	7941	4470329	Yusif	(050) 564-76-22	2020-11-17
4262	Bakı	Kawasaki	ER6N	2009	Motosiklet	Qara	0.6	73	Benzin	22500	Mexaniki	Arxa	f	6300	3706	4144024	Pasha	(055) 977-77-66	2020-11-17
4263	Cəlilabad	LADA (VAZ)	2106	1989	Sedan	Mavi	1.6	75	Benzin	150000	Mexaniki	Arxa	f	3900	2294	4470332	Umid	(050) 836-40-24	2020-11-17
4264	Bakı	Opel	Astra	1997	Sedan	Göy	1.6	75	Benzin	432000	Avtomat	Arxa	f	5800	3412	4470335	Sexavet 	(050) 535-72-37	2020-11-17
4265	Gəncə	BMW	528	1997	Sedan	Göy	2.8	193	Benzin	295000	Avtomat	Arxa	f	9800	5765	4470340	Rahim	(055) 280-45-96	2020-11-17
4266	Qusar	LADA (VAZ)	2102	1977	Universal	Bej	1.2	75	Benzin	563338	Mexaniki	Arxa	f	3500	2059	4470344	Nadir	(077) 374-38-00	2020-11-17
4267	Şirvan	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	122	Benzin	402087	Avtomat	Arxa	f	8500	5000	4470347	Əlfağa	(055) 956-18-99	2020-11-17
4268	Zərdab	Hyundai	Elantra	2008	Sedan	Ağ	2	150	Benzin	250000	Avtomat	Ön	f	12800	7529	4470353	Rakif	(051) 567-67-57	2020-11-17
4269	Bakı	Mercedes	V 220	2015	Van	Qara	2.2	170	Dizel	173000	Avtomat	Arxa	f	59500	35000	4470358	Sərvət	(070) 700-00-75	2020-11-17
4270	Bakı	Saipa	Saina	2018	Sedan	Ağ	1.5	85	Benzin	172000	Mexaniki	Ön	f	11800	6941	4470336	Edqar	(055) 899-27-27	2020-11-17
4271	Bakı	BMW	530	2001	Sedan	Qara	3	231	Benzin	346000	Avtomat	Arxa	f	21500	12647	4470362	Orxan	(050) 353-00-85	2020-11-17
4273	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.6	132	Dizel	74500	Avtomat	Ön	f	20500	12059	4470415	ayxan	(070) 859-10-09	2020-11-17
4274	Bakı	BMW	X5	2014	Offroader / SUV	Ağ	4.4	450	Benzin	123460	Avtomat	Tam	f	79050	46500	4470264	Eldar	(050) 210-64-56	2020-11-17
4275	Bakı	Mercedes	Atego 816	2008	Yük maşını	Qırmızı	4.3	160	Dizel	630000	Mexaniki	Arxa	f	33900	19941	4469883	Saxavat	(055) 215-53-52	2020-11-17
4276	Bakı	Renault	Megane	2011	Universal	Ağ	1.5	106	Dizel	241000	Mexaniki	Ön	f	14700	8647	4470276	Samir	(050) 648-46-48	2020-11-17
4277	Bakı	Nissan	Sunny	2008	Sedan	Ağ	1.3	90	Benzin	216032	Mexaniki	Ön	f	11200	6588	4470271	Elnur	(051) 986-29-26	2020-11-17
4278	Bakı	Nissan	Sunny	2013	Sedan	Ağ	1.5	107	Benzin	183000	Avtomat	Ön	f	13500	7941	4470277	Ferid M	(077) 300-00-81	2020-11-17
4279	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	88772	Avtomat	Ön	f	15200	8941	4470281	Zulfuqar	(055) 630-90-09	2020-11-17
4280	Bakı	BMW	528	2013	Sedan	Qara	2	245	Benzin	118000	Avtomat	Arxa	f	32130	18900	4470284	Zaur	(055) 678-00-24	2020-11-17
4281	Bakı	Kia	Sorento	2010	Offroader / SUV	Gümüşü	2	184	Dizel	62000	Avtomat	Ön	f	26500	15588	4470285	Sahveled	(070) 665-58-58	2020-11-17
4282	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.4	121	Benzin	121500	Mexaniki	Ön	f	10000	5882	4470293	Emil	(070) 311-49-29	2020-11-17
4283	Bakı	Kia	Sorento	2009	Offroader / SUV	Ağ	2	184	Dizel	85000	Avtomat	Ön	f	25000	14706	4470290	Rafiq İbrahimov	(055) 779-01-03	2020-11-17
4284	Bakı	LADA (VAZ)	2115	2008	Sedan	Gümüşü	1.6	80	Benzin	187000	Mexaniki	Ön	f	7200	4235	4470230	Elgün	(050) 299-96-11	2020-11-17
4285	Bakı	Mercedes	C 180	2011	Sedan	Gümüşü	1.8	156	Benzin	195000	Avtomat	Arxa	f	27900	16412	4470219	Ruslan	(055) 205-00-83	2020-11-17
4286	Bakı	LADA (VAZ)	Priora	2014	Hetçbek / Liftbek	Göy	1.6	106	Benzin	100000	Mexaniki	Ön	f	12000	7059	4470241	Kenan	(055) 737-56-27	2020-11-17
4287	Kürdəmir	LADA (VAZ)	2107	1990	Sedan	Qırmızı	1.6	75	Benzin	31562	Mexaniki	Arxa	f	5600	3294	4470244	ILKIN	(051) 800-35-97	2020-11-17
4288	Bakı	Hyundai	Sonata	2019	Sedan	Yaş Asfalt	2	165	Benzin	28500	Avtomat	Tam	f	36550	21500	4470245	Mahmud	(050) 220-72-92	2020-11-17
4289	Bakı	Toyota	RAV 4	2019	Offroader / SUV	Ağ	2	175	Benzin	5850	Avtomat	Ön	f	49810	29300	4399046	Nazim 	(050) 508-12-66	2020-11-17
4290	Quba	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	125000	Mexaniki	Tam	f	9400	5529	4445062	Elsen	(070) 340-46-45	2020-11-17
4291	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Boz	1.7	80	Benzin	23000	Mexaniki	Tam	f	15300	9000	4470251	Kenan	(050) 422-82-40	2020-11-17
4292	Xaçmaz	UAZ	3303	1984	Yük maşını	Boz	2	150	Benzin	200000	Mexaniki	Tam	f	3800	2235	4470256	Budaq	(050) 897-42-04	2020-11-17
4293	Şirvan	Mercedes	C 240	2000	Sedan	Gümüşü	2.4	170	Benzin	337074	Avtomat	Arxa	f	12300	7235	4470259	Raqif	(070) 538-93-93	2020-11-17
4294	Bakı	Infiniti	QX56	2011	Offroader / SUV	Qara	5.6	406	Benzin	140000	Avtomat	Tam	f	52360	30800	4470261	Huseyn	(051) 999-08-99	2020-11-17
4295	Bakı	Mercedes	E 280	1997	Sedan	Gümüşü	2.8	193	Benzin	345000	Avtomat	Arxa	f	10700	6294	4452549	Mecid	(050) 536-03-02	2020-11-17
4296	Bakı	BMW	328	1999	Sedan	Qara	2.8	193	Benzin	312500	Avtomat	Arxa	f	9200	5412	4470260	Zaur	(055) 480-80-72	2020-11-17
4297	Sabirabad	GAZ	330202-740	1997	Yük maşını	Bej	2.5	125	Benzin	370000	Mexaniki	Arxa	f	7300	4294	4470263	İmran	(050) 352-66-96	2020-11-17
4298	Bakı	Mercedes	E 240	2001	Sedan	Gümüşü	2.6	170	Benzin	346000	Avtomat	Arxa	f	15900	9353	4456722	Nahid	(055) 730-63-11	2020-11-17
4299	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.3	90	Dizel	250890	Mexaniki	Ön	f	11600	6824	4446753	Rasim	(070) 331-40-36	2020-11-17
4300	Xırdalan	Opel	Vectra	1999	Universal	Qara	1.8	116	Benzin	476000	Mexaniki	Ön	f	5500	3235	4470305	Subhan	(050) 306-58-98	2020-11-17
4302	Bakı	Mercedes	190	1990	Sedan	Boz	2	122	Benzin	359000	Mexaniki	Tam	f	4800	2824	4470208	Rasul	(077) 332-17-61	2020-11-17
4303	Bakı	Kia	Sorento	2012	Offroader / SUV	Qara	2.4	170	Benzin	195500	Avtomat	Tam	f	28200	16588	4470215	Ramil	(070) 213-11-77	2020-11-17
4304	Sumqayıt	Mercedes	C 220	1996	Sedan	Göy	2.2	143	Benzin	402231	Avtomat	Arxa	f	8400	4941	4470209	Elnur	(055) 903-75-29	2020-11-17
4305	Bakı	Mercedes	E 240	2000	Universal	Boz	2.4	170	Benzin	271000	Avtomat	Arxa	f	10799	6352	4470221	Farid	(070) 980-80-45	2020-11-17
4306	Bakı	Toyota	Camry	2019	Sedan	Qara	2.5	181	Benzin	77000	Avtomat	Ön	f	67320	39600	4442666	Ülvi	(055) 215-71-04	2020-11-17
4307	Xaçmaz	LADA (VAZ)	2114	2006	Sedan	Yaşıl	1.5	75	Benzin	201212	Mexaniki	Ön	f	5400	3176	4470222	Huseyn	(070) 563-81-57	2020-11-17
4308	Bakı	Kia	Optima	2014	Sedan	Ağ	2	274	Benzin	49774	Avtomat	Ön	f	22000	12941	4470223	Nicat	(070) 243-84-87	2020-11-17
4309	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2	184	Dizel	89000	Avtomat	Ön	f	32000	18824	4470224	Imran	(055) 777-98-00	2020-11-17
4310	Bakı	Daewoo	Nexia	2008	Sedan	Ağ	1.5	78	Benzin	142000	Mexaniki	Ön	f	8500	5000	4470225	Pasa	(050) 318-59-02	2020-11-17
4311	Şamaxı	Opel	Vectra	1998	Sedan	Bej	2	136	Benzin	296580	Avtomat	Ön	f	7400	4353	4470220	Emin	(051) 678-53-31	2020-11-17
4312	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Benzin	154000	Avtomat	Ön	f	13900	8176	4470210	Faiq	(099) 754-74-75	2020-11-17
4313	Bakı	Mercedes	E 220	2008	Sedan	Boz	2.2	170	Dizel	239000	Avtomat	Arxa	f	27500	16176	4470226	Azad	(070) 276-02-03	2020-11-17
4314	Bakı	LADA (VAZ)	Niva	1997	Offroader / SUV	Ağ	1.7	80	Benzin	15800	Mexaniki	Tam	f	4500	2647	4470158	Elnur	(077) 408-84-84	2020-11-17
4315	Zərdab	Ford	Fusion	2014	Sedan	Boz	2	170	Benzin	129000	Avtomat	Ön	f	25600	15059	4470159	Fərid 	(050) 510-90-06	2020-11-17
4316	Bakı	Mercedes	C 200	1996	Sedan	Yaş Asfalt	2	136	Benzin	315000	Avtomat	Arxa	f	9500	5588	4414551	Kamran 	(055) 206-84-84	2020-11-17
4317	Bakı	Hyundai	Sonata	2008	Sedan	Qara	2.4	178	Benzin	174300	Avtomat	Ön	f	16500	9706	4470161	Mehman	(050) 614-56-42	2020-11-17
4318	Masallı	LADA (VAZ)	2106	2005	Sedan	Ağ	1.6	75	Benzin	200000	Mexaniki	Arxa	f	6500	3824	4470165	Ağasəlim	(070) 495-33-95	2020-11-17
4319	Bakı	Mercedes	E 240	2000	Sedan	Ağ	2.4	170	Benzin	297000	Avtomat	Arxa	f	16000	9412	4470175	Pərviz	(070) 722-00-21	2020-11-17
4320	Masallı	Mercedes	C 220	1999	Universal	Gümüşü	2.2	146	Dizel	300050	Avtomat	Arxa	f	12200	7176	4470168	Emiş	(050) 630-45-44	2020-11-17
4321	Ağstafa	LADA (VAZ)	2107	2011	Sedan	Qəhvəyi	1.6	75	Benzin	137541	Mexaniki	Arxa	f	8300	4882	4470171	Kənan	(055) 289-58-22	2020-11-17
4322	Bakı	BMW	X5	2006	Offroader / SUV	Qara	4.8	360	Benzin	290000	Avtomat	Tam	f	29500	17353	4470180	Subhi	(050) 200-93-02	2020-11-17
4323	Ağcabədi	Mercedes	C 200	1998	Sedan	Yaşıl	2	136	Benzin	286000	Avtomat	Arxa	f	12000	7059	4470174	Müşviq	(050) 658-92-08	2020-11-17
4324	Bakı	LADA (VAZ)	Priora	2013	Sedan	Ağ	1.6	106	Benzin	166000	Mexaniki	Arxa	f	12000	7059	4470179	Ruslan	(055) 886-09-89	2020-11-17
4325	Bakı	Porsche	Panamera Turbo	2011	Hetçbek / Liftbek	Ağ	4.8	500	Benzin	83000	Avtomat	Tam	f	67150	39500	4470176	Nihal	(050) 215-56-06	2020-11-17
4326	Bakı	BMW	320	2007	Sedan	Ağ	2	170	Benzin	250000	Mexaniki	Arxa	f	12200	7176	4453560	Elmar	(055) 452-02-51	2020-11-17
4327	Bakı	Toyota	Prius	2006	Hetçbek / Liftbek	Boz	1.5	76	Benzin	168000	Avtomat	Ön	f	14000	8235	4470188	Faiq	(099) 754-74-75	2020-11-17
4328	Bakı	Volkswagen	Multivan	2003	Van	Göy	2.5	174	Dizel	298000	Mexaniki	Ön	f	16000	9412	4470193	Elçin	(055) 895-61-63	2020-11-17
4329	Gəncə	Mercedes	190	1990	Sedan	Yaş Asfalt	2	122	Benzin	174021	Avtomat	Arxa	f	5700	3353	4470194	Əfsun	(055) 774-50-56	2020-11-17
4330	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	56300	Mexaniki	Tam	f	16000	9412	4470109	Taleh	(050) 717-92-96	2020-11-17
4331	Bakı	Kia	Rio	2007	Hetçbek / Liftbek	Gümüşü	1.5	110	Dizel	258500	Mexaniki	Ön	f	11300	6647	4470110	Sabir	(070) 220-20-06	2020-11-17
4332	Sumqayıt	Hyundai	Sonata	2008	Sedan	Ağ	2.4	178	Benzin	252000	Avtomat	Ön	f	17500	10294	4470117	Ilyas	(055) 250-01-50	2020-11-17
4333	Bakı	Opel	Astra	2000	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	210000	Avtomat	Ön	f	7800	4588	4470118	behruz	(050) 540-11-37	2020-11-17
4334	Sumqayıt	Kia	Rio	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	110	Benzin	123000	Mexaniki	Ön	f	11500	6765	4470122	Arif	(050) 504-74-39	2020-11-17
4335	Sumqayıt	Mercedes	B 170	2007	Hetçbek / Liftbek	Qızılı	1.7	115	Benzin	222000	Avtomat	Ön	f	12300	7235	4470111	Ceyhun	(070) 827-35-35	2020-11-17
4336	Qobustan	Tofas	Dogan	2005	Sedan	Gümüşü	1.6	86	Benzin	70100	Mexaniki	Arxa	f	5700	3353	4470133	Resul	(050) 523-24-75	2020-11-17
4337	Bərdə	Opel	Astra	1999	Universal	Qara	1.6	75	Benzin	369588	Mexaniki	Arxa	f	8500	5000	4470130	Yasin	(050) 572-80-00	2020-11-17
4338	Bakı	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	370000	Mexaniki	Arxa	f	8800	5176	4470138	Mamed	(070) 860-49-06	2020-11-17
4339	Bakı	BMW	745	2002	Sedan	Qara	4.5	333	Benzin	125000	Avtomat	Arxa	f	10500	6176	4470141	Ruslan	(051) 844-60-00	2020-11-17
4340	Bakı	Mercedes	207 D	1990	Furqon	Ağ	2.3	170	Dizel	802400	Mexaniki	Arxa	f	7000	4118	4470142	Telman	(055) 413-01-24	2020-11-17
4341	Bakı	BMW	X5	2001	Offroader / SUV	Qara	4.4	286	Benzin	350000	Avtomat	Tam	f	16000	9412	4470114	cavid	(055) 536-19-19	2020-11-17
4342	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	157000	Avtomat	Ön	f	10700	6294	4470143	Nazim	(050) 381-45-12	2020-11-17
4343	Bakı	Volkswagen	Golf	2010	Hetçbek / Liftbek	Gümüşü	1.4	160	Benzin	117500	Avtomat	Ön	f	14000	8235	4470146	Kərim	(055) 525-46-80	2020-11-17
4344	Sumqayıt	Opel	Astra	1999	Hetçbek / Liftbek	Gümüşü	1.8	115	Benzin	235000	Avtomat	Ön	f	9500	5588	4470147	Zamin	(070) 720-25-21	2020-11-17
4345	Bakı	Kia	Cerato	2017	Sedan	Gümüşü	2	163	Benzin	19000	Avtomat	Ön	f	26500	15588	4470154	Asefba	(070) 836-52-59	2020-11-17
4346	Bakı	Ford	Fusion	2016	Sedan	Qara	1.5	181	Benzin	74000	Avtomat	Ön	f	20500	12059	4470152	Qehreman	(051) 800-79-79	2020-11-17
4347	Bakı	Mercedes	E 280	2006	Sedan	Qara	2.8	204	Benzin	160000	Avtomat	Arxa	f	23300	13706	4448912	Nihad	(055) 931-31-32	2020-11-17
4348	Bakı	Ford	C-Max	2014	Minivan	Qara	2	141	Hibrid	168000	Avtomat	Ön	f	18700	11000	4433419	Elmir	(070) 233-07-07	2020-11-17
4349	Xudat	LADA (VAZ)	2107	2004	Sedan	Tünd qırmızı	1.6	75	Benzin	154000	Mexaniki	Arxa	f	5700	3353	4470196	Ramin	(055) 721-33-29	2020-11-17
4350	Gəncə	Kia	Rio	2005	Sedan	Qara	1.4	97	Benzin	178000	Mexaniki	Ön	f	9900	5824	4470202	Elxan	(055) 633-86-38	2020-11-17
4351	Bakı	LADA (VAZ)	2101	1974	Sedan	Boz	1.6	75	Benzin	350000	Mexaniki	Arxa	f	1900	1118	4470203	İntiqam	(070) 977-82-02	2020-11-17
4352	Bakı	BMW	535	2008	Sedan	Yaş Asfalt	3	306	Benzin	152000	Avtomat	Tam	f	23700	13941	4470200	XALİD	(050) 357-50-00	2020-11-17
4353	Lənkəran	Mercedes	C 180	1997	Sedan	Göy	1.8	122	Benzin	124521	Avtomat	Arxa	f	11200	6588	4470206	Niyazi	(050) 622-31-17	2020-11-17
4354	Şəki	LADA (VAZ)	Kalina	2005	Sedan	Yaş Asfalt	1.5	75	Benzin	295930	Mexaniki	Ön	f	7800	4588	4470204	Nicat	(055) 271-45-05	2020-11-17
4355	Bakı	BMW	X5	2007	Offroader / SUV	Qara	4.8	350	Benzin	240000	Avtomat	Arxa	f	39034	22961	4456019	Nurlan	(055) 282-21-11	2020-11-17
4356	Bakı	Fiat	Doblo	2011	Minivan	Qara	1.6	85	Dizel	289000	Mexaniki	Ön	f	12300	7235	4226601	Elvin	(050) 273-34-48	2020-11-17
4357	Bakı	Hyundai	Sonata	2008	Sedan	Qara	2.4	178	Benzin	255543	Avtomat	Ön	f	16900	9941	4470062	Xeyal 	(055) 571-77-71	2020-11-17
4358	Bakı	LADA (VAZ)	Niva	1987	Offroader / SUV	Ağ	1.6	75	Benzin	888888	Mexaniki	Arxa	f	3800	2235	4470067	Samir	(070) 200-05-55	2020-11-17
4359	Bakı	Nissan	Sunny	2006	Sedan	Gümüşü	1.6	107	Benzin	350000	Mexaniki	Ön	f	10500	6176	4470068	Firat	(050) 263-59-90	2020-11-17
4360	Bakı	Kia	Optima	2016	Sedan	Yaş Asfalt	2	150	Benzin	31000	Avtomat	Ön	f	32800	19294	3844376	Emin	(050) 508-23-32	2020-11-17
4361	Ağdaş	LADA (VAZ)	2106	1998	Sedan	Ağ	1.5	65	Benzin	231800	Mexaniki	Arxa	f	4800	2824	4470081	Niyaməddin	(050) 806-59-70	2020-11-17
4362	Mingəçevir	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	350000	Avtomat	Arxa	f	17000	10000	4470086	Orxan	(055) 395-28-27	2020-11-17
4363	İmişli	Mercedes	C 220	1998	Universal	Qara	2.2	146	Dizel	426030	Avtomat	Arxa	f	11000	6471	4470085	Temkin 	(050) 347-50-20	2020-11-17
4364	Bakı	Nissan	Altima	2005	Sedan	Gümüşü	2.5	173	Benzin	302535	Avtomat	Ön	f	9000	5294	4470083	Emin	(055) 255-25-10	2020-11-17
4365	Balakən	Kia	Optima	2015	Sedan	Tünd qırmızı	2.4	188	Benzin	115000	Avtomat	Ön	f	24500	14412	4470074	SATICI 	(055) 269-08-88	2020-11-17
4366	Sumqayıt	Kia	Optima	2012	Sedan	Qara	2	165	Benzin	175000	Avtomat	Ön	f	22900	13471	4442684	taceddin	(055) 336-10-68	2020-11-17
4367	Bakı	Renault	Megane	2001	Sedan	Yaşıl	1.6	107	Benzin	170000	Avtomat	Ön	f	7200	4235	4470088	Faqan	(077) 511-51-57	2020-11-17
4368	Sumqayıt	Hyundai	Santa Fe	2013	Offroader / SUV	Ağ	2.4	178	Benzin	145000	Avtomat	Tam	f	31200	18353	4470075	Sediyyar	(055) 285-91-91	2020-11-17
4369	Bakı	Daewoo	Nexia	1995	Sedan	Qara	1.5	75	Benzin	410000	Mexaniki	Ön	f	5500	3235	4470025	Vusal	(055) 282-35-00	2020-11-17
4370	Ağstafa	LADA (VAZ)	2115	2005	Sedan	Qara	1.6	80	Benzin	283055	Mexaniki	Arxa	f	5900	3471	4470024	Bəhlul	(055) 296-07-25	2020-11-17
4371	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	276000	Avtomat	Arxa	f	14000	8235	4470023	Samir	(050) 865-33-65	2020-11-17
4372	Bakı	BMW	328	2010	Sedan	Qara	3	230	Benzin	200000	Avtomat	Arxa	f	22000	12941	4470019	Anar	(055) 211-86-83	2020-11-17
4373	Bakı	Opel	Astra	2000	Universal	Qırmızı	2	136	Benzin	363376	Avtomat	Ön	f	7500	4412	4470020	Elşad	(070) 729-19-90	2020-11-17
4374	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	113400	Avtomat	Ön	f	11200	6588	4470015	Yusif	(077) 744-24-00	2020-11-17
4375	Bakı	GAZ	330200	2007	Yük maşını	Ağ	2.3	131	Benzin	247000	Mexaniki	Arxa	f	12700	7471	4470032	Ziya	(070) 477-00-88	2020-11-17
4376	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Qara	4	282	Benzin	133000	Avtomat	Tam	f	50150	29500	4470040	Zaur	(077) 717-35-45	2020-11-17
4377	Bakı	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	112	Benzin	416000	Avtomat	Arxa	f	8200	4824	4470041	Tofiq	(050) 664-72-77	2020-11-17
4378	Bakı	Mitsubishi	Lancer	2008	Sedan	Qara	2	150	Benzin	206000	Avtomat	Ön	f	13500	7941	4470030	Allahverdi	(055) 930-68-31	2020-11-17
4379	Bakı	Mitsubishi	Pajero Sport	2020	Offroader / SUV	Ağ	3	209	Benzin	0	Avtomat	Tam	t	64090	37700	4470039	Rüfət	(077) 399-01-31	2020-11-17
4380	Bakı	Chevrolet	Equinox	2017	Offroader / SUV	Tünd qırmızı	1.5	172	Benzin	49500	Avtomat	Tam	f	29000	17059	4470001	Kamran	(070) 799-00-00	2020-11-17
4381	Bakı	Kia	Optima	2014	Sedan	Qara	2.4	180	Benzin	114000	Avtomat	Ön	f	24800	14588	4470038	Tuqay	(055) 506-23-22	2020-11-17
4382	Bakı	Renault	Fluence	2013	Sedan	Qara	2	150	Benzin	180000	Avtomat	Ön	f	13500	7941	4470044	Nuran	(055) 308-24-23	2020-11-17
4383	Bakı	Chevrolet	Malibu	2016	Sedan	Ağ	1.5	161	Benzin	50000	Avtomat	Ön	f	19550	11500	4470048	Namik 	(070) 237-13-03	2020-11-17
4384	Bakı	Ford	Fusion	2016	Sedan	Yaş Asfalt	1.5	181	Benzin	26600	Avtomat	Ön	f	19800	11647	4470049	Eli	(050) 649-42-93	2020-11-17
4385	Sumqayıt	Chevrolet	Cruze	2016	Sedan	Yaş Asfalt	1.4	141	Benzin	66500	Avtomat	Ön	f	17500	10294	4470054	Zamiq	(077) 578-78-77	2020-11-17
4386	Bakı	Porsche	Macan Turbo	2014	Offroader / SUV	Qara	3.6	400	Benzin	68000	Avtomat	Tam	f	105400	62000	4467642	Perviz	(055) 211-95-55	2020-11-17
4387	Sumqayıt	Mercedes	C 200	1999	Sedan	Göy	2	136	Benzin	325000	Avtomat	Arxa	f	11700	6882	4470053	Rafael	(070) 544-82-18	2020-11-17
4388	Bakı	BMW	318	1999	Sedan	Gümüşü	1.9	118	Benzin	370000	Avtomat	Arxa	f	8500	5000	4470056	Orxan	(055) 277-60-11	2020-11-17
4389	Bakı	Mercedes	C 180	1994	Sedan	Qəhvəyi	1.8	122	Benzin	345600	Avtomat	Arxa	f	7650	4500	4470097	Emin	(099) 389-89-86	2020-11-17
4390	Sumqayıt	Kia	Optima	2013	Sedan	Ağ	2	274	Benzin	130000	Avtomat	Ön	f	21500	12647	4470099	ILHAM	(077) 624-66-24	2020-11-17
4391	Gəncə	LADA (VAZ)	Niva	2007	Offroader / SUV	Ağ	1.7	80	Benzin	80000	Mexaniki	Tam	f	7500	4412	4470096	Ilkin	(055) 803-24-21	2020-11-17
4392	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	190146	Mexaniki	Arxa	f	7800	4588	4470102	Aqil	(051) 723-23-22	2020-11-17
4393	Ağstafa	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	70171	Mexaniki	Arxa	f	6500	3824	4470108	Səxavət	(070) 500-37-44	2020-11-17
4394	Şəmkir	LADA (VAZ)	2106	1993	Sedan	Ağ	1.5	65	Benzin	57000	Mexaniki	Arxa	f	4700	2765	4469976	Elnur	(050) 635-44-14	2020-11-17
4395	Bakı	Kia	Bongo	2005	Yük maşını	Ağ	2.7	135	Dizel	168000	Mexaniki	Arxa	f	7300	4294	4469981	Sahib	(077) 244-14-40	2020-11-17
4396	Bakı	Mercedes	Viano	2011	Van	Qara	3	224	Dizel	245000	Avtomat	Arxa	f	42400	24941	4469982	Elşən	(055) 215-08-42	2020-11-17
4397	Sumqayıt	Mercedes	C 180	1993	Sedan	Qara	1.8	122	Benzin	341000	Avtomat	Arxa	f	6500	3824	4469987	Ayaz	(050) 668-51-27	2020-11-17
4398	Bakı	Volkswagen	Golf	1997	Sedan	Qara	2	115	Benzin	209250	Avtomat	Ön	f	5800	3412	4469986	Sadiq	(055) 325-97-92	2020-11-17
4399	Gəncə	Ford	Fusion	2013	Sedan	Qara	1.6	181	Benzin	105000	Avtomat	Ön	f	17200	10118	4469989	Rəşad	(055) 656-51-03	2020-11-17
4400	Bakı	Ford	Fusion	2014	Sedan	Yaş Asfalt	1.5	181	Benzin	103000	Avtomat	Ön	f	20000	11765	4469995	Rufet	(055) 445-44-47	2020-11-17
4401	Bakı	Mitsubishi	Attrage	2014	Sedan	Boz	1.2	78	Benzin	124000	Avtomat	Ön	f	11200	6588	4469996	Nicat	(055) 299-25-13	2020-11-17
4402	Bakı	Mazda	6	2014	Sedan	Ağ	2.5	192	Benzin	206000	Avtomat	Ön	f	26000	15294	4469984	Ilkin	(051) 229-68-29	2020-11-17
4403	Bakı	Ford	Fusion	2015	Sedan	Ağ	1.5	181	Benzin	86000	Avtomat	Ön	f	19500	11471	4470002	Ilqar	(055) 401-00-14	2020-11-17
4404	Bakı	Lexus	LX 470	2006	Offroader / SUV	Qara	4.7	286	Benzin	110000	Avtomat	Tam	f	47600	28000	4470010	Samir 	(050) 214-41-48	2020-11-17
4405	Bakı	Mercedes	E 200	2006	Sedan	Gümüşü	2	163	Benzin	170000	Avtomat	Arxa	f	21500	12647	4470007	Rüfət	(050) 399-01-31	2020-11-17
4406	Goranboy	Mercedes	C 180	1995	Sedan	Qara	1.8	122	Benzin	200500	Mexaniki	Arxa	f	9000	5294	4470005	ismayil	(051) 464-82-40	2020-11-17
4407	Bakı	Daewoo	Damas	2010	Mikroavtobus	Ağ	0.8	51	Benzin	190009	Mexaniki	Arxa	f	4600	2706	4470013	Ebelfez	(070) 639-32-33	2020-11-17
4408	Bakı	Chevrolet	Cruze	2012	Sedan	Mavi	1.4	141	Benzin	185885	Avtomat	Ön	f	14200	8353	4470014	Elvin	(070) 611-20-22	2020-11-17
4409	Bakı	Mercedes	CLS 63 AMG	2011	Sedan	Boz	5.5	557	Benzin	105000	Avtomat	Arxa	f	66300	39000	4468652	ceyhun	(055) 552-28-70	2020-11-17
4410	Bakı	Opel	Astra	1995	Universal	Tünd qırmızı	1.6	101	Benzin	290000	Mexaniki	Ön	f	6500	3824	4469923	Natiq	(055) 653-94-23	2020-11-17
4411	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Qara	2	141	Benzin	153000	Avtomat	Tam	f	16800	9882	4469900	Rustem	(070) 222-33-31	2020-11-17
4412	Goranboy	Mercedes	C 180	1997	Sedan	Tünd qırmızı	1.8	122	Benzin	100001	Avtomat	Arxa	f	11400	6706	4469926	Seymur	(055) 638-50-50	2020-11-17
4414	Sumqayıt	Opel	Astra	2001	Universal	Mavi	1.8	125	Benzin	205565	Avtomat	Ön	f	8800	5176	4469930	Yusif	(055) 884-96-20	2020-11-17
4415	Bakı	BMW	528	1999	Sedan	Qızılı	2.8	193	Benzin	385433	Avtomat	Arxa	f	10500	6176	4469935	Tuqay	(055) 537-03-88	2020-11-17
4416	Bakı	LADA (VAZ)	2107	2003	Sedan	Göy	1.5	65	Benzin	94544	Mexaniki	Arxa	f	5000	2941	4469936	Etibar	(055) 205-10-31	2020-11-17
4417	Bakı	Daewoo	Leganza	2001	Sedan	Gümüşü	2	126	Benzin	188541	Mexaniki	Ön	f	5800	3412	4469934	Murad	(055) 562-56-56	2020-11-17
4418	Bakı	BMW	530	2006	Sedan	Ağ	3	272	Benzin	319998	Avtomat	Arxa	f	17800	10471	4469943	Suleyman	(099) 888-00-84	2020-11-17
4419	Goranboy	LADA (VAZ)	2106	1986	Sedan	Göy	1.3	65	Benzin	200000	Mexaniki	Arxa	f	3200	1882	4469945	Kənan	(070) 713-12-11	2020-11-17
4420	Bakı	Subaru	Legacy	2008	Sedan	Göy	2	180	Benzin	239500	Avtomat	Tam	f	9700	5706	4469948	Cavid	(050) 508-01-39	2020-11-17
4421	Sabirabad	LADA (VAZ)	2106	1989	Sedan	Bej	1.5	65	Benzin	657955	Mexaniki	Arxa	f	4000	2353	4469959	Ramiz	(051) 402-01-77	2020-11-17
4422	Xaçmaz	LADA (VAZ)	2103	1981	Sedan	Ağ	1.6	75	Benzin	210300	Mexaniki	Arxa	f	5500	3235	4469955	İslam	(050) 534-37-40	2020-11-17
4423	Sumqayıt	Hyundai	Elantra	2012	Sedan	Yaş Asfalt	1.8	150	Benzin	119000	Avtomat	Ön	f	16200	9529	4469961	Fərid	(055) 707-30-76	2020-11-17
4424	İsmayıllı	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	165000	Mexaniki	Arxa	f	9200	5412	4469963	Sehriyar	(055) 880-90-09	2020-11-17
4425	Bakı	BMW	X5	2005	Offroader / SUV	Qara	4.8	360	Benzin	184500	Avtomat	Tam	f	27000	15882	4469916	Kerim	(055) 399-88-38	2020-11-17
4426	Bakı	LADA (VAZ)	21099	1994	Sedan	Yaşıl	1.5	75	Benzin	360000	Mexaniki	Ön	f	4000	2353	4469969	cabir	(051) 458-07-04	2020-11-17
4427	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	5.7	383	Benzin	89673	Avtomat	Tam	f	89250	52500	4469974	Zöhrab	(055) 212-47-99	2020-11-17
4428	Bakı	Nissan	Patrol	2002	Offroader / SUV	Boz	4.8	245	Benzin	150000	Avtomat	Tam	f	18000	10588	4382262	Elvin	(055) 977-87-87	2020-11-17
4429	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	240000	Avtomat	Ön	f	11500	6765	4469887	Elman	(055) 368-20-07	2020-11-17
4430	Gəncə	Opel	Meriva	2005	Minivan	Sarı	1.4	90	Benzin	231000	Mexaniki	Ön	f	8800	5176	4469889	Hafis	(055) 567-19-14	2020-11-17
4431	Bakı	Mercedes	E 200	1996	Sedan	Ağ	2	136	Benzin	224045	Avtomat	Arxa	f	10500	6176	4469893	Elxan	(050) 882-57-00	2020-11-17
4432	Goranboy	Ford	Transit	1999	Yük maşını	Göy	2.5	76	Dizel	250407	Mexaniki	Arxa	f	15000	8824	4469895	ilqar	(051) 328-73-44	2020-11-17
4433	Bakı	Chevrolet	Cruze	2016	Sedan	Göy	1.4	153	Benzin	124000	Avtomat	Ön	f	22300	13118	4469902	Nuran	(070) 828-38-76	2020-11-17
4434	Bakı	Chevrolet	Cruze	2013	Sedan	Gümüşü	1.4	141	Benzin	164000	Avtomat	Ön	f	13600	8000	4465016	Sehriyar	(055) 289-72-29	2020-11-17
4435	Bakı	Kia	Sorento	2012	Offroader / SUV	Ağ	2.4	178	Benzin	140000	Avtomat	Tam	f	33000	19412	4469835	Zaur	(050) 274-08-08	2020-11-17
4436	Gəncə	Mercedes	E 240	1997	Sedan	Qara	2.4	170	Benzin	310000	Avtomat	Arxa	f	10500	6176	4469839	Elman	(055) 374-00-57	2020-11-17
4437	Bakı	Daihatsu	Materia	2007	Minivan	Ağ	1.5	103	Benzin	210000	Avtomat	Ön	f	13500	7941	4469841	Sabir	(055) 488-43-38	2020-11-17
4438	Bakı	Mercedes	C 240	1998	Sedan	Gümüşü	2.4	170	Benzin	319000	Avtomat	Arxa	f	13000	7647	4452956	Eldeniz	(070) 623-82-22	2020-11-17
4439	Mingəçevir	Kia	Cerato	2009	Sedan	Qara	2	150	Benzin	257000	Avtomat	Ön	f	14500	8529	4469845	Elvin 	(050) 645-04-25	2020-11-17
4440	Bakı	Kia	Optima	2016	Sedan	Yaş Asfalt	1.6	180	Benzin	43000	Avtomat	Ön	f	21300	12529	4445621	Ruslan	(055) 212-71-90	2020-11-17
4441	Bakı	LADA (VAZ)	2106	1993	Sedan	Qəhvəyi	1.6	75	Benzin	100000	Mexaniki	Arxa	f	3600	2118	4469848	Eli	(077) 738-10-11	2020-11-17
4442	Bakı	Kia	Optima	2013	Sedan	Yaş Asfalt	2	274	Benzin	151500	Avtomat	Ön	f	20850	12265	4469852	Alik	(055) 841-54-14	2020-11-17
4444	Bakı	Toyota	Land Cruiser	2009	Offroader / SUV	Ağ	4	272	Benzin	137532	Avtomat	Tam	f	48450	28500	4469857	Elmir	(050) 963-54-22	2020-11-17
4445	Bakı	Toyota	Corolla	2005	Universal	Yaş Asfalt	1.4	90	Dizel	290550	Robotlaşdırılmış	Ön	f	12900	7588	4469859	Reşad	(050) 540-06-30	2020-11-17
4446	Göygöl	LADA (VAZ)	2107	2000	Sedan	Göy	1.6	75	Benzin	149000	Mexaniki	Arxa	f	4900	2882	4469860	Natiq	(055) 422-66-39	2020-11-17
4447	Bakı	Volkswagen	Golf	1986	Hetçbek / Liftbek	Ağ	1.6	90	Dizel	544750	Mexaniki	Ön	f	5700	3353	4425490	emil	(070) 591-00-11	2020-11-17
4448	Bakı	Mercedes	E 220	2005	Sedan	Ağ	2.2	150	Dizel	223000	Avtomat	Arxa	f	14000	8235	4469867	Alakbar	(055) 305-01-00	2020-11-17
4449	Bakı	Skoda	Octavia	2013	Sedan	Ağ	1.2	170	Benzin	415045	Mexaniki	Ön	f	12500	7353	4469873	Vilayet	(055) 994-76-66	2020-11-17
4450	Bakı	Lexus	LX 470	2007	Offroader / SUV	Qara	4.7	268	Benzin	161000	Avtomat	Tam	f	42160	24800	4433056	Cabir	(051) 933-83-83	2020-11-17
4451	Bakı	Mercedes	C 200	2009	Sedan	Qara	1.8	184	Benzin	181000	Avtomat	Arxa	f	23500	13824	4469874	Tural	(050) 314-27-14	2020-11-17
4453	Bakı	Mitsubishi	Airtrek	2001	Offroader / SUV	Ağ	2	136	Benzin	120000	Avtomat	Ön	f	9400	5529	4469882	Raqib	(070) 330-64-59	2020-11-17
4454	Biləsuvar	LADA (VAZ)	2106	1993	Sedan	Sarı	1.5	65	Benzin	145000	Mexaniki	Arxa	f	6500	3824	4469913	Ramiz	(050) 325-90-87	2020-11-17
4455	Bakı	Land Rover	Discovery	2017	Offroader / SUV	Boz	3	340	Benzin	31000	Avtomat	Tam	f	116450	68500	4340827	Vugar	(050) 208-55-55	2020-11-17
4456	Lənkəran	LADA (VAZ)	2115	2011	Sedan	Tünd qırmızı	1.6	80	Benzin	212000	Mexaniki	Ön	f	9200	5412	4445274	Oktay	(051) 645-55-88	2020-11-17
4457	Bakı	SEAT	Ibiza	2012	Hetçbek / Liftbek	Ağ	1.6	105	Benzin	180000	Avtomat	Ön	f	10700	6294	4469256	Vuqar	(055) 285-81-85	2020-11-17
4458	Bakı	BMW	328	2014	Sedan	Ağ	2	245	Benzin	62100	Avtomat	Arxa	f	37400	22000	4446540	Ramin	(050) 795-74-45	2020-11-17
4459	Bakı	Chevrolet	Lacetti	2008	Hetçbek / Liftbek	Qara	1.4	98	Benzin	268850	Mexaniki	Ön	f	12200	7176	4469806	Iftixar	(070) 304-16-85	2020-11-17
4460	Ağsu	Hyundai	Sonata	2006	Sedan	Qara	2	165	Dizel	227644	Avtomat	Ön	f	15800	9294	4469810	Fariz	(050) 352-65-47	2020-11-17
4461	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Qara	2	184	Dizel	73000	Avtomat	Tam	f	38250	22500	4469807	Rahul	(050) 807-18-31	2020-11-17
4413	Şirvan	LADA (VAZ)	2106	1980	Sedan	Ağ	1.6	75	Benzin	365821	Mexaniki	Arxa	f	3000	1765	4469928	Namik	(055) 757-90-94	2020-11-17
4443	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2.4	180	Benzin	91000	Avtomat	Tam	f	24900	14647	4414424	Ayaz	(050) 265-70-38	2020-11-17
4462	Bakı	Ford	Fusion	2017	Sedan	Qara	1.5	181	Benzin	72000	Avtomat	Ön	f	24000	14118	4469811	Rustam	(055) 400-28-70	2020-11-17
4463	Xaçmaz	Zontes	Panther ZT150-8A	2014	Motosiklet	Qızılı	0.2	7	Benzin	20000	Mexaniki	Arxa	f	2600	1529	4469814	Ibrahim	(070) 717-70-30	2020-11-17
4464	Ağcabədi	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	202362	Avtomat	Arxa	f	13300	7824	4469815	Humbet seyid	(050) 346-69-77	2020-11-17
4465	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Göy	1.7	80	Benzin	86000	Mexaniki	Tam	f	11800	6941	4469816	Rauf	(070) 289-01-89	2020-11-17
4466	Bakı	Ford	Transit	2008	Furqon	Ağ	2.4	140	Dizel	199000	Mexaniki	Arxa	f	26000	15294	4469817	Ramil	(050) 366-09-20	2020-11-17
4467	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	97	Dizel	183000	Mexaniki	Ön	f	13400	7882	4469818	Behram 	(055) 708-12-16	2020-11-17
4468	Bakı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	255000	Mexaniki	Arxa	f	6900	4059	4469822	Samir	(051) 519-56-70	2020-11-17
4469	Bakı	Ssang Yong	Korando	2013	Offroader / SUV	Yaş Asfalt	2	155	Benzin	102000	Avtomat	Tam	f	16500	9706	4420891	Seyid	(070) 380-23-23	2020-11-17
4470	Bakı	Mercedes	C 220	1995	Sedan	Gümüşü	2.2	146	Benzin	253416	Avtomat	Arxa	f	6100	3588	4469823	Mirze	(050) 428-56-97	2020-11-17
4471	Bakı	Opel	Astra	2000	Hetçbek / Liftbek	Qırmızı	1.6	101	Benzin	168000	Avtomat	Ön	f	9400	5529	4469741	Sahib	(070) 403-22-42	2020-11-17
4472	Bakı	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	79000	Mexaniki	Arxa	f	7950	4676	4469748	ANAR	(050) 820-57-54	2020-11-17
4473	Bakı	Mercedes	E 230	1996	Sedan	Qara	2.3	150	Benzin	350000	Avtomat	Arxa	f	9500	5588	4469751	Rəşad 	(055) 225-57-26	2020-11-17
4474	Bakı	Mercedes	C 320	2000	Sedan	Qara	3.2	224	Benzin	350000	Avtomat	Arxa	f	9500	5588	4469754	Anar	(055) 212-87-78	2020-11-17
4475	Bakı	Kia	Cerato	2013	Sedan	Qara	1.6	132	Benzin	178000	Avtomat	Ön	f	18500	10882	4469223	Elcin	(055) 710-28-25	2020-11-17
4476	Gəncə	Ford	Fusion	2013	Sedan	Ağ	1.6	181	Benzin	88800	Avtomat	Ön	f	17900	10529	4447877	VAQIF	(055) 556-22-77	2020-11-17
4477	Bakı	Ford	Transit	1997	Furqon	Ağ	2.4	150	Dizel	656865	Mexaniki	Arxa	f	15700	9235	4469757	Elşən	(070) 311-13-12	2020-11-17
4478	Bakı	Mercedes	E 200	1992	Sedan	Yaş Asfalt	2	122	Dizel	354283	Mexaniki	Arxa	f	5800	3412	4469763	Ərəstun	(050) 830-95-11	2020-11-17
4479	Bakı	Mercedes	E 220	2004	Sedan	Yaşıl	2.2	150	Dizel	228220	Avtomat	Arxa	f	18000	10588	4394059	Shamil	(077) 506-39-65	2020-11-17
4480	Bakı	Lifan	520	2008	Sedan	Gümüşü	1.6	85	Benzin	150000	Mexaniki	Arxa	f	4900	2882	4469765	Yadigar 	(070) 599-67-74	2020-11-17
4481	Lənkəran	Opel	Vectra	1994	Sedan	Tünd qırmızı	2	136	Benzin	478586	Mexaniki	Ön	f	3500	2059	4469767	Elşən	(050) 675-64-65	2020-11-17
4482	Bakı	Saipa	132	2018	Sedan	Göy	1.5	75	Benzin	85000	Mexaniki	Ön	f	6700	3941	4469769	Eziz	(050) 977-77-11	2020-11-17
4483	Bakı	Hyundai	Genesis	2010	Sedan	Ağ	3.8	290	Benzin	161873	Avtomat	Arxa	f	25160	14800	4469771	Natiq	(050) 211-16-80	2020-11-17
4484	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.5	65	Benzin	225000	Mexaniki	Arxa	f	4200	2471	4469776	Elnur	(050) 395-74-11	2020-11-17
4485	Bakı	Mercedes	E 240	2003	Sedan	Gümüşü	2.6	177	Benzin	377807	Avtomat	Arxa	f	16600	9765	4469779	Tunar	(070) 689-98-58	2020-11-17
4486	Bakı	Nissan	Sunny	2012	Sedan	Ağ	1.5	90	Benzin	191000	Avtomat	Ön	f	12500	7353	4448090	Şəhriyar	(055) 304-64-43	2020-11-17
4487	Bakı	LADA (VAZ)	Niva	2020	Offroader / SUV	Qara	1.7	80	Benzin	1200	Mexaniki	Tam	f	22300	13118	4422088	Raul	(050) 220-01-20	2020-11-17
4488	Bakı	Renault	Megane	2010	Universal	Yaş Asfalt	1.5	110	Dizel	150000	Mexaniki	Ön	f	13200	7765	4469786	Elvin	(051) 527-72-25	2020-11-17
4489	Mingəçevir	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	111100	Mexaniki	Ön	f	8800	5176	4469825	Behruz	(050) 378-74-75	2020-11-17
4490	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.4	101	Benzin	173000	Mexaniki	Ön	f	10600	6235	4469788	Hüsen	(055) 495-00-44	2020-11-17
4491	Bakı	Opel	Vectra	1993	Sedan	Göy	1.6	101	Benzin	150000	Mexaniki	Ön	f	5000	2941	4469829	Elnur	(055) 678-79-35	2020-11-17
4492	Bakı	Audi	A4	2006	Sedan	Gümüşü	2	200	Benzin	144120	Avtomat	Ön	f	12500	7353	4469826	AYXAN	(055) 920-36-07	2020-11-17
4493	Bakı	Opel	Astra	2007	Universal	Gümüşü	1.4	90	Benzin	170000	Mexaniki	Ön	f	11700	6882	4469766	Arzuman	(055) 970-07-77	2020-11-17
4494	Qusar	Kia	Ceed	2009	Universal	Gümüşü	1.4	110	Benzin	140620	Mexaniki	Ön	f	14800	8706	4469681	Reşad	(050) 712-28-00	2020-11-17
4495	Şirvan	LADA (VAZ)	2107	2008	Sedan	Ağ	1.5	65	Benzin	23659	Mexaniki	Arxa	f	6300	3706	4469680	İlham	(055) 308-58-18	2020-11-17
4496	Bakı	Dacia	Logan	2008	Universal	Ağ	1.5	100	Dizel	238499	Mexaniki	Ön	f	13031	7665	4469682	Bəhram	(051) 539-99-94	2020-11-17
4497	Bakı	Mercedes	S 350	2007	Sedan	Qara	3.5	272	Benzin	198000	Avtomat	Arxa	f	28000	16471	4469688	Zakir	(055) 914-04-26	2020-11-17
4498	Şamaxı	Nissan	Pathfinder	1996	Offroader / SUV	Qızılı	3.5	220	Benzin	187000	Avtomat	Arxa	f	9300	5471	4469693	Elçin	(050) 565-25-20	2020-11-17
4499	Salyan	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	374000	Avtomat	Arxa	f	11500	6765	4469706	TAPDIQ	(051) 533-68-62	2020-11-17
4500	Bakı	Mercedes	E 200	1992	Sedan	Gümüşü	2	136	Dizel	455886	Mexaniki	Arxa	f	5800	3412	4469691	Edik	(055) 846-07-11	2020-11-17
4501	Bakı	Kia	Optima	2006	Sedan	Boz	2	155	Benzin	375000	Avtomat	Ön	f	12000	7059	4469709	Terlan	(099) 741-00-10	2020-11-17
4502	Bakı	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	122	Benzin	383154	Mexaniki	Arxa	f	8500	5000	4469713	Namiq	(055) 204-63-17	2020-11-17
4503	Bakı	Hyundai	Sonata	2007	Sedan	Ağ	2.4	180	Benzin	255000	Avtomat	Ön	f	13500	7941	4469716	Əli	(050) 980-85-00	2020-11-17
4504	Bakı	Toyota	HiAce	2011	Mikroavtobus	Gümüşü	3.6	150	Dizel	332000	Mexaniki	Arxa	f	32200	18941	4469718	Nicat	(055) 833-17-57	2020-11-17
4506	Bakı	LADA (VAZ)	Priora	2014	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	63325	Mexaniki	Ön	f	14300	8412	4413572	Anar	(055) 855-43-93	2020-11-17
4507	Bakı	Opel	Astra	2000	Universal	Ağ	1.8	125	Benzin	460000	Mexaniki	Ön	f	8000	4706	4469724	Mahmud	(055) 233-13-01	2020-11-17
4508	Göyçay	Mercedes	E 250	2010	Sedan	Ağ	1.8	204	Benzin	320000	Avtomat	Arxa	f	30500	17941	4469730	Reşad	(055) 718-92-28	2020-11-17
4509	Bakı	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	348562	Avtomat	Arxa	f	10900	6412	4454341	Yusif	(055) 465-61-64	2020-11-17
4510	Bakı	Nissan	Teana	2008	Sedan	Qara	2.5	182	Benzin	281238	Variator	Ön	f	18000	10588	4469620	Elgiz	(070) 999-25-25	2020-11-17
4511	Balakən	Mercedes	E 220	1993	Sedan	Qızılı	2.2	143	Benzin	246000	Mexaniki	Arxa	f	7500	4412	4469632	telman	(050) 642-59-75	2020-11-17
4512	Bakı	DAF	105XF	2008	Dartqı	Qırmızı	4.5	460	Dizel	920000	Mexaniki	Arxa	f	56000	32941	4469635	Abdulley	(055) 664-02-85	2020-11-17
4513	Qazax	LADA (VAZ)	2106	1998	Sedan	Gümüşü	1.6	75	Benzin	177079	Mexaniki	Arxa	f	5700	3353	4469629	Vasib 	(070) 506-48-67	2020-11-17
4514	Bakı	Opel	Zafira	2006	Universal	Qara	2.2	150	Benzin	254450	Avtomat	Ön	f	13500	7941	4469638	Vaqif	(077) 443-72-98	2020-11-17
4515	Sumqayıt	Mercedes	E 280	2008	Sedan	Qara	3	231	Dizel	260000	Avtomat	Arxa	f	26000	15294	4469641	KAMIL	(051) 569-93-99	2020-11-17
4516	Bakı	Chrysler	300C	2005	Sedan	Qara	2.7	193	Benzin	185000	Avtomat	Arxa	f	17500	10294	4331202	Elman	(070) 214-69-94	2020-11-17
4517	Bakı	Tofas	Sahin	2005	Sedan	Gümüşü	1.6	86	Benzin	286000	Mexaniki	Arxa	f	6850	4029	4469647	Mübariz	(055) 550-17-35	2020-11-17
4518	Balakən	Opel	Vivaro	2007	Mikroavtobus	Tünd qırmızı	2.5	147	Dizel	407000	Mexaniki	Ön	f	17700	10412	4469651	Ramazan 	(055) 607-03-01	2020-11-17
4519	Bakı	Mercedes	Vito 115	2014	Van	Qara	2.2	150	Dizel	185000	Avtomat	Arxa	f	35000	20588	4469645	Novruz	(070) 222-56-22	2020-11-17
4520	Bakı	Lifan	320	2015	Hetçbek / Liftbek	Gümüşü	1.3	88	Benzin	111000	Mexaniki	Arxa	f	3999	2352	4469654	Yasar	(077) 588-43-82	2020-11-17
4521	Bakı	Nissan	Patrol	2011	Offroader / SUV	Ağ	5.6	405	Benzin	184000	Avtomat	Arxa	f	65000	38235	4469657	Rufet	(070) 206-41-41	2020-11-17
4522	Bakı	Opel	Vectra	1996	Sedan	Qəhvəyi	2	136	Benzin	373000	Avtomat	Ön	f	2800	1647	4469656	Məsim	(055) 696-90-29	2020-11-17
4523	Bakı	Kia	Sorento	2008	Offroader / SUV	Qara	3.3	242	Benzin	207000	Avtomat	Tam	f	17500	10294	4469659	Ilqar	(070) 793-23-63	2020-11-17
4524	Bakı	Mercedes	C 230	1999	Sedan	Ağ	2.3	150	Benzin	211334	Avtomat	Arxa	f	12300	7235	4469664	Qəhrəman	(051) 853-97-23	2020-11-17
4525	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	79000	Avtomat	Ön	f	19900	11706	4469669	Nihad 	(070) 252-51-51	2020-11-17
4526	Ağdaş	Great Wall	Voleex C30	2013	Sedan	Gümüşü	1.5	105	Benzin	192000	Mexaniki	Ön	f	13400	7882	4469675	Cemil	(055) 441-26-00	2020-11-17
4527	Bakı	GAZ	330200	2005	Yük maşını	Ağ	2.5	96	Benzin	132000	Mexaniki	Arxa	f	12000	7059	4469677	İlham	(055) 796-74-86	2020-11-17
4528	Bakı	Jeep	Wrangler	2015	Offroader / SUV	Qara	3.6	284	Benzin	42000	Avtomat	Tam	f	71400	42000	4408021	Zaur	(055) 707-54-54	2020-11-17
4529	Xırdalan	Hyundai	Sonata	2008	Sedan	Gümüşü	2	164	Benzin	170000	Avtomat	Ön	f	16400	9647	4469736	Faxi	(050) 544-17-31	2020-11-17
4530	Şəmkir	LADA (VAZ)	Niva	2013	Offroader / SUV	Yaşıl	1.7	80	Benzin	15000	Mexaniki	Tam	f	9100	5353	4469732	Orxan	(050) 410-09-08	2020-11-17
4531	Bakı	Great Wall	Hover M4	2014	Hetçbek / Liftbek	Gümüşü	1.5	128	Benzin	220000	Mexaniki	Ön	f	11500	6765	4469738	Mustafa 	(055) 525-40-35	2020-11-17
4532	Bakı	Nissan	Qashqai	2008	Offroader / SUV	Göy	2	140	Benzin	137000	Avtomat	Ön	f	16500	9706	4433627	Nurəddin	(070) 335-85-65	2020-11-17
4533	Bakı	Audi	Q7	2007	Offroader / SUV	Göy	3.6	280	Benzin	177000	Avtomat	Tam	f	24300	14294	4436014	Yunis	(050) 972-50-31	2020-11-17
4534	Bakı	Infiniti	M35	2010	Sedan	Qara	3.5	306	Benzin	128000	Avtomat	Arxa	f	22500	13235	4469572	Ferhad	(050) 284-64-44	2020-11-17
4535	Bakı	Hyundai	Elantra	2015	Sedan	Qara	1.8	150	Benzin	72000	Avtomat	Ön	f	21800	12824	4469575	Namiq	(050) 398-83-89	2020-11-17
4536	Salyan	LADA (VAZ)	2107	2008	Sedan	Qırmızı	1.6	75	Benzin	200000	Mexaniki	Arxa	f	5800	3412	4469577	Rasim	(050) 384-56-90	2020-11-17
4537	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	273563	Mexaniki	Ön	f	13000	7647	4469579	Azər	(070) 203-05-05	2020-11-17
4538	Bakı	Skoda	Fabia	2012	Universal	Ağ	1.2	86	Benzin	299000	Mexaniki	Ön	f	9700	5706	4469574	Fərman	(055) 734-19-69	2020-11-17
4539	Bakı	Mercedes	C 180	1995	Sedan	Göy	1.8	124	Benzin	245000	Avtomat	Arxa	f	6900	4059	4469582	Elçin	(055) 500-28-05	2020-11-17
4540	Xaçmaz	LADA (VAZ)	2106	1993	Sedan	Ağ	1.5	65	Benzin	180000	Mexaniki	Arxa	f	4500	2647	4469581	Elşad	(055) 363-66-10	2020-11-17
4541	Qax	Opel	Astra	1995	Universal	Boz	1.8	125	Benzin	338000	Mexaniki	Ön	f	6500	3824	4469587	Tural	(050) 641-80-79	2020-11-17
4542	Sumqayıt	Daewoo	Nexia	2010	Sedan	Ağ	1.5	80	Benzin	235000	Mexaniki	Ön	f	8000	4706	4469580	Yusif	(050) 717-19-06	2020-11-17
4543	Bakı	Toyota	Camry	2012	Sedan	Göy	2.5	160	Benzin	150000	Avtomat	Ön	f	23300	13706	4408192	Togrul	(051) 992-01-17	2020-11-17
4544	Bakı	Mercedes	E 230	1990	Sedan	Qızılı	2.3	150	Benzin	250000	Avtomat	Arxa	f	5500	3235	4469601	Oktay	(055) 201-13-63	2020-11-17
4545	Sumqayıt	Mercedes	E 220	1999	Sedan	Gümüşü	2.2	143	Dizel	370000	Avtomat	Arxa	f	13700	8059	4469600	Rustam	(055) 531-79-74	2020-11-17
4546	Bakı	Mercedes	Vito 111	2010	Van	Ağ	2.2	109	Dizel	187000	Mexaniki	Arxa	f	21800	12824	4469599	Rafiq	(055) 586-80-49	2020-11-17
4547	Bakı	GAZ	31105	2005	Sedan	Ağ	2.3	131	Benzin	211425	Mexaniki	Arxa	f	6600	3882	4444625	Orxan	(055) 208-01-96	2020-11-17
4548	Bakı	GAZ	53	1979	Yük maşını	Göy	4.2	150	Benzin	92000	Mexaniki	Arxa	f	10500	6176	4469529	ILQAR	(070) 749-50-07	2020-11-17
4549	Bakı	Great Wall	Hover H3	2014	Offroader / SUV	Ağ	2	122	Benzin	134256	Mexaniki	Tam	f	17500	10294	4469531	Tofiq	(055) 257-80-49	2020-11-17
4550	Bakı	Hyundai	Elantra	2011	Sedan	Ağ	1.8	150	Benzin	142000	Avtomat	Ön	f	16800	9882	4469528	Rafiq	(055) 727-33-98	2020-11-17
4551	Bakı	Mercedes	C 220	1999	Sedan	Göy	2.2	143	Dizel	305800	Avtomat	Arxa	f	9900	5824	4469536	Qalib	(050) 549-68-20	2020-11-17
4552	Bakı	Geely	CK	2008	Sedan	Ağ	1.5	128	Benzin	228000	Mexaniki	Ön	f	4600	2706	4469537	Cavid	(051) 761-47-67	2020-11-17
4553	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	4	250	Benzin	128396	Avtomat	Tam	f	52360	30800	4469543	Malik	(050) 549-86-86	2020-11-17
4554	Bakı	Mercedes	Vito	2010	Van	Gümüşü	2.2	163	Dizel	283000	Avtomat	Arxa	f	30500	17941	4324437	Anar	(050) 313-72-05	2020-11-17
4555	Bakı	LADA (VAZ)	2106	1994	Sedan	Çəhrayı	1.5	65	Benzin	154690	Mexaniki	Arxa	f	4300	2529	4469545	Natik	(055) 255-69-37	2020-11-17
4556	Sumqayıt	Mercedes	Sprinter 316	2013	Mikroavtobus	Qara	2.2	170	Dizel	141400	Mexaniki	Arxa	f	75555	44444	4281146	Nurlan	(070) 592-82-82	2020-11-17
4557	Xırdalan	LADA (VAZ)	21099	2002	Sedan	Gümüşü	1.5	78	Benzin	330150	Mexaniki	Ön	f	6200	3647	4469546	SUKUR	(070) 628-48-80	2020-11-17
4558	Bakı	Opel	Astra	2004	Hetçbek / Liftbek	Göy	1.4	125	Benzin	148979	Mexaniki	Ön	f	11500	6765	4469551	Niyaz	(070) 208-87-88	2020-11-17
4559	Sumqayıt	Hyundai	Tucson	2004	Offroader / SUV	Qara	2	112	Dizel	260500	Avtomat	Tam	f	15000	8824	4469553	Yusif	(055) 766-92-72	2020-11-17
4560	Sumqayıt	Hyundai	Sonata	2010	Sedan	Boz	2.4	168	Benzin	190000	Avtomat	Ön	f	17200	10118	4469559	Zahid	(070) 272-04-34	2020-11-17
4561	Bakı	Mercedes	Axor 1843	2008	Dartqı	Göy	4.5	130	Dizel	715000	Avtomat	Arxa	f	40000	23529	4469556	Abdulley	(070) 664-02-85	2020-11-17
4562	Lənkəran	Mercedes	E 240	2000	Sedan	Göy	2.6	177	Benzin	550000	Avtomat	Arxa	f	15800	9294	4469563	Azad	(050) 683-33-33	2020-11-17
4563	Bakı	Opel	Astra	2006	Universal	Qara	1.3	90	Dizel	165650	Mexaniki	Ön	f	10800	6353	4436755	Elçin	(051) 733-09-05	2020-11-17
4564	Bakı	Hyundai	Sonata	2007	Sedan	Qara	2	145	Benzin	220000	Avtomat	Ön	f	12000	7059	4469557	Rahman	(051) 603-77-59	2020-11-17
4565	Bakı	Ford	Transit	2008	Furqon	Ağ	2.2	115	Dizel	204000	Mexaniki	Ön	f	18800	11059	4469565	Teymur	(055) 677-57-55	2020-11-17
4566	Bakı	Saipa	Saina	2019	Sedan	Ağ	1.5	90	Benzin	70000	Mexaniki	Ön	f	17000	10000	4469569	Sahil	(070) 720-72-32	2020-11-17
4568	Bakı	Fiat	Linea	2008	Sedan	Gümüşü	1.3	90	Dizel	195000	Mexaniki	Ön	f	11700	6882	4469610	Həci Rövşən	(050) 386-05-15	2020-11-17
4569	Şirvan	LADA (VAZ)	2107	2007	Sedan	Ağ	1.5	65	Benzin	140000	Mexaniki	Arxa	f	7000	4118	4469612	Yaşar müellim	(051) 559-35-51	2020-11-17
4570	Bakı	Mercedes	190	1993	Sedan	Qara	2	122	Benzin	483734	Avtomat	Arxa	f	6500	3824	4469615	Əhməd Heseneliyev	(070) 753-24-34	2020-11-17
4571	Bakı	BMW	X5	2006	Offroader / SUV	Qara	4.8	360	Benzin	158900	Avtomat	Tam	f	34000	20000	4461435	Elsad	(051) 999-99-96	2020-11-17
4572	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.6	136	Benzin	93500	Avtomat	Ön	f	19200	11294	4469504	Məzahir	(070) 255-08-03	2020-11-17
4573	Bakı	LADA (VAZ)	2104	1991	Universal	Ağ	1.5	65	Benzin	168000	Mexaniki	Arxa	f	4500	2647	4469503	Ramin	(070) 908-91-80	2020-11-17
4574	Balakən	Hyundai	Tucson	2008	Offroader / SUV	Qara	2	141	Benzin	110000	Avtomat	Ön	f	17000	10000	4469505	Çingiz	(050) 623-13-89	2020-11-17
4575	Bakı	Mercedes	E 350	2010	Sedan	Qara	3.5	306	Benzin	151000	Avtomat	Arxa	f	33500	19706	4469499	Zamin	(099) 718-00-07	2020-11-17
4576	Gəncə	LADA (VAZ)	2115	2009	Sedan	Qara	1.5	75	Benzin	334000	Mexaniki	Ön	f	7300	4294	4469506	Azər	(050) 728-86-65	2020-11-17
4577	Bakı	Mercedes	C 230	1999	Sedan	Qara	2.3	150	Benzin	310000	Avtomat	Arxa	f	12500	7353	4376279	Ikram	(050) 802-40-62	2020-11-17
4578	Bakı	Toyota	RAV 4	2003	Offroader / SUV	Bej	2	150	Benzin	330000	Avtomat	Tam	f	13500	7941	4469512	Hasil	(050) 427-35-18	2020-11-17
4579	Göyçay	Mercedes	Vito 111	2008	Van	Ağ	2.2	109	Dizel	185000	Mexaniki	Arxa	f	28000	16471	4469511	Resad	(051) 757-32-22	2020-11-17
4580	Xaçmaz	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	111110	Mexaniki	Arxa	f	5800	3412	4469515	Sahib	(050) 863-88-11	2020-11-17
4581	Bakı	Kia	Optima	2006	Sedan	Gümüşü	2	165	Dizel	203436	Mexaniki	Ön	f	15000	8824	4469518	Riyad	(070) 300-00-54	2020-11-17
4582	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Qara	2	141	Benzin	108000	Avtomat	Tam	f	17500	10294	4469514	Aqa	(055) 941-61-69	2020-11-17
4583	Xırdalan	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	289000	Avtomat	Arxa	f	11800	6941	4469524	kamlran	(055) 656-41-51	2020-11-17
4584	Bakı	LADA (VAZ)	Niva	1986	Offroader / SUV	Göy	1.6	75	Benzin	86000	Mexaniki	Tam	f	4250	2500	4419122	Rafael	(050) 731-84-78	2020-11-17
4585	Bakı	Toyota	Avalon	2008	Sedan	Ağ	3.5	268	Benzin	206000	Avtomat	Ön	f	16800	9882	4469461	Murad	(051) 229-59-03	2020-11-17
4586	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	141	Benzin	106000	Avtomat	Ön	f	15700	9235	4469423	Ceyhun	(077) 593-50-99	2020-11-17
4587	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	159000	Avtomat	Ön	f	13500	7941	4303922	Elçin 	(070) 222-71-55	2020-11-17
4588	Bakı	LADA (VAZ)	Niva	2017	Offroader / SUV	Ağ	1.7	80	Benzin	78000	Mexaniki	Tam	f	12600	7412	4469462	Samir	(055) 779-84-49	2020-11-17
4589	Ağstafa	Great Wall	Voleex C30	2013	Sedan	Qara	1.5	105	Benzin	188600	Mexaniki	Ön	f	12600	7412	4469464	Rufet	(055) 474-21-15	2020-11-17
4590	Bakı	Mercedes	ML 350	2006	Offroader / SUV	Qara	3.5	272	Benzin	325000	Avtomat	Arxa	f	20400	12000	4469467	Ülvi	(055) 512-31-10	2020-11-17
4591	Sumqayıt	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	134500	Mexaniki	Ön	f	10800	6353	4469469	Abdul	(050) 364-35-23	2020-11-17
4592	Bakı	Mercedes	C 250	2013	Sedan	Qara	1.8	204	Benzin	228000	Avtomat	Arxa	f	26800	15765	4469483	Rafet	(050) 445-00-99	2020-11-17
4593	Bakı	BMW	528	2013	Sedan	Ağ	2	245	Benzin	95000	Avtomat	Arxa	f	34850	20500	4469484	Eldar	(050) 961-21-16	2020-11-17
4594	Qəbələ	LADA (VAZ)	2104	2005	Universal	Göy	1.5	65	Benzin	250789	Mexaniki	Arxa	f	6600	3882	4469493	Servan	(055) 555-66-20	2020-11-17
4595	Gəncə	Chevrolet	Captiva	2012	Offroader / SUV	Qara	3	258	Benzin	12870	Avtomat	Tam	f	29500	17353	4469472	Nicat	(055) 501-15-25	2020-11-17
4596	Bakı	Chevrolet	Malibu	2019	Sedan	Qara	1.5	160	Benzin	5000	Avtomat	Ön	f	30600	18000	4195676	Müşfiq	(055) 219-11-75	2020-11-17
4597	Bakı	Mitsubishi	Outlander	2005	Offroader / SUV	Ağ	2.4	160	Benzin	162000	Avtomat	Tam	f	11800	6941	4421644	Coşqun	(055) 678-22-22	2020-11-17
4598	Xırdalan	Opel	Vectra	1996	Sedan	Bənövşəyi	2	136	Benzin	310000	Avtomat	Ön	f	5600	3294	4469475	Vuqar	(055) 370-73-57	2020-11-17
4599	Bakı	Volkswagen	Golf	1999	Hetçbek / Liftbek	Qırmızı	1.6	112	Benzin	250000	Avtomat	Ön	f	7000	4118	4440457	Natik	(055) 218-08-11	2020-11-17
4600	Bakı	Opel	Vectra	1995	Sedan	Bənövşəyi	2	136	Benzin	413000	Avtomat	Ön	f	3900	2294	4469474	Faig	(055) 211-07-10	2020-11-17
4601	Bakı	BMW	328	2013	Sedan	Qəhvəyi	2	245	Benzin	200000	Avtomat	Arxa	f	31200	18353	4469471	Qalib	(070) 288-98-02	2020-11-17
4603	Bakı	BMW	525	2006	Sedan	Göy	2.5	218	Benzin	97000	Avtomat	Arxa	f	25900	15235	4469492	Tural	(051) 864-65-66	2020-11-17
4604	Bakı	BMW	X5	2005	Offroader / SUV	Qara	4.4	320	Benzin	283000	Avtomat	Tam	f	24000	14118	4469425	Rəşad	(050) 257-05-00	2020-11-17
4605	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	94523	Avtomat	Tam	f	70550	41500	4469432	Abutalib	(050) 657-72-53	2020-11-17
4606	Bakı	Kia	Rio	2009	Hetçbek / Liftbek	Qara	1.4	90	Benzin	147256	Mexaniki	Ön	f	11300	6647	4469434	Nadir	(050) 341-54-83	2020-11-17
4607	Bakı	Opel	Astra	1999	Universal	Gümüşü	1.8	125	Benzin	312000	Avtomat	Ön	f	8500	5000	4469436	Rahib	(055) 207-30-50	2020-11-17
4608	Bakı	Toyota	Prado	2007	Offroader / SUV	Gümüşü	2.7	167	Benzin	130000	Avtomat	Arxa	f	27300	16059	4469437	Múbariz 	(055) 350-17-34	2020-11-17
4609	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	132000	Robotlaşdırılmış	Ön	f	12200	7176	4469438	Elvin	(050) 283-87-22	2020-11-17
4610	Qobustan	GAZ	3110	2003	Sedan	Yaş Asfalt	2.3	131	Benzin	198283	Mexaniki	Arxa	f	4500	2647	4469440	Nurlan	(051) 477-79-65	2020-11-17
4611	Sumqayıt	Mitsubishi	Pajero io	1999	Offroader / SUV	Ağ	2	136	Benzin	250000	Avtomat	Tam	f	7500	4412	4469441	Nürəddin	(055) 616-89-99	2020-11-17
4612	Bakı	Mercedes	E 200	1991	Sedan	Ağ	2	122	Benzin	222222	Mexaniki	Arxa	f	6300	3706	4469447	TAHİR	(055) 808-34-53	2020-11-17
4613	Gəncə	Opel	Vectra	1997	Sedan	Tünd qırmızı	2	136	Benzin	307000	Avtomat	Ön	f	5500	3235	4469449	Turan	(055) 448-67-94	2020-11-17
4614	Tovuz	Mercedes	E 220	2001	Sedan	Gümüşü	2.2	143	Dizel	450000	Avtomat	Arxa	f	16900	9941	4469368	Sèbuhi	(070) 346-85-45	2020-11-17
4615	Bakı	Mercedes	E 220	2014	Sedan	Yaş Asfalt	2.2	170	Dizel	135000	Avtomat	Arxa	f	51000	30000	4469376	Davud	(055) 881-00-00	2020-11-17
4616	Bakı	LADA (VAZ)	2115	2010	Sedan	Qara	1.6	80	Benzin	200000	Mexaniki	Ön	f	7800	4588	4469399	Dadaş	(055) 928-04-41	2020-11-17
4617	İmişli	Mercedes	E 220	2000	Sedan	Gümüşü	2.2	143	Dizel	536070	Avtomat	Arxa	f	16000	9412	4469400	Agamir	(050) 536-89-24	2020-11-17
4618	Bakı	Ford	Focus	2014	Sedan	Gümüşü	1.6	132	Benzin	89500	Avtomat	Ön	f	16500	9706	4469403	Sercan	(050) 290-59-19	2020-11-17
4619	Bakı	BMW	525	1989	Sedan	Yaşıl	2.5	192	Benzin	440000	Mexaniki	Arxa	f	5500	3235	4433060	Rövşən 	(055) 314-40-00	2020-11-17
4620	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	171000	Mexaniki	Arxa	f	7700	4529	4469361	Nicat	(055) 284-68-94	2020-11-17
4621	Bakı	Hyundai	i30	2011	Hetçbek / Liftbek	Boz	1.6	132	Dizel	69000	Avtomat	Ön	f	17500	10294	4469411	Aga	(050) 579-79-10	2020-11-17
4622	Bakı	Kia	Rio	2011	Hetçbek / Liftbek	Qara	1.4	107	Benzin	167320	Mexaniki	Ön	f	12800	7529	4450921	Tural	(055) 716-28-09	2020-11-17
4623	Bakı	Honda	City	2014	Sedan	Ağ	1.5	118	Benzin	75000	Avtomat	Ön	f	23800	14000	4469413	Habil	(050) 210-99-82	2020-11-17
4624	Bakı	Chevrolet	Aveo	2008	Sedan	Qara	1.4	107	Benzin	294123	Mexaniki	Ön	f	8800	5176	4469419	Tusi	(055) 781-85-45	2020-11-17
4625	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	128000	Mexaniki	Ön	f	12800	7529	4469421	Seyid	(070) 258-62-62	2020-11-17
4626	Bakı	Opel	Astra	1993	Universal	Bənövşəyi	1.8	115	Benzin	452800	Mexaniki	Ön	f	4300	2529	4466748	Nurlan	(055) 362-34-45	2020-11-17
4627	Bakı	Renault	Fluence	2014	Sedan	Ağ	2	170	Benzin	278000	Avtomat	Ön	f	12800	7529	4469454	Anar	(055) 215-27-18	2020-11-17
4628	Bakı	Ford	Transit	2011	Furqon	Ağ	1.8	90	Dizel	142000	Mexaniki	Ön	f	16300	9588	4469453	Teymur	(055) 677-57-55	2020-11-17
4629	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Benzin	197000	Avtomat	Ön	f	11500	6765	4420062	Elçin 	(055) 271-21-21	2020-11-17
4630	Bakı	Mercedes	C 200	1996	Sedan	Ağ	2	136	Benzin	210000	Avtomat	Arxa	f	6900	4059	4469457	ibrahim	(050) 393-67-32	2020-11-17
4631	Bakı	Hyundai	Sonata	2014	Sedan	Gümüşü	2	274	Benzin	90000	Avtomat	Ön	f	24500	14412	4435322	Kamal	(055) 202-27-92	2020-11-17
4632	Bakı	Great Wall	Voleex C30	2018	Sedan	Ağ	1.5	105	Benzin	186000	Mexaniki	Ön	f	15200	8941	4469364	Vahid	(077) 308-66-69	2020-11-17
4633	Bakı	Kia	Cerato	2013	Sedan	Qara	1.6	130	Benzin	67000	Avtomat	Ön	f	17700	10412	4426988	Faiq	(055) 771-72-71	2020-11-17
4634	Bakı	Volvo	850	1995	Sedan	Qara	2	126	Benzin	123000	Avtomat	Arxa	f	5800	3412	4469371	Vuqar	(055) 839-44-55	2020-11-17
4635	Bakı	BMW	X6 M	2011	Offroader / SUV	Ağ	4.4	555	Benzin	100000	Avtomat	Tam	f	49000	28824	4469373	Aqil	(070) 379-79-95	2020-11-17
4636	Bakı	Ford	Transit	2009	Furqon	Ağ	2.4	115	Dizel	295000	Mexaniki	Arxa	f	23500	13824	4469382	Teymur	(055) 677-57-55	2020-11-17
4637	Bakı	BMW	530	2001	Sedan	Boz	3	231	Benzin	199750	Avtomat	Arxa	f	14700	8647	4469377	Rehman	(050) 666-65-64	2020-11-17
4638	Masallı	Mercedes	E 230	1995	Sedan	Göy	2.3	150	Benzin	400000	Avtomat	Arxa	f	11000	6471	4469385	Yasin	(050) 783-53-58	2020-11-17
4639	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Qara	3	188	Benzin	240000	Avtomat	Tam	f	21800	12824	4469383	Mahir	(055) 319-92-41	2020-11-17
4640	Bakı	Mercedes	C 220	1994	Sedan	Boz	2.2	143	Benzin	389700	Avtomat	Arxa	f	7800	4588	4469390	Mehman	(050) 709-20-01	2020-11-17
4641	Bakı	Mercedes	E 280	1997	Sedan	Boz	2.8	204	Benzin	325000	Avtomat	Arxa	f	11500	6765	4469319	Serxan	(055) 471-95-25	2020-11-17
4642	Bakı	Toyota	Land Cruiser	2009	Offroader / SUV	Ağ	4.7	288	Benzin	240000	Avtomat	Tam	f	54400	32000	4446044	Elshad	(070) 388-61-55	2020-11-17
4643	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	160000	Mexaniki	Tam	f	10800	6353	4469322	Ayaz	(055) 966-26-66	2020-11-17
4644	Bakı	Mercedes	E 240	2000	Sedan	Göy	2.4	170	Benzin	337000	Avtomat	Arxa	f	14500	8529	4469323	Aziz	(055) 492-32-64	2020-11-17
4645	Bakı	Ford	Transit	2009	Furqon	Ağ	2.4	140	Dizel	195000	Mexaniki	Arxa	f	23700	13941	4469330	Teymur	(055) 677-57-55	2020-11-17
4646	Bakı	Chevrolet	Cruze	2014	Sedan	Qırmızı	1.4	141	Benzin	167000	Avtomat	Ön	f	14300	8412	4469324	Elnur	(055) 211-11-96	2020-11-17
4647	Bakı	Mercedes	C 220	2001	Sedan	Göy	2.2	143	Dizel	369000	Avtomat	Arxa	f	13300	7824	4418402	Hemid	(077) 724-94-34	2020-11-17
4648	Hacıqabul	Chevrolet	Aveo	2013	Sedan	Ağ	1.4	100	Benzin	77000	Mexaniki	Ön	f	13000	7647	4469328	Ibrahim	(051) 348-12-28	2020-11-17
4649	Gəncə	UAZ	31512	1990	Offroader / SUV	Boz	2.4	131	Benzin	150000	Mexaniki	Tam	f	9500	5588	4469332	Fazil	(050) 674-82-77	2020-11-17
4650	Bakı	Opel	Corsa	2001	Hetçbek / Liftbek	Göy	1.4	90	Benzin	256500	Avtomat	Ön	f	7500	4412	4469329	Mahir	(055) 277-79-35	2020-11-17
4651	Sumqayıt	Toyota	Camry	2006	Sedan	Gümüşü	2.4	167	Benzin	246000	Avtomat	Ön	f	17500	10294	4432714	Anar	(055) 388-52-58	2020-11-17
4652	Bakı	Toyota	Auris	2008	Hetçbek / Liftbek	Gümüşü	1.4	99	Dizel	230000	Mexaniki	Ön	f	12800	7529	4469337	Ceyhun	(055) 251-37-83	2020-11-17
4653	Bakı	Toyota	Auris	2007	Hetçbek / Liftbek	Boz	1.4	106	Dizel	136000	Mexaniki	Ön	f	13600	8000	4469335	Ramil	(070) 860-74-44	2020-11-17
4654	Bakı	Kia	Sportage	2007	Offroader / SUV	Qara	2	141	Benzin	149000	Avtomat	Tam	f	16200	9529	4469338	Vusal	(055) 772-93-17	2020-11-17
4655	Lənkəran	Mercedes	208 D	1992	Mikroavtobus	Ağ	2.5	96	Dizel	158000	Mexaniki	Arxa	f	12500	7353	4469342	Aziz	(051) 433-42-42	2020-11-17
4656	Bakı	Toyota	FJ Cruiser	2013	Offroader / SUV	Ağ	4	276	Benzin	130000	Avtomat	Tam	f	57800	34000	4469321	İlkin	(050) 384-66-22	2020-11-17
4657	Bakı	LADA (VAZ)	2106	1998	Sedan	Ağ	1.6	75	Benzin	403490	Mexaniki	Arxa	f	5500	3235	4469344	Taptiq	(050) 773-33-41	2020-11-17
4658	Bakı	LADA (VAZ)	2106	1984	Sedan	Ağ	1.3	65	Benzin	285230	Mexaniki	Arxa	f	3700	2176	4469358	Mehemmed	(050) 387-60-95	2020-11-17
4659	Bakı	Hyundai	Santa Fe	2013	Offroader / SUV	Qara	2.4	180	Benzin	168000	Avtomat	Tam	f	31000	18235	4469355	Elnur	(077) 372-86-73	2020-11-17
4660	Xırdalan	Mercedes	E 240	1998	Sedan	Göy	2.6	170	Benzin	212000	Avtomat	Arxa	f	10800	6353	4469359	Arif	(055) 260-42-07	2020-11-17
4661	Bakı	Saipa	Tiba	2014	Hetçbek / Liftbek	Qara	1.5	90	Benzin	141000	Mexaniki	Ön	f	7400	4353	4469391	Nahid	(050) 664-97-99	2020-11-17
4662	Bakı	Toyota	Prius	2014	Hetçbek / Liftbek	Yaşıl	1.8	99	Hibrid	109500	Avtomat	Ön	f	21200	12471	4423193	Huseyn	(070) 551-57-57	2020-11-17
4663	Bakı	Mercedes	E 270	2002	Sedan	Gümüşü	2.7	170	Dizel	294000	Avtomat	Arxa	f	16900	9941	4469394	Turan	(055) 863-65-44	2020-11-17
4664	Bakı	Opel	Vectra	1996	Sedan	Yaşıl	2	136	Benzin	283000	Avtomat	Ön	f	5800	3412	4469430	Musfiq	(055) 640-99-90	2020-11-17
4665	Bakı	Mercedes	E 220	1995	Sedan	Yaşıl	2.2	143	Benzin	235900	Avtomat	Arxa	f	8200	4824	4469431	Ramiz	(077) 228-11-01	2020-11-17
4666	Bakı	BMW	728	2000	Sedan	Qəhvəyi	2.8	193	Benzin	392000	Avtomat	Arxa	f	17000	10000	4469274	Сергей	(050) 404-86-86	2020-11-17
4667	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	144000	Variator	Ön	f	13800	8118	4469281	Zaur	(050) 790-44-10	2020-11-17
4668	Bakı	LADA (VAZ)	2106	2003	Sedan	Yaşıl	1.6	75	Benzin	80000	Mexaniki	Arxa	f	5700	3353	4469283	Təyyar 	(070) 800-43-77	2020-11-17
4669	Şamaxı	GAZ	31105	2005	Sedan	Qızılı	2.3	131	Benzin	175000	Mexaniki	Arxa	f	6200	3647	4469279	Yalçın	(050) 627-07-84	2020-11-17
4670	Sumqayıt	GAZ	24	1988	Sedan	Sarı	2.4	75	Benzin	350000	Mexaniki	Arxa	f	1700	1000	4469287	Zaur	(055) 626-33-83	2020-11-17
4671	Bakı	Mercedes	Vito	2000	Mikroavtobus	Yaşıl	2.2	150	Dizel	380000	Avtomat	Ön	f	16000	9412	4469293	Sadiq	(055) 880-94-00	2020-11-17
4672	Qazax	LADA (VAZ)	2106	1993	Sedan	Bej	1.6	75	Benzin	288088	Mexaniki	Arxa	f	5200	3059	4469297	Murad	(055) 571-40-62	2020-11-17
4673	Bakı	Tofas	Sahin	2004	Sedan	Qara	1.6	86	Benzin	57000	Mexaniki	Arxa	f	5200	3059	4469303	Sadiq	(055) 612-36-51	2020-11-17
4674	Bakı	BMW	X5	2006	Offroader / SUV	Qara	4.8	360	Benzin	252000	Avtomat	Tam	f	26900	15824	4300325	Pervin	(055) 233-30-07	2020-11-17
4675	Lənkəran	Mazda	CX-9	2008	Offroader / SUV	Ağ	3.7	273	Benzin	167000	Avtomat	Tam	f	22900	13471	4469230	Nuru	(051) 418-23-43	2020-11-17
4676	Bakı	Toyota	Camry	2017	Sedan	Ağ	2.5	181	Benzin	81530	Avtomat	Ön	f	49980	29400	4469234	Ziya	(050) 756-99-81	2020-11-17
4677	Bakı	Toyota	Camry	2013	Sedan	Boz	2.5	181	Benzin	99000	Avtomat	Ön	f	28000	16471	4469236	Miri	(055) 817-82-80	2020-11-17
4678	Saatlı	GAZ	33021	1999	Yük maşını	Bej	2.5	100	Benzin	185000	Mexaniki	Arxa	f	6500	3824	4469237	Qəhraman	(051) 731-09-14	2020-11-17
4679	Bakı	Mercedes	190	1991	Sedan	Qara	2	122	Dizel	158000	Avtomat	Arxa	f	6300	3706	4469244	Zahir	(055) 739-70-00	2020-11-17
4680	Qusar	Opel	Sintra	1999	Minivan	Tünd qırmızı	2.2	150	Benzin	672000	Mexaniki	Ön	f	6200	3647	4469249	Эльшан	(077) 755-26-44	2020-11-17
4681	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	182181	Mexaniki	Ön	f	11500	6765	4469253	Arif	(050) 401-06-80	2020-11-17
4682	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	122000	Avtomat	Ön	f	17900	10529	4469245	Togrul	(055) 892-00-02	2020-11-17
4683	Bakı	LADA (VAZ)	2107	2011	Sedan	Yaş Asfalt	1.6	75	Benzin	23829	Mexaniki	Arxa	f	6250	3676	4464854	Vuqar	(050) 656-44-73	2020-11-17
4684	Qax	Opel	Vita	1995	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	284000	Mexaniki	Ön	f	5100	3000	4469263	Zura	(055) 576-98-51	2020-11-17
4685	Bakı	KamAz	55111	1982	Yük maşını	Qırmızı	11	191	Dizel	252504	Mexaniki	Arxa	f	16000	9412	4469257	Cavid	(070) 262-96-76	2020-11-17
4686	Bakı	Opel	Astra	2006	Universal	Göy	1.4	90	Benzin	325000	Mexaniki	Ön	f	10000	5882	4469267	Fikrət	(055) 677-89-33	2020-11-17
4687	Bakı	Kia	Cerato	2007	Sedan	Gümüşü	1.6	122	Dizel	160296	Mexaniki	Ön	f	13200	7765	4447983	Elvin	(055) 647-51-52	2020-11-17
4688	Bakı	BMW	X5	2001	Offroader / SUV	Ağ	4.4	286	Benzin	276000	Avtomat	Tam	f	15200	8941	4469268	Imran	(055) 440-73-76	2020-11-17
4689	Bakı	Hyundai	Sonata	2007	Sedan	Ağ	2.4	180	Benzin	214000	Avtomat	Ön	f	14500	8529	4469308	Togrul	(055) 940-73-19	2020-11-17
4690	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Qara	1.4	97	Benzin	123240	Mexaniki	Ön	f	11200	6588	4465334	Necef	(050) 477-88-18	2020-11-17
4691	Bakı	Hyundai	Elantra	2013	Sedan	Yaş Asfalt	1.8	150	Benzin	40000	Avtomat	Ön	f	19500	11471	4469313	Atəş	(055) 777-29-65	2020-11-17
4692	Şirvan	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	107000	Avtomat	Ön	f	14300	8412	4461166	Nicat 	(055) 383-37-97	2020-11-17
4693	Bakı	Kia	Optima	2020	Sedan	Ağ	2.4	180	Benzin	700	Avtomat	Ön	f	51500	30294	4464705	Kamran	(051) 300-03-30	2020-11-17
4694	Bakı	Mercedes	ML 320	1999	Offroader / SUV	Qara	3.2	224	Benzin	200000	Avtomat	Tam	f	11000	6471	4469194	Vahid	(050) 373-85-06	2020-11-17
4696	Sumqayıt	BMW	528	1997	Sedan	Boz	2.8	193	Benzin	328000	Mexaniki	Arxa	f	10300	6059	4469199	RAMIZ	(051) 999-02-42	2020-11-17
4697	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Benzin	190000	Avtomat	Tam	f	12300	7235	4469207	Eldar	(050) 983-67-35	2020-11-17
4698	Bakı	Land Rover	Discovery	2016	Offroader / SUV	Ağ	3	340	Benzin	86000	Avtomat	Tam	f	64260	37800	4469183	Ferid	(051) 591-71-10	2020-11-17
4699	Bakı	Mercedes	E 220	2013	Sedan	Qara	2.2	170	Dizel	130000	Avtomat	Arxa	f	43350	25500	4469166	Feqan	(070) 281-78-08	2020-11-17
4700	Bakı	Ford	Fusion	2016	Sedan	Qara	2	243	Benzin	117000	Avtomat	Ön	f	22200	13059	4423323	Müşfiq	(055) 728-48-48	2020-11-17
4701	Bakı	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	404141	Avtomat	Arxa	f	11500	6765	4469210	Şənan	(070) 582-87-17	2020-11-17
4702	Bakı	Opel	Astra	2007	Universal	Qara	1.3	90	Dizel	201600	Mexaniki	Ön	f	11600	6824	4469212	Rəşid 	(050) 662-28-38	2020-11-17
4703	Bakı	BMW	320	2002	Sedan	Mavi	2.2	170	Benzin	200000	Avtomat	Arxa	f	9800	5765	4469214	Eli	(070) 637-03-13	2020-11-17
4704	Bakı	LADA (VAZ)	Priora	2017	Sedan	Qara	1.6	106	Benzin	93000	Mexaniki	Ön	f	11800	6941	4469215	Aga	(051) 807-68-68	2020-11-17
4705	Qəbələ	LADA (VAZ)	2106	2003	Sedan	Yaşıl	1.5	65	Benzin	35000	Mexaniki	Arxa	f	7500	4412	4469208	Onur	(051) 654-46-66	2020-11-17
4706	Bakı	Opel	Astra	2000	Universal	Mavi	1.8	125	Benzin	380000	Avtomat	Ön	f	8000	4706	4469217	Emin	(055) 546-29-70	2020-11-17
4707	Lənkəran	Daewoo	Nexia	1996	Sedan	Qırmızı	1.5	90	Benzin	200000	Mexaniki	Ön	f	3700	2176	4469155	Fexretdin	(055) 971-42-02	2020-11-17
4708	Bakı	Hyundai	i30	2012	Hetçbek / Liftbek	Ağ	1.6	132	Dizel	130000	Avtomat	Ön	f	20700	12176	4428204	ali	(055) 255-72-72	2020-11-17
4710	Bakı	Mercedes	E 63 AMG	2008	Sedan	Qara	6.3	514	Benzin	130000	Avtomat	Arxa	f	37400	22000	4469106	Aydın	(050) 317-23-92	2020-11-17
4711	Bakı	Chevrolet	Captiva	2012	Offroader / SUV	Qara	2.4	150	Benzin	91000	Avtomat	Tam	f	20500	12059	4469160	İham	(070) 837-10-60	2020-11-17
4712	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Mavi	1.3	90	Dizel	161000	Mexaniki	Ön	f	11500	6765	4469162	Murad	(077) 300-34-00	2020-11-17
4713	Hacıqabul	Mercedes	E 240	1998	Sedan	Yaş Asfalt	2.4	170	Benzin	242000	Avtomat	Arxa	f	10500	6176	4469172	Cavid	(050) 342-44-99	2020-11-17
4714	Dəliməmmədli	LADA (VAZ)	2106	2003	Sedan	Ağ	1.6	75	Benzin	100600	Mexaniki	Arxa	f	4650	2735	4469174	Orxan	(070) 566-66-08	2020-11-17
4715	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	350000	Avtomat	Arxa	f	13300	7824	4469176	F	(051) 364-74-44	2020-11-17
4709	Bakı	Chevrolet	Cruze	2014	Sedan	Yaş Asfalt	1.4	141	Benzin	112000	Avtomat	Ön	f	15900	9353	4469158	Elçin	(077) 607-08-01	2020-11-17
4716	Bakı	MAZ	543302-2120	1986	Yük maşını	Qırmızı	12	500	Dizel	355000	Mexaniki	Arxa	f	11000	6471	4101876	Bahadur	(055) 337-38-36	2020-11-17
4717	Bakı	Mercedes	G 300	1997	Offroader / SUV	Ağ	3	177	Dizel	550000	Avtomat	Tam	f	56950	33500	4469170	Xeqani	(077) 493-83-93	2020-11-17
4718	Bakı	BMW	X5	2002	Offroader / SUV	Qara	3	231	Benzin	192000	Avtomat	Tam	f	18200	10706	4448029	Kenan	(070) 405-00-12	2020-11-17
4719	Bakı	Lexus	RX 300	2018	Offroader / SUV	Qara	2	238	Benzin	20000	Avtomat	Tam	f	101830	59900	4333240	Mikayil	(050) 328-01-46	2020-11-17
4720	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4	282	Benzin	139000	Avtomat	Tam	f	44030	25900	4469184	Vusal	(077) 348-19-99	2020-11-17
4721	Bakı	Mitsubishi	Lancer	2005	Sedan	Yaş Asfalt	1.3	88	Benzin	296000	Mexaniki	Ön	f	8200	4824	4469185	İsrafil	(055) 796-96-45	2020-11-17
4722	Bakı	GAZ	53	1980	Yük maşını	Sarı	4.5	150	Benzin	250000	Mexaniki	Arxa	f	6000	3529	4087564	Bahadur	(050) 337-38-36	2020-11-17
4723	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Tünd qırmızı	1.5	76	Hibrid	224000	Avtomat	Ön	f	11200	6588	4391942	Yaqub	(070) 326-42-38	2020-11-17
4724	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	125635	Mexaniki	Arxa	f	7200	4235	4411293	Ceyhun	(077) 500-46-42	2020-11-17
4725	Bakı	Mercedes	GLE 350	2017	Offroader / SUV	Göy	3	259	Dizel	25000	Avtomat	Tam	f	104550	61500	4023617	IBAD	(050) 200-04-68	2020-11-17
4726	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Qızılı	1.4	100	Benzin	178000	Mexaniki	Ön	f	9999	5882	4468925	Seid	(050) 356-97-69	2020-11-17
4727	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Ağ	2	185	Dizel	146000	Avtomat	Ön	f	24000	14118	4469220	Orxan	(070) 331-31-97	2020-11-17
4728	Sumqayıt	LADA (VAZ)	2107	2003	Sedan	Qara	1.6	75	Benzin	166000	Mexaniki	Arxa	f	5000	2941	4469226	Samir	(070) 315-03-82	2020-11-17
4729	Şəki	LADA (VAZ)	2106	1998	Sedan	Göy	1.6	75	Benzin	66200	Mexaniki	Arxa	f	5600	3294	4469228	Mehherrem	(051) 655-11-47	2020-11-17
4730	Bakı	Mercedes	C 180	1999	Universal	Göy	1.8	122	Benzin	391269	Avtomat	Tam	f	10900	6412	4469122	Tural	(077) 313-36-31	2020-11-17
4731	Xaçmaz	LADA (VAZ)	2106	1997	Sedan	Ağ	1.6	75	Benzin	40000	Mexaniki	Arxa	f	4000	2353	4469131	Saleh	(055) 997-55-66	2020-11-17
4732	Bakı	BMW	X5	2006	Offroader / SUV	Qara	4.8	286	Benzin	278000	Avtomat	Tam	f	27300	16059	4469125	Perviz	(050) 627-17-43	2020-11-17
4733	Bakı	Skoda	Praktik	2012	Furqon	Ağ	1.6	90	Dizel	125000	Mexaniki	Ön	f	9800	5765	4469128	Əkrəm	(055) 445-51-00	2020-11-17
4734	Bakı	Mercedes	Viano	2012	Van	Qara	2.2	170	Dizel	254000	Avtomat	Arxa	f	45050	26500	4469134	Kenan	(050) 251-49-40	2020-11-17
4735	Astara	LADA (VAZ)	2101	1974	Sedan	Yaş Asfalt	1.5	65	Benzin	500000	Mexaniki	Arxa	f	3900	2294	4469121	Elsen	(051) 795-80-91	2020-11-17
4736	Bakı	GAZ	3302-744	2002	Yük maşını	Ağ	2.3	131	Benzin	211000	Mexaniki	Arxa	f	8500	5000	4469139	Elgiz	(050) 395-74-25	2020-11-17
4737	Sumqayıt	Mercedes	E 220	1994	Sedan	Göy	2.2	143	Benzin	152000	Avtomat	Arxa	f	9700	5706	4469140	Feqan 	(070) 626-26-74	2020-11-17
4738	Cəlilabad	GAZ	33021	1996	Yük maşını	Mavi	2.4	131	Benzin	555555	Mexaniki	Arxa	f	4800	2824	4469142	abdulla	(050) 875-67-18	2020-11-17
4739	Bakı	Mercedes	E 270	2002	Sedan	Gümüşü	2.7	170	Dizel	315000	Avtomat	Arxa	f	17200	10118	4420658	Elşən	(050) 607-26-95	2020-11-17
4740	Bakı	Skoda	Fabia	2010	Hetçbek / Liftbek	Qırmızı	1.2	70	Benzin	210000	Mexaniki	Ön	f	8500	5000	4469145	Sabir	(070) 436-64-64	2020-11-17
4741	Bakı	Nissan	Teana	2011	Sedan	Ağ	2.5	182	Benzin	182000	Avtomat	Ön	f	22500	13235	4469141	Eldar	(055) 222-15-12	2020-11-17
4742	Bakı	Renault	Fluence	2012	Sedan	Qara	2	138	Benzin	145000	Avtomat	Ön	f	14500	8529	4469138	Vüqar	(050) 320-88-22	2020-11-17
4743	Bakı	Mercedes	Viano	2007	Van	Gümüşü	2.2	170	Dizel	336000	Mexaniki	Arxa	f	31800	18706	4469147	Famil	(050) 842-55-57	2020-11-17
4744	Bakı	Iran Khodro	Azsamand	2014	Sedan	Qara	1.6	115	Benzin	400900	Mexaniki	Ön	f	6000	3529	4469104	Akif	(055) 355-76-12	2020-11-17
4745	Bakı	Nissan	Teana	2006	Sedan	Qızılı	2.4	180	Benzin	240000	Avtomat	Ön	f	10800	6353	4203343	Natiq	(050) 412-77-70	2020-11-17
4746	Bakı	Opel	Astra	2007	Universal	Göy	1.3	90	Dizel	180000	Mexaniki	Ön	f	10900	6412	4469105	Yaqub 	(050) 806-19-35	2020-11-17
4747	Bakı	Mercedes	C 250	2008	Sedan	Gümüşü	1.8	184	Benzin	150000	Avtomat	Arxa	f	20500	12059	4443139	Kənan	(077) 209-25-32	2020-11-17
4748	Bakı	Kia	Soul	2016	Hetçbek / Liftbek	Yaş Asfalt	1.6	124	Benzin	32000	Avtomat	Ön	f	24500	14412	4469068	Famil	(055) 899-13-60	2020-11-17
4749	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaş Asfalt	1.3	106	Dizel	234000	Mexaniki	Ön	f	11700	6882	4411195	ilqar 	(055) 209-80-22	2020-11-17
4750	Bakı	Hyundai	Accent	2017	Sedan	Ağ	1.6	140	Benzin	109400	Avtomat	Ön	f	17600	10353	4446671	Ramal	(050) 501-58-48	2020-11-17
4751	Bakı	BMW	525	2002	Sedan	Göy	2.5	192	Benzin	232000	Avtomat	Arxa	f	12500	7353	4469114	Arif	(055) 793-91-69	2020-11-17
4752	Bakı	Chevrolet	Cruze	2018	Sedan	Tünd qırmızı	1.4	153	Benzin	31000	Avtomat	Ön	f	22800	13412	4469113	Fuad	(070) 331-29-29	2020-11-17
4753	Bakı	Mercedes	E 280	2000	Sedan	Mavi	2.8	193	Benzin	210000	Avtomat	Tam	f	13800	8118	4444855	Asim	(050) 671-59-59	2020-11-17
4754	Sumqayıt	Volkswagen	Golf	1997	Hetçbek / Liftbek	Göy	1.9	150	Dizel	243685	Avtomat	Ön	f	4800	2824	4450631	Qabil	(070) 798-20-10	2020-11-17
4755	Bakı	Audi	A5	2009	Hetçbek / Liftbek	Qara	2	180	Benzin	110000	Avtomat	Ön	f	25160	14800	4469118	Namiq	(055) 209-04-09	2020-11-17
4756	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	165900	Mexaniki	Ön	f	11500	6765	4453132	Kənan	(055) 696-64-64	2020-11-17
4757	Bakı	Ford	Transit	2014	Furqon	Ağ	2.2	155	Dizel	117000	Mexaniki	Arxa	f	35360	20800	4433168	Ariz	(055) 665-87-30	2020-11-17
4758	Bakı	Mercedes	Viano	2013	Van	Qara	3	224	Dizel	161300	Avtomat	Arxa	f	37400	22000	4450404	Mirhətəm	(055) 555-93-19	2020-11-17
4760	Bakı	Mercedes	E 350	2007	Sedan	Gümüşü	3	231	Benzin	230000	Avtomat	Arxa	f	19550	11500	4469146	Amil	(055) 211-31-03	2020-11-17
4761	Ucar	Toyota	Prado	2006	Offroader / SUV	Qara	2.7	167	Benzin	200000	Avtomat	Tam	f	28000	16471	4469153	Namiq	(050) 502-30-86	2020-11-17
4762	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Qara	1.8	109	Benzin	136000	Avtomat	Ön	f	17500	10294	4391014	Yusif	(070) 355-59-99	2020-11-17
4763	Bakı	Mercedes	C 200	1998	Sedan	Gümüşü	2	136	Benzin	250000	Avtomat	Arxa	f	11200	6588	4469018	Cavid	(070) 285-50-55	2020-11-17
4764	Sabirabad	Toyota	Camry	2008	Offroader / SUV	Ağ	2.4	175	Benzin	180740	Avtomat	Ön	f	17500	10294	4469021	Aydin	(050) 582-44-14	2020-11-17
4765	Bakı	Toyota	Camry	2017	Sedan	Ağ	2.5	181	Benzin	31000	Avtomat	Arxa	f	32300	19000	4469022	Murvet 	(070) 305-33-30	2020-11-17
4766	Ağstafa	Ford	Transit	1992	Mikroavtobus	Ağ	2.5	96	Dizel	369800	Mexaniki	Arxa	f	10000	5882	4469024	Əkbər	(050) 568-64-05	2020-11-17
4767	Bakı	Volkswagen	Jetta	2016	Sedan	Göy	1.4	153	Benzin	75000	Avtomat	Ön	f	16900	9941	4296259	Yusif	(070) 214-93-33	2020-11-17
4768	Bakı	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	130000	Mexaniki	Ön	f	7800	4588	4469042	Taleh	(070) 636-20-20	2020-11-17
4769	Şəki	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	122	Benzin	456523	Mexaniki	Arxa	f	8500	5000	4469045	Hafis	(055) 949-57-55	2020-11-17
4770	Bakı	Kia	Cerato	2013	Sedan	Ağ	1.8	149	Benzin	156000	Avtomat	Ön	f	16900	9941	4439316	Orxan	(050) 343-26-53	2020-11-17
4771	Bakı	DAF	95XF	2003	Dartqı	Tünd qırmızı	13	430	Dizel	1882700	Mexaniki	Arxa	f	62500	36765	4469058	Elnur	(055) 698-35-57	2020-11-17
4772	Qazax	Hyundai	Elantra	2011	Sedan	Gümüşü	1.8	150	Benzin	144000	Avtomat	Ön	f	17300	10176	4469053	Vaqif	(050) 661-90-38	2020-11-17
4773	Bərdə	LADA (VAZ)	2107	2003	Sedan	Göy	1.5	65	Benzin	86000	Mexaniki	Arxa	f	4700	2765	4469062	AQA	(050) 479-22-88	2020-11-17
4774	Bakı	Ford	Focus	2015	Sedan	Qara	1.6	125	Benzin	138000	Avtomat	Ön	f	16500	9706	4396883	Natig	(050) 598-51-92	2020-11-17
4775	Bakı	Opel	Mokka	2016	Offroader / SUV	Ağ	1.4	150	Benzin	63600	Avtomat	Ön	f	22000	12941	4468987	Əhməd	(077) 717-40-44	2020-11-17
4776	Bakı	Kia	Rio	2013	Hetçbek / Liftbek	Ağ	1.4	107	Benzin	157000	Avtomat	Ön	f	15400	9059	4467001	Hikmət	(077) 321-23-79	2020-11-17
4777	Sumqayıt	Hyundai	Accent	1995	Sedan	Yaşıl	1.3	85	Benzin	335000	Mexaniki	Ön	f	4500	2647	4468984	Bextiyar	(055) 297-95-96	2020-11-17
4778	Bakı	Dodge	Caliber	2007	Offroader / SUV	Ağ	2	156	Benzin	185000	Avtomat	Tam	f	9000	5294	4468990	Raceddin	(070) 257-70-25	2020-11-17
4779	Bakı	Nissan	Sunny	2011	Sedan	Ağ	1.6	109	Benzin	295000	Avtomat	Ön	f	13200	7765	4468999	Famil	(070) 311-54-76	2020-11-17
4780	Bakı	BMW	540	2000	Sedan	Qara	4.4	286	Benzin	245000	Avtomat	Arxa	f	14800	8706	4468998	Resad	(055) 995-77-01	2020-11-17
4781	Siyəzən	SEAT	Toledo	2015	Sedan	Ağ	1.6	123	Benzin	102768	Avtomat	Ön	f	16300	9588	4468997	TURAL	(050) 795-77-75	2020-11-17
4782	Bakı	Fiat	Doblo	2008	Minivan	Ağ	1.3	75	Dizel	290000	Mexaniki	Ön	f	12500	7353	4469003	Azer	(055) 201-20-95	2020-11-17
4783	Bakı	Chevrolet	Malibu	2016	Sedan	Ağ	2	250	Benzin	44000	Avtomat	Ön	f	28400	16706	4469007	Qabil	(050) 807-48-26	2020-11-17
4784	Bakı	Renault	Megane	2009	Universal	Qara	1.5	110	Dizel	313000	Mexaniki	Ön	f	13400	7882	4469005	İsgender	(077) 326-03-16	2020-11-17
4785	Bakı	Ford	Transit	2002	Mikroavtobus	Ağ	2	100	Dizel	420000	Mexaniki	Ön	f	14700	8647	4469010	Elsad	(055) 609-52-89	2020-11-17
4786	Mingəçevir	LADA (VAZ)	2115	2000	Sedan	Qızılı	1.5	75	Benzin	250000	Mexaniki	Ön	f	5500	3235	4469014	Orxan	(050) 686-58-98	2020-11-17
4787	Bakı	Kia	Magentis	2006	Sedan	Yaş Asfalt	2	140	Dizel	124400	Avtomat	Ön	f	15500	9118	4469016	Bəxtiyar	(050) 317-65-24	2020-11-17
4788	Bakı	BMW	M6	2015	Kupe	Boz	4.4	560	Benzin	51217	Robotlaşdırılmış	Tam	f	127500	75000	4462516	Elshad	(051) 999-99-96	2020-11-17
4789	Bakı	BMW	320	2002	Sedan	Qara	2.2	163	Benzin	324000	Avtomat	Arxa	f	13500	7941	4469065	Emil	(055) 504-12-88	2020-11-17
4790	Bakı	Kia	Ceed	2009	Hetçbek / Liftbek	Qara	1.4	90	Benzin	145000	Mexaniki	Ön	f	12800	7529	4469067	Вугар	(050) 801-63-70	2020-11-17
4791	Bakı	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	122	Benzin	407000	Avtomat	Arxa	f	7600	4471	4469077	Elvin	(077) 754-84-88	2020-11-17
4792	Bakı	Ford	Transit	2007	Yük maşını	Ağ	2.4	140	Dizel	297000	Mexaniki	Arxa	f	16200	9529	4469079	İlqar	(050) 769-33-82	2020-11-17
4793	Bakı	Hyundai	Santa Fe	2012	Offroader / SUV	Ağ	2	150	Dizel	115000	Avtomat	Ön	f	25300	14882	4469080	Ferid	(077) 629-00-29	2020-11-17
4794	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.6	124	Benzin	323000	Mexaniki	Ön	f	12600	7412	4469089	Farid	(055) 253-03-37	2020-11-17
4795	Bakı	Volkswagen	Touareg	2003	Offroader / SUV	Yaş Asfalt	3.2	240	Benzin	153000	Avtomat	Tam	f	12800	7529	4454739	Ferid	(050) 465-40-05	2020-11-17
4796	Bakı	Chevrolet	Cruze	2016	Sedan	Qara	1.4	153	Benzin	109000	Avtomat	Ön	f	17500	10294	4453055	Ramo	(055) 240-60-20	2020-11-17
4797	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	2.7	167	Benzin	130000	Avtomat	Tam	f	41140	24200	4433972	Rafiq	(070) 276-15-17	2020-11-17
4798	Bakı	Chevrolet	Captiva	2014	Offroader / SUV	Boz	3	258	Benzin	127000	Avtomat	Tam	f	25500	15000	4440379	Elsever	(077) 746-55-55	2020-11-17
4799	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Boz	1.3	90	Dizel	174000	Mexaniki	Ön	f	12000	7059	4421948	Necef	(055) 474-91-45	2020-11-17
4800	Bakı	Daewoo	Nexia	1995	Sedan	Qara	1.5	85	Benzin	100000	Mexaniki	Ön	f	3700	2176	4468923	Ceyhun	(055) 208-33-98	2020-11-17
4801	Xaçmaz	LADA (VAZ)	2107	2003	Sedan	Qırmızı	1.5	65	Benzin	250000	Mexaniki	Arxa	f	5400	3176	4468924	Zamir	(077) 568-74-25	2020-11-17
4802	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	2	150	Benzin	307087	Avtomat	Tam	f	9000	5294	4468926	Əhməd 	(050) 765-28-43	2020-11-17
4803	Bakı	Ford	Transit	2008	Furqon	Sarı	2.4	140	Dizel	179000	Mexaniki	Arxa	f	23800	14000	4450749	elnur	(050) 855-28-70	2020-11-17
4804	Bakı	Volkswagen	Beetle	2015	Kupe	Boz	1.8	211	Benzin	45000	Avtomat	Ön	f	28500	16765	4173778	Zaur	(050) 256-10-10	2020-11-17
4805	Bakı	BMW	528	2015	Sedan	Qara	2	245	Benzin	164000	Avtomat	Arxa	f	41650	24500	4468921	İsmayıl	(050) 255-17-42	2020-11-17
4806	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	65000	Mexaniki	Tam	f	11500	6765	4468931	Sadiq	(070) 804-87-87	2020-11-17
4807	Bakı	Hyundai	Grandeur	2011	Sedan	Qara	3	250	Benzin	186418	Avtomat	Ön	f	28900	17000	4468930	Tunar	(055) 202-27-87	2020-11-17
4808	Bakı	Mercedes	E 230	1997	Sedan	Göy	2.3	150	Benzin	320450	Avtomat	Ön	f	13200	7765	4468934	Anar	(070) 361-61-51	2020-11-17
4809	Bakı	Kia	Ceed	2008	Universal	Tünd qırmızı	1.6	132	Dizel	131000	Avtomat	Ön	f	15900	9353	4468936	Elşən	(050) 779-49-66	2020-11-17
4810	Bakı	LADA (VAZ)	2115	2012	Sedan	Yaş Asfalt	1.6	80	Benzin	94000	Mexaniki	Ön	f	9500	5588	4468941	Şəmi	(055) 279-52-37	2020-11-17
4811	Naxçıvan	Volkswagen	Jetta	2015	Sedan	Qırmızı	1.8	200	Benzin	74000	Avtomat	Ön	f	19500	11471	4468942	Sarvan	(077) 738-08-08	2020-11-17
4812	Bakı	Nissan	Sunny	2008	Sedan	Gümüşü	1.8	150	Benzin	281000	Avtomat	Ön	f	11900	7000	4468944	Murvet 	(050) 445-70-26	2020-11-17
4813	Bakı	Mercedes	C 180	1998	Universal	Boz	1.8	122	Benzin	385000	Mexaniki	Arxa	f	8700	5118	4468946	Novruz	(055) 295-65-45	2020-11-17
4814	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	4	250	Benzin	124000	Avtomat	Tam	f	37230	21900	4468947	Eyvaz	(050) 635-60-90	2020-11-17
4816	Bakı	BMW	M4	2014	Kupe	Yaş Asfalt	3	431	Benzin	46500	Avtomat	Arxa	f	81600	48000	4465935	Rauf	(050) 833-99-99	2020-11-17
4817	Bakı	Hyundai	ix35	2012	Offroader / SUV	Qara	2.4	178	Benzin	138000	Avtomat	Ön	f	22900	13471	4416932	Sadiq	(051) 606-16-15	2020-11-17
4818	Bakı	Land Rover	Discovery	2014	Offroader / SUV	Boz	3	249	Dizel	103000	Avtomat	Tam	f	70550	41500	4408368	Kamil	(050) 444-44-45	2020-11-17
4820	Bakı	Toyota	Land Cruiser	2015	Offroader / SUV	Qara	4.5	249	Dizel	160000	Avtomat	Tam	f	110500	65000	4478613	Kanan	(050) 323-21-33	2020-11-17
4821	Bakı	LADA (VAZ)	2112	2004	Hetçbek / Liftbek	Qızılı	1.6	80	Benzin	252000	Mexaniki	Ön	f	5700	3353	4468879	Ruslan Məllim	(077) 602-61-04	2020-11-17
4822	Bakı	Chevrolet	Cruze	2013	Sedan	Qırmızı	1.4	141	Benzin	171000	Avtomat	Ön	f	14800	8706	4424714	Elvin	(070) 204-21-95	2020-11-17
4823	Bakı	Opel	Astra	2008	Universal	Gümüşü	1.7	130	Dizel	250000	Mexaniki	Ön	f	12300	7235	4465789	Fərhad	(055) 210-08-52	2020-11-17
4824	Gəncə	BMW	525	2005	Sedan	Ağ	2.5	218	Benzin	254000	Avtomat	Arxa	f	18500	10882	4468888	Anar	(055) 667-49-94	2020-11-17
4825	Şəmkir	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Qara	1.6	106	Benzin	108936	Mexaniki	Ön	f	12500	7353	4468889	Ulvi	(055) 827-50-55	2020-11-17
4826	Bakı	Mercedes	C 220	1994	Sedan	Gümüşü	2.2	143	Benzin	248000	Avtomat	Arxa	f	9400	5529	4468898	Tahir	(055) 712-12-74	2020-11-17
4827	Bakı	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	125300	Mexaniki	Arxa	f	5200	3059	4468899	Ruslan	(055) 211-91-61	2020-11-17
4828	Bakı	Mercedes	E 250	2013	Sedan	Qara	2.2	204	Dizel	211000	Avtomat	Tam	f	48450	28500	4468880	Sabir	(050) 885-96-02	2020-11-17
4829	Bakı	Hyundai	Elantra	2011	Sedan	Qara	1.8	150	Benzin	145000	Avtomat	Ön	f	17500	10294	4468900	Cemilə	(055) 605-16-61	2020-11-17
4830	Bakı	Kia	Rio	2014	Hetçbek / Liftbek	Ağ	1.4	107	Benzin	54531	Avtomat	Ön	f	17800	10471	4468901	Serxan	(070) 651-11-55	2020-11-17
4831	Bakı	Mercedes	B 170	2009	Hetçbek / Liftbek	Qara	1.7	116	Benzin	101000	Variator	Ön	f	14200	8353	4468905	Хураман	(051) 533-14-82	2020-11-17
4832	Bakı	LADA (VAZ)	2106	1994	Sedan	Ağ	1.6	75	Benzin	287000	Mexaniki	Arxa	f	3400	2000	4468878	ZAHIR	(070) 721-41-61	2020-11-17
4833	Bakı	Volkswagen	Polo	2012	Sedan	Ağ	1.6	105	Benzin	172352	Avtomat	Tam	f	11800	6941	4427822	Talib	(070) 501-00-77	2020-11-17
4834	Bakı	Kia	Cerato	2013	Sedan	Ağ	1.6	132	Benzin	146000	Avtomat	Ön	f	19800	11647	4468881	Ahmed	(055) 965-50-60	2020-11-17
4835	Bakı	Opel	Astra	2002	Hetçbek / Liftbek	Göy	1.6	75	Benzin	350000	Avtomat	Ön	f	8400	4941	4461946	Said	(055) 215-97-79	2020-11-17
4836	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	142000	Avtomat	Ön	f	16500	9706	4468885	Elvin	(055) 220-40-77	2020-11-17
4837	Gəncə	Mercedes	C 180	1996	Sedan	Boz	1.8	122	Benzin	245810	Mexaniki	Arxa	f	7700	4529	4465266	Zəfər	(050) 572-56-76	2020-11-17
4838	Bakı	BMW	525	2007	Sedan	Göy	2.5	218	Benzin	97000	Avtomat	Arxa	f	30260	17800	4468914	Zaur	(055) 565-78-08	2020-11-17
4839	Bakı	Kia	Cerato	2015	Sedan	Ağ	1.6	130	Benzin	72000	Avtomat	Tam	f	25500	15000	4468916	Neman	(050) 686-00-87	2020-11-17
4840	Quba	Ford	Fusion	2008	Hetçbek / Liftbek	Qırmızı	1.4	110	Benzin	130000	Robotlaşdırılmış	Ön	f	11700	6882	4468922	Tural	(055) 872-22-25	2020-11-17
4842	Bakı	Mercedes	Sprinter 315	2008	Mikroavtobus	Ağ	2.2	170	Dizel	250000	Mexaniki	Arxa	f	45000	26471	4393458	Həsən	(055) 292-51-11	2020-11-17
4843	Bakı	Mercedes	C 220	2000	Universal	Gümüşü	2.2	143	Dizel	488123	Avtomat	Arxa	f	13000	7647	4432904	İlham	(055) 633-37-37	2020-11-17
4844	Sumqayıt	Nissan	Patrol	2003	Offroader / SUV	Boz	3	190	Dizel	380230	Avtomat	Tam	f	19500	11471	4468844	Kamil	(070) 646-00-79	2020-11-17
4845	Bakı	Chevrolet	Cruze	2016	Sedan	Qara	1.4	153	Benzin	101200	Avtomat	Ön	f	16500	9706	4378556	Pərviz	(070) 222-33-17	2020-11-17
4846	Şirvan	Daewoo	Nexia	2006	Sedan	Gümüşü	1.6	85	Benzin	200000	Mexaniki	Ön	f	5300	3118	4468848	Ağasəf	(051) 599-20-25	2020-11-17
4847	Bakı	Kia	Cerato	2014	Sedan	Ağ	1.6	130	Benzin	73000	Avtomat	Ön	f	23500	13824	4468846	Nicat	(051) 450-81-38	2020-11-17
4848	Bakı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	242000	Avtomat	Arxa	f	24900	14647	4021335	Orxan	(051) 889-01-10	2020-11-17
4849	Bakı	Mercedes	C 200	1997	Universal	Ağ	2	136	Benzin	299000	Avtomat	Arxa	f	11500	6765	4468851	Mubariz	(050) 350-03-30	2020-11-17
4850	Bakı	Toyota	Camry	2019	Sedan	Qara	2.5	204	Benzin	44000	Avtomat	Ön	f	59500	35000	4457003	Reshad	(077) 910-01-00	2020-11-17
4851	Bakı	Toyota	Camry	2012	Sedan	Ağ	2.5	181	Benzin	164000	Avtomat	Ön	f	34850	20500	4468854	Oqtay	(050) 385-12-86	2020-11-17
4852	Qax	LADA (VAZ)	Niva	2017	Offroader / SUV	Ağ	1.7	80	Benzin	52450	Mexaniki	Tam	f	15300	9000	4468856	Elvin	(070) 576-61-67	2020-11-17
4853	Xırdalan	Toyota	RAV 4	1995	Offroader / SUV	Göy	2	150	Benzin	273873	Avtomat	Tam	f	7000	4118	4468859	Altay	(050) 771-55-61	2020-11-17
4854	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Gümüşü	2	184	Dizel	138000	Avtomat	Tam	f	23300	13706	4460774	Elcin	(055) 760-00-20	2020-11-17
4855	Mingəçevir	LADA (VAZ)	2104	1997	Universal	Ağ	1.5	65	Benzin	42214	Mexaniki	Arxa	f	4800	2824	4468863	Şiraslan	(077) 442-07-56	2020-11-17
4856	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.8	141	Benzin	200290	Avtomat	Ön	f	16500	9706	4420997	Nicat	(050) 544-88-66	2020-11-17
4857	Bakı	Chevrolet	Malibu	2017	Sedan	Ağ	1.5	160	Benzin	48000	Avtomat	Ön	f	22000	12941	4468866	Cavad	(055) 252-25-47	2020-11-17
4858	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	213000	Avtomat	Ön	f	11200	6588	4468810	Azer	(055) 401-26-63	2020-11-17
4859	Şamaxı	GAZ	53	1985	Yük maşını	Sarı	4.6	110	Benzin	232854	Mexaniki	Arxa	f	5200	3059	4468811	Təhsin	(051) 323-13-00	2020-11-17
4860	Sumqayıt	Skoda	Felicia	1996	Hetçbek / Liftbek	Ağ	1.6	90	Benzin	222222	Mexaniki	Ön	f	1700	1000	4468813	SaTıCı	(077) 310-69-13	2020-11-17
4861	Bakı	Kia	Optima	2012	Sedan	Göy	2	274	Benzin	112850	Avtomat	Ön	f	20000	11765	4468824	Orxan	(050) 336-22-66	2020-11-17
4862	Qax	IJ	Planeta 5	1990	Motosiklet	Qırmızı	0.4	50	Benzin	99999	Mexaniki	Arxa	f	1500	882	4468825	Səməndər	(055) 787-88-13	2020-11-17
4863	Bakı	LADA (VAZ)	2110	2005	Sedan	Gümüşü	1.6	80	Benzin	190000	Mexaniki	Ön	f	6700	3941	4468826	Elnur	(055) 843-26-05	2020-11-17
4864	Bakı	BMW	520	2007	Universal	Göy	2	177	Dizel	308000	Avtomat	Arxa	f	23200	13647	4468828	Rauf	(055) 870-30-73	2020-11-17
4865	Sabirabad	Mercedes	Atego 815	1989	Yük maşını	Narıncı	6.2	250	Dizel	650000	Mexaniki	Arxa	f	16000	9412	4468805	Tamerlan	(051) 775-70-07	2020-11-17
4866	Bakı	Mercedes	C 180	2014	Sedan	Ağ	1.6	211	Benzin	78670	Avtomat	Arxa	f	56780	33400	4371214	Elcin	(055) 576-49-65	2020-11-17
4867	Bakı	Ford	Transit	2011	Furqon	Ağ	2.4	140	Dizel	290000	Mexaniki	Arxa	f	23500	13824	4468793	SAMIR	(070) 394-16-94	2020-11-17
4868	Bakı	Mercedes	E 320	2000	Sedan	Qara	3.2	224	Benzin	284000	Avtomat	Arxa	f	15700	9235	4468795	Elnur	(077) 524-29-81	2020-11-17
4869	Yevlax	Hyundai	Sonata	2014	Sedan	Gümüşü	2.4	178	Hibrid	130000	Avtomat	Ön	f	26000	15294	4468796	Adil	(055) 548-40-95	2020-11-17
4870	Bakı	Peugeot	407	2005	Sedan	Qara	2	136	Benzin	280000	Avtomat	Ön	f	8000	4706	4468801	Emil	(055) 323-23-12	2020-11-17
4871	Tərtər	LADA (VAZ)	2107	1991	Sedan	Qırmızı	1.6	75	Benzin	76523	Mexaniki	Arxa	f	4000	2353	4468802	Şamil	(050) 481-81-66	2020-11-17
4872	Bakı	Toyota	Corolla	2005	Hetçbek / Liftbek	Qara	1.4	90	Dizel	198000	Mexaniki	Ön	f	12600	7412	4447631	Rasim	(070) 200-83-48	2020-11-17
4873	Sumqayıt	Hyundai	Accent	2006	Sedan	Ağ	1.6	110	Benzin	270000	Avtomat	Ön	f	11000	6471	4468807	Huseyn	(055) 224-63-78	2020-11-17
4874	Göyçay	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.2	197	Dizel	247000	Avtomat	Tam	f	22000	12941	4468843	RƏŞAD	(055) 803-12-73	2020-11-17
4875	Bakı	Mercedes	C 200	2000	Sedan	Gümüşü	2	150	Benzin	365000	Avtomat	Arxa	f	10700	6294	4468780	Asif	(055) 980-55-66	2020-11-17
4876	Bakı	Mercedes	E 200	1993	Sedan	Yaş Asfalt	2	122	Dizel	38000	Mexaniki	Arxa	f	6800	4000	4468781	Elnur	(070) 253-20-50	2020-11-17
4877	Bakı	Chevrolet	Lacetti	2010	Sedan	Ağ	1.8	120	Benzin	200000	Avtomat	Ön	f	10900	6412	4468778	İlqar	(070) 251-51-31	2020-11-17
4878	Bakı	Hyundai	H 100	2014	Yük maşını	Ağ	2.7	187	Dizel	98000	Mexaniki	Arxa	f	18900	11118	4468770	Behruz	(050) 454-68-64	2020-11-17
4879	Bakı	Renault	Megane	2007	Universal	Göy	1.5	106	Dizel	191847	Mexaniki	Ön	f	10000	5882	4454423	Emil	(070) 839-93-91	2020-11-17
4880	Bakı	Mercedes	C 220	2001	Sedan	Gümüşü	2.2	170	Dizel	400000	Avtomat	Arxa	f	10800	6353	4468790	Eliş	(070) 388-78-01	2020-11-17
4881	Bakı	Opel	Astra	2008	Universal	Ağ	1.3	95	Dizel	152000	Mexaniki	Ön	f	12000	7059	4439874	Baxtiyar	(050) 300-12-67	2020-11-17
4882	Şəmkir	LADA (VAZ)	2106	1988	Sedan	Sarı	1.3	65	Benzin	64382	Mexaniki	Arxa	f	3300	1941	4468771	anar	(051) 413-94-94	2020-11-17
4883	Bakı	Toyota	Prado	2006	Offroader / SUV	Ağ	4	249	Benzin	210000	Avtomat	Tam	f	34850	20500	4381259	Lev	(070) 760-00-70	2020-11-17
4884	Bakı	Hyundai	Elantra	2014	Sedan	Gümüşü	1.8	150	Benzin	121000	Avtomat	Ön	f	17600	10353	4468775	Nicat	(070) 754-56-56	2020-11-17
4885	Bakı	Ford	Transit	2013	Yük maşını	Ağ	2.2	140	Dizel	93000	Mexaniki	Arxa	f	30000	17647	4468788	Elman	(070) 247-49-99	2020-11-17
4887	Gəncə	Mercedes	E 230	1998	Sedan	Yaşıl	2.3	150	Benzin	215000	Avtomat	Arxa	f	10800	6353	4468743	Səbuhi	(055) 814-76-77	2020-11-17
4888	Bakı	Mercedes	E 320	2004	Sedan	Qara	3.2	224	Benzin	273500	Avtomat	Arxa	f	17800	10471	4468748	Roman	(055) 202-83-20	2020-11-17
4889	Bakı	BMW	525	2001	Sedan	Qara	2.5	192	Benzin	178064	Avtomat	Arxa	f	12200	7176	4468750	Azer	(050) 570-44-06	2020-11-17
4890	Bakı	Hyundai	Tucson	2005	Offroader / SUV	Boz	2	141	Dizel	372000	Avtomat	Tam	f	15000	8824	4468751	Aziz	(070) 945-54-96	2020-11-17
4891	Bakı	Kia	Cerato	2014	Sedan	Qara	1.8	149	Benzin	99000	Avtomat	Ön	f	18000	10588	4410354	zamin	(055) 767-66-55	2020-11-17
4892	Bakı	Toyota	Land Cruiser	2008	Offroader / SUV	Qara	4	282	Benzin	171000	Avtomat	Tam	f	48450	28500	4460988	Qabil	(055) 335-37-27	2020-11-17
4893	Sumqayıt	Mercedes	S 300	1993	Sedan	Yaşıl	3	177	Dizel	357977	Avtomat	Arxa	f	6800	4000	4468707	Elşən	(055) 730-12-82	2020-11-17
4894	Yevlax	Mercedes	E 220	1999	Sedan	Gümüşü	2.2	143	Dizel	375000	Avtomat	Arxa	f	17000	10000	4468708	Samir	(055) 204-44-30	2020-11-17
4895	Bakı	Mercedes	Atego 1224	2007	Yük maşını	Ağ	6.4	238	Dizel	653879	Mexaniki	Arxa	f	41000	24118	4468101	Xaqani	(050) 254-18-86	2020-11-17
4896	Sabirabad	Muravey	Muravey- 2 01	2008	Motosiklet	Göy	0.1	10	Benzin	45000	Mexaniki	Arxa	f	2400	1412	4468718	sahibi	(050) 397-99-91	2020-11-17
4897	Bakı	Volkswagen	Jetta	2008	Sedan	Ağ	1.6	102	Benzin	163000	Avtomat	Ön	f	12500	7353	4468725	Ilkin	(077) 333-36-03	2020-11-17
4898	Gəncə	Mercedes	E 240	1998	Universal	Gümüşü	2.4	170	Benzin	287300	Avtomat	Ön	f	9500	5588	4468722	Xəyal	(055) 563-20-69	2020-11-17
4899	Bakı	Volkswagen	Jetta	2017	Sedan	Qəhvəyi	1.4	140	Benzin	53200	Avtomat	Ön	f	18200	10706	4468723	İlqar	(055) 881-44-00	2020-11-17
4900	Balakən	Mercedes	C 280	1997	Sedan	Qara	2.8	193	Benzin	268222	Avtomat	Arxa	f	9500	5588	4468731	Guffet	(050) 615-10-29	2020-11-17
4901	Bərdə	LADA (VAZ)	2106	1985	Sedan	Qırmızı	1.5	65	Benzin	95277	Mexaniki	Arxa	f	3550	2088	4468733	Serxan	(055) 992-07-29	2020-11-17
4902	Bakı	Mercedes	E 200	1995	Sedan	Göy	2	136	Benzin	280000	Avtomat	Arxa	f	7700	4529	4468734	60000	(055) 637-41-49	2020-11-17
4903	Bakı	Chevrolet	Aveo	2007	Sedan	Boz	1.4	107	Benzin	138000	Avtomat	Arxa	f	10600	6235	4276249	Zaur	(055) 990-39-16	2020-11-17
4904	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Ağ	4	282	Benzin	213000	Avtomat	Tam	f	51510	30300	4458920	Elsevər	(077) 235-11-00	2020-11-17
4905	Bakı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	353000	Avtomat	Arxa	f	19500	11471	4450962	Polad	(051) 388-88-87	2020-11-17
4906	Bakı	Iran Khodro	Azsamand	2006	Sedan	Boz	1.5	110	Benzin	317000	Mexaniki	Ön	f	5200	3059	4468742	Eltun	(077) 631-65-47	2020-11-17
4907	Bakı	Toyota	Prado	2011	Offroader / SUV	Ağ	2.7	167	Benzin	108000	Avtomat	Tam	f	40460	23800	4445575	Şamil	(050) 373-55-74	2020-11-17
4908	Bakı	Mercedes	S 350	2006	Sedan	Ağ	3.5	272	Benzin	105000	Avtomat	Arxa	f	33150	19500	4445554	Etibar	(050) 535-69-37	2020-11-17
4909	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Qara	1.4	97	Benzin	110421	Mexaniki	Ön	f	10800	6353	4461955	Həsən	(050) 782-54-82	2020-11-17
4910	Bakı	Lexus	RX 300	2000	Offroader / SUV	Ağ	3	211	Benzin	200000	Avtomat	Ön	f	12500	7353	4468758	Atif	(050) 363-26-56	2020-11-17
4911	Bakı	Toyota	Prado	1998	Offroader / SUV	Ağ	3	125	Dizel	362000	Mexaniki	Tam	f	16500	9706	4468609	Ceyhun	(077) 511-55-50	2020-11-17
4912	Bakı	Mercedes	E 320	2001	Sedan	Qara	3.2	224	Benzin	254790	Avtomat	Arxa	f	18500	10882	4468650	Kərəm	(055) 811-90-95	2020-11-17
4913	Bakı	Jeep	Cherokee	2014	Offroader / SUV	Yaşıl	2.4	143	Benzin	96000	Avtomat	Tam	f	38420	22600	4468651	Ferid	(055) 204-10-11	2020-11-17
4914	Bakı	Infiniti	FX35	2007	Offroader / SUV	Qara	3.5	303	Benzin	256000	Avtomat	Tam	f	17300	10176	4468654	Mehdi	(077) 535-43-90	2020-11-17
4915	Bakı	Kia	Sportage	2015	Offroader / SUV	Gümüşü	2	184	Dizel	41000	Avtomat	Ön	f	29000	17059	4273807	Teymur	(050) 771-51-84	2020-11-17
4916	Bakı	Opel	Corsa	2007	Hetçbek / Liftbek	Ağ	1.2	85	Benzin	250000	Mexaniki	Ön	f	7400	4353	4468656	Camal	(055) 556-67-07	2020-11-17
4917	Bakı	BMW	528	2012	Sedan	Qara	2	245	Benzin	208000	Avtomat	Arxa	f	35530	20900	4468664	Murad	(055) 686-97-97	2020-11-17
4918	Bakı	LADA (VAZ)	2110	2011	Sedan	Yaş Asfalt	1.6	80	Benzin	230000	Mexaniki	Ön	f	10200	6000	4468623	ramil	(055) 292-90-90	2020-11-17
4919	Bakı	Hyundai	Santa Fe	2012	Offroader / SUV	Ağ	2.4	175	Benzin	187000	Avtomat	Ön	f	28000	16471	4468624	Kamran	(055) 811-10-88	2020-11-17
4920	Bakı	Fiat	Punto	2001	Hetçbek / Liftbek	Yaşıl	1.2	64	Benzin	250000	Mexaniki	Ön	f	5200	3059	4468628	Zahir	(055) 303-55-40	2020-11-17
4921	Bakı	Kia	Rio	2012	Hetçbek / Liftbek	Qara	1.4	107	Benzin	106000	Avtomat	Ön	f	16300	9588	4468629	Vagif	(050) 280-12-23	2020-11-17
4922	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	216000	Mexaniki	Ön	f	10800	6353	4468630	Fuad	(070) 952-43-65	2020-11-17
4923	Bakı	Chevrolet	Aveo	2006	Sedan	Göy	1.4	107	Benzin	260000	Avtomat	Ön	f	10500	6176	4468635	Henfe	(050) 290-63-82	2020-11-17
4924	Bakı	Mercedes	S 300	2008	Sedan	Qara	3	231	Dizel	312000	Avtomat	Arxa	f	30700	18059	4468641	Elnur	(055) 735-72-72	2020-11-17
4925	Bakı	Volkswagen	Golf	1998	Hetçbek / Liftbek	Yaşıl	1.6	101	Qaz	268500	Avtomat	Ön	f	7300	4294	4468545	Vuqar	(050) 201-05-74	2020-11-17
4926	Bakı	Toyota	RAV 4	2013	Offroader / SUV	Qara	2	150	Benzin	174000	Avtomat	Tam	f	34680	20400	4468502	Azər 	(055) 544-58-35	2020-11-17
4927	Bakı	Ford	Focus	2002	Universal	Ağ	1.6	102	Benzin	245000	Mexaniki	Ön	f	7000	4118	4468465	Eldar	(050) 347-79-65	2020-11-17
4928	Bakı	Opel	Vectra	1998	Sedan	Boz	2	136	Benzin	507573	Avtomat	Ön	f	5800	3412	4460514	Xeyyam	(055) 466-70-60	2020-11-17
4929	Quba	Nissan	Sunny	2005	Sedan	Gümüşü	1.3	90	Benzin	320000	Mexaniki	Arxa	f	10200	6000	4468553	emil	(077) 217-64-92	2020-11-17
4930	Tovuz	UAZ	39625	1998	Minivan	Ağ	2.4	75	Benzin	240000	Mexaniki	Tam	f	6800	4000	4468555	Bilal	(070) 929-48-04	2020-11-17
4931	Bakı	Mercedes	C 180	1998	Universal	Qara	1.8	122	Benzin	348000	Mexaniki	Arxa	f	9500	5588	4468560	Malik	(050) 492-27-02	2020-11-17
4932	Bakı	SEAT	Ibiza	2014	Universal	Ağ	1.4	85	Benzin	210000	Mexaniki	Ön	f	12300	7235	4468561	Elmir	(070) 233-07-07	2020-11-17
4933	Bakı	Chevrolet	Cruze	2015	Sedan	Yaş Asfalt	1.4	141	Benzin	67024	Avtomat	Ön	f	16000	9412	4468564	Məhərrəm	(070) 285-16-85	2020-11-17
4934	Bakı	Lexus	LS 460	2008	Sedan	Ağ	4.6	380	Benzin	230000	Avtomat	Arxa	f	16000	9412	4468565	Bahadur	(055) 254-27-08	2020-11-17
4935	Qax	Mercedes	C 230	1999	Sedan	Qara	2.3	150	Benzin	202012	Avtomat	Arxa	f	10700	6294	4468566	Imran	(070) 395-09-05	2020-11-17
4936	Bakı	Mitsubishi	Lancer	2008	Sedan	Qara	2	150	Benzin	193236	Avtomat	Ön	f	13300	7824	4468574	Behruz	(055) 800-20-01	2020-11-17
4937	Bakı	GMC	Terrain	2018	Offroader / SUV	Gümüşü	1.5	180	Benzin	14000	Avtomat	Ön	f	43180	25400	4468577	Fuad	(050) 310-03-05	2020-11-17
4938	Bakı	Opel	Astra	2011	Universal	Gümüşü	1.3	90	Dizel	146000	Mexaniki	Ön	f	14700	8647	4468584	Aga	(050) 852-34-12	2020-11-17
4939	Bakı	Hyundai	Sonata	2010	Sedan	Göy	2.4	178	Benzin	120000	Avtomat	Ön	f	17900	10529	4446372	Elsen	(055) 347-91-22	2020-11-17
4940	Bakı	LADA (VAZ)	Niva	1989	Offroader / SUV	Ağ	1.7	80	Benzin	235000	Mexaniki	Tam	f	5400	3176	4468592	Etibar	(077) 488-35-67	2020-11-17
4941	Xırdalan	Khazar	LX	2019	Sedan	Göy	1.7	113	Benzin	52000	Mexaniki	Ön	f	15500	9118	4468595	Togrul	(055) 538-11-35	2020-11-17
4942	Sumqayıt	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	103602	Mexaniki	Arxa	f	6300	3706	4468596	Yusif	(051) 981-35-35	2020-11-17
4943	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	122000	Mexaniki	Ön	f	11000	6471	4468597	Ferhad	(055) 280-00-63	2020-11-17
4944	Bakı	Kia	Sorento	2010	Offroader / SUV	Gümüşü	2.4	175	Benzin	160000	Avtomat	Tam	f	22100	13000	4468600	Arif	(050) 343-47-39	2020-11-17
4945	Bakı	Kia	Sorento	2010	Offroader / SUV	Gümüşü	2.4	178	Benzin	103500	Avtomat	Tam	f	22800	13412	4468619	Abdulla	(050) 610-00-17	2020-11-17
4946	Bakı	Mercedes	E 280	1999	Sedan	Gümüşü	2.8	193	Benzin	347300	Avtomat	Arxa	f	13000	7647	4468669	Qulu	(070) 288-20-75	2020-11-17
4947	Şəmkir	LADA (VAZ)	2106	1986	Sedan	Sarı	1.5	65	Benzin	200000	Mexaniki	Arxa	f	5500	3235	4468671	Rufet 	(050) 581-59-46	2020-11-17
4948	Bakı	Mercedes	Viano	2013	Minivan	Qara	3	231	Dizel	225300	Avtomat	Arxa	f	45730	26900	4468677	Orxan	(051) 535-31-74	2020-11-17
4949	Bakı	LADA (VAZ)	Niva	2016	Offroader / SUV	Qara	1.7	80	Benzin	96150	Mexaniki	Tam	f	14000	8235	4468694	Orxan	(055) 828-00-75	2020-11-17
4950	Gəncə	Daewoo	Damas	2008	Furqon	Göy	0.8	45	Benzin	259865	Mexaniki	Arxa	f	6500	3824	4468455	Sahil	(055) 683-23-37	2020-11-17
4951	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2	165	Benzin	280000	Avtomat	Ön	f	15300	9000	4468461	Elşən	(055) 859-06-59	2020-11-17
4952	Bakı	Mercedes	C 200	1999	Sedan	Göy	2	136	Benzin	220771	Avtomat	Arxa	f	12200	7176	4468466	Zabil	(050) 538-30-35	2020-11-17
4953	Bakı	Opel	Astra	2007	Universal	Gümüşü	1.4	90	Benzin	190000	Mexaniki	Ön	f	11900	7000	4468469	Zöhrab 	(055) 603-23-32	2020-11-17
4954	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	56000	Avtomat	Ön	f	15800	9294	4468470	Baxa	(050) 688-69-06	2020-11-17
4955	Bakı	Nissan	Pathfinder	2008	Offroader / SUV	Yaş Asfalt	2.5	190	Dizel	20000	Avtomat	Tam	f	27500	16176	4468475	Aaaaa	(051) 943-11-11	2020-11-17
4956	Bakı	Toyota	RAV 4	2002	Offroader / SUV	Gümüşü	2	150	Benzin	351000	Avtomat	Tam	f	12700	7471	4468473	Qara 	(077) 480-00-71	2020-11-17
4957	Gəncə	Mitsubishi	Pajero	2007	Offroader / SUV	Ağ	3	188	Benzin	159000	Avtomat	Tam	f	24300	14294	4468478	Azer	(055) 567-39-49	2020-11-17
4958	Bakı	BMW	528	1998	Sedan	Yaş Asfalt	2.8	193	Benzin	252000	Avtomat	Arxa	f	10900	6412	4468481	Faiq	(070) 715-30-60	2020-11-17
4959	Bakı	LADA (VAZ)	2104	2004	Universal	Göy	1.6	75	Benzin	120000	Mexaniki	Arxa	f	6300	3706	4468488	Behruz	(055) 562-44-05	2020-11-17
4960	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	174000	Avtomat	Tam	f	36550	21500	4468498	Vasif	(099) 801-88-85	2020-11-17
4961	Bakı	LADA (VAZ)	2107	2012	Sedan	Tünd qırmızı	1.6	75	Benzin	55000	Mexaniki	Arxa	f	8500	5000	4468501	Elçin	(050) 999-00-81	2020-11-17
4962	Bakı	Yamaha	YBR 125	2013	Motosiklet	Qara	0.2	8	Benzin	26000	Mexaniki	Arxa	f	1900	1118	4468506	Cəmil	(077) 612-11-10	2020-11-17
4963	Bakı	Renault	Kangoo	2007	Minivan	Ağ	1.5	105	Dizel	370000	Mexaniki	Ön	f	9500	5588	4468509	Sahib	(050) 681-91-92	2020-11-17
4964	Gəncə	Mercedes	C 230	1999	Sedan	Gümüşü	2.3	150	Benzin	280000	Avtomat	Arxa	f	11200	6588	4468513	Kanan	(055) 948-00-38	2020-11-17
4965	Bakı	Hyundai	Grandeur	2008	Sedan	Qara	3.3	233	Benzin	213500	Avtomat	Ön	f	15300	9000	4421183	NURLAN	(055) 221-14-97	2020-11-17
4966	Bakı	Toyota	Camry	2013	Sedan	Qara	2.5	181	Benzin	110000	Avtomat	Ön	f	27000	15882	4468364	Nicat	(055) 390-32-33	2020-11-17
4967	Bakı	LADA (VAZ)	21099	2003	Sedan	Boz	1.5	75	Benzin	316000	Mexaniki	Ön	f	6000	3529	4468318	İsmayıl	(055) 257-15-36	2020-11-17
4968	Bakı	Mercedes	C 200	2000	Sedan	Gümüşü	2	163	Benzin	325500	Avtomat	Arxa	f	10800	6353	4468374	Vuqar	(051) 485-41-56	2020-11-17
4969	Bakı	Mercedes	C 180	1995	Sedan	Yaşıl	1.8	122	Benzin	414000	Avtomat	Arxa	f	7700	4529	4468379	Vuqar	(055) 206-10-39	2020-11-17
4970	Bakı	Nissan	Sunny	2014	Sedan	Ağ	1.5	109	Benzin	81000	Avtomat	Ön	f	14000	8235	4468382	Anar	(051) 484-00-32	2020-11-17
4971	Bərdə	LADA (VAZ)	Priora	2011	Hetçbek / Liftbek	Qara	1.6	98	Benzin	173000	Mexaniki	Ön	f	10600	6235	4463191	Samir	(055) 362-62-60	2020-11-17
4972	Bakı	Opel	Vectra	1999	Hetçbek / Liftbek	Gümüşü	2	136	Benzin	310500	Avtomat	Ön	f	7200	4235	4468398	Weadet	(055) 871-88-77	2020-11-17
4973	Gəncə	Renault	Megane	2010	Hetçbek / Liftbek	Qara	1.5	110	Dizel	305000	Mexaniki	Ön	f	13000	7647	4468402	Ceyhun 	(055) 344-40-45	2020-11-17
4974	Bakı	Honda	CR-V	2009	Offroader / SUV	Bej	2.4	180	Benzin	236000	Avtomat	Tam	f	22300	13118	4468371	İlkin	(051) 541-22-11	2020-11-17
4975	Gəncə	Chevrolet	Cruze	2015	Sedan	Boz	1.4	141	Benzin	147000	Avtomat	Ön	f	18000	10588	4468409	Vüqar	(055) 820-22-23	2020-11-17
4976	Bakı	Chevrolet	Aveo	2013	Sedan	Ağ	1.4	107	Benzin	146100	Avtomat	Ön	f	11900	7000	4468411	Zamiq	(055) 706-17-32	2020-11-17
4977	Bakı	Opel	Astra	1999	Hetçbek / Liftbek	Göy	1.6	75	Benzin	345000	Mexaniki	Ön	f	9000	5294	4468399	Rahim	(077) 316-12-33	2020-11-17
4978	Bakı	BMW	320	2000	Sedan	Qara	2	150	Benzin	328000	Avtomat	Arxa	f	9800	5765	4468420	Ismayil	(055) 306-90-04	2020-11-17
4979	Şamaxı	LADA (VAZ)	2106	2005	Sedan	Qırmızı	1.5	65	Benzin	100000	Mexaniki	Arxa	f	5000	2941	4468437	Elcin	(050) 718-17-66	2020-11-17
4980	İsmayıllı	Nissan	Micra	1999	Hetçbek / Liftbek	Göy	1.3	75	Benzin	230000	Mexaniki	Ön	f	6300	3706	4468439	Elçin	(055) 424-48-20	2020-11-17
4981	Bakı	Chevrolet	Cruze	2010	Sedan	Boz	1.4	156	Benzin	139000	Avtomat	Ön	f	12000	7059	4464246	Elgiz	(050) 392-32-10	2020-11-17
4982	Bakı	Mercedes	C 350	2008	Sedan	Ağ	3.5	272	Benzin	257000	Avtomat	Ön	f	22500	13235	4457257	Asiman	(070) 291-20-19	2020-11-17
4983	Cəlilabad	LADA (VAZ)	21099	1993	Sedan	Yaş Asfalt	1.5	75	Benzin	456780	Mexaniki	Ön	f	5000	2941	4468445	Şahlar	(051) 792-79-33	2020-11-17
4984	Bakı	Hyundai	Sonata	2009	Sedan	Mavi	2.4	178	Benzin	203000	Avtomat	Ön	f	16500	9706	4468449	Ibrahim	(051) 710-68-05	2020-11-17
4985	Bakı	Land Rover	RR Sport	2018	Offroader / SUV	Yaş Asfalt	3	249	Dizel	13700	Avtomat	Tam	f	166600	98000	4468451	Yasin 	(050) 316-54-58	2020-11-17
4986	Bakı	Mercedes	190	1992	Sedan	Göy	2	122	Benzin	442290	Avtomat	Arxa	f	5300	3118	4468518	Eli	(055) 794-17-68	2020-11-17
4987	Bakı	Opel	Astra	2001	Hetçbek / Liftbek	Gümüşü	1.8	125	Benzin	366666	Mexaniki	Ön	f	9500	5588	4468522	Qoshqar	(055) 855-55-86	2020-11-17
4988	Bakı	Mercedes	C 200	1999	Sedan	Boz	2	136	Benzin	268567	Avtomat	Arxa	f	10500	6176	4468525	Vuqar	(077) 608-61-18	2020-11-17
4989	Bakı	Opel	Vectra	1997	Hetçbek / Liftbek	Gümüşü	2	136	Benzin	555555	Avtomat	Ön	f	3300	1941	4468529	Zohrab	(055) 885-10-86	2020-11-17
4990	Bakı	Hyundai	Veloster	2012	Hetçbek / Liftbek	Qara	1.6	132	Benzin	80000	Avtomat	Ön	f	16000	9412	4468533	Elçin	(055) 979-00-81	2020-11-17
4991	Bakı	Toyota	Land Cruiser	2003	Offroader / SUV	Qara	4.5	224	Benzin	224230	Avtomat	Tam	f	21800	12824	4468310	Mübariz	(050) 312-53-02	2020-11-17
4992	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	64200	Avtomat	Ön	f	18900	11118	4468312	Sahil	(051) 306-30-00	2020-11-17
4993	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2	274	Benzin	78000	Avtomat	Ön	f	25600	15059	4468322	Behruz	(050) 549-78-20	2020-11-17
4994	Lənkəran	Mercedes	E 320	2001	Sedan	Ağ	3.2	224	Benzin	266500	Avtomat	Arxa	f	17500	10294	4431338	Samir	(050) 373-94-54	2020-11-17
4995	Bakı	Chevrolet	Cruze	2012	Sedan	Qara	1.4	141	Benzin	255000	Avtomat	Ön	f	13700	8059	4468325	Elnur	(070) 240-77-65	2020-11-17
4996	Qəbələ	Ford	Transit	1999	Furqon	Sarı	2.5	96	Dizel	287456	Mexaniki	Arxa	f	11900	7000	4468341	Veyis	(050) 395-96-66	2020-11-17
4997	Bakı	Chevrolet	Cruze	2012	Sedan	Tünd qırmızı	1.4	141	Benzin	120000	Avtomat	Ön	f	14300	8412	4468348	Yusif	(050) 688-67-10	2020-11-17
4998	Quba	Volkswagen	Touareg	2004	Offroader / SUV	Göy	3	225	Benzin	254000	Avtomat	Tam	f	15500	9118	4468354	Şahin	(051) 360-16-17	2020-11-17
4999	Bakı	Mercedes	C 180	1997	Sedan	Göy	1.8	122	Benzin	180000	Avtomat	Arxa	f	9000	5294	4468356	Fərid	(070) 385-50-10	2020-11-17
5000	Bakı	Daewoo	Nexia	2005	Sedan	Gümüşü	1.5	75	Benzin	220000	Mexaniki	Ön	f	6900	4059	4468357	Şahin	(050) 476-47-56	2020-11-17
5001	Bakı	LADA (VAZ)	2112	2006	Hetçbek / Liftbek	Yaş Asfalt	1.6	80	Benzin	215500	Mexaniki	Ön	f	7500	4412	4468258	Ruslan	(077) 500-15-24	2020-11-17
5002	Bakı	Changan	Alsvin V7	2018	Sedan	Boz	1.5	110	Benzin	201000	Avtomat	Ön	f	20000	11765	4468269	Teymur	(077) 330-36-30	2020-11-17
5003	Bərdə	Mercedes	C 240	1998	Sedan	Boz	2.4	170	Benzin	240000	Avtomat	Arxa	f	8500	5000	4468275	Ilham	(050) 228-94-00	2020-11-17
5004	Gəncə	Volkswagen	Touareg	2005	Offroader / SUV	Gümüşü	3.2	220	Benzin	236000	Avtomat	Tam	f	13300	7824	4468278	Muraz	(070) 815-68-42	2020-11-17
5005	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Qara	1.8	99	Hibrid	122500	Avtomat	Ön	f	17700	10412	4376311	Aqşin	(050) 366-63-43	2020-11-17
5006	Bakı	Hyundai	Sonata	2000	Sedan	Qara	2	136	Benzin	300000	Avtomat	Ön	f	6900	4059	4468298	Məhəmməd	(050) 582-52-64	2020-11-17
5007	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Qara	1.6	106	Benzin	119310	Mexaniki	Ön	f	11000	6471	4468300	Behlul	(070) 588-55-13	2020-11-17
5008	Bakı	Mercedes	S 600	2015	Sedan	Qara	6	530	Benzin	89000	Avtomat	Tam	f	141100	83000	4297658	Elvin	(050) 210-81-19	2020-11-17
5009	Saatlı	LADA (VAZ)	2107	2000	Sedan	Qırmızı	1.6	75	Benzin	166666	Mexaniki	Arxa	f	4450	2618	4468359	Eli	(050) 496-92-21	2020-11-17
5010	Bakı	LADA (VAZ)	2115	2009	Sedan	Qara	1.5	75	Benzin	340000	Mexaniki	Ön	f	7200	4235	4468361	Amil	(055) 920-22-13	2020-11-17
5011	Bakı	Opel	Astra	2008	Universal	Bej	1.3	90	Dizel	215000	Mexaniki	Ön	f	11300	6647	4468363	Nicat 	(055) 693-36-37	2020-11-17
5012	Bakı	Lexus	LX 470	2006	Offroader / SUV	Qara	4.7	275	Benzin	168000	Avtomat	Tam	f	32300	19000	4468368	Cavid	(070) 924-84-08	2020-11-17
5013	Tovuz	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	270000	Mexaniki	Arxa	f	12000	7059	4468183	Elsevər	(050) 627-42-73	2020-11-17
5014	Bakı	Mercedes	C 200	1998	Sedan	Qara	2	136	Benzin	340000	Avtomat	Arxa	f	12900	7588	4468179	Kamran	(051) 922-00-88	2020-11-17
5015	Bakı	GMC	Terrain	2018	Offroader / SUV	Qara	1.6	137	Dizel	18500	Avtomat	Ön	f	49300	29000	4302521	Azad	(070) 320-14-34	2020-11-17
5016	Bakı	Opel	Vectra	1998	Universal	Göy	2	136	Benzin	248769	Avtomat	Ön	f	5400	3176	4468189	Memmedeli	(050) 398-57-64	2020-11-17
5017	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Gümüşü	1.5	106	Benzin	163000	Mexaniki	Ön	f	11100	6529	4468197	Ruslan	(050) 820-33-88	2020-11-17
5018	Bakı	Hyundai	Santa Fe	2007	Offroader / SUV	Mavi	2.7	185	Benzin	130000	Avtomat	Tam	f	20000	11765	4468202	Elmar	(055) 278-50-57	2020-11-17
5019	Bakı	Mercedes	190	1991	Sedan	Qara	1.8	109	Benzin	310545	Mexaniki	Arxa	f	5900	3471	4468204	Vasif	(050) 414-07-61	2020-11-17
5020	Bakı	LADA (VAZ)	Niva	2011	Offroader / SUV	Ağ	1.7	80	Benzin	188000	Mexaniki	Tam	f	9300	5471	4468206	Sənan	(050) 251-06-56	2020-11-17
5021	Balakən	Mercedes	190	1990	Sedan	Qara	2	122	Benzin	308095	Avtomat	Arxa	f	6900	4059	4468218	Mahmud	(050) 644-61-05	2020-11-17
5022	Bakı	Mercedes	C 240	2000	Sedan	Gümüşü	2.6	177	Benzin	298000	Avtomat	Arxa	f	10500	6176	4468220	pervin	(077) 614-04-64	2020-11-17
5023	Bakı	GAZ	33021	1997	Yük maşını	Sarı	2.3	131	Benzin	210000	Mexaniki	Arxa	f	6800	4000	4468232	Bədir	(050) 209-73-40	2020-11-17
5024	Bakı	Hyundai	Elantra	2014	Sedan	Qara	1.8	150	Benzin	101400	Avtomat	Ön	f	19800	11647	4468234	panah	(055) 206-06-33	2020-11-17
5025	Bakı	Hyundai	Matrix	2007	Minivan	Qara	1.5	110	Dizel	169868	Mexaniki	Ön	f	10900	6412	4468207	Otar	(050) 659-25-72	2020-11-17
5026	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2.4	178	Benzin	295000	Avtomat	Ön	f	15700	9235	4468186	Azer	(055) 220-11-41	2020-11-17
5027	Sumqayıt	Ford	Transit	1996	Mikroavtobus	Ağ	2.5	96	Dizel	444000	Mexaniki	Arxa	f	15300	9000	4468184	Əyyub 	(070) 525-36-56	2020-11-17
5028	Bakı	Mercedes	E 220	1998	Sedan	Qara	2.2	146	Benzin	230000	Avtomat	Arxa	f	11000	6471	4468244	Mətləb	(055) 686-12-22	2020-11-17
5029	Bakı	Chevrolet	Cruze	2014	Sedan	Yaşıl	1.4	141	Benzin	102000	Avtomat	Ön	f	15800	9294	4468126	Talib	(050) 711-61-71	2020-11-17
5030	Sabirabad	LADA (VAZ)	2107	2004	Sedan	Tünd qırmızı	1.6	75	Benzin	99999	Mexaniki	Arxa	f	4700	2765	4468131	Kərbəlayi	(050) 727-75-67	2020-11-17
5031	Bakı	Opel	Astra	2006	Universal	Göy	1.4	110	Benzin	206000	Mexaniki	Ön	f	18530	10900	4468133	Ramil	(055) 291-02-01	2020-11-17
5032	İsmayıllı	LADA (VAZ)	2107	2011	Sedan	Qara	1.5	65	Benzin	145000	Mexaniki	Arxa	f	7600	4471	4468138	Vasif	(077) 533-32-31	2020-11-17
5033	Tovuz	ZIL	4334	1990	Yük maşını	Göy	4.8	156	Dizel	250500	Mexaniki	Arxa	f	7000	4118	4468146	Elməddin	(050) 514-03-04	2020-11-17
5034	Bakı	BMW	528	2012	Sedan	Qara	2	245	Benzin	130000	Avtomat	Arxa	f	36550	21500	4468102	Huseyn	(051) 888-82-22	2020-11-17
5035	Bakı	Toyota	Prado	2006	Offroader / SUV	Gümüşü	2.7	167	Benzin	305000	Avtomat	Tam	f	25400	14941	4468148	Rafail	(051) 510-00-89	2020-11-17
5036	Bakı	Mercedes	C 240	2000	Sedan	Gümüşü	2.6	177	Benzin	299000	Avtomat	Arxa	f	10500	6176	4468063	Babək	(050) 338-80-18	2020-11-17
5037	Bakı	Opel	Insignia	2010	Universal	Yaş Asfalt	2	195	Dizel	150000	Mexaniki	Ön	f	18900	11118	4467920	Nebi	(055) 611-77-53	2020-11-17
5038	Bakı	Mercedes	E 300	1988	Sedan	Göy	3	177	Benzin	234700	Mexaniki	Ön	f	5300	3118	4468152	Yadulla	(050) 615-44-14	2020-11-17
5039	Bakı	Chevrolet	Malibu	2017	Sedan	Gümüşü	1.5	160	Benzin	93000	Avtomat	Ön	f	22000	12941	4421406	Hilal	(050) 609-28-23	2020-11-17
5040	Bakı	Kia	Cerato	2014	Sedan	Yaş Asfalt	1.6	132	Benzin	126100	Avtomat	Ön	f	22600	13294	4467857	Qurban	(055) 491-00-19	2020-11-17
5041	Bakı	LADA (VAZ)	XRAY	2019	Hetçbek / Liftbek	Ağ	1.8	122	Benzin	14000	Mexaniki	Ön	f	19400	11412	4468159	Fuad	(055) 685-55-58	2020-11-17
5042	Bakı	Hyundai	Grandeur	2013	Sedan	Qara	3	250	Benzin	145000	Avtomat	Ön	f	28000	16471	4468164	Yaqub	(055) 380-63-63	2020-11-17
5043	Bakı	Mercedes	C 220	2001	Sedan	Gümüşü	2.2	143	Dizel	261171	Avtomat	Arxa	f	14800	8706	4468161	Rəşad	(050) 885-07-06	2020-11-17
5044	Şəmkir	LADA (VAZ)	2106	1988	Sedan	Gümüşü	1.5	65	Benzin	150000	Mexaniki	Arxa	f	5500	3235	4468169	Vaqif	(051) 355-57-67	2020-11-17
5045	Bakı	Kia	Sorento	2004	Offroader / SUV	Qara	2.5	170	Dizel	313428	Avtomat	Tam	f	14500	8529	4468172	Məhəmməd	(055) 400-27-18	2020-11-17
5046	Bakı	KamAz	5410	1980	Dartqı	Qırmızı	11	191	Dizel	9999999	Mexaniki	Arxa	f	85000	50000	4468175	Royal	(051) 663-39-26	2020-11-17
5047	Bakı	Tesla	Model S	2014	Sedan	Qara	0	422	Elektro	85000	Avtomat	Arxa	f	78200	46000	4468176	Pərviz	(051) 566-66-63	2020-11-17
5048	Bakı	Toyota	Corolla	1995	Sedan	Ağ	1.6	115	Benzin	220556	Mexaniki	Ön	f	3000	1765	4468245	Eleddin	(077) 565-55-50	2020-11-17
5049	Bakı	Hyundai	Veracruz	2008	Offroader / SUV	Qara	3.8	260	Benzin	149000	Avtomat	Tam	f	21500	12647	4468237	ilkin	(070) 544-44-92	2020-11-17
5050	Gəncə	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	160	Benzin	153000	Avtomat	Ön	f	18500	10882	4468256	Samir	(055) 509-40-87	2020-11-17
5051	Bakı	Toyota	Avalon	2014	Sedan	Qara	3.5	268	Benzin	73000	Avtomat	Ön	f	52722	31013	4468253	Bəhram	(070) 433-33-94	2020-11-17
5052	Bakı	BMW	740	2009	Sedan	Boz	3	326	Benzin	216000	Avtomat	Arxa	f	33830	19900	4468073	Orxan	(055) 505-50-28	2020-11-17
5053	Bakı	Hyundai	Santa Fe	2006	Offroader / SUV	Qara	2.2	175	Dizel	190000	Avtomat	Tam	f	18500	10882	4413688	sukur 	(077) 717-10-11	2020-11-17
5054	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	174000	Avtomat	Ön	f	11500	6765	4434683	Anar	(050) 540-39-85	2020-11-17
5055	Bakı	BMW	520	1992	Sedan	Yaşıl	2	150	Benzin	353787	Avtomat	Arxa	f	4000	2353	4468076	Anar	(070) 775-51-51	2020-11-17
5056	Bakı	Ford	Transit	1999	Furqon	Ağ	2.5	96	Dizel	200000	Mexaniki	Arxa	f	15500	9118	4468087	Elçin 	(050) 300-87-82	2020-11-17
5057	Xaçmaz	LADA (VAZ)	2107	1999	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	4600	2706	4468093	Faiq	(070) 357-03-88	2020-11-17
5058	Bakı	Hyundai	Santa Fe	2012	Offroader / SUV	Qara	2	184	Dizel	42000	Avtomat	Ön	f	35900	21118	4468094	Polad	(050) 334-95-98	2020-11-17
5059	Bakı	Hyundai	Accent	2014	Hetçbek / Liftbek	Qara	1.6	132	Benzin	97000	Avtomat	Ön	f	16800	9882	4468100	Niyazi	(050) 253-17-53	2020-11-17
5060	Bakı	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	29000	Mexaniki	Arxa	f	5700	3353	4468106	Abdulla 	(050) 753-86-92	2020-11-17
5061	Bakı	Kia	Morning	2016	Hetçbek / Liftbek	Tünd qırmızı	1	80	Benzin	35000	Avtomat	Ön	f	15700	9235	4468104	Orxan	(055) 300-71-93	2020-11-17
5062	Bakı	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	215100	Mexaniki	Ön	f	9200	5412	4467971	afiq	(055) 877-22-06	2020-11-17
5063	Biləsuvar	Nissan	X-Trail	2003	Offroader / SUV	Qızılı	2	175	Benzin	175194	Avtomat	Tam	f	11800	6941	4467972	Nəriman	(051) 970-80-01	2020-11-17
5064	Bakı	Daewoo	Gentra	2013	Sedan	Yaş Asfalt	1.5	107	Benzin	67000	Avtomat	Ön	f	15500	9118	4467973	Ceyhun	(050) 519-27-53	2020-11-17
5065	Bakı	Renault	Master	2006	Furqon	Ağ	2.5	120	Dizel	376000	Mexaniki	Ön	f	12500	7353	4467983	Aqşin	(070) 865-09-96	2020-11-17
5066	Bakı	Infiniti	G35	2005	Offroader / SUV	Qara	3.5	310	Benzin	119500	Avtomat	Arxa	f	12800	7529	4467987	Riad	(055) 460-44-34	2020-11-17
5067	Bakı	Chevrolet	Cruze	2014	Sedan	Göy	1.4	141	Benzin	140000	Avtomat	Ön	f	13850	8147	4467990	Elvin	(055) 415-57-35	2020-11-17
5068	Bakı	Mercedes	C 180	2000	Sedan	Göy	1.8	122	Benzin	354712	Avtomat	Arxa	f	12700	7471	4467992	Vüsal	(055) 815-32-32	2020-11-17
5069	Sumqayıt	LADA (VAZ)	2107	2008	Sedan	Ağ	1.5	65	Benzin	340000	Mexaniki	Arxa	f	6200	3647	4468000	Nurlan	(070) 623-81-97	2020-11-17
5070	Saatlı	GAZ	33021	1997	Yük maşını	Sarı	2	75	Benzin	345679	Mexaniki	Arxa	f	5800	3412	4468002	Firdovsi	(050) 780-02-79	2020-11-17
5071	Bakı	LADA (VAZ)	21099	1995	Sedan	Göy	1.5	75	Benzin	125000	Mexaniki	Ön	f	3300	1941	4468010	Rafik	(070) 872-28-48	2020-11-17
5072	Bakı	LADA (VAZ)	2107	2006	Sedan	Tünd qırmızı	1.5	65	Benzin	196000	Mexaniki	Arxa	f	7500	4412	4468016	Эмиль 	(050) 633-47-20	2020-11-17
5073	Masallı	Mercedes	C 230	1999	Sedan	Gümüşü	2.3	193	Benzin	228000	Avtomat	Arxa	f	12500	7353	4468019	Heybət	(050) 205-99-51	2020-11-17
5074	Gəncə	LADA (VAZ)	2107	1989	Sedan	Bej	1.5	65	Benzin	180000	Mexaniki	Tam	f	3700	2176	4468028	Razim	(055) 972-80-37	2020-11-17
5075	Bakı	Hyundai	ix20	2010	Hetçbek / Liftbek	Qara	1.6	126	Benzin	132000	Avtomat	Ön	f	15500	9118	4468035	Aza	(070) 640-42-24	2020-11-17
5076	Xırdalan	LADA (VAZ)	21099	1996	Sedan	Yaşıl	1.5	75	Benzin	276000	Mexaniki	Ön	f	3800	2235	4468034	Esqin	(070) 739-38-06	2020-11-17
5077	Gəncə	LADA (VAZ)	2106	1990	Sedan	Tünd qırmızı	1.6	75	Benzin	227500	Mexaniki	Arxa	f	3900	2294	4468040	Subhan	(055) 713-97-17	2020-11-17
5078	Bakı	Mercedes	190	1990	Sedan	Qara	1.8	109	Benzin	353200	Mexaniki	Arxa	f	6500	3824	4468048	Kenan	(055) 707-71-78	2020-11-17
5079	Bakı	Chevrolet	Aveo	2012	Sedan	Qara	1.4	100	Benzin	196748	Mexaniki	Ön	f	9300	5471	4468055	Seyyaf	(055) 565-09-89	2020-11-17
5080	Bakı	Muravey	Muravey- 2 01	2020	Motosiklet	Göy	0.2	50	Benzin	20	Mexaniki	Arxa	t	3700	2176	4468057	Resad	(070) 624-42-46	2020-11-17
5081	Bakı	Chevrolet	Cruze	2014	Sedan	Yaşıl	1.4	141	Benzin	83400	Avtomat	Ön	f	14200	8353	4468058	vidadi	(050) 510-60-10	2020-11-17
5082	Qazax	Daewoo	Lanos	1997	Sedan	Ağ	1.5	85	Benzin	307114	Mexaniki	Ön	f	1500	882	4468064	Elcan 	(055) 986-48-68	2020-11-17
5083	Bakı	Mercedes	E 320	2001	Sedan	Ağ	3.2	224	Benzin	356000	Avtomat	Arxa	f	23800	14000	4468110	Hüseyn	(055) 911-43-43	2020-11-17
5084	Bakı	Mercedes	Vito	1996	Minivan	Mavi	2.2	150	Benzin	293000	Mexaniki	Ön	f	10500	6176	4468114	Necef	(070) 317-23-37	2020-11-17
5085	Goranboy	LADA (VAZ)	2110	2007	Sedan	Boz	1.6	80	Benzin	200000	Mexaniki	Ön	f	7400	4353	4468118	Kazim	(055) 365-65-40	2020-11-17
5086	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2.4	178	Benzin	186000	Avtomat	Ön	f	19900	11706	4468123	Nahid	(051) 569-20-90	2020-11-17
5087	Bakı	Mercedes	E 200	1993	Sedan	Ağ	2	136	Benzin	410000	Avtomat	Arxa	f	6800	4000	4468124	Qasım	(055) 858-61-98	2020-11-17
5088	Şamaxı	Ford	Transit	1999	Furqon	Ağ	2.5	76	Dizel	150000	Mexaniki	Arxa	f	15200	8941	4467897	Mehdi	(055) 624-24-27	2020-11-17
5089	Kürdəmir	Opel	Astra	1999	Universal	Qara	2	136	Dizel	300000	Mexaniki	Ön	f	8000	4706	4467900	Seymur	(050) 774-31-53	2020-11-17
5090	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Boz	1.4	90	Benzin	156100	Mexaniki	Ön	f	12400	7294	4467848	Saxavat	(070) 215-53-52	2020-11-17
5091	Gəncə	Kia	Rio	2013	Hetçbek / Liftbek	Qara	1.6	122	Benzin	90000	Avtomat	Ön	f	14500	8529	4467904	RESAD	(055) 529-45-45	2020-11-17
5092	Cəlilabad	LADA (VAZ)	2114	2008	Sedan	Qara	1.5	75	Benzin	12000	Mexaniki	Ön	f	8000	4706	4467908	Maarif	(051) 615-13-33	2020-11-17
5093	Bakı	Renault	Megane	2009	Universal	Göy	1.5	110	Dizel	160000	Mexaniki	Ön	f	10900	6412	4467913	Çingiz	(055) 764-56-74	2020-11-17
5094	Gəncə	BMW	528	2014	Sedan	Boz	2	245	Benzin	119000	Avtomat	Arxa	f	42330	24900	4408946	Vüqar	(055) 746-21-29	2020-11-17
5095	Gəncə	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	119000	Avtomat	Tam	f	15900	9353	4467917	Anar	(055) 262-01-38	2020-11-17
5096	Qəbələ	Daewoo	Gentra	2013	Sedan	Qara	1.5	107	Benzin	250000	Mexaniki	Ön	f	11500	6765	4467924	Elməddin	(077) 321-55-21	2020-11-17
5097	Bakı	Chevrolet	Equinox	2018	Offroader / SUV	Boz	1.5	182	Benzin	39000	Avtomat	Ön	f	31110	18300	4467927	Samir	(070) 695-95-36	2020-11-17
5098	Bakı	Ford	Escort	1998	Hetçbek / Liftbek	Qırmızı	1.6	125	Benzin	60740	Mexaniki	Ön	f	3500	2059	4467928	Ceyhun	(050) 759-07-09	2020-11-17
5099	Bakı	Ford	Tourneo Connect	2012	Furqon	Ağ	1.8	115	Dizel	231000	Mexaniki	Ön	f	12700	7471	4467930	Ramil	(055) 735-46-56	2020-11-17
5100	Xaçmaz	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	195000	Mexaniki	Tam	f	15500	9118	4467947	Meherrem	(099) 813-99-09	2020-11-17
5101	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2	150	Benzin	170000	Avtomat	Tam	f	22400	13176	4440994	Elmir	(070) 581-44-04	2020-11-17
5102	Bakı	Kia	Sorento	2012	Offroader / SUV	Ağ	2.4	178	Benzin	169800	Avtomat	Ön	f	28900	17000	4441039	Sexavet	(050) 885-88-89	2020-11-17
5103	Neftçala	Hyundai	Elantra	1995	Sedan	Ağ	1.3	85	Benzin	250000	Mexaniki	Ön	f	4000	2353	4467951	Anar	(055) 516-73-33	2020-11-17
5104	Quba	LADA (VAZ)	2106	1994	Sedan	Ağ	1.5	65	Benzin	140000	Mexaniki	Arxa	f	5500	3235	4467825	Əhməd	(070) 208-08-49	2020-11-17
5105	Bakı	BMW	523	1998	Sedan	Yaşıl	2.5	192	Benzin	425000	Avtomat	Arxa	f	9500	5588	4467826	Emil	(055) 527-84-96	2020-11-17
5106	Bakı	Mercedes	Sprinter 313	2013	Avtobus	Ağ	2.2	150	Dizel	263000	Mexaniki	Arxa	f	43000	25294	4467831	Mahir	(077) 760-16-36	2020-11-17
5107	Bakı	Mercedes	C 230	2003	Sedan	Gümüşü	1.8	192	Benzin	269000	Avtomat	Arxa	f	12000	7059	4467829	Rüfət	(070) 378-30-90	2020-11-17
5108	Bakı	Mercedes	E 280	2001	Sedan	Gümüşü	2.8	204	Benzin	180363	Avtomat	Arxa	f	17600	10353	4424805	Taleh	(055) 220-76-79	2020-11-17
5109	Bakı	Kia	Rio	2012	Sedan	Qara	1.4	107	Benzin	98000	Mexaniki	Ön	f	14200	8353	4467842	Firuz	(055) 750-92-29	2020-11-17
5110	Bakı	Yamaha	Crux	2020	Motosiklet	Ağ	0.1	20	Elektro	40	Avtomat	Arxa	t	1700	1000	4467843	Emin	(050) 480-41-30	2020-11-17
5111	Bərdə	LADA (VAZ)	2107	2004	Sedan	Ağ	1.5	65	Benzin	30876	Mexaniki	Arxa	f	6500	3824	4467847	Samir 	(051) 919-00-15	2020-11-17
5112	Qusar	LADA (VAZ)	Kalina	2009	Universal	Gümüşü	1.4	89	Benzin	175000	Mexaniki	Ön	f	9200	5412	4467849	Ravil	(077) 535-72-79	2020-11-17
5113	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Bej	1.5	76	Benzin	124000	Avtomat	Ön	f	11000	6471	4467856	Ramin	(050) 633-86-88	2020-11-17
5114	Ağdaş	Mercedes	E 200	1997	Sedan	Gümüşü	2	136	Benzin	334000	Avtomat	Arxa	f	10700	6294	4467864	Anar	(050) 897-83-18	2020-11-17
5115	Bakı	Mercedes	ML 350	2009	Offroader / SUV	Qara	3.5	272	Benzin	143792	Avtomat	Tam	f	31500	18529	4434066	Игорь	(055) 392-02-37	2020-11-17
5116	İmişli	Mercedes	190	1992	Sedan	Ağ	2	122	Dizel	236980	Avtomat	Arxa	f	8400	4941	4467868	Cavid	(050) 969-39-27	2020-11-17
5117	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	138000	Avtomat	Ön	f	12300	7235	4467871	Fuad	(055) 383-43-83	2020-11-17
5118	Bərdə	Ford	Transit	1994	Mikroavtobus	Ağ	2.5	125	Dizel	200000	Mexaniki	Arxa	f	11000	6471	4467877	Orxan	(050) 621-30-21	2020-11-17
5119	Neftçala	Opel	Astra	2007	Universal	Qızılı	1.4	90	Benzin	200000	Mexaniki	Ön	f	11500	6765	4467878	Alim	(070) 301-30-35	2020-11-17
5120	Zaqatala	Opel	Astra	1995	Universal	Göy	1.6	101	Benzin	896000	Mexaniki	Ön	f	4700	2765	4467879	Nail	(077) 495-00-62	2020-11-17
5121	Quba	LADA (VAZ)	2107	2012	Sedan	Tünd qırmızı	1.6	75	Benzin	88000	Mexaniki	Arxa	f	7800	4588	4467881	Mahammad	(055) 405-24-44	2020-11-17
5122	Sumqayıt	Mercedes	190	1992	Sedan	Qara	2	122	Benzin	753333	Mexaniki	Arxa	f	7000	4118	4467886	Aga	(050) 835-88-63	2020-11-17
5123	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	173000	Avtomat	Ön	f	15300	9000	4448217	Resad	(055) 608-34-35	2020-11-17
5124	Bakı	Opel	Astra	2007	Sedan	Boz	1.3	97	Dizel	164000	Mexaniki	Ön	f	12000	7059	4467959	Rəşad	(050) 305-58-91	2020-11-17
5125	Bakı	Mercedes	E 320	2005	Sedan	Yaş Asfalt	3.2	224	Benzin	238000	Avtomat	Arxa	f	19300	11353	4445605	Ramin	(050) 787-31-60	2020-11-17
5126	İsmayıllı	LADA (VAZ)	2106	1987	Sedan	Ağ	1.5	65	Benzin	345605	Mexaniki	Arxa	f	4700	2765	4467961	Elman	(050) 874-45-50	2020-11-17
5127	Bakı	Hyundai	Terracan	2006	Offroader / SUV	Qara	2.9	180	Dizel	222000	Avtomat	Tam	f	14900	8765	4467967	Rasul	(055) 232-06-87	2020-11-17
5128	Şəki	Ford	Transit	1994	Mikroavtobus	Ağ	2.5	76	Dizel	325800	Mexaniki	Arxa	f	10400	6118	4457941	Xeyyam	(055) 219-49-88	2020-11-17
5129	Bakı	Mercedes	E 270	2000	Sedan	Boz	2.7	170	Dizel	300000	Avtomat	Arxa	f	14400	8471	4467770	Nicat	(070) 437-00-77	2020-11-17
5130	Neftçala	Kia	Optima	2012	Sedan	Ağ	2	274	Benzin	150990	Avtomat	Arxa	f	22900	13471	4467771	Elmeddin 	(051) 636-23-83	2020-11-17
5131	Quba	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	87747	Mexaniki	Arxa	f	6400	3765	4467777	Tey	(070) 492-76-62	2020-11-17
5132	Bakı	Kia	Cerato	2016	Sedan	Gümüşü	1.6	130	Dizel	34000	Avtomat	Ön	f	22900	13471	4408030	Emil	(070) 380-50-70	2020-11-17
5133	Bərdə	LADA (VAZ)	2106	1996	Sedan	Ağ	1.5	65	Benzin	146000	Mexaniki	Arxa	f	4450	2618	4467781	Ramil	(055) 736-00-67	2020-11-17
5134	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	224587	Avtomat	Ön	f	12200	7176	4458788	Kamil	(077) 304-92-60	2020-11-17
5135	Yevlax	LADA (VAZ)	Niva	1978	Offroader / SUV	Ağ	1.7	80	Benzin	380000	Mexaniki	Arxa	f	4000	2353	4467787	Fazil	(050) 311-92-40	2020-11-17
5136	Bakı	Hyundai	Genesis Coupe	2010	Kupe	Sarı	3.8	345	Benzin	230000	Avtomat	Arxa	f	19600	11529	4467791	Terlan	(070) 377-90-94	2020-11-17
5137	Bakı	Chevrolet	Cruze	2015	Sedan	Yaş Asfalt	1.4	141	Benzin	99245	Avtomat	Ön	f	14500	8529	4418458	Kamil	(070) 363-57-14	2020-11-17
5138	Bakı	Mercedes	E 220	2011	Sedan	Qara	2.2	170	Dizel	280000	Avtomat	Arxa	f	30000	17647	4456547	Feqan	(070) 949-88-98	2020-11-17
5139	Bakı	Hummer	H2	2006	Offroader / SUV	Qara	6	325	Qaz	177000	Avtomat	Tam	f	38250	22500	4467795	Sahib	(055) 734-99-27	2020-11-17
5140	Bakı	GAZ	3110	1999	Sedan	Göy	2	136	Benzin	750000	Mexaniki	Arxa	f	3700	2176	4467794	Sefer	(055) 497-27-53	2020-11-17
5141	Goranboy	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	122000	Avtomat	Tam	f	41300	24294	4459663	Münasib	(050) 621-76-27	2020-11-17
5142	Şəki	Mercedes	E 220	2002	Sedan	Ağ	2.2	170	Dizel	300000	Avtomat	Arxa	f	18000	10588	4467805	Yaqub	(055) 663-33-55	2020-11-17
5143	Bakı	Renault	Megane	2012	Universal	Ağ	1.5	110	Dizel	211000	Mexaniki	Ön	f	14500	8529	4467803	  Fəqan	(055) 334-88-76	2020-11-17
5144	Bakı	Opel	Astra	1998	Universal	Gümüşü	1.6	101	Benzin	283000	Mexaniki	Ön	f	9200	5412	4467717	Ceyhun	(050) 545-10-95	2020-11-17
5145	Gəncə	Mitsubishi	Airtrek	2002	Offroader / SUV	Gümüşü	2	240	Benzin	263412	Avtomat	Tam	f	10500	6176	4467720	Elsen	(077) 408-46-58	2020-11-17
5146	Gəncə	Mercedes	E 220	2000	Sedan	Yaşıl	2.2	143	Dizel	450000	Avtomat	Arxa	f	14000	8235	4467682	Seymur	(070) 324-77-39	2020-11-17
5147	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Göy	1.8	125	Benzin	156456	Avtomat	Ön	f	9500	5588	4467723	Hüsein	(070) 903-07-06	2020-11-17
5148	Bakı	LADA (VAZ)	Priora	2014	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	131700	Mexaniki	Ön	f	11400	6706	4467722	Sahib	(070) 659-44-59	2020-11-17
5149	Bakı	Lexus	LX 470	2006	Offroader / SUV	Qara	4.7	275	Benzin	235000	Avtomat	Tam	f	33150	19500	4467726	Cabbar	(050) 648-10-91	2020-11-17
5150	Quba	Mercedes	E 220	2011	Sedan	Qara	2.2	170	Dizel	234000	Avtomat	Arxa	f	30000	17647	4467731	Ibrahim	(051) 353-71-13	2020-11-17
5151	Ağsu	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	189000	Mexaniki	Arxa	f	5800	3412	4467730	Heydər	(050) 622-84-31	2020-11-17
5152	Bakı	Mercedes	E 220	1994	Sedan	Gümüşü	2.2	170	Benzin	400000	Avtomat	Arxa	f	10400	6118	4467738	Kamran	(077) 466-19-01	2020-11-17
5153	Bakı	BMW	320	1998	Sedan	Göy	2	150	Benzin	316719	Avtomat	Arxa	f	9000	5294	4467740	Mehman	(055) 508-80-02	2020-11-17
5154	Quba	GAZ	3110	2003	Sedan	Gümüşü	2.3	131	Benzin	230000	Mexaniki	Arxa	f	4000	2353	4467739	Firuz	(070) 971-88-78	2020-11-17
5155	Zaqatala	Mercedes	C 180	1997	Sedan	Göy	1.8	122	Benzin	441000	Mexaniki	Arxa	f	10000	5882	4467749	Samir	(077) 593-29-55	2020-11-17
5156	Bakı	Chery	Tiggo	2008	Offroader / SUV	Ağ	2	150	Benzin	142000	Avtomat	Ön	f	9000	5294	4467750	Natiq	(077) 638-38-38	2020-11-17
5157	Bakı	Volkswagen	Golf	1997	Hetçbek / Liftbek	Qara	2	105	Benzin	258500	Avtomat	Ön	f	6000	3529	4467758	Emil	(055) 220-59-41	2020-11-17
5158	Bakı	Toyota	Corolla	2005	Universal	Gümüşü	1.4	125	Dizel	237500	Mexaniki	Ön	f	12700	7471	4467760	Mehemmed	(070) 477-41-11	2020-11-17
5159	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	158241	Avtomat	Tam	f	50660	29800	4467768	Vüsal	(050) 242-34-44	2020-11-17
5160	Bakı	Mercedes	E 280	2007	Sedan	Yaş Asfalt	3	231	Benzin	115000	Avtomat	Arxa	f	27500	16176	4467811	Elşad	(050) 218-61-56	2020-11-17
5161	Bakı	Ford	Fusion	2016	Sedan	Ağ	1.5	181	Benzin	80000	Avtomat	Ön	f	18800	11059	4436377	Rasim	(070) 300-45-65	2020-11-17
5162	Bakı	Saipa	Saina	2018	Sedan	Boz	1.5	75	Benzin	193000	Mexaniki	Tam	f	11000	6471	4467813	Eldar	(055) 258-58-21	2020-11-17
5163	Bakı	Hyundai	Sonata	2008	Sedan	Qara	2.4	178	Benzin	301000	Avtomat	Ön	f	15900	9353	4467773	Terlan	(070) 669-84-46	2020-11-17
5164	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Qızılı	1.3	90	Dizel	182754	Mexaniki	Ön	f	11500	6765	4456928	Ilkin	(070) 566-22-99	2020-11-17
5165	Bakı	Toyota	Yaris	2007	Sedan	Ağ	1.3	110	Benzin	152256	Avtomat	Ön	f	11700	6882	4467673	Nadir	(070) 620-50-70	2020-11-17
5166	Bakı	Ford	Fusion	2016	Sedan	Boz	1.5	181	Benzin	88000	Avtomat	Ön	f	23000	13529	4467674	Zamin	(055) 760-70-29	2020-11-17
5167	Qax	Mercedes	Atego 815	2000	Yük maşını	Ağ	4.3	180	Dizel	686974	Mexaniki	Arxa	f	28500	16765	4467676	Rəşad	(055) 755-34-90	2020-11-17
5168	Şəki	LADA (VAZ)	21099	1998	Sedan	Yaşıl	1.5	75	Benzin	468379	Mexaniki	Ön	f	5300	3118	4467684	Osman	(055) 856-28-61	2020-11-17
5169	Bakı	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	160000	Mexaniki	Tam	f	6700	3941	4467687	Elnur	(050) 433-24-89	2020-11-17
5170	Balakən	Hyundai	Sonata	1996	Sedan	Ağ	1.8	110	Benzin	220000	Mexaniki	Ön	f	3500	2059	4467688	Гахраман	(050) 441-83-88	2020-11-17
5171	Bakı	Chevrolet	Cruze	2017	Sedan	Ağ	1.4	141	Benzin	79046	Avtomat	Ön	f	17000	10000	4467696	Rəhim	(077) 347-33-19	2020-11-17
5172	Sumqayıt	Opel	Astra	2005	Universal	Qara	1.9	100	Dizel	399907	Mexaniki	Ön	f	11000	6471	4467699	Teymur	(050) 458-94-34	2020-11-17
5173	Bakı	Renault	19	1998	Sedan	Göy	1.6	85	Benzin	220000	Mexaniki	Ön	f	3500	2059	4467703	Azer	(050) 644-91-03	2020-11-17
5174	Bakı	Kia	Rio	2009	Hetçbek / Liftbek	Qara	1.5	110	Dizel	178321	Mexaniki	Ön	f	12400	7294	4467697	Vuqar	(070) 438-86-86	2020-11-17
5175	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Qara	1.4	97	Benzin	187000	Mexaniki	Ön	f	12999	7646	4459688	Xəyal 	(055) 682-96-66	2020-11-17
5176	Neftçala	LADA (VAZ)	2106	1979	Sedan	Ağ	1.5	65	Benzin	222500	Mexaniki	Arxa	f	3200	1882	4467710	Samir	(050) 731-87-45	2020-11-17
5177	Bakı	Volkswagen	Golf	2003	Hetçbek / Liftbek	Göy	1.6	115	Benzin	250000	Avtomat	Ön	f	9000	5294	4467709	Seid	(055) 350-32-42	2020-11-17
5178	Bakı	Opel	Zafira	2006	Minivan	Yaş Asfalt	1.9	150	Dizel	340000	Avtomat	Ön	f	12300	7235	4467637	Sahibinden	(077) 700-00-82	2020-11-17
5179	Bakı	LADA (VAZ)	Niva	2005	Offroader / SUV	Ağ	1.7	90	Benzin	134000	Mexaniki	Tam	f	6450	3794	4467633	AZER 	(055) 204-11-18	2020-11-17
5180	Bakı	Great Wall	Voleex C30	2019	Sedan	Qara	1.5	97	Benzin	20000	Robotlaşdırılmış	Ön	f	20000	11765	4296037	Saleh	(050) 200-26-36	2020-11-17
5181	Bakı	BMW	530	2004	Sedan	Gümüşü	3	231	Benzin	226000	Avtomat	Arxa	f	22500	13235	4398544	Ruslan	(055) 655-04-05	2020-11-17
5182	Bakı	Mitsubishi	Pajero	1994	Offroader / SUV	Ağ	2.5	175	Dizel	380000	Avtomat	Tam	f	10500	6176	4467645	Əmrah	(055) 896-15-80	2020-11-17
5183	Bakı	Lexus	LX 470	2006	Offroader / SUV	Ağ	4.7	275	Benzin	189000	Avtomat	Tam	f	37400	22000	4467651	rustam	(055) 298-28-40	2020-11-17
5184	Bakı	Iran Khodro	Azsamand	2006	Sedan	Qırmızı	1.8	110	Benzin	325000	Mexaniki	Ön	f	3950	2324	4467658	Fariz	(050) 476-02-46	2020-11-17
5185	Bakı	BMW	523	1996	Sedan	Göy	2.5	170	Benzin	325326	Avtomat	Arxa	f	8500	5000	4467656	Orxan	(055) 791-21-97	2020-11-17
5186	Bakı	Toyota	Surf	1997	Offroader / SUV	Ağ	3.4	260	Benzin	287000	Avtomat	Tam	f	12900	7588	4374541	Kənan	(055) 613-15-15	2020-11-17
5187	Bakı	Mercedes	E 220	2011	Sedan	Qara	2.2	170	Dizel	173000	Avtomat	Arxa	f	37060	21800	4467663	Ceyhun	(050) 300-78-09	2020-11-17
5188	Bakı	Volkswagen	Jetta	2018	Sedan	Boz	1.4	122	Benzin	19000	Avtomat	Ön	f	32900	19353	4467660	Elçin	(051) 367-17-16	2020-11-17
5189	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Bej	1.4	90	Benzin	170000	Mexaniki	Ön	f	11000	6471	4467669	Vuqar	(050) 482-64-65	2020-11-17
5190	Bakı	Kia	Rio	2017	Sedan	Gümüşü	1.6	125	Benzin	72117	Avtomat	Ön	f	17000	10000	4446598	Mehemmed	(077) 731-71-10	2020-11-17
5191	Şirvan	Mercedes	C 180	1993	Sedan	Gümüşü	1.8	122	Benzin	399999	Avtomat	Arxa	f	7500	4412	4467712	Rauf	(055) 216-68-46	2020-11-17
5192	Bakı	Toyota	Camry	2015	Sedan	Gümüşü	2.5	181	Benzin	49000	Avtomat	Ön	f	33000	19412	4467578	Bəhruz	(070) 586-20-10	2020-11-17
5193	Bakı	LADA (VAZ)	Largus	2014	Universal	Ağ	1.6	106	Benzin	205001	Mexaniki	Ön	f	12000	7059	4467579	Osman 	(055) 588-87-11	2020-11-17
5194	Bakı	Mercedes	Sprinter 313	2007	Furqon	Ağ	2.2	156	Dizel	538000	Mexaniki	Arxa	f	29500	17353	4357507	Teymur	(055) 677-57-55	2020-11-17
5195	Bakı	Mercedes	Sprinter 313	2008	Furqon	Ağ	2.2	156	Dizel	138000	Mexaniki	Arxa	f	25800	15176	4327793	Teymur	(055) 677-57-55	2020-11-17
5196	Bakı	BMW	328	2014	Sedan	Boz	2.8	245	Benzin	62000	Avtomat	Arxa	f	35360	20800	4419659	Teyyub	(050) 684-00-02	2020-11-17
5197	Bakı	Ford	Transit	2010	Furqon	Göy	2.2	140	Dizel	106000	Mexaniki	Ön	f	20500	12059	4302479	Teymur	(055) 677-57-55	2020-11-17
5198	Bakı	Kia	Cerato	2013	Sedan	Qara	2	165	Benzin	102000	Avtomat	Ön	f	19000	11176	4364715	Mursud	(055) 348-38-39	2020-11-17
5199	Bakı	Mercedes	Sprinter 515	2008	Yük maşını	Ağ	2.2	156	Dizel	175000	Avtomat	Arxa	f	31500	18529	4262018	Teymur	(055) 677-57-55	2020-11-17
5200	Qazax	Ford	Transit	1998	Furqon	Bənövşəyi	2.5	96	Dizel	342000	Mexaniki	Arxa	f	16300	9588	4467587	Samir	(050) 373-87-20	2020-11-17
5201	Bakı	Ford	Transit	2009	Furqon	Ağ	2.4	115	Dizel	177000	Mexaniki	Arxa	f	24700	14529	4193538	Teymur	(055) 677-57-55	2020-11-17
5202	Bakı	Chevrolet	Cruze	2012	Sedan	Ağ	1.4	141	Benzin	190000	Avtomat	Ön	f	13600	8000	4467595	Uğur 	(070) 353-55-45	2020-11-17
5203	Şəmkir	LADA (VAZ)	2115	2012	Sedan	Yaş Asfalt	1.5	78	Benzin	138500	Mexaniki	Ön	f	9300	5471	4467593	Nicat	(050) 558-97-99	2020-11-17
5204	Bakı	Kia	Cerato	2006	Hetçbek / Liftbek	Mavi	1.6	132	Benzin	170000	Avtomat	Ön	f	12500	7353	4467596	İlqar	(050) 210-48-12	2020-11-17
5205	Bakı	Changan	Alsvin V7	2018	Sedan	Ağ	1.5	110	Benzin	210000	Avtomat	Ön	f	13000	7647	4467522	Camal	(055) 826-14-64	2020-11-17
5206	Bakı	Mercedes	C 250	2013	Sedan	Ağ	1.8	204	Benzin	74000	Avtomat	Arxa	f	27300	16059	4467526	Elcin	(050) 966-85-70	2020-11-17
5207	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	300000	Mexaniki	Ön	f	11500	6765	4467525	Cəlal	(055) 512-99-63	2020-11-17
5208	Bakı	BMW	730	2004	Sedan	Boz	3	218	Dizel	350000	Avtomat	Arxa	f	16500	9706	4467523	Sahib	(050) 388-64-93	2020-11-17
5209	Bakı	Mercedes	E 240	2000	Sedan	Qara	2.4	170	Benzin	190000	Avtomat	Arxa	f	14800	8706	4467534	İsmayıl	(070) 680-15-95	2020-11-17
5210	Bərdə	ZAZ	Slavuta	2004	Sedan	Yaşıl	1.2	43	Benzin	271000	Mexaniki	Ön	f	2800	1647	4467535	Malik	(055) 643-17-45	2020-11-17
5211	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Qara	3	190	Benzin	151000	Avtomat	Tam	f	23800	14000	4467539	Samir	(050) 300-77-00	2020-11-17
5212	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2	165	Benzin	100000	Avtomat	Ön	f	20000	11765	4467543	Hidayət	(055) 212-65-65	2020-11-17
5213	Bakı	Lexus	NX 200	2018	Offroader / SUV	Yaş Asfalt	2	150	Benzin	39600	Avtomat	Ön	f	63750	37500	4467544	Vuqar	(099) 875-75-79	2020-11-17
5214	Bakı	LADA (VAZ)	2107	1998	Sedan	Ağ	1.5	65	Benzin	255000	Mexaniki	Arxa	f	4800	2824	4467546	Toğrul	(050) 965-78-05	2020-11-17
5215	Salyan	LADA (VAZ)	2110	2011	Sedan	Yaş Asfalt	1.6	85	Benzin	175000	Mexaniki	Ön	f	7800	4588	4467550	Rayiq	(050) 387-11-93	2020-11-17
5216	Bakı	Opel	Insignia	2012	Sedan	Qara	2	220	Benzin	153000	Avtomat	Ön	f	17700	10412	4467552	Qalib	(050) 490-66-30	2020-11-17
5217	Bakı	Mercedes	GL 550	2013	Offroader / SUV	Qara	5.5	382	Benzin	191798	Avtomat	Tam	f	81600	48000	4467558	Tural	(051) 406-33-33	2020-11-17
5218	Bakı	Mercedes	E 240	2001	Sedan	Ağ	2.4	177	Benzin	229500	Avtomat	Arxa	f	15500	9118	4467561	Serxan	(070) 541-00-00	2020-11-17
5219	Şabran	KamAz	55111	1986	Yük maşını	Boz	11	191	Dizel	900000	Mexaniki	Arxa	f	20000	11765	4467562	Kenan	(070) 503-34-11	2020-11-17
5220	Sumqayıt	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2.7	188	Benzin	167000	Avtomat	Tam	f	22000	12941	4467569	Elmar	(050) 768-76-63	2020-11-17
5221	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	137000	Avtomat	Ön	f	12500	7353	4436955	Ceyhun	(070) 717-20-07	2020-11-17
5222	Bakı	Hyundai	i30	2012	Universal	Qara	1.6	128	Dizel	141500	Avtomat	Ön	f	16300	9588	4467575	Elnur	(055) 444-17-17	2020-11-17
5224	Bakı	Ford	Transit	2008	Yük maşını	Göy	2.4	140	Dizel	143000	Mexaniki	Arxa	f	29500	17353	4302939	Teymur	(055) 677-57-55	2020-11-17
5225	Bakı	Mercedes	E 240	2002	Sedan	Gümüşü	2.6	177	Benzin	219000	Avtomat	Arxa	f	15500	9118	4375400	Nazim	(055) 277-77-87	2020-11-17
5226	Bakı	Toyota	Prius	2007	Sedan	Mavi	1.5	76	Hibrid	167111	Avtomat	Ön	f	14000	8235	4467600	Rashad	(050) 333-99-99	2020-11-17
5227	Bakı	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	340000	Avtomat	Arxa	f	12000	7059	4467604	Orxan	(055) 884-94-34	2020-11-17
5228	Gəncə	Mercedes	A 160	1999	Hetçbek / Liftbek	Göy	1.6	102	Benzin	199000	Avtomat	Ön	f	6300	3706	4467622	amin	(055) 528-84-14	2020-11-17
5229	Quba	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	200000	Mexaniki	Arxa	f	5900	3471	4440277	Ceyhun	(051) 715-95-00	2020-11-17
5230	İsmayıllı	Mercedes	190	1986	Sedan	Qızılı	2	122	Benzin	199000	Mexaniki	Arxa	f	4800	2824	4467500	Şaiq	(050) 716-67-63	2020-11-17
5231	Bakı	BMW	530	2008	Sedan	Qara	3	258	Benzin	186500	Avtomat	Arxa	f	24500	14412	4467508	Zahir	(055) 515-70-01	2020-11-17
5232	Şirvan	GAZ	3110	2004	Sedan	Gümüşü	2.3	131	Benzin	168800	Mexaniki	Arxa	f	2850	1676	4467509	Tahir	(055) 736-68-24	2020-11-17
5233	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	184000	Avtomat	Tam	f	29500	17353	4449858	Elcin	(055) 488-33-93	2020-11-17
5234	Lənkəran	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	108807	Mexaniki	Tam	f	14500	8529	4467510	Təsim	(051) 368-80-00	2020-11-17
5235	Şəmkir	LADA (VAZ)	2107	2010	Sedan	Ağ	1.5	65	Benzin	50000	Mexaniki	Arxa	f	8800	5176	4467514	Şahin	(050) 559-38-08	2020-11-17
5236	Cəlilabad	LADA (VAZ)	2107	2006	Sedan	Narıncı	1.6	75	Benzin	53829	Mexaniki	Arxa	f	6000	3529	4467513	Yusif	(050) 525-65-73	2020-11-17
5237	Bakı	Renault	Scenic	2009	Minivan	Qara	1.5	110	Dizel	280000	Mexaniki	Ön	f	13515	7950	4467443	Samir	(077) 305-15-66	2020-11-17
5238	Bakı	Nissan	Pathfinder	2005	Offroader / SUV	Göy	2.5	190	Dizel	380000	Avtomat	Tam	f	19999	11764	4467448	Vidadi	(050) 300-35-58	2020-11-17
5239	Bakı	Khazar	LX	2020	Sedan	Ağ	1.7	113	Benzin	62000	Mexaniki	Ön	f	15800	9294	4467456	Mail	(055) 562-82-46	2020-11-17
5240	Gəncə	Mercedes	E 250	1994	Sedan	Boz	2.5	150	Dizel	346666	Mexaniki	Arxa	f	10500	6176	4467460	Qehraman 	(055) 437-60-80	2020-11-17
5241	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	249600	Avtomat	Arxa	f	16700	9824	4467459	Elçin	(070) 815-15-32	2020-11-17
5242	Bakı	GAZ	3110	1999	Sedan	Yaşıl	2.5	100	Benzin	112999	Mexaniki	Arxa	f	3700	2176	4467453	Ilham	(055) 298-71-23	2020-11-17
5243	Bakı	Mercedes	CLA 250	2013	Sedan	Gümüşü	2	211	Benzin	92000	Avtomat	Arxa	f	33000	19412	4467457	Samir	(055) 253-03-51	2020-11-17
5244	Bakı	Khazar	LX	2020	Sedan	Ağ	1.7	113	Benzin	30000	Mexaniki	Ön	f	11000	6471	4467461	İsmayıl	(051) 927-97-37	2020-11-17
5245	Bakı	BMW	528	2012	Sedan	Yaş Asfalt	2	245	Benzin	160000	Avtomat	Tam	f	33150	19500	4467146	Kamran	(055) 267-67-87	2020-11-17
5246	Bakı	Mercedes	B 180	2010	Hetçbek / Liftbek	Ağ	1.7	116	Benzin	71000	Avtomat	Ön	f	15000	8824	4467462	Zaur	(050) 245-22-43	2020-11-17
5247	Gəncə	LADA (VAZ)	2112	2005	Hetçbek / Liftbek	Qara	1.5	75	Benzin	280000	Mexaniki	Tam	f	5400	3176	4467465	Eleddin	(055) 747-13-64	2020-11-17
5248	Mingəçevir	Hyundai	Sonata	2003	Sedan	Yaşıl	2	136	Benzin	292000	Avtomat	Ön	f	8400	4941	4467472	EmiL	(070) 305-45-45	2020-11-17
5249	Bakı	Mercedes	E 200	1993	Sedan	Qızılı	2	136	Dizel	280000	Mexaniki	Arxa	f	8000	4706	4467483	Aga	(070) 841-93-33	2020-11-17
5250	Bakı	Mercedes	E 250	2011	Sedan	Qara	1.8	204	Benzin	175000	Avtomat	Arxa	f	35700	21000	4467484	Serxan	(070) 731-47-21	2020-11-17
5251	Yevlax	LADA (VAZ)	2107	2006	Sedan	Ağ	1.5	65	Benzin	147635	Mexaniki	Arxa	f	6300	3706	4467491	Ramil	(050) 565-59-25	2020-11-17
5252	Bakı	Hyundai	i30	2008	Universal	Qara	1.6	125	Dizel	176502	Mexaniki	Ön	f	13666	8039	4467492	Vuqar	(055) 753-96-95	2020-11-17
5253	Bakı	Toyota	Camry	2013	Sedan	Qara	2.5	181	Benzin	280000	Avtomat	Ön	f	33660	19800	4467495	Fuad	(050) 390-70-08	2020-11-17
5254	Bakı	Opel	Vita	1999	Hetçbek / Liftbek	Qırmızı	1.4	90	Benzin	270000	Avtomat	Ön	f	6000	3529	4467498	Mehman	(070) 710-83-53	2020-11-17
5255	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	122000	Avtomat	Arxa	f	17000	10000	4467516	CESUR	(050) 496-66-88	2020-11-17
5256	Bakı	Mercedes	C 230	1998	Sedan	Qara	2.3	193	Benzin	374290	Avtomat	Arxa	f	11400	6706	4467517	Akif	(070) 355-54-28	2020-11-17
5257	Naftalan	Land Rover	Freelander	2005	Offroader / SUV	Boz	2.5	170	Benzin	195574	Avtomat	Tam	f	8500	5000	4467520	Ramin	(070) 859-08-09	2020-11-17
5258	Sumqayıt	Hyundai	Sonata	2015	Sedan	Qara	2	165	Benzin	67000	Avtomat	Ön	f	32800	19294	4467518	Elvin	(050) 773-02-08	2020-11-17
5259	Bakı	Toyota	Prius	2014	Hetçbek / Liftbek	Ağ	1.8	99	Hibrid	104000	Avtomat	Ön	f	19900	11706	4458872	Toğrul	(055) 899-59-39	2020-11-17
5260	Bakı	Toyota	Corolla	2006	Sedan	Qara	1.8	150	Benzin	236000	Avtomat	Ön	f	13800	8118	4441837	Feruz	(050) 573-00-02	2020-11-17
5261	Bakı	Renault	Megane	2006	Universal	Yaşıl	1.6	101	Benzin	265000	Mexaniki	Ön	f	10500	6176	4456163	Ömer	(050) 555-74-12	2020-11-17
5262	Bakı	Ford	Transit	1998	Yük maşını	Ağ	2.5	76	Dizel	389000	Mexaniki	Arxa	f	17500	10294	4416997	Sahil	(050) 769-24-35	2020-11-17
5263	Bakı	BMW	525	1997	Hetçbek / Liftbek	Gümüşü	2.5	192	Benzin	385200	Avtomat	Arxa	f	10600	6235	4467393	Rafiq	(070) 755-83-33	2020-11-17
5265	Bakı	Mercedes	C 200	1999	Sedan	Göy	2	136	Benzin	277178	Avtomat	Arxa	f	13300	7824	4467412	Doktor	(050) 244-55-02	2020-11-17
5266	Bakı	LADA (VAZ)	2106	2005	Sedan	Göy	1.6	75	Benzin	355000	Mexaniki	Arxa	f	5900	3471	4467419	Samir	(077) 449-00-90	2020-11-17
5267	Bakı	Mercedes	E 240	1998	Sedan	Qara	2.4	170	Benzin	312700	Avtomat	Arxa	f	13000	7647	4467420	Elçin	(051) 725-37-67	2020-11-17
5268	Bakı	BMW	745	2003	Sedan	Qara	4.4	333	Benzin	173000	Avtomat	Arxa	f	14600	8588	4467408	Terlan 	(050) 691-42-40	2020-11-17
5269	Bakı	Mercedes	E 280	2006	Sedan	Qara	3	231	Benzin	285000	Avtomat	Arxa	f	18200	10706	4467423	Emil	(050) 782-73-07	2020-11-17
5270	Xırdalan	Ford	Tourneo Connect	2011	Furqon	Ağ	1.8	90	Dizel	164000	Mexaniki	Ön	f	13500	7941	4467426	Ramin 	(050) 235-92-04	2020-11-17
5271	Bakı	Daewoo	Nexia	1997	Sedan	Yaşıl	1.5	75	Benzin	388888	Mexaniki	Ön	f	4500	2647	4467428	Elnur	(070) 202-95-11	2020-11-17
5272	Sumqayıt	LADA (VAZ)	2110	2010	Sedan	Gümüşü	1.6	80	Benzin	227000	Mexaniki	Ön	f	8800	5176	4467433	Temkin	(070) 800-61-21	2020-11-17
5273	Bakı	Saipa	Saina	2019	Sedan	Göy	1.5	85	Benzin	36789	Mexaniki	Ön	f	11000	6471	4467435	Tural	(050) 889-87-89	2020-11-17
5264	Bakı	Ford	Fusion	2014	Sedan	Gümüşü	2	240	Benzin	113300	Avtomat	Ön	f	22900	13471	4467409	Iman	(070) 835-16-06	2020-11-17
5274	Sumqayıt	GAZ	33021	1998	Yük maşını	Boz	2.4	96	Benzin	128000	Mexaniki	Arxa	f	7000	4118	4467436	Cahid	(050) 885-89-82	2020-11-17
5275	Bakı	Kia	Sorento	2009	Offroader / SUV	Gümüşü	2.2	197	Dizel	65000	Avtomat	Ön	f	25500	15000	4409404	Serxan	(070) 333-03-30	2020-11-17
5276	Bakı	Toyota	Corolla	2012	Sedan	Yaş Asfalt	1.8	148	Benzin	106000	Avtomat	Ön	f	18500	10882	4426404	ömər	(050) 305-19-57	2020-11-17
5277	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	140000	Mexaniki	Arxa	f	7500	4412	4467345	Əliyar	(050) 553-12-07	2020-11-17
5278	Bakı	Hyundai	i30	2008	Universal	Boz	1.6	140	Dizel	220000	Mexaniki	Ön	f	12800	7529	4467346	Elçin	(070) 392-52-12	2020-11-17
5279	Şəki	Mercedes	E 230	1997	Sedan	Gümüşü	2.3	150	Benzin	370000	Avtomat	Arxa	f	11200	6588	4467350	Murad	(055) 608-44-78	2020-11-17
5280	Şirvan	Chevrolet	Cruze	2016	Sedan	Gümüşü	1.4	141	Benzin	280000	Avtomat	Ön	f	16300	9588	4467360	Rəşad	(055) 625-53-50	2020-11-17
5281	Bakı	Iran Khodro	Azsamand	2007	Sedan	Boz	1.8	110	Benzin	513000	Mexaniki	Ön	f	3600	2118	4467361	Rafael	(077) 623-43-00	2020-11-17
5282	Masallı	Mercedes	S 350	2003	Sedan	Ağ	3.5	272	Benzin	270000	Avtomat	Arxa	f	13000	7647	4467287	Elgun	(050) 821-27-61	2020-11-17
5283	Yevlax	Ford	Transit	1999	Furqon	Bej	2.4	96	Dizel	314956	Mexaniki	Arxa	f	13700	8059	4467363	Əhməd	(051) 684-95-95	2020-11-17
5284	Bakı	Lifan	330	2014	Hetçbek / Liftbek	Ağ	1.4	90	Benzin	48000	Avtomat	Ön	f	7950	4676	4467365	Rüfət	(050) 299-03-05	2020-11-17
5285	Bakı	Kia	Optima	2014	Sedan	Qara	2	165	Benzin	54000	Avtomat	Ön	f	34800	20471	4409516	Orxan	(055) 400-54-94	2020-11-17
5286	Bakı	Mercedes	E 220	2004	Sedan	Göy	2.2	143	Dizel	443114	Avtomat	Arxa	f	16800	9882	4467367	Ilqar	(055) 224-39-29	2020-11-17
5287	Bakı	Kia	Optima	2008	Sedan	Qara	2	144	Benzin	270000	Avtomat	Ön	f	15400	9059	4458757	ELSƏVƏR	(055) 841-55-85	2020-11-17
5288	Bakı	Mercedes	E 320	2005	Sedan	Qara	3.2	224	Benzin	235000	Avtomat	Arxa	f	21500	12647	4447608	Ilkin	(050) 357-77-75	2020-11-17
5289	Bakı	Hyundai	Accent	2008	Sedan	Ağ	1.5	110	Dizel	171777	Mexaniki	Ön	f	11700	6882	4467374	Əziz	(070) 574-91-71	2020-11-17
5290	Bakı	Ford	Transit	2011	Furqon	Ağ	2.4	120	Dizel	315000	Mexaniki	Arxa	f	21500	12647	4431299	Ramil	(050) 769-47-53	2020-11-17
5291	Sabirabad	Mercedes	C 220	1995	Sedan	Gümüşü	2.2	143	Benzin	555555	Avtomat	Arxa	f	8500	5000	4467382	Elsad	(055) 400-85-80	2020-11-17
5292	Bakı	Opel	Astra	2008	Universal	Boz	1.4	90	Benzin	143000	Mexaniki	Ön	f	12100	7118	4442836	Aslan	(055) 925-72-42	2020-11-17
5293	Bakı	Nissan	Sunny	2007	Sedan	Qızılı	1.3	90	Benzin	280000	Mexaniki	Ön	f	8400	4941	4467394	Elburus	(070) 225-43-33	2020-11-17
5294	Bakı	Jeep	Wrangler	2018	Offroader / SUV	Ağ	2	280	Benzin	29500	Avtomat	Tam	f	64600	38000	4428372	Amar	(050) 800-00-12	2020-11-17
5295	Bakı	Hyundai	i30	2008	Universal	Gümüşü	1.6	122	Dizel	169175	Avtomat	Ön	f	16700	9824	4467438	Mahir	(050) 459-55-48	2020-11-17
5296	Göyçay	Iveco	EuroStar	1998	Yük maşını	Ağ	13	310	Dizel	496000	Mexaniki	Arxa	f	45050	26500	4478560	Orxan	(050) 201-16-26	2020-11-17
5297	Bakı	Kia	Sportage	2013	Offroader / SUV	Ağ	2	184	Benzin	61000	Avtomat	Tam	f	26500	15588	4467316	Saxriyar	(055) 422-23-11	2020-11-17
5298	Bakı	Mercedes	Vito 113	2012	Van	Yaş Asfalt	2.2	170	Dizel	198000	Mexaniki	Arxa	f	28000	16471	4467317	Faiq	(050) 212-54-93	2020-11-17
5299	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	154000	Mexaniki	Ön	f	10500	6176	4467319	Ramil	(055) 519-19-16	2020-11-17
5300	Bakı	Hyundai	Santa Fe	2011	Offroader / SUV	Qara	2	185	Dizel	40000	Avtomat	Ön	f	23900	14059	4467336	kenan	(050) 645-72-22	2020-11-17
5301	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Boz	1.8	99	Benzin	140000	Variator	Ön	f	15800	9294	4467332	FƏDAİ	(051) 525-41-41	2020-11-17
5302	Bakı	LADA (VAZ)	2107	1999	Sedan	Göy	1.5	65	Benzin	500000	Mexaniki	Arxa	f	4600	2706	4467339	İbrahim	(055) 280-34-02	2020-11-17
5303	Şəmkir	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	189000	Avtomat	Arxa	f	14200	8353	4467343	Fizuli	(070) 894-76-26	2020-11-17
5305	Bakı	Porsche	Cayenne GTS	2013	Offroader / SUV	Qara	4.8	386	Benzin	103000	Avtomat	Tam	f	65450	38500	4182504	Avtosalon "555"	(055) 442-31-91	2020-11-17
5306	Bakı	Hyundai	ix55	2012	Offroader / SUV	Ağ	3.8	264	Benzin	30000	Avtomat	Tam	f	38760	22800	4182529	Avtosalon "555"	(055) 442-31-91	2020-11-17
5307	Bakı	Toyota	Camry	2014	Sedan	Qara	2.5	181	Benzin	150000	Avtomat	Ön	f	43010	25300	4182517	Avtosalon "555"	(055) 442-31-91	2020-11-17
5308	Bakı	Opel	Vectra	1997	Universal	Gümüşü	2.5	180	Benzin	305000	Avtomat	Ön	f	10000	5882	4467296	Həsən	(050) 415-63-25	2020-11-17
5309	Bakı	Chevrolet	Niva	2014	Offroader / SUV	Yaşıl	1.7	80	Benzin	69000	Mexaniki	Tam	f	15700	9235	4467247	Elçin	(050) 333-08-18	2020-11-17
5310	Bakı	Hyundai	Grandeur	2013	Sedan	Ağ	2.4	180	Benzin	151000	Avtomat	Ön	f	32000	18824	4467248	Cahid	(050) 399-11-98	2020-11-17
5311	Bakı	LADA (VAZ)	2107	2001	Sedan	Göy	1.6	75	Benzin	243340	Mexaniki	Arxa	f	3700	2176	4467253	Nihat	(050) 449-58-32	2020-11-17
5312	Bakı	LADA (VAZ)	2115	2004	Sedan	Gümüşü	1.5	75	Benzin	200000	Mexaniki	Ön	f	6200	3647	4467258	Nurlan	(055) 531-11-45	2020-11-17
5313	Xırdalan	Toyota	Prado	2008	Offroader / SUV	Ağ	2.7	167	Benzin	148000	Avtomat	Tam	f	34800	20471	4467262	MÖHÖBBƏT	(050) 443-39-39	2020-11-17
5314	Bakı	GMC	Acadia	2008	Offroader / SUV	Qara	3.6	288	Benzin	148989	Avtomat	Tam	f	20000	11765	4467250	Perviz	(055) 658-90-96	2020-11-17
5315	Bakı	Mercedes	E 300	2010	Sedan	Ağ	3	231	Benzin	165000	Avtomat	Arxa	f	33660	19800	3888457	Anar	(055) 387-00-03	2020-11-17
5316	Balakən	Infiniti	EX35	2012	Offroader / SUV	Ağ	3.5	306	Benzin	72000	Avtomat	Tam	f	26000	15294	4467266	Polad	(051) 576-63-36	2020-11-17
5317	Saatlı	Mercedes	E 320	2001	Sedan	Qara	3.2	224	Benzin	190542	Avtomat	Arxa	f	15600	9176	4467271	Talib	(050) 740-37-02	2020-11-17
5318	Bakı	Mercedes	E 240	2003	Sedan	Qara	2.6	177	Benzin	260000	Avtomat	Arxa	f	15500	9118	4467272	Zamiq	(055) 251-13-73	2020-11-17
5319	Bakı	Changan	CX 20	2014	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	88000	Avtomat	Ön	f	11400	6706	4466997	Kamran	(070) 600-07-17	2020-11-17
5320	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	100000	Avtomat	Ön	f	15600	9176	4467169	Rəşad	(055) 311-16-38	2020-11-17
5321	Bakı	Kia	Sorento	2018	Offroader / SUV	Yaş Asfalt	2.2	197	Dizel	30000	Avtomat	Tam	f	53500	31471	4467273	Elçin	(055) 709-55-95	2020-11-17
5322	Bakı	Mercedes	190	1991	Sedan	Gümüşü	1.8	109	Benzin	286000	Avtomat	Arxa	f	4300	2529	4467280	Araz	(070) 250-24-66	2020-11-17
5323	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	101500	Avtomat	Ön	f	18400	10824	4467283	imameli	(050) 670-19-74	2020-11-17
5324	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Qara	1.7	80	Benzin	8739	Mexaniki	Tam	f	17500	10294	4467282	Azər	(050) 694-90-10	2020-11-17
5325	Bakı	Ford	Transit	2010	Yük maşını	Ağ	2.4	140	Dizel	175828	Mexaniki	Arxa	f	30000	17647	4467290	Ramil	(070) 512-38-27	2020-11-17
5326	Bakı	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	200000	Mexaniki	Arxa	f	4500	2647	4467292	Mahir	(051) 816-61-41	2020-11-17
5327	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	65000	Avtomat	Tam	f	78030	45900	3722170	Avtosalon "555"	(055) 442-31-91	2020-11-17
5328	Bakı	Mercedes	E 220	2012	Sedan	Qara	2.2	170	Dizel	127000	Avtomat	Arxa	f	38760	22800	4264929	Avtosalon "555"	(055) 442-31-91	2020-11-17
5329	Bakı	Fiat	Doblo	2014	Minivan	Ağ	1.4	92	Benzin	193700	Mexaniki	Ön	f	22500	13235	4467300	Rafiq m.	(050) 250-13-75	2020-11-17
5330	Lənkəran	Chevrolet	Aveo	2013	Sedan	Ağ	1.4	100	Benzin	150000	Mexaniki	Ön	f	11200	6588	4467173	Sahib	(051) 453-21-21	2020-11-17
5331	Bakı	Hyundai	Elantra	2014	Sedan	Gümüşü	1.8	141	Benzin	77500	Avtomat	Ön	f	17800	10471	4467303	Nizami	(055) 407-70-04	2020-11-17
5332	Bakı	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	100000	Mexaniki	Arxa	f	6700	3941	4467304	Huseyn	(050) 323-19-50	2020-11-17
5333	Bakı	Ford	Fusion	2019	Sedan	Göy	1.5	181	Benzin	30000	Avtomat	Ön	f	26900	15824	4450423	Araz	(055) 511-56-11	2020-11-17
5334	Sumqayıt	Opel	Astra	1995	Universal	Boz	1.6	101	Benzin	243894	Mexaniki	Ön	f	4600	2706	4467218	Ayaz	(055) 253-55-72	2020-11-17
5335	Bakı	Mercedes	190	1991	Sedan	Qara	1.8	109	Benzin	122360	Avtomat	Arxa	f	5400	3176	4467223	Kenan	(077) 743-93-13	2020-11-17
5336	Bakı	Land Rover	RR Sport	2006	Offroader / SUV	Qara	4.2	286	Benzin	111526	Avtomat	Tam	f	30000	17647	4467219	Emin	(055) 206-18-89	2020-11-17
5337	Bakı	Kia	Cerato	2014	Sedan	Yaş Asfalt	1.8	180	Benzin	78435	Avtomat	Ön	f	21500	12647	4467228	Seyid	(077) 410-29-21	2020-11-17
5338	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	75000	Avtomat	Ön	f	18500	10882	4408936	Rafiq	(050) 414-74-54	2020-11-17
5339	Bakı	Mercedes	C 220	2011	Universal	Qara	2.2	170	Dizel	198177	Avtomat	Arxa	f	26500	15588	4467236	Vurqun	(050) 635-02-05	2020-11-17
5340	Bakı	Chevrolet	Cruze	2011	Sedan	Qızılı	1.4	141	Benzin	124412	Avtomat	Ön	f	12900	7588	4464833	Turan	(050) 214-08-81	2020-11-17
5341	Bakı	Nissan	X-Trail	2004	Offroader / SUV	Qızılı	2	175	Benzin	160000	Avtomat	Tam	f	13500	7941	4467237	Süleyman	(055) 733-32-72	2020-11-17
5342	Bakı	GAZ	24-10	1985	Sedan	Bej	2.4	90	Benzin	116000	Mexaniki	Arxa	f	3700	2176	4467233	Cavid	(050) 728-88-80	2020-11-17
5343	Bakı	Infiniti	FX35	2007	Offroader / SUV	Ağ	3.5	280	Benzin	234000	Avtomat	Tam	f	18500	10882	4467238	Elman	(055) 771-37-36	2020-11-17
5344	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Ağ	1.7	80	Benzin	9000	Mexaniki	Tam	f	16800	9882	4467239	Babek	(055) 332-12-32	2020-11-17
5345	Bakı	Mercedes	E 240	2001	Sedan	Gümüşü	2.4	170	Benzin	198000	Avtomat	Arxa	f	17500	10294	4467241	Altun	(055) 232-85-90	2020-11-17
5346	Mingəçevir	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.3	90	Dizel	215000	Mexaniki	Ön	f	10800	6353	4467171	Vusal	(051) 569-97-97	2020-11-17
5347	Bakı	Hyundai	Veracruz	2007	Offroader / SUV	Ağ	3.8	260	Benzin	297000	Avtomat	Ön	f	23000	13529	4467175	Abdullah	(070) 600-01-99	2020-11-17
5348	Quba	Mitsubishi	Pajero	2007	Offroader / SUV	Qara	3	190	Benzin	182000	Avtomat	Tam	f	19400	11412	4387770	Orxan	(051) 229-92-45	2020-11-17
5349	Bakı	Hyundai	Santa Fe	2015	Offroader / SUV	Ağ	2.4	178	Benzin	87000	Avtomat	Tam	f	29800	17529	4464156	Seyıd	(050) 896-65-79	2020-11-17
5350	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2.4	178	Benzin	52000	Avtomat	Ön	f	25500	15000	4467179	Murshud	(055) 999-92-23	2020-11-17
5351	Bakı	Mercedes	E 220	2014	Sedan	Qara	2.2	170	Dizel	160000	Avtomat	Arxa	f	47600	28000	4467182	Vusal	(050) 697-97-52	2020-11-17
5352	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	185000	Avtomat	Ön	f	19800	11647	4467180	Səfər	(050) 314-98-55	2020-11-17
5353	Bərdə	Mercedes	190	1992	Sedan	Göy	2	122	Benzin	258654	Mexaniki	Arxa	f	4800	2824	4467185	Gurwad	(055) 484-99-94	2020-11-17
5354	Astara	Mercedes	190	1989	Sedan	Qara	1.8	109	Dizel	250000	Avtomat	Arxa	f	7300	4294	4467191	Mahir	(055) 318-28-58	2020-11-17
5355	Bakı	Great Wall	Voleex C30	2013	Sedan	Ağ	1.5	105	Benzin	135000	Avtomat	Ön	f	13800	8118	4467203	Parviz	(050) 405-81-18	2020-11-17
5356	Bakı	Porsche	Panamera Turbo S	2009	Hetçbek / Liftbek	Ağ	4.8	550	Benzin	114000	Avtomat	Arxa	f	59500	35000	4467201	Aga	(050) 211-42-77	2020-11-17
5357	Bakı	BMW	525	2000	Sedan	Qara	2.5	192	Benzin	38400	Avtomat	Arxa	f	12800	7529	4453031	Araz	(055) 427-30-30	2020-11-17
5358	Masallı	LADA (VAZ)	2107	1997	Sedan	Ağ	1.6	75	Benzin	345125	Mexaniki	Arxa	f	4200	2471	4467205	HACI	(077) 362-02-02	2020-11-17
5359	Gəncə	LADA (VAZ)	2106	1983	Sedan	Yaşıl	1.6	75	Benzin	179000	Mexaniki	Arxa	f	3800	2235	4467207	Elçin	(055) 885-06-03	2020-11-17
5360	Bakı	Mercedes	E 200	2012	Sedan	Boz	1.8	184	Benzin	180000	Avtomat	Tam	f	32470	19100	4467208	Azad	(055) 861-87-84	2020-11-17
5361	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Boz	1.4	90	Benzin	137000	Mexaniki	Ön	f	12300	7235	4467209	Rövşən	(070) 226-44-49	2020-11-17
5362	Bakı	Daewoo	Damas	2007	Furqon	Ağ	0.8	53	Benzin	123456	Mexaniki	Arxa	f	3000	1765	4467048	Murad	(050) 653-80-00	2020-11-17
5363	Bakı	Hyundai	Elantra	2016	Sedan	Bej	1.6	132	Benzin	141000	Avtomat	Ön	f	23500	13824	4467198	Miri	(050) 855-20-37	2020-11-17
5364	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	100000	Mexaniki	Tam	f	10900	6412	4467245	Terlan	(055) 255-00-17	2020-11-17
5365	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	220000	Mexaniki	Ön	f	10400	6118	4409062	Ramil	(050) 653-12-99	2020-11-17
5366	Bakı	Volkswagen	Jetta	2008	Sedan	Ağ	1.6	115	Benzin	180000	Avtomat	Arxa	f	11000	6471	4416165	Əli	(050) 622-44-68	2020-11-17
5367	Sumqayıt	Hyundai	Accent	2011	Sedan	Ağ	1.6	140	Benzin	109952	Avtomat	Ön	f	16700	9824	4467121	Emil	(055) 567-40-78	2020-11-17
5368	Neftçala	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.7	185	Benzin	280000	Avtomat	Tam	f	22000	12941	4467111	Tofiq	(077) 550-60-99	2020-11-17
5369	Bakı	Opel	Astra	2010	Universal	Ağ	1.4	90	Dizel	260000	Mexaniki	Ön	f	13000	7647	4467126	Rafiq	(055) 609-55-32	2020-11-17
5370	Bakı	Toyota	Auris	2007	Hetçbek / Liftbek	Qızılı	1.4	96	Dizel	110000	Mexaniki	Ön	f	13800	8118	4467122	Ramil	(055) 336-34-34	2020-11-17
5371	Bakı	Infiniti	FX35	2008	Offroader / SUV	Qara	3.5	306	Benzin	155000	Avtomat	Tam	f	28560	16800	4467124	Ayaz	(050) 387-07-39	2020-11-17
5372	Saatlı	Mercedes	E 230	1996	Sedan	Gümüşü	2.3	150	Benzin	500000	Avtomat	Arxa	f	11600	6824	4467114	Eli	(070) 711-70-11	2020-11-17
5373	Bakı	Mercedes	Viano	2013	Van	Ağ	3	224	Dizel	108000	Avtomat	Arxa	f	53210	31300	4287681	Mehman	(070) 677-44-33	2020-11-17
5374	Quba	Ford	Transit	2004	Furqon	Ağ	2.5	125	Dizel	483282	Mexaniki	Arxa	f	19500	11471	4467140	Vidadi	(070) 620-67-67	2020-11-17
5375	Ağstafa	Opel	Astra	1997	Sedan	Qırmızı	2	136	Benzin	212000	Mexaniki	Ön	f	6800	4000	4467147	Şamil	(050) 462-84-50	2020-11-17
5376	Bakı	Opel	Astra	2000	Sedan	Ağ	1.6	101	Benzin	190000	Avtomat	Ön	f	8500	5000	4467151	Mamed	(070) 873-38-30	2020-11-17
5377	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	192000	Avtomat	Ön	f	18500	10882	4452847	Murvet	(055) 794-19-52	2020-11-17
5378	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	113000	Avtomat	Ön	f	22500	13235	4467160	Resad	(055) 527-77-77	2020-11-17
5379	Bakı	BMW	X5	2005	Offroader / SUV	Qara	4.8	360	Benzin	200000	Avtomat	Tam	f	28900	17000	4467159	Ilham	(077) 557-59-43	2020-11-17
5380	Bakı	Mercedes	E 300	1999	Sedan	Qara	3	177	Dizel	316000	Avtomat	Arxa	f	14000	8235	4467070	Kamran	(050) 756-12-27	2020-11-17
5381	Qazax	LADA (VAZ)	2107	1997	Sedan	Yaşıl	1.6	75	Benzin	220000	Mexaniki	Arxa	f	3600	2118	4467072	Samir	(055) 393-68-70	2020-11-17
5382	Bakı	Iveco	Otoyol	2006	Avtobus	Ağ	4.5	150	Dizel	285000	Mexaniki	Arxa	f	12500	7353	4467059	Vüqar	(070) 654-72-43	2020-11-17
5383	Sumqayıt	Mercedes	C 180	1998	Sedan	Yaşıl	1.8	122	Benzin	325964	Avtomat	Arxa	f	11200	6588	4467074	Araz	(050) 668-31-04	2020-11-17
5384	Bakı	GAZ	330200	2012	Yük maşını	Ağ	2.9	75	Benzin	184750	Mexaniki	Arxa	f	13600	8000	4318843	Fəxri	(055) 211-11-16	2020-11-17
5385	Sumqayıt	BMW	325	1994	Sedan	Boz	2.5	192	Benzin	220000	Avtomat	Arxa	f	9500	5588	4467080	Refiqe xanim 	(055) 369-39-20	2020-11-17
5386	Saatlı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	140000	Mexaniki	Arxa	f	6700	3941	4467078	Zaur	(070) 838-82-28	2020-11-17
5387	Bakı	Kia	Optima	2013	Sedan	Boz	2	274	Benzin	74000	Avtomat	Ön	f	21500	12647	4467045	Rahil	(055) 293-98-73	2020-11-17
5388	Mingəçevir	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	274540	Avtomat	Arxa	f	18200	10706	4467085	Ilkin	(077) 432-80-41	2020-11-17
5389	Bakı	Mercedes	GL 550	2011	Offroader / SUV	Qara	5.5	388	Benzin	48000	Avtomat	Tam	f	60350	35500	4467086	Ali	(070) 288-00-18	2020-11-17
5390	Gəncə	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	213000	Mexaniki	Tam	f	9900	5824	4467088	Vuqar	(077) 677-04-71	2020-11-17
5391	Bakı	Foton	Forland	2007	Yük maşını	Göy	2.3	150	Dizel	130000	Mexaniki	Arxa	f	10500	6176	4467094	Rəşad	(070) 225-41-39	2020-11-17
5392	Bakı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	300000	Mexaniki	Arxa	f	4800	2824	4467097	Vuqar	(055) 700-40-31	2020-11-17
5393	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Qara	1.4	105	Benzin	226000	Mexaniki	Ön	f	11400	6706	4467098	Elşen	(055) 401-01-70	2020-11-17
5394	Xaçmaz	Opel	Astra	1997	Universal	Qızılı	1.6	101	Benzin	300000	Mexaniki	Tam	f	6100	3588	4467101	Elmiyar	(055) 912-59-31	2020-11-17
5395	Qazax	Mercedes	A 170	2005	Hetçbek / Liftbek	Ağ	1.7	116	Benzin	264178	Avtomat	Ön	f	12000	7059	4467100	Yeganə 	(055) 608-38-39	2020-11-17
5396	Bakı	Porsche	Panamera Turbo	2010	Hetçbek / Liftbek	Qara	4.8	510	Benzin	138000	Avtomat	Tam	f	54400	32000	4457252	Nurlan	(055) 514-55-14	2020-11-17
5397	Bərdə	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	230000	Avtomat	Tam	f	31700	18647	4467102	Amil	(050) 837-77-13	2020-11-17
5398	Bakı	Kia	Sorento	2010	Offroader / SUV	Ağ	2	184	Dizel	57500	Avtomat	Ön	f	26700	15706	4467103	Əli	(070) 202-57-75	2020-11-17
5399	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Qara	3	190	Benzin	165000	Avtomat	Tam	f	23700	13941	4467064	Eldar	(050) 278-04-32	2020-11-17
5400	Bakı	Hyundai	Azera	2013	Sedan	Ağ	3	250	Benzin	109000	Avtomat	Ön	f	31000	18235	4467161	Murad	(050) 889-89-87	2020-11-17
5401	Bakı	Toyota	Prius	2011	Hetçbek / Liftbek	Göy	1.8	99	Hibrid	250000	Avtomat	Ön	f	20500	12059	4467164	Amid	(050) 433-33-54	2020-11-17
5402	Bakı	Chevrolet	Trax	2017	Offroader / SUV	Boz	1.4	141	Benzin	72000	Avtomat	Ön	f	21200	12471	4467165	Rufet	(050) 375-45-61	2020-11-17
5403	Bakı	Changan	Eado	2014	Sedan	Gümüşü	1.6	125	Benzin	265000	Avtomat	Ön	f	11800	6941	4467168	Ramin	(070) 955-07-13	2020-11-17
5404	Bakı	Renault	Megane	2010	Universal	Yaş Asfalt	1.5	85	Dizel	197000	Mexaniki	Ön	f	13700	8059	4467162	Orxan	(055) 790-70-99	2020-11-17
5405	Bakı	Toyota	Corolla	2005	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Dizel	195000	Mexaniki	Ön	f	12900	7588	4443755	Akshin	(050) 302-29-26	2020-11-17
5406	Bakı	Chevrolet	Lacetti	2006	Sedan	Gümüşü	1.6	109	Benzin	265000	Avtomat	Ön	f	11600	6824	4467014	Rustam	(055) 795-00-30	2020-11-17
5407	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Qara	3.8	250	Benzin	191000	Avtomat	Tam	f	22800	13412	4419297	Azik	(055) 427-47-07	2020-11-17
5408	Bakı	Hyundai	Terracan	2003	Offroader / SUV	Ağ	2.9	167	Dizel	269000	Avtomat	Tam	f	13500	7941	4467016	Ramin	(070) 380-87-37	2020-11-17
5409	Bakı	BMW	528	2014	Sedan	Boz	2	245	Benzin	88000	Avtomat	Arxa	f	44540	26200	4467020	Omar	(050) 247-82-22	2020-11-17
5410	Bakı	Ford	Fiesta	1998	Hetçbek / Liftbek	Gümüşü	1.3	75	Benzin	65340	Avtomat	Ön	f	5400	3176	4467022	Kamil	(050) 649-89-31	2020-11-17
5411	Bakı	BMW	328	2015	Sedan	Ağ	2	245	Benzin	94000	Avtomat	Arxa	f	36550	21500	4467023	Murad	(051) 250-66-14	2020-11-17
5412	Bakı	Changan	Star	2007	Yük maşını	Ağ	1.1	90	Benzin	164000	Mexaniki	Arxa	f	4800	2824	4467021	Nofel	(099) 899-93-30	2020-11-17
5413	Salyan	LADA (VAZ)	2107	1999	Sedan	Ağ	1.6	75	Benzin	100000	Mexaniki	Tam	f	4000	2353	4467024	İlqar	(070) 589-85-00	2020-11-17
5414	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Qara	4	282	Benzin	149500	Avtomat	Tam	f	56950	33500	4467025	Zeyvar	(055) 310-44-00	2020-11-17
5415	Sumqayıt	Mercedes	E 230	1995	Sedan	Gümüşü	2.3	150	Benzin	450000	Robotlaşdırılmış	Arxa	f	8800	5176	4467027	Şerif	(055) 651-51-33	2020-11-17
5416	Sumqayıt	Moskvich	2141	1991	Hetçbek / Liftbek	Ağ	1.5	72	Benzin	316000	Mexaniki	Ön	f	1500	882	4467026	Elşən 	(055) 305-66-64	2020-11-17
5417	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	129000	Mexaniki	Tam	f	12900	7588	4467034	Orxan	(099) 888-80-16	2020-11-17
5418	Sumqayıt	Opel	Vectra	1999	Sedan	Göy	2	136	Benzin	288622	Avtomat	Ön	f	5900	3471	4460516	Cavad	(070) 620-30-93	2020-11-17
5419	Hacıqabul	KamAz	5410	1992	Dartqı	Boz	11	191	Dizel	100000	Mexaniki	Arxa	f	17000	10000	4466065	MEZAHIR	(051) 542-38-77	2020-11-17
5420	Bakı	Opel	Astra	1999	Universal	Göy	2	136	Benzin	320000	Avtomat	Ön	f	8500	5000	4466965	Əvəz	(050) 256-20-50	2020-11-17
5421	Bakı	Mercedes	S 350	2003	Sedan	Qara	3.7	270	Benzin	124365	Avtomat	Arxa	f	15400	9059	4466964	Namiq	(050) 621-14-97	2020-11-17
5422	Bakı	Mercedes	C 200	2009	Sedan	Qara	1.8	184	Benzin	180000	Avtomat	Ön	f	23300	13706	4294131	Cemal	(050) 410-10-49	2020-11-17
5423	Sabirabad	Mercedes	Sprinter 313	2008	Mikroavtobus	Ağ	2.2	170	Dizel	250000	Mexaniki	Arxa	f	28000	16471	4466969	Samir	(051) 617-22-55	2020-11-17
5424	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	272	Benzin	52347	Avtomat	Tam	f	75650	44500	4417636	Resad	(070) 505-11-24	2020-11-17
5425	Bakı	Changan	CS 75	2017	Offroader / SUV	Qara	1.8	177	Benzin	68000	Avtomat	Ön	f	29500	17353	4311676	Fuad	(070) 377-99-99	2020-11-17
5426	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	4	250	Benzin	234000	Avtomat	Tam	f	40800	24000	4466971	Mail	(055) 659-85-03	2020-11-17
5427	Bakı	Opel	Astra	2000	Universal	Göy	1.6	101	Benzin	250000	Mexaniki	Ön	f	8900	5235	4466974	Asif 	(050) 622-00-76	2020-11-17
5428	Bakı	LADA (VAZ)	2106	1991	Sedan	Ağ	1.5	65	Benzin	257770	Mexaniki	Arxa	f	3500	2059	4466981	Pervin	(050) 712-85-23	2020-11-17
5429	Bakı	BMW	525	2001	Sedan	Ağ	2.5	192	Benzin	255000	Avtomat	Arxa	f	13500	7941	4466980	Huseyn	(055) 204-98-98	2020-11-17
5430	Zaqatala	Mercedes	C 240	2000	Sedan	Boz	2.6	177	Benzin	398000	Avtomat	Arxa	f	10500	6176	4466988	Ferhad	(055) 322-84-85	2020-11-17
5431	Bakı	SEAT	Exeo	2011	Sedan	Ağ	2	211	Benzin	147000	Avtomat	Ön	f	12900	7588	4442312	Ramal	(055) 797-48-08	2020-11-17
5432	Lənkəran	PAZ	32054	1989	Avtobus	Sarı	3.5	175	Qaz	200000	Mexaniki	Arxa	f	3200	1882	4466989	Altay	(050) 386-64-61	2020-11-17
5433	Bərdə	Mercedes	E 220	2001	Sedan	Gümüşü	2.2	143	Dizel	269100	Avtomat	Arxa	f	17800	10471	4466999	Taleh	(050) 352-75-14	2020-11-17
5434	Bərdə	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	215421	Mexaniki	Arxa	f	5300	3118	4466996	Xaliq	(050) 727-10-49	2020-11-17
5435	Sabirabad	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	218699	Avtomat	Arxa	f	14500	8529	4467000	Əli	(055) 351-23-31	2020-11-17
5436	Bakı	Subaru	Forester	2014	Offroader / SUV	Ağ	2	241	Benzin	102000	Avtomat	Tam	f	27000	15882	3974172	Rizvan	(050) 637-87-86	2020-11-17
5437	Şəmkir	GAZ	2705-757	1997	Yük maşını	Mavi	2.5	96	Dizel	95000	Mexaniki	Arxa	f	13500	7941	4467005	Sərxan	(051) 441-28-20	2020-11-17
5438	Bakı	Toyota	Corolla	2013	Sedan	Qara	1.6	122	Benzin	130000	Avtomat	Ön	f	18300	10765	4467002	Punhan	(077) 557-96-17	2020-11-17
5439	Bakı	BMW	X5	2008	Offroader / SUV	Qara	3	287	Benzin	190000	Avtomat	Tam	f	32300	19000	4467010	Samir	(050) 616-78-09	2020-11-17
5440	Bakı	Kia	Optima	2014	Sedan	Qara	2.4	180	Benzin	74520	Avtomat	Ön	f	25500	15000	4467011	Tural	(070) 291-90-90	2020-11-17
5441	Şəmkir	Mercedes	E 240	2000	Sedan	Qara	2.4	170	Benzin	275000	Avtomat	Arxa	f	13800	8118	4467035	Anar	(050) 381-49-49	2020-11-17
5442	Sumqayıt	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	293000	Avtomat	Arxa	f	11400	6706	4467037	Elman	(055) 760-68-93	2020-11-17
5443	Bakı	BMW	328	2013	Sedan	Ağ	2	245	Benzin	203000	Avtomat	Arxa	f	26500	15588	4425871	Ağa	(050) 426-73-98	2020-11-17
5444	Kürdəmir	Hyundai	Sonata	2009	Sedan	Ağ	2.4	178	Benzin	243000	Avtomat	Arxa	f	20000	11765	4467047	Aqil	(050) 411-16-13	2020-11-17
5445	Bakı	Hyundai	Tucson	2005	Offroader / SUV	Mavi	2.7	175	Benzin	210000	Avtomat	Ön	f	15200	8941	4467044	Revan	(055) 479-41-34	2020-11-17
5446	Bakı	Honda	CR-V	2000	Offroader / SUV	Gümüşü	2	147	Benzin	299608	Avtomat	Tam	f	9700	5706	4467033	Fuad	(050) 287-99-15	2020-11-17
5447	Göygöl	LADA (VAZ)	21099	1998	Sedan	Göy	1.5	75	Benzin	357000	Mexaniki	Ön	f	7500	4412	4467063	İlkin	(055) 377-22-23	2020-11-17
5448	Bakı	Mercedes	S 320	1995	Sedan	Qəhvəyi	3.2	224	Benzin	237000	Avtomat	Arxa	f	7300	4294	4463042	Niyazi	(055) 831-05-40	2020-11-17
5449	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2.4	178	Benzin	64160	Avtomat	Ön	f	30900	18176	4429926	Emin	(050) 288-20-06	2020-11-17
5451	Bakı	BMC	Pro 832	2008	Yük maşını	Ağ	11	191	Dizel	150000	Mexaniki	Arxa	f	28000	16471	4466918	Əli	(077) 558-33-47	2020-11-17
5452	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	164000	Avtomat	Ön	f	13200	7765	4430935	Malik.	(050) 556-63-35	2020-11-17
5453	Gəncə	Mercedes	E 200	1996	Sedan	Göy	2	136	Benzin	271800	Avtomat	Arxa	f	10200	6000	4449388	Togrul 	(055) 470-58-69	2020-11-17
5454	Bakı	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.5	110	Benzin	84584	Avtomat	Ön	f	15800	9294	4466924	Rəşad	(070) 713-10-99	2020-11-17
5455	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Yaşıl	1.6	101	Benzin	239452	Mexaniki	Ön	f	8400	4941	4461940	Rəşad	(055) 240-91-54	2020-11-17
5456	Bakı	Mercedes	Sprinter 315	2008	Furqon	Ağ	2.2	150	Dizel	200000	Mexaniki	Arxa	f	28000	16471	4466925	Çingiz	(070) 725-75-33	2020-11-17
5457	İmişli	Changan	Eado	2016	Sedan	Qara	1.6	125	Benzin	105769	Avtomat	Tam	f	15000	8824	4466934	Vüqat	(051) 602-76-23	2020-11-17
5458	Bakı	Khazar	LX	2018	Sedan	Ağ	1.7	113	Benzin	91000	Mexaniki	Ön	f	17500	10294	4466939	Sahib	(051) 555-11-22	2020-11-17
5459	Şamaxı	LADA (VAZ)	2106	1990	Sedan	Ağ	1.6	75	Benzin	256523	Mexaniki	Arxa	f	4800	2824	4466947	Sebuhi	(051) 829-39-39	2020-11-17
5460	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Narıncı	1.5	110	Dizel	150000	Mexaniki	Ön	f	10600	6235	4466917	Turan	(055) 301-12-37	2020-11-17
5461	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.4	90	Benzin	195000	Mexaniki	Ön	f	10800	6353	4466820	Zaur	(055) 629-87-97	2020-11-17
5462	Bakı	Lexus	GS 300	2006	Sedan	Qara	3	249	Benzin	269000	Avtomat	Arxa	f	19800	11647	4466872	Fuad	(051) 411-14-00	2020-11-17
5463	Qazax	Hyundai	Accent	2017	Sedan	Qara	1.6	140	Benzin	27359	Avtomat	Ön	f	17500	10294	4466880	Şirxan	(055) 604-84-85	2020-11-17
5464	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	127000	Avtomat	Tam	f	42330	24900	4341839	Cahid	(070) 994-40-02	2020-11-17
5465	Bakı	Nissan	Maxima	2000	Sedan	Qara	3	225	Benzin	297800	Avtomat	Ön	f	9000	5294	4466885	Rəşad	(051) 877-71-02	2020-11-17
5466	Oğuz	LADA (VAZ)	2107	1990	Sedan	Boz	1.5	65	Benzin	250000	Mexaniki	Arxa	f	4300	2529	4466886	Elşad	(055) 240-00-31	2020-11-17
5467	Gəncə	Opel	Astra	2006	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	221368	Mexaniki	Ön	f	10600	6235	4447061	Şhaiq	(050) 879-14-62	2020-11-17
5468	Biləsuvar	LADA (VAZ)	2107	2000	Sedan	Qırmızı	1.5	65	Benzin	222536	Mexaniki	Arxa	f	4000	2353	4466896	Agasalam	(051) 344-87-66	2020-11-17
5469	Bakı	Ford	Focus	2016	Sedan	Ağ	2	163	Dizel	175000	Avtomat	Ön	f	18900	11118	4466890	İlqar	(050) 363-46-74	2020-11-17
5470	Bakı	Mercedes	E 350	2009	Sedan	Ağ	3.5	272	Benzin	119000	Avtomat	Tam	f	34340	20200	4466871	HƏSƏN	(050) 213-93-35	2020-11-17
5471	Gəncə	Audi	A4	2004	Sedan	Qara	1.8	163	Benzin	264000	Avtomat	Tam	f	9200	5412	4466897	ELVINN	(050) 454-16-23	2020-11-17
5472	Bakı	Daewoo	Matiz	2008	Hetçbek / Liftbek	Qırmızı	0.8	52	Benzin	157000	Avtomat	Arxa	f	7956	4680	4439034	Murad	(055) 887-33-29	2020-11-17
5473	Bakı	Opel	Astra	2003	Universal	Qara	1.6	101	Benzin	395000	Mexaniki	Ön	f	9700	5706	4466889	Ramil	(070) 921-80-01	2020-11-17
5474	Bakı	Ford	Transit	2007	Yük maşını	Ağ	2.2	175	Dizel	350000	Mexaniki	Ön	f	16500	9706	4466902	Nəcəf	(051) 402-42-72	2020-11-17
5475	Bakı	Hyundai	Accent	2012	Sedan	Mavi	1.6	140	Benzin	94000	Avtomat	Ön	f	14100	8294	4265265	Cahangir	(055) 500-83-62	2020-11-17
5476	Salyan	LADA (VAZ)	2107	2009	Sedan	Ağ	1.5	65	Benzin	62000	Mexaniki	Arxa	f	6800	4000	4466903	Şahin	(055) 452-99-19	2020-11-17
5477	Şəki	LADA (VAZ)	2106	2006	Sedan	Göy	1.6	75	Benzin	60250	Mexaniki	Arxa	f	6800	4000	4466904	Vahid	(051) 844-96-25	2020-11-17
5478	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Qızılı	2	141	Dizel	195000	Avtomat	Ön	f	16500	9706	4466905	Nicat	(050) 290-28-67	2020-11-17
5479	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	85	Dizel	255000	Mexaniki	Ön	f	8500	5000	4466901	Elşen	(050) 292-72-12	2020-11-17
5480	Bakı	Chevrolet	Cruze	2012	Sedan	Gümüşü	1.4	141	Benzin	144000	Avtomat	Ön	f	13500	7941	4466909	Ramiz	(051) 996-67-67	2020-11-17
5481	Bakı	BMW	535	2014	Sedan	Qara	3	313	Dizel	173000	Avtomat	Tam	f	62900	37000	4466911	ruslan	(050) 763-76-72	2020-11-17
5482	Bakı	GAZ	3110	1998	Sedan	Göy	2.4	131	Benzin	750000	Mexaniki	Arxa	f	3950	2324	4466954	Fariz	(055) 672-53-73	2020-11-17
5483	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	91300	Avtomat	Ön	f	16300	9588	4466955	Fuad	(055) 331-29-29	2020-11-17
5484	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Göy	1.7	80	Benzin	45000	Mexaniki	Tam	f	10000	5882	4466960	Mayis	(050) 255-26-10	2020-11-17
5485	Bakı	Lifan	320	2012	Hetçbek / Liftbek	Qara	1.3	89	Benzin	333333	Mexaniki	Ön	f	7000	4118	4466957	Mehdi	(050) 610-47-88	2020-11-17
5486	Bakı	Saipa	Saina	2020	Sedan	Tünd qırmızı	1.5	75	Benzin	140000	Mexaniki	Ön	f	15000	8824	4466844	imran	(077) 301-64-81	2020-11-17
5488	Bakı	BMW	530	2006	Sedan	Qara	3	231	Benzin	212000	Avtomat	Tam	f	19500	11471	4466717	Nurlan	(070) 244-54-45	2020-11-17
5489	Bakı	LADA (VAZ)	Niva	2018	Offroader / SUV	Qara	1.7	80	Benzin	21760	Mexaniki	Tam	f	18100	10647	4466855	Fexri	(070) 516-21-21	2020-11-17
5490	Gəncə	Mercedes	200 D	1992	Sedan	Ağ	2	150	Dizel	350000	Mexaniki	Arxa	f	6200	3647	4466848	Emin	(055) 689-24-77	2020-11-17
5491	Bakı	Opel	Vectra	1998	Hetçbek / Liftbek	Qızılı	1.6	101	Benzin	166666	Avtomat	Ön	f	6500	3824	4466857	Vusal	(050) 774-68-39	2020-11-17
5492	Bakı	Mitsubishi	Pajero	2016	Offroader / SUV	Ağ	3	190	Benzin	115000	Avtomat	Tam	f	48000	28235	4154426	Mais	(055) 220-93-30	2020-11-17
5493	Bakı	Honda	Accord	2008	Sedan	Qara	2.4	190	Benzin	273000	Avtomat	Ön	f	16300	9588	4466861	Rustem	(070) 448-50-55	2020-11-17
5494	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.3	90	Dizel	181000	Mexaniki	Ön	f	10700	6294	4433691	Ramin	(050) 223-20-82	2020-11-17
5495	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	83000	Avtomat	Ön	f	19300	11353	4457089	Namiq	(055) 206-06-23	2020-11-17
5496	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	155000	Avtomat	Arxa	f	17000	10000	4466864	Kenan	(070) 207-80-99	2020-11-17
5497	Bakı	Opel	Astra	2006	Sedan	Gümüşü	1.3	90	Dizel	270000	Mexaniki	Ön	f	10900	6412	4409900	Elvin	(055) 211-30-80	2020-11-17
5498	Sumqayıt	BMW	525	2002	Sedan	Qara	2.5	192	Benzin	318000	Avtomat	Arxa	f	15800	9294	4466791	Murad	(050) 382-70-37	2020-11-17
5499	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	100000	Mexaniki	Arxa	f	11500	6765	4466805	Resad	(050) 233-04-03	2020-11-17
5500	Bərdə	Ford	Transit	2002	Furqon	Ağ	2.4	140	Dizel	308605	Mexaniki	Arxa	f	19000	11176	4466806	Vusal	(051) 699-90-78	2020-11-17
5501	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Ağ	1.3	90	Dizel	215000	Mexaniki	Ön	f	12200	7176	4466807	Ceyhun	(070) 575-99-99	2020-11-17
5502	Bakı	GAZ	32212	1998	Furqon	Yaşıl	2.5	100	Benzin	180000	Mexaniki	Ön	f	4500	2647	4466803	Feride	(055) 763-93-99	2020-11-17
5503	Bakı	Hyundai	Azera	2012	Sedan	Ağ	2.4	180	Benzin	270000	Avtomat	Ön	f	25160	14800	4457944	Rauf	(050) 377-71-77	2020-11-17
5504	Bakı	Hyundai	Santa Fe	2002	Offroader / SUV	Tünd qırmızı	2.4	136	Benzin	269000	Mexaniki	Tam	f	10500	6176	4434746	Yunus	(077) 601-12-22	2020-11-17
5505	Bakı	Kia	Cerato	2015	Sedan	Qara	1.8	150	Benzin	118000	Avtomat	Ön	f	17700	10412	4458610	Elsever	(050) 765-06-17	2020-11-17
5506	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	1.8	130	Benzin	252818	Avtomat	Tam	f	8300	4882	4466824	Famil	(077) 325-55-73	2020-11-17
5507	Bakı	Mercedes	C 220	1995	Sedan	Qara	2.2	146	Benzin	400000	Avtomat	Arxa	f	9300	5471	4466826	Yameddin	(051) 631-20-20	2020-11-17
5508	Bakı	BMW	X5	2006	Offroader / SUV	Qara	4.8	300	Benzin	156000	Avtomat	Tam	f	27800	16353	4459487	Cavid	(077) 306-11-62	2020-11-17
5509	Lənkəran	Zontes	Tiger ZT150-3A	2014	Motosiklet	Qara	0.2	125	Benzin	20000	Mexaniki	Arxa	f	2000	1176	4466828	Emin	(051) 602-19-60	2020-11-17
5510	Gəncə	Ford	Transit	2000	Yük maşını	Ağ	2.5	96	Dizel	432000	Mexaniki	Arxa	f	12500	7353	4466744	Xeyal	(070) 803-37-37	2020-11-17
5511	Bakı	Toyota	Camry	2007	Sedan	Ağ	2.4	167	Benzin	205000	Avtomat	Ön	f	16800	9882	4371908	Ramil	(055) 300-73-55	2020-11-17
5512	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Bənövşəyi	1.5	76	Benzin	96500	Avtomat	Ön	f	12000	7059	4466750	Rafiq	(070) 757-60-00	2020-11-17
5513	Bakı	Chevrolet	Cruze	2014	Sedan	Yaş Asfalt	1.4	141	Benzin	163000	Avtomat	Ön	f	14800	8706	4434393	Heci	(055) 785-12-04	2020-11-17
5514	Bakı	LADA (VAZ)	2106	1990	Sedan	Bej	1.3	65	Benzin	99999	Mexaniki	Arxa	f	4500	2647	4466757	Nureddin	(051) 690-20-50	2020-11-17
5515	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Yaş Asfalt	1.8	99	Hibrid	145000	Variator	Ön	f	18200	10706	4466760	CanPolat	(055) 708-18-27	2020-11-17
5516	Bakı	Mercedes	C 220	1994	Sedan	Yaş Asfalt	2.2	143	Dizel	452200	Mexaniki	Arxa	f	7500	4412	4466768	Elman	(055) 722-10-13	2020-11-17
5517	Bakı	Mercedes	C 180	2020	Sedan	Gümüşü	1.8	143	Benzin	220000	Avtomat	Arxa	f	11000	6471	4466775	Sənan	(050) 535-96-63	2020-11-17
5518	Bakı	LADA (VAZ)	2109	1988	Hetçbek / Liftbek	Sarı	1.5	75	Benzin	325635	Mexaniki	Ön	f	3400	2000	4466773	Füzuli	(070) 864-39-62	2020-11-17
5519	Bakı	Volkswagen	Jetta	2006	Sedan	Göy	2.5	170	Benzin	210500	Avtomat	Ön	f	9200	5412	4460942	ilqar..	(055) 219-22-00	2020-11-17
5520	Gəncə	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	10000	Mexaniki	Tam	f	10500	6176	4466779	Röyal	(050) 827-96-43	2020-11-17
5522	Bakı	Hyundai	Accent	2008	Sedan	Ağ	1.6	110	Benzin	177000	Avtomat	Ön	f	12500	7353	4458860	Rufet	(055) 375-19-03	2020-11-17
5523	Bakı	Kia	Cerato	2013	Sedan	Ağ	1.6	132	Benzin	243000	Avtomat	Ön	f	19600	11529	4466796	Elay	(051) 969-10-10	2020-11-17
5524	Bakı	Hyundai	Sonata	2007	Sedan	Gümüşü	2	170	Dizel	182000	Mexaniki	Ön	f	15700	9235	4466798	Nicat	(055) 333-90-89	2020-11-17
5526	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	118000	Avtomat	Tam	f	41650	24500	4459944	Anar 	(050) 711-00-08	2020-11-17
5527	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	96000	Avtomat	Arxa	f	43350	25500	4449621	Rufat	(050) 265-99-99	2020-11-17
5525	Bakı	Mercedes	S 350	2009	Sedan	Qara	3	235	Dizel	230000	Avtomat	Tam	f	48450	27500	4462998	Rafiq 	(050) 221-22-35	2020-11-17
5487	Bakı	Ford	Transit	2010	Furqon	Ağ	2.2	116	Dizel	137800	Mexaniki	Ön	f	16400	9647	4466851	İntiqam	(055) 326-17-77	2020-11-17
5528	Bakı	Mercedes	E 240	2000	Sedan	Ağ	2.6	177	Benzin	135000	Avtomat	Arxa	f	15850	9324	4457086	Vusal	(051) 377-81-80	2020-11-17
5529	Bakı	LADA (VAZ)	Niva	1986	Offroader / SUV	Qara	1.7	80	Benzin	352986	Mexaniki	Arxa	f	3600	2118	4466706	Nicat	(055) 228-71-21	2020-11-17
5530	Bakı	Mercedes	C 220	1995	Sedan	Gümüşü	2.2	146	Benzin	341531	Avtomat	Arxa	f	7700	4529	4464350	İslam	(050) 668-81-40	2020-11-17
5531	Bakı	Toyota	Camry	2014	Sedan	Qara	2.5	181	Benzin	104000	Avtomat	Ön	f	37910	22300	3998896	Perviz	(055) 217-05-56	2020-11-17
5532	Xırdalan	Mercedes	E 200	1993	Sedan	Qəhvəyi	2	122	Benzin	255000	Mexaniki	Arxa	f	6800	4000	4466709	Seymur	(051) 741-91-71	2020-11-17
5533	Bakı	Great Wall	Voleex C30	2015	Sedan	Ağ	1.5	106	Benzin	180000	Avtomat	Ön	f	11000	6471	4466710	Ferman	(051) 944-00-11	2020-11-17
5534	Bakı	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	180	Benzin	44000	Avtomat	Ön	f	19400	11412	4415934	Ruslan	(070) 938-01-02	2020-11-17
5535	Bakı	Mercedes	190	1992	Sedan	Mavi	2	122	Benzin	378500	Avtomat	Arxa	f	6400	3765	4466713	Сафар	(070) 944-76-26	2020-11-17
5536	Bakı	Mercedes	E 240	2003	Sedan	Qızılı	2.6	177	Benzin	315000	Avtomat	Arxa	f	16600	9765	4466719	Faiq	(055) 213-34-83	2020-11-17
5537	Bakı	Mercedes	Vito 115	2008	Van	Qara	2.2	150	Dizel	300000	Mexaniki	Arxa	f	26000	15294	4466712	Eli	(050) 634-56-61	2020-11-17
5538	Sumqayıt	BMW	525	1995	Sedan	Gümüşü	2.5	170	Benzin	250000	Mexaniki	Arxa	f	7500	4412	4466716	SAQIL	(070) 265-56-95	2020-11-17
5539	Bakı	Land Rover	RR Sport	2019	Offroader / SUV	Qara	3	340	Dizel	19000	Avtomat	Tam	f	160650	94500	4352061	Nazim	(070) 810-90-70	2020-11-17
5540	Bakı	LADA (VAZ)	2107	2011	Sedan	Ağ	1.6	75	Benzin	198563	Mexaniki	Arxa	f	7600	4471	4466726	Seid	(050) 763-79-17	2020-11-17
5541	Bakı	Hyundai	Getz	2008	Hetçbek / Liftbek	Qara	1.6	122	Benzin	117000	Avtomat	Ön	f	13300	7824	4466660	Elshan	(050) 768-66-37	2020-11-17
5542	Bakı	Mercedes	C 200	1998	Universal	Göy	2	136	Benzin	387000	Avtomat	Arxa	f	12000	7059	4453745	Zakir	(077) 355-28-13	2020-11-17
5543	Bakı	Subaru	Forester	2008	Offroader / SUV	Ağ	2	158	Benzin	231456	Avtomat	Tam	f	12000	7059	4461260	Rashad	(070) 505-23-73	2020-11-17
5544	Bakı	Mercedes	E 200	2015	Sedan	Qara	2	184	Benzin	185000	Avtomat	Arxa	f	45050	26500	4466507	Mamed	(050) 552-53-53	2020-11-17
5545	Bakı	Smart	Forfour	2005	Hetçbek / Liftbek	Mavi	1.2	75	Benzin	148000	Robotlaşdırılmış	Ön	f	8300	4882	4466666	Nicat	(050) 739-54-66	2020-11-17
5546	Bakı	Kia	Optima	2016	Sedan	Ağ	2	274	Benzin	44000	Avtomat	Ön	f	33300	19588	4436688	Davud	(099) 884-00-08	2020-11-17
5547	Bakı	Mercedes	190	1992	Sedan	Boz	2	122	Benzin	240000	Avtomat	Arxa	f	9700	5706	4435547	samir	(050) 783-56-21	2020-11-17
5548	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	112000	Avtomat	Ön	f	15200	8941	4462716	Elweb	(050) 661-80-27	2020-11-17
5549	Şəmkir	Ford	Transit	1997	Furqon	Ağ	2.5	76	Dizel	316000	Mexaniki	Arxa	f	18000	10588	4466678	Qulu	(050) 526-25-70	2020-11-17
5550	Bakı	Ford	Transit	1996	Furqon	Sarı	2.5	96	Dizel	539177	Mexaniki	Arxa	f	10200	6000	4466684	samir	(050) 349-77-28	2020-11-17
5551	Bakı	Chevrolet	Cruze	2013	Sedan	Qara	1.4	141	Benzin	123000	Avtomat	Ön	f	15300	9000	4458485	Nesimi	(050) 661-78-33	2020-11-17
5552	İsmayıllı	BMW	X5	2003	Offroader / SUV	Qara	4.4	286	Benzin	225000	Avtomat	Tam	f	20000	11765	4466686	Samir	(051) 977-21-92	2020-11-17
5553	Bakı	LADA (VAZ)	2107	2011	Sedan	Gümüşü	1.6	75	Benzin	132320	Mexaniki	Arxa	f	6400	3765	4466688	Cahangir	(070) 645-35-12	2020-11-17
5554	Gəncə	LADA (VAZ)	2106	1980	Sedan	Göy	1.5	65	Benzin	350000	Mexaniki	Arxa	f	2850	1676	4466689	Mahir	(077) 527-33-53	2020-11-17
5555	Bakı	Mercedes	C 180	1995	Sedan	Yaşıl	1.8	122	Benzin	196459	Avtomat	Arxa	f	8600	5059	4466692	Anar	(050) 209-37-18	2020-11-17
5556	Bakı	Nissan	Navara	2008	Pikap	Ağ	2.5	190	Dizel	285000	Mexaniki	Tam	f	23500	13824	4235037	Rafael	(050) 273-72-02	2020-11-17
5557	Bakı	Mercedes	ML 350	2010	Offroader / SUV	Ağ	3.5	306	Benzin	149000	Avtomat	Tam	f	32130	18900	4450696	Rauf	(055) 320-00-02	2020-11-17
5558	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	4	250	Benzin	137650	Avtomat	Tam	f	43690	25700	4454175	Sahil	(051) 492-60-71	2020-11-17
5559	Şəmkir	BMW	528	2015	Sedan	Qəhvəyi	2	245	Benzin	70000	Avtomat	Arxa	f	45900	27000	4466695	Merfet	(051) 587-47-07	2020-11-17
5560	Bakı	Toyota	Corolla	2006	Universal	Yaş Asfalt	1.4	90	Dizel	241000	Mexaniki	Ön	f	11900	7000	4466700	ilyaz	(077) 627-11-71	2020-11-17
5561	Bakı	Mercedes	E 220	2000	Sedan	Gümüşü	2.2	143	Dizel	360000	Avtomat	Arxa	f	16300	9588	4458883	Ali	(050) 562-01-71	2020-11-17
5562	Bakı	Suzuki	Grand Vitara	2008	Offroader / SUV	Gümüşü	2.4	168	Benzin	250000	Avtomat	Tam	f	14200	8353	4415214	Anar	(050) 711-00-08	2020-11-17
5563	Bakı	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	181	Benzin	91000	Avtomat	Ön	f	21000	12353	4418377	Elvin	(055) 369-50-00	2020-11-17
5564	Quba	Mercedes	C 180	1996	Sedan	Qara	1.8	122	Benzin	325400	Avtomat	Arxa	f	8800	5176	4466731	Cəfər	(070) 727-27-75	2020-11-17
5565	Bakı	Hyundai	Accent	2006	Sedan	Qara	1.6	124	Benzin	278000	Avtomat	Tam	f	10500	6176	4466733	Güneş	(050) 336-68-98	2020-11-17
5566	Bakı	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	65000	Mexaniki	Arxa	f	7500	4412	4466734	Şahin	(055) 546-59-71	2020-11-17
5567	Bakı	Ford	Transit	1999	Furqon	Qırmızı	2.4	90	Dizel	456365	Mexaniki	Arxa	f	14900	8765	4456386	Cavid	(051) 944-91-91	2020-11-17
5568	Bakı	Opel	Astra	2003	Universal	Qara	2	132	Dizel	220000	Avtomat	Ön	f	6800	4000	4466739	Qərib	(050) 765-36-30	2020-11-17
5569	Sumqayıt	Opel	Vectra	2000	Sedan	Gümüşü	2	136	Benzin	300000	Avtomat	Ön	f	7500	4412	4466625	Zakir	(077) 270-60-22	2020-11-17
5570	Bərdə	Mercedes	208 D	1993	Mikroavtobus	Ağ	2.3	150	Dizel	500000	Mexaniki	Arxa	f	4500	2647	4466627	Süleyman	(050) 572-93-87	2020-11-17
5571	Quba	GAZ	3302-744	2003	Yük maşını	Ağ	2.4	131	Benzin	310000	Mexaniki	Arxa	f	10250	6029	4466630	Turan	(055) 251-79-58	2020-11-17
5572	Bakı	Nissan	Maxima	2003	Sedan	Ağ	3	200	Benzin	318202	Avtomat	Ön	f	7200	4235	4466632	Elmar	(055) 214-17-99	2020-11-17
5573	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Ağ	1.4	100	Benzin	160000	Mexaniki	Ön	f	11800	6941	4466636	Sənan	(070) 630-30-04	2020-11-17
5574	Ucar	LADA (VAZ)	2106	1984	Sedan	Ağ	1.6	75	Benzin	209000	Mexaniki	Arxa	f	2500	1471	4466637	Mehman	(050) 698-65-34	2020-11-17
5575	Bakı	Opel	Astra	2000	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	395000	Avtomat	Ön	f	8600	5059	4466643	Vidadi	(070) 881-80-72	2020-11-17
5576	Bakı	Opel	Astra	2008	Universal	Qara	1.4	90	Benzin	182000	Mexaniki	Ön	f	10800	6353	4466648	Azer	(051) 825-45-65	2020-11-17
5577	Qazax	Kia	Optima	2010	Sedan	Qara	2	274	Benzin	90900	Avtomat	Ön	f	22000	12941	4466650	Tural	(070) 328-28-32	2020-11-17
5578	Bakı	Baic	A113/A115	2014	Hetçbek / Liftbek	Ağ	1.5	113	Benzin	35800	Avtomat	Ön	f	11800	6941	4428098	Zamin	(050) 442-05-05	2020-11-17
5579	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2.4	178	Benzin	135000	Avtomat	Ön	f	29800	17529	4466590	Xəyal	(055) 399-99-69	2020-11-17
5580	Bakı	Mitsubishi	L 200	2005	Pikap	Ağ	2.5	136	Dizel	165000	Mexaniki	Tam	f	16000	9412	4466596	Zakir	(055) 212-50-70	2020-11-17
5581	Bakı	Toyota	Prius	2009	Sedan	Qara	1.8	99	Benzin	138000	Avtomat	Ön	f	16700	9824	4466595	Firuz	(077) 398-28-28	2020-11-17
5582	Bakı	Porsche	Cayenne Turbo	2010	Offroader / SUV	Ağ	4.8	500	Benzin	101000	Avtomat	Tam	f	48960	28800	4324965	Cavid	(055) 337-33-77	2020-11-17
5583	Bakı	Opel	Astra	1999	Universal	Boz	1.8	116	Benzin	398000	Mexaniki	Ön	f	9000	5294	4466601	İntiqam	(055) 790-14-36	2020-11-17
5584	Bakı	Mercedes	C 220	2000	Sedan	Göy	2.2	143	Dizel	278000	Avtomat	Arxa	f	13000	7647	4466602	Seymur	(051) 616-06-33	2020-11-17
5585	Mingəçevir	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	165000	Mexaniki	Arxa	f	7300	4294	4466604	Mahal	(055) 440-26-89	2020-11-17
5586	Bakı	Kia	Optima	2013	Sedan	Göy	2	274	Benzin	107000	Avtomat	Ön	f	21500	12647	4340736	ILHAM	(055) 472-85-44	2020-11-17
5587	Bakı	BMW	X5	2008	Offroader / SUV	Ağ	4.8	360	Benzin	192000	Avtomat	Tam	f	36550	21500	4466533	Mamed	(070) 252-53-53	2020-11-17
5588	Bakı	BMW	328	2013	Sedan	Gümüşü	2	245	Benzin	135500	Avtomat	Arxa	f	38250	22500	4466609	Ismixan	(070) 799-99-94	2020-11-17
5589	İsmayıllı	ZIL	131	1990	Yük maşını	Yaşıl	6	150	Benzin	250000	Mexaniki	Tam	f	2600	1529	4466614	Elwad	(050) 712-17-12	2020-11-17
5590	Bakı	Porsche	Cayenne S	2013	Offroader / SUV	Ağ	3.6	300	Benzin	114200	Avtomat	Tam	f	64600	38000	4466615	Cavidan	(070) 200-24-14	2020-11-17
5591	Bakı	Chevrolet	Cruze	2018	Sedan	Gümüşü	1.4	153	Benzin	69000	Avtomat	Ön	f	17700	10412	4450679	Nihad	(050) 355-55-45	2020-11-17
5592	Bakı	Hyundai	Santa Fe	2007	Offroader / SUV	Qara	2.2	178	Dizel	233000	Avtomat	Tam	f	22500	13235	4466616	Mensur	(055) 652-00-41	2020-11-17
5593	Bakı	Hyundai	i30	2009	Universal	Gümüşü	1.6	132	Dizel	128000	Avtomat	Ön	f	15500	9118	4466618	Celil	(055) 555-45-75	2020-11-17
5594	Bakı	Mercedes	S 320	2000	Sedan	Qara	3.2	224	Benzin	250000	Avtomat	Arxa	f	12000	7059	4466617	Mahir	(050) 200-65-51	2020-11-17
5595	Bakı	BMW	525	2000	Sedan	Qara	2.5	192	Benzin	214000	Mexaniki	Arxa	f	13500	7941	4466619	Ramil	(055) 997-07-99	2020-11-17
5596	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	84875	Mexaniki	Arxa	f	6400	3765	4466622	Ələsgər	(050) 479-42-87	2020-11-17
5597	Bakı	KamAz	65115	2004	Yük maşını	Ağ	11	191	Dizel	150000	Mexaniki	Arxa	f	98000	57647	4466623	Amid	(055) 242-92-92	2020-11-17
5598	Bakı	Toyota	Camry	2018	Sedan	Ağ	2.5	181	Benzin	42000	Avtomat	Ön	f	51000	30000	4466658	Babək	(055) 211-99-06	2020-11-17
5599	Bakı	Hyundai	Sonata	2013	Sedan	Qara	2	150	Benzin	69000	Avtomat	Ön	f	22500	13235	4466573	Dilqem	(050) 209-13-88	2020-11-17
5600	Bərdə	LADA (VAZ)	2107	2005	Sedan	Qara	1.6	75	Benzin	214521	Mexaniki	Arxa	f	6000	3529	4466582	Anar	(051) 734-64-64	2020-11-17
5601	Bakı	Mercedes	190	1991	Sedan	Gümüşü	1.8	109	Benzin	328000	Mexaniki	Arxa	f	5600	3294	4431804	Samir	(051) 455-32-74	2020-11-17
5602	Bakı	Volkswagen	Touareg	2009	Offroader / SUV	Ağ	3.6	280	Benzin	280000	Avtomat	Tam	f	21000	12353	4408316	Isgandar	(050) 688-89-28	2020-11-17
5603	Bakı	Kia	Rio X-Line	2019	Hetçbek / Liftbek	Ağ	1.5	110	Benzin	1716	Avtomat	Ön	f	31900	18765	4466585	Mahir	(050) 336-98-78	2020-11-17
5604	Bakı	Mercedes	190	1990	Sedan	Gümüşü	2	122	Benzin	543295	Mexaniki	Arxa	f	5800	3412	4466586	Sexavet	(055) 851-28-81	2020-11-17
5605	Bakı	Opel	Zafira	2007	Minivan	Gümüşü	1.9	150	Dizel	321957	Avtomat	Ön	f	13700	8059	4466581	Naim	(051) 886-38-38	2020-11-17
5606	Bakı	LADA (VAZ)	2106	1998	Sedan	Ağ	1.6	75	Benzin	196378	Mexaniki	Arxa	f	5400	3176	4456508	Elcin	(050) 610-68-59	2020-11-17
5607	Bakı	Mitsubishi	L 200	2015	Pikap	Ağ	2.5	136	Dizel	185664	Mexaniki	Tam	f	35000	20588	4466557	Ramil	(050) 487-64-64	2020-11-17
5608	Cəlilabad	BMW	523	1999	Sedan	Göy	2.5	170	Benzin	380000	Avtomat	Arxa	f	8000	4706	4466531	Tural	(050) 731-03-32	2020-11-17
5609	Bakı	Mercedes	Axor 1840	2007	Dartqı	Ağ	4	150	Dizel	1150000	Mexaniki	Arxa	f	41000	24118	4466545	Hesenxan	(050) 655-13-31	2020-11-17
5610	Bakı	Mercedes	C 230	1999	Sedan	Gümüşü	2.3	193	Benzin	180000	Avtomat	Arxa	f	12500	7353	4466549	Çingiz	(050) 557-58-58	2020-11-17
5611	Bakı	Dacia	Logan	2007	Minivan	Göy	1.5	86	Dizel	275000	Mexaniki	Ön	f	10800	6353	4421505	Cabir	(050) 251-38-38	2020-11-17
5612	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	199000	Avtomat	Arxa	f	13700	8059	4466550	Cahid	(050) 753-32-75	2020-11-17
5613	Bakı	Mercedes	C 200	1998	Sedan	Gümüşü	2	136	Benzin	308124	Avtomat	Arxa	f	11100	6529	4466547	Ruslan	(055) 209-29-27	2020-11-17
5614	Bakı	LADA (VAZ)	2106	1989	Sedan	Bej	1.5	65	Benzin	180000	Mexaniki	Arxa	f	2000	1176	4466555	Loğman	(070) 307-07-32	2020-11-17
5615	Bakı	BMW	520	1988	Sedan	Qara	2	150	Benzin	548000	Mexaniki	Arxa	f	4500	2647	4466541	Semyon	(055) 445-44-23	2020-11-17
5616	Bakı	Mercedes	C 240	2002	Sedan	Bənövşəyi	2.4	170	Benzin	360000	Avtomat	Arxa	f	12500	7353	4466558	Sərdar	(055) 409-90-01	2020-11-17
5617	Bakı	Audi	Q5	2013	Offroader / SUV	Ağ	2	252	Benzin	51800	Avtomat	Tam	f	45050	26500	4466556	Əli	(055) 674-00-33	2020-11-17
5618	Bakı	LADA (VAZ)	2106	1978	Sedan	Qırmızı	1.6	75	Benzin	125321	Mexaniki	Arxa	f	3500	2059	4466561	teymur	(055) 491-73-73	2020-11-17
5619	Bakı	Hyundai	ix35	2013	Offroader / SUV	Ağ	2.4	178	Benzin	136000	Avtomat	Tam	f	30000	17647	4466562	Sübhan	(055) 279-91-68	2020-11-17
5620	Bərdə	Kia	Sorento	2004	Offroader / SUV	Qara	2.5	150	Dizel	292000	Avtomat	Tam	f	16000	9412	4466566	Rafiq	(050) 688-54-36	2020-11-17
5621	Bakı	BMW	325	2005	Sedan	Qara	3	231	Benzin	270000	Avtomat	Arxa	f	16000	9412	4466564	ELVİN	(051) 996-21-00	2020-11-17
5622	Bakı	Chevrolet	Cruze	2015	Sedan	Mavi	1.4	141	Benzin	125000	Avtomat	Ön	f	16500	9706	4466568	letif	(070) 769-99-89	2020-11-17
5623	Bakı	Renault	Tondar	2013	Sedan	Ağ	1.6	110	Benzin	370000	Mexaniki	Ön	f	9500	5588	4466570	Ağa	(070) 380-30-10	2020-11-17
5624	Bakı	Ford	Fusion	2016	Sedan	Gümüşü	2	245	Benzin	105000	Avtomat	Ön	f	23900	14059	4310083	Faiq	(055) 265-04-48	2020-11-17
5625	Bakı	Mercedes	C 200	2000	Universal	Ağ	2	136	Benzin	375000	Avtomat	Arxa	f	11900	7000	4460042	Samir	(055) 988-48-33	2020-11-17
5626	Masallı	Mercedes	C 220	2000	Universal	Yaşıl	2.2	143	Dizel	321700	Avtomat	Arxa	f	13500	7941	4466574	Woret	(050) 381-77-67	2020-11-17
5627	Bakı	Mercedes	E 270	1999	Sedan	Gümüşü	2.7	170	Dizel	330165	Avtomat	Arxa	f	19800	11647	4466472	Raul	(070) 353-36-38	2020-11-17
5628	Bakı	Lexus	GS 300	2005	Sedan	Qara	3	286	Benzin	200310	Avtomat	Arxa	f	19000	11176	4411398	Rahim	(070) 910-91-41	2020-11-17
5629	Bakı	Opel	Astra	2007	Universal	Göy	1.4	90	Benzin	158000	Mexaniki	Ön	f	11800	6941	4448596	Qurban	(050) 318-40-08	2020-11-17
5630	Bakı	Renault	Scenic	2010	Minivan	Yaş Asfalt	1.4	130	Benzin	166000	Mexaniki	Ön	f	13800	8118	4431583	Zaur	(050) 429-42-46	2020-11-17
5631	Sumqayıt	Hyundai	Elantra	2011	Sedan	Qara	1.8	150	Benzin	121450	Avtomat	Ön	f	17800	10471	4466482	Sebuhi	(055) 645-66-63	2020-11-17
5632	Göygöl	BMW	318	2001	Sedan	Bənövşəyi	1.9	115	Benzin	311000	Mexaniki	Ön	f	9200	5412	4466483	Roman	(051) 226-59-59	2020-11-17
5633	Bakı	Kia	Optima	2015	Sedan	Qara	2	274	Benzin	49000	Avtomat	Ön	f	29800	17529	4466504	Emil	(050) 688-07-86	2020-11-17
5634	Bakı	Hyundai	Accent	2014	Sedan	Qara	1.4	75	Benzin	60000	Avtomat	Ön	f	17000	10000	4466506	Vüsal	(070) 800-85-22	2020-11-17
5635	Bakı	Volkswagen	Golf	1998	Hetçbek / Liftbek	Gümüşü	1.8	150	Benzin	375800	Avtomat	Ön	f	6700	3941	4466505	Nemet	(077) 320-90-50	2020-11-17
5636	Bakı	Mini	Cooper	2014	Sedan	Qəhvəyi	1.6	122	Benzin	87000	Avtomat	Ön	f	24650	14500	4466491	Elcin	(050) 726-70-34	2020-11-17
5637	Gəncə	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	110000	Avtomat	Ön	f	12600	7412	4466509	Yahya	(055) 432-20-20	2020-11-17
5638	Bakı	Hyundai	Sonata	1998	Sedan	Tünd qırmızı	2	136	Benzin	327000	Mexaniki	Ön	f	4200	2471	4466358	Ramiq	(055) 308-59-99	2020-11-17
5639	Şirvan	Mercedes	C 180	1997	Sedan	Gümüşü	1.8	122	Benzin	505000	Mexaniki	Arxa	f	9699	5705	4466435	Niyaz	(050) 416-67-64	2020-11-17
5640	Sabirabad	LADA (VAZ)	2106	1989	Sedan	Göy	1.6	75	Benzin	111100	Mexaniki	Arxa	f	3800	2235	4466437	Emin	(050) 399-53-63	2020-11-17
5641	Bakı	LADA (VAZ)	2107	1985	Sedan	Göy	1.6	75	Benzin	150000	Mexaniki	Arxa	f	2550	1500	4458658	Samir	(055) 280-57-32	2020-11-17
5642	Bakı	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	224000	Avtomat	Arxa	f	13200	7765	4466445	Seyran	(070) 361-13-53	2020-11-17
5643	Bakı	Ford	Transit	2007	Furqon	Ağ	2.4	120	Dizel	172200	Mexaniki	Arxa	f	22500	13235	4466451	Emin	(055) 218-19-09	2020-11-17
5644	Bakı	Mazda	CX-9	2010	Offroader / SUV	Qara	3.7	273	Benzin	115000	Avtomat	Tam	f	19900	11706	4416946	Abbas	(050) 338-34-36	2020-11-17
5645	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Yaşıl	1.5	76	Benzin	151000	Avtomat	Ön	f	12800	7529	4447994	Eldeniz	(055) 352-98-98	2020-11-17
5646	Bakı	Ford	Fusion	2015	Sedan	Ağ	1.5	181	Benzin	83000	Avtomat	Ön	f	21200	12471	4447652	Ceyhun	(055) 255-42-91	2020-11-17
5647	Bakı	Toyota	Corolla	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Dizel	237000	Mexaniki	Ön	f	11600	6824	4449981	Yasin	(070) 635-35-74	2020-11-17
5648	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Boz	1.4	100	Dizel	190000	Mexaniki	Tam	f	11000	6471	4466462	Elxan	(051) 959-41-71	2020-11-17
5649	Bakı	Ford	Fusion	2017	Sedan	Yaş Asfalt	1.5	181	Benzin	68000	Avtomat	Ön	f	23100	13588	4428368	Murad	(055) 255-42-91	2020-11-17
5650	Bakı	Mercedes	E 250	2013	Sedan	Ağ	2.2	204	Dizel	113000	Avtomat	Tam	f	42500	25000	4466455	Nurlan	(050) 841-14-18	2020-11-17
5651	Masallı	LADA (VAZ)	2109	1988	Hetçbek / Liftbek	Göy	1.5	75	Benzin	548588	Mexaniki	Tam	f	6300	3706	4421645	Namiq	(051) 644-00-88	2020-11-17
5652	Bakı	Mercedes	E 220	2006	Sedan	Gümüşü	2.2	170	Dizel	186725	Avtomat	Arxa	f	24000	14118	4465424	Murad	(099) 359-76-37	2020-11-17
5653	Bakı	Mercedes	E 320	2003	Sedan	Qara	3.2	224	Benzin	229000	Avtomat	Arxa	f	14000	8235	4466468	Asif	(055) 222-07-17	2020-11-17
5654	Bakı	Kia	Cerato	2012	Sedan	Ağ	1.6	130	Benzin	210500	Avtomat	Ön	f	16500	9706	4448033	Cosqun	(050) 880-24-66	2020-11-17
5655	Sabirabad	LADA (VAZ)	2106	2000	Sedan	Gümüşü	1.6	75	Benzin	365000	Mexaniki	Arxa	f	3400	2000	4466474	elmar	(051) 431-12-32	2020-11-17
5656	Lənkəran	Chevrolet	Aveo	2011	Sedan	Ağ	1.4	100	Benzin	160000	Mexaniki	Ön	f	9500	5588	4466518	İlham	(055) 596-95-29	2020-11-17
5657	Bakı	Fiat	Croma	2006	Hetçbek / Liftbek	Yaş Asfalt	1.9	150	Dizel	383452	Avtomat	Ön	f	10000	5882	4466523	Ayaz	(070) 663-76-70	2020-11-17
5658	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	153000	Mexaniki	Arxa	f	10700	6294	4466527	Cavad	(050) 753-31-67	2020-11-17
5659	Bakı	Volkswagen	Touareg	2011	Offroader / SUV	Gümüşü	3.6	280	Benzin	144000	Avtomat	Tam	f	26010	15300	4466530	Mamed	(070) 520-91-20	2020-11-17
5660	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	74000	Mexaniki	Tam	f	14300	8412	4421060	Murad	(055) 894-94-12	2020-11-17
5661	Ucar	LADA (VAZ)	2106	1985	Sedan	Qırmızı	1.5	65	Benzin	99392	Mexaniki	Arxa	f	2900	1706	4466493	Cowqun 	(050) 969-48-00	2020-11-17
5662	Bakı	BMW	528	2012	Sedan	Ağ	2	245	Benzin	172759	Avtomat	Arxa	f	34000	20000	4466503	Nuran	(055) 369-41-68	2020-11-17
5663	Bakı	Mercedes	E 320	1998	Sedan	Boz	3.2	224	Benzin	315000	Avtomat	Arxa	f	10000	5882	4466487	Zaur	(070) 341-16-56	2020-11-17
5664	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Göy	1.7	80	Benzin	24000	Mexaniki	Tam	f	18300	10765	4466478	Elman	(077) 375-51-91	2020-11-17
5665	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	102000	Avtomat	Arxa	f	39950	23500	4431458	Fizuli	(070) 280-00-07	2020-11-17
5666	Bakı	Hyundai	Santa Fe	2014	Offroader / SUV	Ağ	2.4	174	Benzin	70000	Avtomat	Tam	f	37740	22200	4466412	Vusal	(050) 790-84-48	2020-11-17
5667	Bakı	Nissan	Sunny	2017	Sedan	Tünd qırmızı	1.6	109	Benzin	26770	Avtomat	Ön	f	18000	10588	4425770	Vaqif 	(055) 323-70-09	2020-11-17
5668	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Boz	1.3	90	Dizel	248000	Mexaniki	Ön	f	12200	7176	4443813	Nurlan	(055) 735-46-47	2020-11-17
5669	Bakı	Mercedes	Atego 1222	2009	Yük maşını	Qara	4.8	218	Dizel	670054	Mexaniki	Arxa	f	42000	24706	4414537	İlham	(050) 400-00-92	2020-11-17
5670	Şəki	LADA (VAZ)	2104	2010	Universal	Ağ	1.6	74	Benzin	157512	Mexaniki	Arxa	f	9300	5471	4466418	Elbrus	(050) 388-44-13	2020-11-17
5671	Bakı	LADA (VAZ)	2106	1990	Sedan	Bej	1.6	75	Benzin	728660	Mexaniki	Arxa	f	6000	3529	4409757	Amil	(051) 681-50-00	2020-11-17
5672	Bakı	BMW	525	1989	Sedan	Ağ	2.5	150	Benzin	350000	Mexaniki	Arxa	f	4850	2853	4466374	Rahib	(055) 912-26-87	2020-11-17
5673	Bakı	Kia	Optima	2016	Sedan	Ağ	2	274	Benzin	55000	Avtomat	Ön	f	30500	17941	4466377	Samir	(055) 211-24-43	2020-11-17
5674	Bakı	BMW	323	1999	Sedan	Ağ	2.5	170	Benzin	272000	Avtomat	Arxa	f	12000	7059	4466386	İlkin	(055) 290-46-46	2020-11-17
5675	Bakı	LADA (VAZ)	Priora	2014	Sedan	Ağ	1.6	106	Benzin	157100	Mexaniki	Ön	f	13600	8000	4444995	Babek	(070) 260-26-60	2020-11-17
5676	Bakı	Fiat	Doblo	2008	Minivan	Ağ	1.9	120	Dizel	232000	Mexaniki	Ön	f	11900	7000	4466390	Samir	(050) 441-22-40	2020-11-17
5677	Bakı	Toyota	Prado	2008	Sedan	Ağ	4	249	Benzin	200500	Avtomat	Tam	f	34000	20000	4466389	Mehti	(070) 206-15-51	2020-11-17
5678	Bakı	Hyundai	ix35	2015	Offroader / SUV	Ağ	2	166	Benzin	105000	Avtomat	Arxa	f	28500	16765	4459346	Ali	(070) 288-00-18	2020-11-17
5679	Samux	LADA (VAZ)	21099	2001	Sedan	Qara	1.5	75	Benzin	288089	Mexaniki	Ön	f	4500	2647	4466392	Elsad	(050) 408-49-97	2020-11-17
5680	Bakı	Hyundai	Sonata	2008	Sedan	Qara	2	165	Benzin	84000	Avtomat	Ön	f	18000	10588	4452424	Sadiq	(050) 390-18-09	2020-11-17
5681	Sumqayıt	Mercedes	C 180	1998	Sedan	Göy	1.8	122	Benzin	281000	Avtomat	Arxa	f	11800	6941	4466393	Əhməd	(051) 622-58-39	2020-11-17
5682	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	167000	Avtomat	Tam	f	40290	23700	4448324	Vüqar	(070) 215-71-04	2020-11-17
5683	Bakı	Hyundai	Sonata	2013	Sedan	Ağ	2.4	178	Benzin	145000	Avtomat	Ön	f	22800	13412	4457553	Ali	(070) 288-00-18	2020-11-17
5684	Bakı	Hyundai	Accent	2008	Sedan	Yaş Asfalt	1.5	110	Dizel	211400	Mexaniki	Ön	f	10900	6412	4424265	Ziya 	(055) 461-43-68	2020-11-17
5686	Bakı	Mercedes	E 200	2016	Sedan	Boz	2	194	Benzin	45000	Avtomat	Arxa	f	72760	42800	4379997	Yashar	(050) 333-23-30	2020-11-17
5687	Bakı	LADA (VAZ)	2107	2002	Sedan	Göy	1.6	75	Benzin	52143	Mexaniki	Arxa	f	4300	2529	4445494	Veli	(050) 583-68-97	2020-11-17
5688	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2.4	178	Benzin	140000	Avtomat	Ön	f	21000	12353	4416549	Soltan	(077) 422-92-80	2020-11-17
5689	Mingəçevir	Honda	Civic	2004	Sedan	Gümüşü	1.6	110	Benzin	375620	Avtomat	Ön	f	8500	5000	4466423	Mikayil	(055) 892-10-12	2020-11-17
5690	Bakı	Kia	Optima	2012	Sedan	Ağ	2.4	180	Benzin	147600	Avtomat	Ön	f	22600	13294	4409015	Elbrus	(055) 214-40-49	2020-11-17
5691	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	171000	Avtomat	Tam	f	32800	19294	4466428	Vuqar	(070) 588-98-85	2020-11-17
5692	Bakı	Mercedes	E 320	2002	Sedan	Qara	3.2	224	Benzin	240000	Avtomat	Arxa	f	17900	10529	4466431	nurlan	(055) 571-15-62	2020-11-17
5693	Bakı	Opel	Corsa	2007	Hetçbek / Liftbek	Göy	1.3	75	Dizel	156400	Mexaniki	Ön	f	10200	6000	4466360	Taleh	(050) 853-42-58	2020-11-17
5694	Bakı	Mercedes	E 220	2009	Sedan	Yaş Asfalt	2.2	204	Dizel	250000	Avtomat	Ön	f	30260	17800	4466362	Mehemmed	(070) 205-00-42	2020-11-17
5695	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	128000	Avtomat	Ön	f	20900	12294	4430144	Hebib	(050) 702-42-31	2020-11-17
5696	Bakı	Opel	Zafira	1999	Minivan	Qara	1.8	116	Benzin	270800	Mexaniki	Ön	f	9000	5294	4466333	Sarvan	(051) 344-18-24	2020-11-17
5697	Şəmkir	Kia	Optima	2013	Sedan	Boz	2	274	Benzin	95000	Avtomat	Ön	f	24000	14118	4466335	Səddam	(050) 573-72-68	2020-11-17
5698	Bakı	Ford	Fusion	2015	Sedan	Yaş Asfalt	1.5	181	Benzin	131000	Avtomat	Ön	f	18400	10824	4411527	rufat	(050) 654-98-36	2020-11-17
5699	Bakı	Mercedes	Sprinter 213	2012	Van	Ağ	2.2	129	Dizel	210700	Mexaniki	Arxa	f	29600	17412	4466336	Kənan	(055) 210-71-41	2020-11-17
5700	Bakı	Foton	Forland	2007	Yük maşını	Ağ	2.3	150	Dizel	132000	Mexaniki	Arxa	f	5500	3235	4466341	Ramil	(055) 642-82-12	2020-11-17
5701	Bakı	Volkswagen	Passat	1998	Sedan	Mavi	1.9	110	Dizel	470000	Avtomat	Ön	f	2500	1471	4466340	Yusif	(055) 910-90-05	2020-11-17
5702	Bakı	Mercedes	E 270	1999	Sedan	Gümüşü	2.7	177	Dizel	463000	Avtomat	Arxa	f	16400	9647	4396027	ilkin	(050) 256-35-85	2020-11-17
5703	Bakı	Mercedes	E 320	2001	Sedan	Qara	3.2	224	Benzin	280033	Avtomat	Arxa	f	21000	12353	4466356	Ferid	(070) 253-37-77	2020-11-17
5704	Bakı	Opel	Astra	2007	Universal	Qara	1.3	90	Dizel	198000	Mexaniki	Ön	f	11400	6706	4459440	Elxan	(055) 792-81-30	2020-11-17
5705	Gəncə	Hyundai	ix35	2011	Offroader / SUV	Ağ	2.4	178	Benzin	169000	Avtomat	Tam	f	24500	14412	4454272	Letif	(051) 476-89-55	2020-11-17
5706	Bakı	Mercedes	E 240	2000	Sedan	Göy	2.4	177	Benzin	238000	Avtomat	Arxa	f	14900	8765	4454545	Kanan	(050) 607-58-99	2020-11-17
5707	Bakı	Nissan	Sunny	2008	Sedan	Ağ	1.3	90	Benzin	260000	Avtomat	Ön	f	9400	5529	4466375	Elqiz	(055) 206-66-54	2020-11-17
5708	Bakı	Hyundai	i40	2012	Universal	Ağ	2	150	Benzin	180000	Avtomat	Ön	f	22999	13529	4466310	Əfgan	(055) 864-85-58	2020-11-17
5709	Bakı	Ford	Transit	2006	Furqon	Ağ	2.4	140	Dizel	190150	Mexaniki	Arxa	f	18850	11088	4452298	Nabi	(070) 635-35-39	2020-11-17
5710	Bakı	Hyundai	Sonata	2007	Sedan	Ağ	2.4	161	Benzin	112457	Avtomat	Ön	f	14500	8529	4466322	Məhəmməd	(077) 380-00-18	2020-11-17
5711	Bakı	Mercedes	E 220	2008	Sedan	Qara	2.2	170	Dizel	370000	Avtomat	Arxa	f	20000	11765	4466324	ANAR	(050) 453-22-22	2020-11-17
5712	Xırdalan	Mercedes	C 180	1995	Sedan	Göy	1.8	122	Benzin	474000	Avtomat	Arxa	f	8000	4706	4466331	Logman 	(077) 307-58-43	2020-11-17
5713	Ucar	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	87978	Mexaniki	Arxa	f	6800	4000	4466330	Elcin	(077) 766-67-61	2020-11-17
5714	Sumqayıt	Hyundai	Elantra	2008	Sedan	Qara	2	143	Benzin	229273	Avtomat	Ön	f	13000	7647	4466332	Tural 	(055) 803-64-53	2020-11-17
5715	Bakı	GAZ	3302-744	2006	Yük maşını	Ağ	2.5	131	Dizel	135222	Mexaniki	Arxa	f	10300	6059	4466296	Eli	(051) 659-58-92	2020-11-17
5716	Bakı	Toyota	Camry	2017	Sedan	Ağ	2.5	181	Benzin	45000	Avtomat	Ön	f	31790	18700	4466302	Asif	(055) 286-56-33	2020-11-17
5717	Bakı	ZIL	130	1986	Yük maşını	Göy	6	150	Benzin	150000	Mexaniki	Arxa	f	10000	5882	4466303	Allahverdi	(050) 322-93-44	2020-11-17
5718	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qırmızı	1.3	90	Dizel	185000	Mexaniki	Ön	f	11800	6941	4458025	Vahid	(070) 879-32-76	2020-11-17
5719	Kürdəmir	GAZ	31029	1993	Sedan	Qara	2.3	131	Benzin	87000	Mexaniki	Arxa	f	3100	1824	4466305	Perviz	(070) 235-22-82	2020-11-17
5720	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.8	141	Benzin	143800	Avtomat	Ön	f	19300	11353	4421396	Kenan	(050) 240-36-00	2020-11-17
5721	Bakı	LADA (VAZ)	2104	1999	Universal	Göy	1.5	65	Benzin	145000	Mexaniki	Arxa	f	3250	1912	4430145	Vahid	(050) 684-37-86	2020-11-17
5722	Sumqayıt	Chevrolet	Aveo	2011	Sedan	Gümüşü	1.4	100	Benzin	140000	Mexaniki	Ön	f	10300	6059	4466306	aga	(050) 295-14-00	2020-11-17
5723	Bakı	Honda	Element	2003	Offroader / SUV	Narıncı	2.4	166	Benzin	250000	Avtomat	Ön	f	13900	8176	4466195	Elsever	(070) 686-06-21	2020-11-17
5724	Bakı	Mitsubishi	Galant	1998	Sedan	Qara	1.8	140	Benzin	230000	Mexaniki	Ön	f	4250	2500	4466199	SAHİBKAR	(077) 306-11-07	2020-11-17
5725	Bakı	Mazda	CX-5	2012	Offroader / SUV	Göy	2	150	Benzin	150000	Avtomat	Tam	f	24700	14529	4466202	Intiqam	(050) 545-68-00	2020-11-17
5726	Lənkəran	Jeep	Commander	2006	Offroader / SUV	Qara	3	217	Dizel	320000	Avtomat	Tam	f	31800	18706	4466204	Mahammad	(050) 295-45-45	2020-11-17
5727	Bakı	Honda	CR-V	2013	Offroader / SUV	Gümüşü	2.4	185	Benzin	129000	Avtomat	Tam	f	30940	18200	4466213	Murad	(055) 215-66-96	2020-11-17
5728	Bakı	Lexus	NX 200T	2016	Offroader / SUV	Gümüşü	2	238	Benzin	51000	Avtomat	Tam	f	52360	30800	4466234	Cavid	(050) 999-10-19	2020-11-17
5729	Bakı	Toyota	Camry	2019	Sedan	Qara	2.5	203	Benzin	23500	Avtomat	Ön	f	51000	30000	4325515	Raul	(070) 799-00-00	2020-11-17
5730	Sumqayıt	Daewoo	Gentra	2013	Sedan	Ağ	1.5	107	Benzin	232000	Mexaniki	Ön	f	10200	6000	4425039	Ramin	(070) 532-07-07	2020-11-17
5731	Bakı	Ford	Fusion	2016	Sedan	Boz	1.5	181	Benzin	80000	Avtomat	Arxa	f	18300	10765	4466271	Fuad	(070) 222-06-62	2020-11-17
5732	Bakı	Toyota	Camry	2001	Sedan	Ağ	2.2	136	Benzin	350000	Avtomat	Arxa	f	8200	4824	4466240	Elsen	(055) 347-58-28	2020-11-17
5733	Qusar	LADA (VAZ)	2107	1999	Sedan	Qırmızı	1.3	65	Benzin	26900	Mexaniki	Arxa	f	4650	2735	4466247	Turan	(050) 348-89-54	2020-11-17
5734	Bakı	Mercedes	E 230	1997	Sedan	Göy	2.3	150	Benzin	330000	Avtomat	Arxa	f	10800	6353	4466249	Orxan	(070) 873-73-02	2020-11-17
5735	Bakı	Mercedes	S 350	2011	Sedan	Qara	3.5	306	Dizel	243000	Avtomat	Arxa	f	55590	32700	4345828	Teyyub	(070) 736-00-00	2020-11-17
5736	Şirvan	Mercedes	E 230	1992	Sedan	Yaş Asfalt	2.3	150	Benzin	213000	Mexaniki	Arxa	f	5950	3500	4466250	Ilkin	(055) 889-05-73	2020-11-17
5737	Bakı	Volkswagen	Passat	2001	Sedan	Göy	1.8	150	Benzin	200000	Avtomat	Ön	f	7300	4294	4466268	Natik	(077) 305-71-93	2020-11-17
5738	Balakən	Mercedes	C 220	1994	Sedan	Gümüşü	2.2	143	Dizel	355000	Avtomat	Arxa	f	11000	6471	4466269	Şaban	(050) 509-78-88	2020-11-17
5739	Bakı	BMW	320	2013	Sedan	Ağ	2	184	Benzin	60000	Avtomat	Arxa	f	28600	16824	4466272	Nihat	(077) 305-34-08	2020-11-17
5740	Bakı	LADA (VAZ)	2112	2001	Hetçbek / Liftbek	Boz	1.5	75	Benzin	350000	Mexaniki	Ön	f	5700	3353	4466285	Zahir	(050) 843-53-42	2020-11-17
5741	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	107000	Avtomat	Tam	f	46750	27500	4410812	Toğrul	(050) 250-44-41	2020-11-17
5742	Gəncə	Mercedes	190	1991	Sedan	Boz	1.8	109	Benzin	190000	Avtomat	Arxa	f	4800	2824	4466283	royal	(055) 871-28-91	2020-11-17
5743	Bakı	Kia	Cerato	2013	Sedan	Ağ	1.6	132	Benzin	246200	Avtomat	Ön	f	17200	10118	4466122	İsa	(055) 207-63-81	2020-11-17
5744	Bakı	Yamaha	Fazer 150	2020	Motosiklet	Qara	0.2	12	Benzin	18	Mexaniki	Arxa	t	4700	2765	4466127	Samir 	(077) 250-51-50	2020-11-17
5745	Bakı	Mercedes	190	1990	Sedan	Yaş Asfalt	2	122	Benzin	274000	Avtomat	Arxa	f	5700	3353	4466133	Mahir	(050) 461-73-09	2020-11-17
5746	Bakı	Nissan	X-Trail	2002	Offroader / SUV	Boz	2	140	Benzin	198009	Avtomat	Arxa	f	9499	5588	4466138	Eli	(099) 315-14-13	2020-11-17
5747	Şirvan	Hyundai	Sonata	2007	Sedan	Ağ	2.4	174	Benzin	289000	Avtomat	Ön	f	14800	8706	4466144	Əmrah	(055) 654-07-07	2020-11-17
5748	Ucar	Mercedes	C 220	2000	Sedan	Göy	2.2	143	Dizel	407000	Avtomat	Arxa	f	11500	6765	4466151	Muxtar	(055) 202-35-36	2020-11-17
5749	Bakı	BMW	320	2015	Sedan	Qara	2	184	Benzin	95600	Avtomat	Arxa	f	35700	21000	4466150	Aga	(050) 211-24-06	2020-11-17
5750	Bakı	Mercedes	C 230	2000	Sedan	Qara	2.3	150	Benzin	198655	Avtomat	Arxa	f	11200	6588	4466157	Samil	(055) 307-29-07	2020-11-17
5751	Bakı	BMW	540	2000	Sedan	Qara	4.4	286	Benzin	390000	Avtomat	Arxa	f	12400	7294	4466163	Vusal	(077) 745-39-79	2020-11-17
5752	Bakı	Hyundai	Grandeur	2008	Sedan	Ağ	3.3	250	Benzin	305000	Avtomat	Ön	f	13800	8118	4466116	Anar	(055) 421-27-71	2020-11-17
5753	Siyəzən	Renault	Megane	2009	Universal	Boz	1.5	106	Dizel	220000	Mexaniki	Ön	f	12900	7588	4466172	Qilinc	(051) 314-00-53	2020-11-17
5754	Xaçmaz	LADA (VAZ)	2106	2004	Sedan	Yaşıl	1.6	75	Benzin	222222	Mexaniki	Arxa	f	5700	3353	4466182	Habil	(070) 663-00-27	2020-11-17
5755	Qax	Chevrolet	Cruze	2011	Sedan	Qızılı	1.4	141	Benzin	160000	Avtomat	Ön	f	12900	7588	4466183	Bəxtiyar	(055) 709-99-83	2020-11-17
5756	Bakı	Mercedes	C 240	2003	Sedan	Qara	2.6	177	Benzin	261000	Avtomat	Arxa	f	11200	6588	4466027	Vusal	(050) 316-87-78	2020-11-17
5757	Bakı	Volkswagen	Passat	2006	Sedan	Qara	2	170	Benzin	212300	Avtomat	Ön	f	9500	5588	4394594	Qasim	(055) 306-02-85	2020-11-17
5758	Bakı	Mercedes	Vito	2002	Mikroavtobus	Qara	2.2	150	Dizel	350000	Avtomat	Ön	f	15500	9118	4466040	Zahid	(055) 205-19-24	2020-11-17
5759	Xırdalan	Mitsubishi	Outlander	2003	Offroader / SUV	Ağ	2.4	170	Benzin	190000	Avtomat	Tam	f	9700	5706	4466041	Emin	(051) 201-74-30	2020-11-17
5760	Bakı	Ford	Focus	2017	Sedan	Tünd qırmızı	1	150	Benzin	75000	Mexaniki	Ön	f	16500	9706	4466049	Orxan	(055) 211-66-38	2020-11-17
5761	Bakı	Mercedes	C 230	1998	Sedan	Qızılı	2.3	150	Benzin	210000	Avtomat	Arxa	f	14450	8500	4466055	Emil	(070) 854-80-09	2020-11-17
5762	Bakı	Porsche	Cayenne S	2010	Offroader / SUV	Ağ	4.8	420	Benzin	160000	Avtomat	Tam	f	45900	27000	4389925	Abu	(050) 526-73-41	2020-11-17
5763	Bakı	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	218000	Avtomat	Arxa	f	10400	6118	4466069	Ramal	(070) 390-95-15	2020-11-17
5764	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	110000	Mexaniki	Arxa	f	6800	4000	4466073	Elmeddin	(055) 421-52-28	2020-11-17
5765	Bakı	Mercedes	E 220	1996	Sedan	Gümüşü	2.2	143	Dizel	270000	Avtomat	Arxa	f	7900	4647	4466072	ƏLİ	(055) 597-60-06	2020-11-17
5766	Bakı	Mercedes	ML 350	2006	Offroader / SUV	Gümüşü	3.5	272	Benzin	194000	Avtomat	Tam	f	18700	11000	4466080	Orxan	(070) 217-33-44	2020-11-17
5767	Yevlax	LADA (VAZ)	2109	1987	Hetçbek / Liftbek	Yaşıl	1.5	75	Benzin	315000	Mexaniki	Ön	f	4600	2706	4466088	Ramal	(050) 827-50-12	2020-11-17
5768	Bakı	Great Wall	Voleex C30	2013	Sedan	Ağ	1.5	106	Benzin	270000	Mexaniki	Ön	f	7800	4588	4466097	Baxtiyar	(055) 532-99-39	2020-11-17
5769	Sumqayıt	Renault	Symbol	2007	Sedan	Qara	1.4	98	Benzin	456789	Mexaniki	Ön	f	6800	4000	4466099	Pərvin	(055) 247-57-82	2020-11-17
5770	Bakı	Lexus	GS 300	2006	Sedan	Qara	3	249	Benzin	225000	Avtomat	Arxa	f	18700	11000	4466100	Chingiz	(055) 724-24-05	2020-11-17
5771	Zaqatala	Opel	Vectra	1995	Sedan	Gümüşü	1.6	75	Benzin	256321	Mexaniki	Ön	f	5200	3059	4466102	Şeyub	(070) 200-15-62	2020-11-17
5772	Bakı	Mercedes	E 240	2000	Sedan	Göy	2.6	177	Benzin	367000	Avtomat	Arxa	f	14000	8235	4466106	Imran	(055) 755-00-35	2020-11-17
5773	Bakı	Ford	Focus	2013	Hetçbek / Liftbek	Ağ	1.6	125	Benzin	197000	Mexaniki	Ön	f	12500	7353	4427502	Vusal	(055) 214-48-15	2020-11-17
5774	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Yaşıl	1.5	110	Dizel	184000	Mexaniki	Ön	f	11000	6471	4466114	Elaen	(050) 590-25-90	2020-11-17
5775	Bakı	Mitsubishi	Pajero	2011	Offroader / SUV	Gümüşü	3.5	202	Benzin	168369	Avtomat	Tam	f	29800	17529	4466121	Zakir	(050) 319-72-57	2020-11-17
5776	Bakı	LADA (VAZ)	2107	2012	Sedan	Göy	1.6	75	Benzin	40700	Mexaniki	Tam	f	8000	4706	4466186	Edalet	(051) 611-42-23	2020-11-17
5777	Bakı	Hyundai	Sonata	2006	Sedan	Qara	2.4	174	Benzin	200000	Avtomat	Ön	f	16800	9882	4466190	Dasqin	(071) 223-48-13	2020-11-17
5778	Mingəçevir	Opel	Astra	1999	Universal	Göy	1.6	101	Benzin	392300	Mexaniki	Ön	f	7500	4412	4466194	VASIF	(051) 613-00-43	2020-11-17
5779	Bakı	Toyota	Camry	2010	Sedan	Boz	2.5	181	Benzin	120705	Avtomat	Ön	f	17500	10294	4465952	MAIS	(055) 417-00-04	2020-11-17
5780	Zaqatala	LADA (VAZ)	2107	1999	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	4000	2353	4465956	Eldar	(050) 718-28-38	2020-11-17
5781	Bakı	Ford	Fiesta	2013	Hetçbek / Liftbek	Qırmızı	1.6	105	Benzin	51000	Avtomat	Ön	f	16000	9412	4455082	Maya	(050) 250-56-72	2020-11-17
5782	Gəncə	Opel	Astra	2008	Universal	Ağ	1.4	116	Benzin	167143	Mexaniki	Ön	f	11800	6941	4465964	 шахин	(055) 620-49-54	2020-11-17
5783	Bakı	Hyundai	Accent	2007	Sedan	Boz	1.5	110	Dizel	210444	Mexaniki	Ön	f	11400	6706	4465959	Fuad	(070) 921-05-53	2020-11-17
5784	Bakı	Lifan	620	2010	Sedan	Ağ	1.6	150	Benzin	240000	Mexaniki	Ön	f	7900	4647	4251079	Sənan	(051) 494-96-96	2020-11-17
5785	Bakı	Volkswagen	Jetta	2011	Sedan	Ağ	2.5	170	Benzin	160000	Avtomat	Ön	f	15500	9118	4465976	Asif	(051) 226-22-26	2020-11-17
5786	Yevlax	Opel	Vectra	1997	Sedan	Bənövşəyi	1.8	125	Benzin	270000	Avtomat	Tam	f	5000	2941	4465982	Feruz	(050) 588-44-89	2020-11-17
5787	Xırdalan	Hyundai	Elantra	2010	Sedan	Ağ	1.6	132	Benzin	130000	Avtomat	Ön	f	16500	9706	4465984	Eyyub	(077) 233-08-09	2020-11-17
5788	Bakı	Honda	Accord	2014	Sedan	Ağ	2.4	192	Benzin	102000	Avtomat	Tam	f	35500	20882	4465986	Ehmed	(050) 550-11-35	2020-11-17
5789	Bakı	BMW	523	1996	Sedan	Göy	2.5	170	Benzin	56000	Avtomat	Arxa	f	8000	4706	4465992	Taleh	(070) 399-56-65	2020-11-17
5790	Bakı	Nissan	Sunny	2019	Sedan	Ağ	1.5	99	Benzin	12370	Avtomat	Ön	f	25160	14800	4407993	Emin	(050) 962-35-10	2020-11-17
5791	Bakı	BMW	X5	2001	Offroader / SUV	Gümüşü	3	222	Benzin	277000	Avtomat	Tam	f	15000	8824	4441327	Ulvi	(055) 990-60-06	2020-11-17
5792	Bakı	LADA (VAZ)	2106	1985	Sedan	Qırmızı	1.5	65	Benzin	175005	Mexaniki	Arxa	f	2800	1647	4465949	Eldəniz	(077) 558-22-26	2020-11-17
5793	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	211000	Avtomat	Tam	f	29200	17176	4466009	Elnur	(055) 629-76-55	2020-11-17
5794	Bakı	Opel	Vectra	1999	Sedan	Qara	1.8	125	Benzin	296353	Mexaniki	Ön	f	6600	3882	4466003	Huseyin	(070) 244-42-75	2020-11-17
5795	Bakı	Opel	Astra	1998	Universal	Boz	2	136	Benzin	349063	Avtomat	Ön	f	8500	5000	4465857	Bahadur	(050) 319-09-76	2020-11-17
5796	Yevlax	LADA (VAZ)	2106	1985	Sedan	Yaşıl	1.6	75	Benzin	180000	Mexaniki	Arxa	f	3200	1882	4465868	Natiq	(055) 250-81-96	2020-11-17
5797	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	200000	Mexaniki	Tam	f	11000	6471	4465876	cabir	(055) 817-90-26	2020-11-17
5798	Bakı	Opel	Vectra	1996	Sedan	Ağ	2	136	Benzin	500000	Avtomat	Ön	f	5600	3294	4465880	Babek	(099) 707-85-84	2020-11-17
5799	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaş Asfalt	1.3	90	Dizel	173000	Mexaniki	Ön	f	11300	6647	4465874	Yagib	(055) 455-49-92	2020-11-17
5800	Bakı	Opel	Vectra	1996	Sedan	Göy	2	136	Benzin	250000	Avtomat	Ön	f	6600	3882	4465888	Elcin	(055) 965-72-30	2020-11-17
5801	Quba	LADA (VAZ)	2106	1987	Sedan	Sarı	1.3	65	Benzin	65000	Mexaniki	Arxa	f	3400	2000	4465894	Natiq	(070) 686-00-86	2020-11-17
5802	Bakı	Mercedes	Vito 115	2010	Van	Gümüşü	2.2	150	Dizel	320178	Avtomat	Arxa	f	28500	16765	4465900	Aslan	(070) 367-10-90	2020-11-17
5803	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Boz	1.5	76	Benzin	144900	Avtomat	Tam	f	15950	9382	4465901	Tural	(055) 257-49-34	2020-11-17
5804	Bakı	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	323000	Avtomat	Arxa	f	14900	8765	4465902	Abdullah	(055) 420-25-25	2020-11-17
5805	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Gümüşü	1.8	99	Hibrid	122000	Avtomat	Ön	f	20000	11765	4431609	Elmeddin	(055) 633-60-88	2020-11-17
5806	Lənkəran	MG	3	2012	Hetçbek / Liftbek	Qırmızı	1.5	106	Benzin	60000	Avtomat	Ön	f	8800	5176	4465910	Məhəmməd	(050) 642-12-39	2020-11-17
5807	Naxçıvan	Mercedes	E 220	1996	Sedan	Gümüşü	2.2	143	Dizel	358642	Avtomat	Arxa	f	16300	9588	4465916	Hüseyin	(070) 722-37-20	2020-11-17
5808	Bakı	Nissan	Micra	2011	Hetçbek / Liftbek	Ağ	1.2	80	Benzin	140000	Avtomat	Ön	f	12300	7235	4465922	Ruslan	(055) 453-00-11	2020-11-17
5809	Gəncə	Mitsubishi	Galant	2003	Sedan	Mavi	2.4	165	Benzin	117896	Avtomat	Tam	f	7500	4412	4465926	Elnur 	(055) 282-28-52	2020-11-17
5810	Bakı	Chevrolet	Malibu	2016	Sedan	Qara	1.5	160	Benzin	75000	Avtomat	Ön	f	25000	14706	4465931	Resad	(050) 722-59-97	2020-11-17
5811	Şəmkir	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	130000	Mexaniki	Arxa	f	6400	3765	4465932	Fedya	(050) 775-07-57	2020-11-17
5812	Bakı	Mercedes	E 350	2006	Sedan	Qara	3.5	272	Benzin	226000	Avtomat	Arxa	f	24800	14588	4258923	Elman	(051) 444-56-00	2020-11-17
5813	Bakı	Mitsubishi	Pajero io	1999	Offroader / SUV	Ağ	1.8	136	Benzin	300000	Avtomat	Tam	f	7300	4294	4465917	Rövşən	(070) 647-85-95	2020-11-17
5814	Sumqayıt	Chevrolet	Cruze	2010	Sedan	Tünd qırmızı	1.8	141	Benzin	155400	Avtomat	Ön	f	13700	8059	4465943	Rafael	(051) 300-15-88	2020-11-17
5815	Bakı	Opel	Vectra	1997	Sedan	Tünd qırmızı	1.6	101	Benzin	310000	Avtomat	Ön	f	5200	3059	4465945	Şamil	(077) 766-67-75	2020-11-17
5816	Bakı	Opel	Zafira	2007	Minivan	Boz	1.9	130	Dizel	300000	Mexaniki	Ön	f	12500	7353	4465948	Nurlan	(055) 510-30-92	2020-11-17
5817	Bakı	Nissan	X-Trail	2004	Offroader / SUV	Qara	2.5	170	Benzin	236000	Avtomat	Tam	f	10800	6353	4466011	Elsavar	(070) 304-35-33	2020-11-17
5818	Naxçıvan	Chevrolet	Cruze	2015	Sedan	Boz	1.4	141	Benzin	41000	Avtomat	Ön	f	15900	9353	4466018	Zamin	(060) 308-80-80	2020-11-17
5819	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Ağ	1.6	116	Benzin	179800	Avtomat	Ön	f	13800	8118	4466023	Vefa	(055) 889-66-69	2020-11-17
5820	Salyan	Mercedes	E 200	2011	Sedan	Ağ	1.8	163	Benzin	92000	Avtomat	Arxa	f	38930	22900	4466022	Fərid	(055) 775-92-98	2020-11-17
5822	Bakı	Hyundai	Grandeur	2012	Sedan	Ağ	2.4	178	Benzin	126000	Avtomat	Ön	f	28800	16941	4465816	Həsən	(070) 870-16-00	2020-11-17
5823	Bakı	Mazda	3	2008	Sedan	Boz	2	157	Benzin	230000	Avtomat	Ön	f	11500	6765	4465810	Тахмина	(051) 514-49-28	2020-11-17
5824	Mingəçevir	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	213000	Mexaniki	Arxa	f	7500	4412	4465822	Elçin	(055) 538-09-16	2020-11-17
5825	Sumqayıt	Volkswagen	Passat	1998	Universal	Göy	1.8	170	Benzin	225000	Avtomat	Ön	f	4300	2529	4430793	Ceyhun	(050) 693-19-78	2020-11-17
5826	Sumqayıt	Volkswagen	Passat	2010	Sedan	Boz	2	150	Benzin	167000	Avtomat	Ön	f	10500	6176	4446536	Resad	(070) 558-58-18	2020-11-17
5827	Qax	BMW	318	2001	Sedan	Boz	1.9	118	Benzin	385000	Avtomat	Arxa	f	10500	6176	4465825	Malik	(070) 434-40-34	2020-11-17
5828	Sumqayıt	LADA (VAZ)	2107	2005	Sedan	Tünd qırmızı	1.6	75	Benzin	245000	Mexaniki	Arxa	f	4800	2824	4465827	Harun	(052) 307-85-71	2020-11-17
5829	Bakı	BMW	528	2015	Sedan	Qara	2	245	Benzin	55000	Avtomat	Arxa	f	44540	26200	4465829	Amid	(055) 640-25-75	2020-11-17
5830	Zaqatala	Mercedes	C 180	1997	Sedan	Boz	1.8	122	Benzin	226000	Avtomat	Tam	f	10000	5882	4465832	Nəzir	(070) 681-73-00	2020-11-17
5831	Sumqayıt	LADA (VAZ)	2106	2003	Sedan	Ağ	1.6	75	Benzin	127355	Mexaniki	Arxa	f	5500	3235	4465833	Əlixam	(070) 712-47-23	2020-11-17
5832	Quba	LADA (VAZ)	2107	2008	Sedan	Tünd qırmızı	1.6	75	Benzin	44500	Mexaniki	Arxa	f	6900	4059	4465836	Azad	(050) 716-26-58	2020-11-17
5833	Bakı	KamAz	55111	1991	Yük maşını	Ağ	11	191	Dizel	705000	Mexaniki	Arxa	f	14000	8235	4465849	cəlal	(070) 229-29-39	2020-11-17
5834	Bakı	Mercedes	GL 350	2011	Offroader / SUV	Qara	3	265	Dizel	144500	Avtomat	Tam	f	45560	26800	4465850	Balas	(050) 327-66-67	2020-11-17
5835	Astara	Chevrolet	Cruze	2015	Sedan	Qırmızı	1.4	141	Benzin	100000	Avtomat	Ön	f	15700	9235	4465846	İlqar	(050) 872-83-73	2020-11-17
5836	Tovuz	Mercedes	C 240	2000	Sedan	Gümüşü	2.4	170	Benzin	207000	Avtomat	Tam	f	14200	8353	4465756	Elcin	(050) 223-63-68	2020-11-17
5837	Bakı	LADA (VAZ)	2107	2004	Sedan	Qırmızı	1.6	75	Benzin	168655	Mexaniki	Arxa	f	5900	3471	4465763	Cavid	(055) 499-77-27	2020-11-17
5838	Bakı	Land Rover	Discovery	2012	Offroader / SUV	Qara	3	190	Dizel	179600	Avtomat	Tam	f	52700	31000	4413458	Elvin	(055) 557-82-85	2020-11-17
5839	Qazax	Opel	Vectra	1997	Sedan	Qara	2.5	170	Benzin	200000	Avtomat	Ön	f	6300	3706	4465766	Musa	(070) 405-00-35	2020-11-17
5840	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Qara	1.3	90	Dizel	340000	Mexaniki	Ön	f	11000	6471	4465772	Perviz	(051) 864-95-95	2020-11-17
5841	Quba	LADA (VAZ)	2109	1991	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	300000	Mexaniki	Ön	f	4200	2471	4465773	Nurlan	(055) 448-94-74	2020-11-17
5842	İsmayıllı	Mercedes	E 200	1994	Sedan	Qəhvəyi	2	136	Benzin	385090	Mexaniki	Arxa	f	7000	4118	4465775	Ismet	(055) 869-19-79	2020-11-17
5843	Bakı	LADA (VAZ)	2107	1987	Sedan	Ağ	1.5	65	Benzin	706851	Mexaniki	Arxa	f	3200	1882	4465776	Saleh 	(077) 389-39-79	2020-11-17
5844	Kürdəmir	Ford	Transit	2000	Yük maşını	Ağ	2.4	140	Dizel	290000	Mexaniki	Arxa	f	21000	12353	4465784	Gulbala	(070) 626-13-32	2020-11-17
5845	Bakı	Audi	A5	2010	Hetçbek / Liftbek	Qara	1.8	160	Benzin	162000	Avtomat	Ön	f	26000	15294	4351996	Ruslan	(055) 234-33-00	2020-11-17
5846	İmişli	LADA (VAZ)	2106	1983	Sedan	Gümüşü	1.6	75	Benzin	186000	Mexaniki	Arxa	f	3500	2059	4465792	Cavid	(051) 711-99-77	2020-11-17
5847	Bakı	LADA (VAZ)	Kalina	2015	Universal	Gümüşü	1.6	106	Benzin	64280	Avtomat	Ön	f	15500	9118	4465794	Ruhat	(050) 550-12-32	2020-11-17
5848	Qax	LADA (VAZ)	2115	2011	Sedan	Ağ	1.6	80	Benzin	127340	Mexaniki	Ön	f	8900	5235	4465798	Ülvi	(070) 728-01-12	2020-11-17
5849	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2	165	Benzin	247200	Avtomat	Ön	f	20910	12300	4465801	Ruhid	(050) 681-10-30	2020-11-17
5850	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	54330	Mexaniki	Arxa	f	6800	4000	4464882	Samir	(055) 555-30-35	2020-11-17
5851	Mingəçevir	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	100000	Mexaniki	Arxa	f	7800	4588	4465719	Xəyyam 	(051) 533-99-89	2020-11-17
5852	Mingəçevir	LADA (VAZ)	Niva	1998	Offroader / SUV	Ağ	1.6	75	Benzin	175000	Mexaniki	Arxa	f	6500	3824	4465722	Mirrasim	(051) 970-67-10	2020-11-17
5853	Bakı	Mercedes	C 230	2001	Hetçbek / Liftbek	Ağ	2.3	192	Benzin	300205	Avtomat	Arxa	f	11000	6471	4465725	Akif	(051) 327-66-67	2020-11-17
5854	Bakı	Nissan	Micra	2011	Hetçbek / Liftbek	Yaş Asfalt	1.2	80	Benzin	180000	Avtomat	Ön	f	10800	6353	4465726	İlkin	(055) 501-19-87	2020-11-17
5855	Bakı	BMW	328	2014	Sedan	Ağ	2	245	Benzin	119000	Avtomat	Arxa	f	33998	19999	4465728	Elvin	(070) 268-59-49	2020-11-17
5856	Bakı	KamAz	65115	1989	Yük maşını	Ağ	11	191	Dizel	195000	Mexaniki	Arxa	f	22500	13235	4465730	Mübariz 	(055) 805-82-60	2020-11-17
5857	Şəki	Opel	Astra	2004	Hetçbek / Liftbek	Qara	1.4	91	Benzin	206200	Mexaniki	Ön	f	10300	6059	4465733	ANAR	(051) 459-95-99	2020-11-17
5858	Lerik	Chevrolet	Niva	2008	Offroader / SUV	Yaş Asfalt	1.7	80	Benzin	81000	Mexaniki	Tam	f	7700	4529	4465737	Sefa	(051) 776-94-41	2020-11-17
5859	Kürdəmir	Ford	Transit	1991	Mikroavtobus	Ağ	2.4	120	Dizel	480000	Mexaniki	Arxa	f	11000	6471	4465735	Şərafət	(055) 369-78-42	2020-11-17
5860	Bakı	Chevrolet	Epica	2006	Sedan	Qara	2	143	Benzin	230000	Mexaniki	Ön	f	12500	7353	4465741	Elxan	(050) 212-22-92	2020-11-17
5861	Bakı	GAZ	24	1983	Pikap	Bej	2.4	90	Benzin	395000	Mexaniki	Arxa	f	4300	2529	4465742	İlqar	(055) 361-27-85	2020-11-17
5862	Bakı	Volkswagen	Passat	1999	Sedan	Gümüşü	1.8	160	Benzin	355555	Avtomat	Ön	f	6500	3824	4465745	Turac	(070) 298-50-25	2020-11-17
5863	Bakı	Chevrolet	Equinox	2019	Offroader / SUV	Yaş Asfalt	1.5	172	Benzin	13700	Avtomat	Ön	f	33490	19700	4461785	Elsad	(055) 757-01-01	2020-11-17
5864	Naxçıvan	Changan	CS 35	2014	Offroader / SUV	Ağ	1.6	124	Benzin	101000	Avtomat	Ön	f	14900	8765	4465747	Cavid 	(050) 573-49-11	2020-11-17
5865	Balakən	LADA (VAZ)	2107	1984	Sedan	Ağ	1.5	65	Benzin	92000	Mexaniki	Arxa	f	3950	2324	4465753	Nizami	(050) 519-15-98	2020-11-17
5866	Bakı	Mercedes	E 250	1992	Universal	Qara	2.5	150	Dizel	452321	Avtomat	Arxa	f	13900	8176	4465754	Rewad	(051) 451-64-44	2020-11-17
5867	Bakı	Ssang Yong	Korando	2013	Offroader / SUV	Boz	2	126	Benzin	140000	Avtomat	Ön	f	17300	10176	4439508	Nabi	(055) 585-75-75	2020-11-17
5868	Sumqayıt	Opel	Astra	2008	Universal	Mavi	1.3	90	Dizel	200000	Mexaniki	Ön	f	11200	6588	4465755	Elmeddin	(077) 471-03-00	2020-11-17
5869	Bakı	Mercedes	E 220	2001	Universal	Göy	2.2	143	Dizel	555824	Avtomat	Arxa	f	13500	7941	4465804	Elnur	(055) 630-06-64	2020-11-17
5870	Sumqayıt	Kia	Ceed	2008	Universal	Boz	1.6	115	Dizel	160000	Mexaniki	Ön	f	13600	8000	4465807	Elchin 	(055) 704-70-08	2020-11-17
5871	Sumqayıt	Renault	Megane	2009	Hetçbek / Liftbek	Boz	1.5	106	Dizel	330100	Mexaniki	Ön	f	12700	7471	4465809	Roma	(070) 784-94-99	2020-11-17
5872	İmişli	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Qara	1.6	106	Benzin	180000	Mexaniki	Ön	f	11800	6941	4465814	FUAD	(050) 459-86-69	2020-11-17
5873	Biləsuvar	Renault	Safrane	1999	Hetçbek / Liftbek	Qara	2	136	Benzin	280000	Mexaniki	Ön	f	4000	2353	4465641	Vuqar	(050) 503-16-86	2020-11-17
5874	Sumqayıt	Lexus	LX 470	2007	Offroader / SUV	Ağ	4.7	275	Benzin	160000	Avtomat	Tam	f	40800	24000	4465650	Asif	(055) 786-83-56	2020-11-17
5875	Bakı	Mercedes	C 180	1995	Sedan	Göy	1.8	122	Benzin	45000	Avtomat	Arxa	f	7300	4294	4465657	Punhan	(050) 522-22-00	2020-11-17
5876	Ağdaş	Mercedes	C 180	1998	Sedan	Qara	1.8	122	Benzin	220436	Avtomat	Arxa	f	11000	6471	4465660	Orxan 	(050) 791-91-63	2020-11-17
5877	Bakı	Chevrolet	Cruze	2014	Sedan	Göy	1.4	141	Benzin	83096	Avtomat	Ön	f	14350	8441	4454614	Necef	(055) 222-81-01	2020-11-17
5878	Şirvan	GAZ	3110	2003	Sedan	Gümüşü	2.4	131	Benzin	150000	Mexaniki	Arxa	f	5200	3059	4465680	Elimerden 	(055) 828-89-95	2020-11-17
5879	Bakı	Toyota	RAV 4	2010	Offroader / SUV	Göy	2.4	160	Benzin	146000	Avtomat	Tam	f	28000	16471	4465684	Elnur	(077) 567-41-41	2020-11-17
5880	Bakı	Hyundai	Sonata	2010	Sedan	Boz	2	274	Benzin	144000	Avtomat	Ön	f	19800	11647	4465690	Mehemmed	(055) 319-05-65	2020-11-17
5881	Bakı	Hyundai	Coupe	1997	Kupe	Ağ	1.6	132	Benzin	114885	Mexaniki	Ön	f	6000	3529	4465687	Lutviyar	(055) 621-24-72	2020-11-17
5882	Lənkəran	LADA (VAZ)	2107	2004	Sedan	Tünd qırmızı	1.6	75	Benzin	123423	Mexaniki	Arxa	f	5500	3235	4465692	Elçin	(050) 427-45-56	2020-11-17
5883	Bakı	Chevrolet	Cruze	2010	Sedan	Ağ	1.6	124	Benzin	312000	Mexaniki	Ön	f	13300	7824	4465693	Zaur	(055) 490-99-80	2020-11-17
5884	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Göy	1.4	90	Benzin	242000	Mexaniki	Ön	f	10150	5971	4460627	Emin	(055) 207-10-18	2020-11-17
5885	Gəncə	Mercedes	E 280	1997	Sedan	Gümüşü	2.8	193	Benzin	340000	Avtomat	Arxa	f	12200	7176	4465703	Orxan	(051) 464-12-42	2020-11-17
5886	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	128000	Avtomat	Ön	f	11700	6882	4413020	Vahid	(055) 864-34-44	2020-11-17
5887	Bakı	LADA (VAZ)	2106	1979	Sedan	Ağ	1.6	75	Benzin	300000	Mexaniki	Tam	f	3200	1882	4465704	Elxan 	(070) 350-12-13	2020-11-17
5888	Bakı	Mitsubishi	Pajero	2008	Offroader / SUV	Qara	3	190	Benzin	217000	Avtomat	Tam	f	22800	13412	4465711	FUAD	(055) 592-09-38	2020-11-17
5889	Sumqayıt	LADA (VAZ)	2106	1992	Sedan	Ağ	1.5	65	Benzin	300000	Mexaniki	Arxa	f	3650	2147	4465562	Samir	(070) 886-03-38	2020-11-17
5890	Bakı	LADA (VAZ)	2107	2008	Sedan	Tünd qırmızı	1.5	65	Benzin	120000	Mexaniki	Arxa	f	6700	3941	4465569	Kamal	(055) 734-34-08	2020-11-17
5891	Bərdə	Mercedes	ML 270	2003	Offroader / SUV	Qara	2.7	163	Dizel	350000	Avtomat	Tam	f	16800	9882	4465565	Şamil	(050) 676-72-96	2020-11-17
5892	Bakı	Mercedes	S 350	2018	Sedan	Qara	3	306	Dizel	33000	Avtomat	Tam	f	156400	92000	4067437	Novruz	(050) 220-42-12	2020-11-17
5893	Zaqatala	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	77000	Avtomat	Ön	f	16800	9882	4012907	Sefer	(077) 524-16-43	2020-11-17
5894	Bakı	Mercedes	S 350	2008	Sedan	Qara	3.5	272	Benzin	175006	Avtomat	Arxa	f	44200	26000	4465583	Xəyal	(051) 380-18-58	2020-11-17
5895	Bakı	LADA (VAZ)	Priora	2014	Sedan	Ağ	1.6	106	Benzin	201300	Mexaniki	Ön	f	12800	7529	4465585	Elvin	(055) 300-14-44	2020-11-17
5896	Salyan	LADA (VAZ)	2115	2012	Sedan	Tünd qırmızı	1.6	80	Benzin	162000	Mexaniki	Ön	f	10000	5882	4465589	Yunus	(055) 685-29-61	2020-11-17
5897	Bakı	Mercedes	E 240	1998	Sedan	Qara	2.4	170	Benzin	238000	Avtomat	Arxa	f	12300	7235	4465586	Emil	(077) 632-11-10	2020-11-17
5898	Sumqayıt	Kia	Optima	2012	Sedan	Qara	2.4	180	Benzin	107000	Avtomat	Ön	f	25900	15235	4459418	Ələkbər	(070) 213-10-98	2020-11-17
5899	Ağcabədi	Hyundai	Sonata	2008	Sedan	Qara	3.3	233	Benzin	248350	Avtomat	Ön	f	18300	10765	4465600	CAVİD	(051) 720-06-02	2020-11-17
5900	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Boz	1.4	90	Benzin	208000	Mexaniki	Ön	f	11900	7000	4450576	Raqib	(070) 205-68-38	2020-11-17
5901	Bakı	LADA (VAZ)	2112	2003	Hetçbek / Liftbek	Gümüşü	1.5	75	Benzin	464000	Mexaniki	Ön	f	7000	4118	4465605	Nail	(050) 553-52-11	2020-11-17
5902	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Qara	1.7	80	Benzin	90000	Mexaniki	Tam	f	15500	9118	4465606	Nicat	(051) 464-37-87	2020-11-17
5903	Bakı	LADA (VAZ)	2107	1997	Sedan	Ağ	1.6	75	Benzin	350000	Mexaniki	Arxa	f	4700	2765	4465620	Seban	(050) 627-57-74	2020-11-17
5904	Lənkəran	Mercedes	C 180	1996	Sedan	Göy	1.8	122	Benzin	220000	Avtomat	Arxa	f	8500	5000	4465616	Afiq	(055) 606-88-56	2020-11-17
5905	Bakı	Mercedes	E 220	2008	Sedan	Qara	2.2	170	Dizel	178000	Avtomat	Arxa	f	27300	16059	4465634	Samir	(055) 510-58-48	2020-11-17
5906	Qobustan	LADA (VAZ)	2107	2003	Sedan	Göy	1.6	75	Benzin	235592	Mexaniki	Arxa	f	5100	3000	4465632	Mahir	(050) 318-24-53	2020-11-17
5907	Bakı	Nissan	Maxima	2002	Sedan	Ağ	3	200	Benzin	172000	Avtomat	Ön	f	10500	6176	4452873	Elbrus	(070) 692-72-32	2020-11-17
5908	Bakı	Mercedes	E 240	2000	Sedan	Yaşıl	2.4	170	Benzin	348500	Avtomat	Arxa	f	13700	8059	4465635	Novruz	(055) 434-14-14	2020-11-17
5909	Gəncə	Mercedes	E 230	1997	Sedan	Göy	2.3	150	Benzin	280000	Mexaniki	Arxa	f	9900	5824	4465631	Samir	(077) 548-55-33	2020-11-17
5910	Gəncə	Hyundai	Sonata	2008	Sedan	Gümüşü	2	165	Dizel	170000	Avtomat	Ön	f	19800	11647	4465710	Loğman	(055) 555-14-38	2020-11-17
5911	Beyləqan	Toyota	Prado	2008	Offroader / SUV	Ağ	4	250	Benzin	151000	Avtomat	Tam	f	39610	23300	4465417	Umid	(050) 769-80-88	2020-11-17
5912	Masallı	Hyundai	Coupe	2003	Kupe	Sarı	2.7	167	Benzin	300000	Mexaniki	Ön	f	11500	6765	4465507	Pərviz	(050) 335-61-18	2020-11-17
5913	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	135000	Mexaniki	Arxa	f	7000	4118	4465517	Elçin	(051) 696-62-44	2020-11-17
5914	Bakı	Mercedes	C 180	1996	Sedan	Qara	1.8	122	Benzin	347000	Avtomat	Arxa	f	9200	5412	4457285	aga	(050) 508-44-50	2020-11-17
5915	Bakı	Kia	Sorento	2010	Offroader / SUV	Ağ	2	184	Dizel	106000	Avtomat	Ön	f	25800	15176	4465520	Islam	(070) 777-17-67	2020-11-17
5916	İmişli	Mercedes	190	1989	Sedan	Boz	2	122	Benzin	231400	Avtomat	Arxa	f	6300	3706	4465527	Şahin	(050) 441-98-48	2020-11-17
5917	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	183400	Mexaniki	Ön	f	11800	6941	4465525	Orxan	(050) 760-67-96	2020-11-17
5918	Bakı	Hyundai	Azera	2011	Sedan	Ağ	2.4	180	Benzin	157000	Avtomat	Ön	f	24650	14500	4429733	Elchin	(070) 214-24-99	2020-11-17
5919	Gəncə	GAZ	3110	2001	Sedan	Ağ	2.5	96	Benzin	322000	Mexaniki	Arxa	f	4500	2647	4465533	Aslan  	(055) 831-30-40	2020-11-17
5920	Bakı	Opel	Vectra	1998	Universal	Göy	2	136	Benzin	235000	Avtomat	Ön	f	4600	2706	4465536	Rafael	(070) 242-67-56	2020-11-17
5921	Bakı	Lexus	RX 300	2000	Offroader / SUV	Qara	3	204	Benzin	230000	Avtomat	Tam	f	12500	7353	4465539	Elmeddin	(055) 257-23-03	2020-11-17
5922	Sumqayıt	Tofas	Kartal	1996	Universal	Yaş Asfalt	1.6	86	Benzin	236000	Mexaniki	Arxa	f	3600	2118	4465540	rusif	(070) 265-29-20	2020-11-17
5923	Gəncə	LADA (VAZ)	2107	2011	Sedan	Qara	1.5	65	Benzin	98000	Mexaniki	Arxa	f	7000	4118	4465545	Elvin	(055) 220-78-58	2020-11-17
5924	Şəmkir	GAZ	330200	2005	Yük maşını	Ağ	2.5	96	Benzin	400000	Mexaniki	Arxa	f	11000	6471	4465547	Elmir	(051) 790-68-69	2020-11-17
5925	Naxçıvan	Mercedes	E 200	2009	Sedan	Qara	2	136	Benzin	189000	Avtomat	Ön	f	22000	12941	4465549	Əmrah	(050) 304-90-60	2020-11-17
5926	Bakı	Renault	19	1995	Sedan	Göy	1.6	90	Benzin	648879	Mexaniki	Ön	f	5500	3235	4465458	Xaqani	(077) 433-21-57	2020-11-17
5927	Bakı	Mercedes	E 230	2007	Sedan	Ağ	2.5	204	Benzin	164000	Avtomat	Arxa	f	23800	14000	4465464	Azer	(050) 440-60-50	2020-11-17
5928	Bakı	Nissan	X-Trail	2005	Offroader / SUV	Qara	2	140	Benzin	247800	Avtomat	Tam	f	12500	7353	4436728	Asif	(055) 660-35-52	2020-11-17
5929	Bakı	Toyota	Land Cruiser	2005	Offroader / SUV	Qara	4.5	224	Benzin	89000	Avtomat	Tam	f	33500	19706	4465471	Xəyal	(050) 670-32-50	2020-11-17
5930	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	4	250	Benzin	153000	Avtomat	Tam	f	41500	24412	4375096	İqbal	(055) 811-17-99	2020-11-17
5931	İmişli	KamAz	55111	1993	Yük maşını	Boz	11	191	Dizel	800000	Mexaniki	Arxa	f	23500	13824	4465473	Xalid	(050) 305-00-16	2020-11-17
5932	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	210000	Avtomat	Ön	f	14300	8412	4465475	Denis	(050) 253-06-49	2020-11-17
5933	Bakı	Mercedes	190	1989	Sedan	Ağ	2	122	Dizel	456879	Mexaniki	Arxa	f	6700	3941	4465478	Ferid	(077) 323-03-05	2020-11-17
5934	Bakı	Kia	Optima	2013	Sedan	Ağ	2.4	180	Benzin	124000	Avtomat	Ön	f	26300	15471	4432518	Chingiz	(050) 597-47-47	2020-11-17
5935	Bakı	Chevrolet	Aveo	2012	Sedan	Qara	1.4	107	Benzin	199000	Avtomat	Ön	f	11700	6882	4465486	Emin	(055) 264-46-76	2020-11-17
5936	Bakı	BMW	630	2005	Kabrio	Qara	3	258	Benzin	5558	Avtomat	Arxa	f	68000	40000	4076665	Elvin	(055) 788-81-88	2020-11-17
5937	Bakı	Mercedes	E 300	2013	Sedan	Qara	3	231	Benzin	258000	Avtomat	Arxa	f	36550	21500	4428482	Elvin	(050) 290-25-38	2020-11-17
5938	Bakı	Mercedes	E 300	2013	Sedan	Qara	3	231	Benzin	105000	Avtomat	Arxa	f	39950	23500	4435858	Elvin	(050) 290-25-38	2020-11-17
5939	Bakı	Hyundai	Sonata	2008	Sedan	Gümüşü	2.4	174	Benzin	156000	Avtomat	Ön	f	16500	9706	4465493	aladdin	(050) 210-97-91	2020-11-17
5940	Sumqayıt	BMW	745	2003	Sedan	Qara	4.4	333	Benzin	212500	Avtomat	Arxa	f	11200	6588	4365542	Vusal	(055) 707-72-44	2020-11-17
5941	Bakı	Hyundai	Elantra	2014	Sedan	Boz	1.8	150	Benzin	78700	Avtomat	Ön	f	18700	11000	4465492	Ilqar	(050) 311-00-09	2020-11-17
5942	Biləsuvar	LADA (VAZ)	21099	2004	Sedan	Gümüşü	1.5	75	Benzin	150585	Mexaniki	Ön	f	6500	3824	4465505	Abdula	(050) 542-03-62	2020-11-17
5943	Bakı	Kia	Sorento	2010	Offroader / SUV	Yaş Asfalt	2	184	Dizel	58000	Avtomat	Ön	f	24500	14412	4465550	Perviz	(055) 766-36-83	2020-11-17
5944	Bakı	Ford	Fiesta	2016	Hetçbek / Liftbek	Ağ	1.4	110	Benzin	110000	Avtomat	Ön	f	15500	9118	4465551	Behruz	(050) 600-04-39	2020-11-17
5945	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	6000	3529	4465554	Ferid	(050) 994-73-92	2020-11-17
5946	Şəki	LADA (VAZ)	2107	2007	Furqon	Ağ	1.6	75	Benzin	300000	Mexaniki	Arxa	f	7000	4118	4465555	Sabir	(070) 922-05-87	2020-11-17
5947	Bakı	Lexus	GS 250	2013	Sedan	Boz	2.5	209	Benzin	163000	Avtomat	Arxa	f	47600	28000	4409033	Elvin	(051) 699-60-19	2020-11-17
5948	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	140200	Avtomat	Ön	f	14600	8588	4456675	Xalid	(050) 754-46-97	2020-11-17
5949	Cəlilabad	Mercedes	E 240	2000	Universal	Gümüşü	2.4	170	Benzin	400000	Avtomat	Arxa	f	12500	7353	4465382	Elisa	(055) 284-84-24	2020-11-17
5950	Bakı	Mitsubishi	Pajero	2003	Offroader / SUV	Gümüşü	3	190	Benzin	260000	Avtomat	Tam	f	11000	6471	4465384	Tural	(050) 569-61-65	2020-11-17
5951	Bakı	Opel	Astra	2000	Universal	Göy	1.6	101	Benzin	319000	Mexaniki	Ön	f	8500	5000	4465388	Asif	(070) 653-62-14	2020-11-17
5952	Bakı	Nissan	X-Trail	2002	Offroader / SUV	Qara	2	140	Benzin	173850	Avtomat	Tam	f	9000	5294	4465390	Orxan	(050) 784-35-64	2020-11-17
5953	Gəncə	Opel	Astra	2006	Hetçbek / Liftbek	Qızılı	1.4	90	Benzin	180000	Mexaniki	Ön	f	10700	6294	4465394	Ferhad	(055) 399-75-75	2020-11-17
5954	Bakı	Chery	Tiggo	2011	Offroader / SUV	Qara	2	160	Benzin	99776	Avtomat	Ön	f	12300	7235	4465395	Adil	(050) 663-65-75	2020-11-17
5955	Ağsu	LADA (VAZ)	2107	1986	Sedan	Qırmızı	1.6	75	Benzin	100000	Mexaniki	Arxa	f	2900	1706	4465400	Ilkin	(050) 531-38-73	2020-11-17
5956	Gəncə	Changan	Alsvin V7	2018	Sedan	Göy	1.5	110	Qaz	9500	Avtomat	Ön	f	22000	12941	4465401	Orxan	(055) 679-51-12	2020-11-17
5957	Şəmkir	Daewoo	Labo	1998	Yük maşını	Ağ	0.8	50	Benzin	64000	Mexaniki	Arxa	f	3000	1765	4465383	Nurlan	(050) 432-93-42	2020-11-17
5958	Bakı	Chevrolet	Cruze	2016	Sedan	Qara	1.4	141	Benzin	34000	Avtomat	Ön	f	17900	10529	4465405	Yaşar	(077) 553-10-10	2020-11-17
5959	Astara	Mercedes	S 320	1991	Sedan	Qara	3.2	224	Benzin	214000	Avtomat	Arxa	f	16950	9971	4465412	Şahlar	(050) 200-72-47	2020-11-17
5960	Cəlilabad	Ford	Transit	2007	Furqon	Ağ	2.4	140	Dizel	189000	Mexaniki	Arxa	f	20600	12118	4461799	Mirəli	(050) 528-00-42	2020-11-17
5961	Göygöl	Mercedes	E 240	1998	Sedan	Boz	2.4	170	Benzin	187000	Avtomat	Arxa	f	13500	7941	4465422	Məhəmməd	(055) 502-44-66	2020-11-17
5962	Bakı	HOWO	Sinotruk	2008	Yük maşını	Qırmızı	8.5	371	Dizel	178000	Mexaniki	Tam	f	45000	26471	4465320	Elsevər	(050) 682-67-01	2020-11-17
5963	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Gümüşü	1.5	110	Dizel	273000	Mexaniki	Ön	f	11500	6765	4465321	RAUF	(050) 450-05-85	2020-11-17
5964	Bakı	BMW	X5	2002	Offroader / SUV	Qara	3	231	Benzin	270000	Avtomat	Tam	f	15000	8824	4429159	Amid	(055) 247-41-48	2020-11-17
5965	Bakı	Hyundai	Sonata	2011	Sedan	Gümüşü	2.4	178	Benzin	153000	Avtomat	Ön	f	19200	11294	4465327	Eziz	(070) 608-08-10	2020-11-17
5966	Gəncə	Opel	Astra	2005	Hetçbek / Liftbek	Göy	1.3	90	Dizel	207000	Mexaniki	Ön	f	10800	6353	4465331	Samil	(055) 222-80-95	2020-11-17
5967	Gəncə	Audi	A4	1995	Sedan	Yaş Asfalt	1.8	125	Benzin	400000	Mexaniki	Ön	f	5500	3235	4465335	Emin	(070) 509-19-99	2020-11-17
5968	Zaqatala	LADA (VAZ)	2108	1986	Hetçbek / Liftbek	Qırmızı	1.5	75	Benzin	220000	Mexaniki	Ön	f	6800	4000	4465342	Turan	(055) 704-54-04	2020-11-17
5969	Bakı	Moskvich	2141	1989	Hetçbek / Liftbek	Sarı	1.5	75	Benzin	250000	Mexaniki	Ön	f	1900	1118	4465343	Eldeniz	(070) 598-14-51	2020-11-17
5970	Şirvan	Chevrolet	Cruze	2014	Sedan	Boz	1.4	140	Benzin	86300	Avtomat	Ön	f	14300	8412	4465344	Mehemmed	(055) 700-74-60	2020-11-17
5971	Cəlilabad	LADA (VAZ)	2106	1990	Sedan	Yaşıl	1.6	75	Benzin	200000	Mexaniki	Arxa	f	3800	2235	4465351	Cavad	(051) 759-50-03	2020-11-17
5972	Bakı	Mercedes	Viano	2011	Van	Qara	2.2	170	Dizel	235000	Avtomat	Arxa	f	44200	26000	4465350	Ismayil	(051) 666-22-00	2020-11-17
5973	Bakı	Chevrolet	Lacetti	2010	Sedan	Qara	1.8	121	Benzin	171000	Mexaniki	Ön	f	12800	7529	4465362	fuad	(055) 211-91-79	2020-11-17
5974	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	4	250	Benzin	139000	Avtomat	Tam	f	45050	26500	4000046	Royal	(050) 753-21-42	2020-11-17
5975	Bakı	Hyundai	Tucson	2008	Offroader / SUV	Qara	2	144	Benzin	157583	Avtomat	Ön	f	14500	8529	4465359	İlqar	(070) 830-78-43	2020-11-17
5976	Astara	GAZ	3102	1988	Sedan	Qara	2.4	131	Benzin	360000	Mexaniki	Arxa	f	3500	2059	4298961	Adil	(050) 961-21-81	2020-11-17
5977	Bakı	LADA (VAZ)	Niva	2019	Offroader / SUV	Ağ	1.7	80	Benzin	25200	Mexaniki	Tam	f	15200	8941	4465374	Samir	(050) 387-81-31	2020-11-17
5978	Bakı	Hyundai	ix35	2013	Offroader / SUV	Qara	2	166	Benzin	37500	Avtomat	Tam	f	32800	19294	4361955	Elizbar	(051) 404-77-33	2020-11-17
5979	Bakı	Ford	Fusion	2015	Sedan	Qara	1.5	181	Benzin	110000	Avtomat	Ön	f	19900	11706	4439718	Qudret	(055) 244-44-22	2020-11-17
5980	Sumqayıt	Daewoo	Prince	1996	Sedan	Qara	2	136	Benzin	250000	Mexaniki	Arxa	f	2300	1353	4465428	Mehman	(050) 200-85-90	2020-11-17
5981	Masallı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	42252	Mexaniki	Arxa	f	7900	4647	4465436	Elvin	(050) 555-13-67	2020-11-17
5982	Bakı	Toyota	Corolla	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Dizel	199887	Mexaniki	Ön	f	12300	7235	4463241	Ferman	(055) 906-47-98	2020-11-17
5983	Bakı	Hyundai	Getz	2008	Hetçbek / Liftbek	Qırmızı	1.6	106	Benzin	233665	Avtomat	Ön	f	11000	6471	4415317	Tunar	(050) 387-63-42	2020-11-17
5984	Zaqatala	Ford	Transit	2007	Furqon	Ağ	2.4	140	Dizel	180000	Mexaniki	Arxa	f	25500	15000	4440767	Rustam	(055) 294-14-94	2020-11-17
5985	Bakı	Porsche	Panamera 4S	2009	Hetçbek / Liftbek	Ağ	4.8	400	Benzin	95900	Avtomat	Tam	f	50490	29700	4465438	Elvin	(050) 272-71-22	2020-11-17
5986	Bakı	Mercedes	E 240	2000	Sedan	Boz	2.6	177	Benzin	320000	Avtomat	Arxa	f	15800	9294	4436796	Anar	(055) 533-43-33	2020-11-17
5987	Bakı	Mercedes	C 230	1995	Sedan	Göy	2.2	146	Benzin	296000	Avtomat	Arxa	f	8500	5000	4465277	Huseyn 	(051) 568-22-41	2020-11-17
5988	Bakı	Toyota	Prado	2006	Offroader / SUV	Qara	2.7	167	Benzin	245000	Avtomat	Ön	f	22500	13235	4386237	Elis	(055) 211-12-05	2020-11-17
5989	Sumqayıt	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	185000	Avtomat	Ön	f	20900	12294	4449018	AŞUR	(055) 222-69-18	2020-11-17
5990	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	298563	Avtomat	Arxa	f	14200	8353	4465226	Orxan	(055) 700-30-07	2020-11-17
5991	Lənkəran	GAZ	3302-744	2006	Yük maşını	Ağ	2.4	176	Benzin	147000	Mexaniki	Arxa	f	12800	7529	4465284	Tural	(070) 265-65-02	2020-11-17
5992	Bərdə	Toyota	Camry	2013	Sedan	Ağ	2.5	181	Benzin	190000	Avtomat	Ön	f	34000	20000	4465292	Seymur 	(050) 487-78-10	2020-11-17
5993	Bakı	Geely	TX4	2010	Minivan	Sarı	2.5	129	Dizel	183000	Mexaniki	Arxa	f	16500	9706	4465296	İntiqam	(050) 378-63-99	2020-11-17
5994	Bərdə	LADA (VAZ)	Priora	2013	Sedan	Ağ	1.6	106	Benzin	91000	Mexaniki	Ön	f	10500	6176	4448972	Emin	(055) 921-76-86	2020-11-17
5995	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	178	Benzin	143000	Avtomat	Ön	f	20000	11765	4465305	Kamran	(055) 244-33-24	2020-11-17
5996	Xırdalan	BMW	325	2001	Sedan	Ağ	2.5	192	Benzin	286000	Avtomat	Arxa	f	9600	5647	4465308	Tural	(055) 290-86-00	2020-11-17
5997	Lənkəran	Daewoo	Nexia	1996	Sedan	Qırmızı	1.5	75	Benzin	200000	Mexaniki	Ön	f	4200	2471	4465310	Fexretdin	(051) 666-68-41	2020-11-17
5998	Bakı	Hyundai	ix35	2012	Offroader / SUV	Qara	2.4	178	Benzin	106000	Avtomat	Tam	f	23800	14000	4465197	Kamil	(077) 602-77-07	2020-11-17
5999	Gəncə	LADA (VAZ)	2106	1999	Sedan	Yaşıl	1.6	75	Benzin	199000	Mexaniki	Arxa	f	6000	3529	4465195	Musfiq	(055) 473-91-53	2020-11-17
6000	İsmayıllı	Ford	Transit	1997	Mikroavtobus	Göy	2.5	76	Dizel	475000	Mexaniki	Arxa	f	14500	8529	4464307	Vusal	(055) 396-25-50	2020-11-17
6001	Bakı	Mitsubishi	Airtrek	2002	Offroader / SUV	Yaş Asfalt	2	128	Benzin	328000	Avtomat	Ön	f	9500	5588	4387158	Hafiz	(050) 221-05-21	2020-11-17
6002	Bakı	BMW	528	2015	Sedan	Ağ	2	245	Benzin	61000	Avtomat	Arxa	f	42500	25000	4445172	ELVİN	(099) 810-19-92	2020-11-17
6003	Bakı	BMW	535	2000	Sedan	Boz	3.5	245	Benzin	155555	Avtomat	Arxa	f	11800	6941	4214900	Ilham	(070) 330-84-00	2020-11-17
6004	Biləsuvar	Opel	Astra	1999	Universal	Gümüşü	1.6	101	Benzin	199900	Avtomat	Ön	f	8800	5176	4465227	Nəsb	(050) 670-95-73	2020-11-17
6005	Bakı	Isuzu	Ecobus	2012	Avtobus	Ağ	4.6	175	Dizel	250000	Mexaniki	Arxa	f	23500	13824	4465234	Rafael	(077) 403-88-73	2020-11-17
6006	Sumqayıt	Mercedes	ML 350	2004	Offroader / SUV	Qara	3.7	235	Qaz	250000	Avtomat	Tam	f	12500	7353	4465229	Aqşin 	(070) 534-40-50	2020-11-17
6007	Bakı	BMW	528	1997	Sedan	Yaşıl	2.8	193	Benzin	462820	Avtomat	Arxa	f	9800	5765	4441464	Musfiq	(050) 255-29-66	2020-11-17
6008	Zaqatala	Opel	Vectra	1994	Sedan	Tünd qırmızı	1.6	101	Benzin	323924	Mexaniki	Ön	f	5200	3059	4465238	ADIL	(077) 537-04-96	2020-11-17
6009	Bakı	Mercedes	C 230	1998	Sedan	Mavi	2.3	197	Benzin	608806	Avtomat	Arxa	f	7800	4588	4448152	KƏMRAN	(070) 518-89-88	2020-11-17
6010	Bərdə	LADA (VAZ)	2106	1993	Sedan	Qara	1.3	65	Benzin	180000	Mexaniki	Arxa	f	4400	2588	4465246	Meher	(050) 776-70-40	2020-11-17
6011	Mingəçevir	Mercedes	Vito	2000	Mikroavtobus	Mavi	2.2	150	Dizel	450000	Mexaniki	Ön	f	14000	8235	4465249	Senan	(077) 295-46-60	2020-11-17
6012	Bakı	Toyota	Prius	2010	Hetçbek / Liftbek	Qara	1.8	136	Hibrid	97500	Variator	Ön	f	18200	10706	4393034	Fərid	(055) 708-08-08	2020-11-17
6013	Bakı	LADA (VAZ)	2109	1991	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	125000	Mexaniki	Ön	f	3900	2294	4465267	Şahbaz	(055) 361-23-27	2020-11-17
6014	Xaçmaz	LADA (VAZ)	2106	1986	Sedan	Ağ	1.5	65	Benzin	325254	Mexaniki	Arxa	f	4700	2765	4465272	Ayaz	(055) 738-10-92	2020-11-17
6015	Bakı	Mitsubishi	Airtrek	2001	Offroader / SUV	Gümüşü	2.4	170	Benzin	250000	Avtomat	Tam	f	8500	5000	4465316	Neriman	(055) 961-56-35	2020-11-17
6016	Bakı	Renault	Scenic	2009	Hetçbek / Liftbek	Qızılı	1.5	110	Dizel	182000	Mexaniki	Ön	f	11900	7000	4437803	Metleb	(055) 533-69-14	2020-11-17
6017	Şabran	Mercedes	E 280	1999	Sedan	Gümüşü	2.8	193	Benzin	355000	Avtomat	Arxa	f	13500	7941	4465150	Fərhad	(050) 637-49-39	2020-11-17
6018	Bakı	Toyota	Corolla	2008	Sedan	Yaş Asfalt	1.4	90	Dizel	178000	Mexaniki	Ön	f	16800	9882	4465151	Cemsid	(055) 289-39-27	2020-11-17
6019	Yevlax	LADA (VAZ)	21099	1998	Sedan	Yaşıl	1.6	80	Benzin	120000	Mexaniki	Ön	f	5000	2941	4465158	Samir	(055) 556-20-93	2020-11-17
6020	Bakı	BMW	520	1996	Sedan	Yaşıl	2	150	Benzin	326000	Avtomat	Arxa	f	5500	3235	4465152	Togrul	(055) 720-20-27	2020-11-17
6021	Bakı	Opel	Astra	2006	Universal	Qara	1.9	150	Dizel	267000	Mexaniki	Ön	f	12100	7118	4465160	Dinar	(050) 611-11-41	2020-11-17
6022	Bakı	LADA (VAZ)	2109	1991	Hetçbek / Liftbek	Qırmızı	1.5	75	Benzin	100000	Mexaniki	Arxa	f	3000	1765	4465164	Terlan	(055) 958-74-52	2020-11-17
6023	Bakı	Mercedes	E 200	1992	Sedan	Gümüşü	2	122	Benzin	280000	Avtomat	Arxa	f	6200	3647	4465172	Resad	(055) 553-01-12	2020-11-17
6024	Bakı	LADA (VAZ)	Oka	1998	Hetçbek / Liftbek	Göy	0.8	52	Benzin	185000	Mexaniki	Ön	f	3900	2294	4465173	Ramin	(070) 692-01-88	2020-11-17
6025	Bakı	Mercedes	C 180	1997	Sedan	Yaşıl	1.8	122	Benzin	257000	Avtomat	Arxa	f	8500	5000	4465182	Elvin	(050) 482-78-77	2020-11-17
6026	Bakı	Toyota	Camry	2015	Sedan	Qara	2.5	181	Benzin	140000	Avtomat	Ön	f	27000	15882	4465184	Firudin	(055) 563-74-23	2020-11-17
6027	Bakı	Great Wall	Hover M4	2014	Hetçbek / Liftbek	Ağ	1.5	99	Benzin	160000	Mexaniki	Ön	f	12000	7059	4465183	Cabir	(055) 787-69-55	2020-11-17
6028	Şəki	Kia	Rio	2012	Sedan	Qara	1.4	107	Benzin	207000	Mexaniki	Ön	f	12900	7588	4465187	Elvin	(051) 997-00-06	2020-11-17
6029	Bakı	Chevrolet	Cruze	2013	Sedan	Göy	1.4	141	Benzin	169000	Avtomat	Ön	f	13800	8118	4465188	Emil	(055) 250-01-40	2020-11-17
6030	Şəmkir	Mercedes	Vito 111	2009	Van	Ağ	2.2	150	Dizel	251000	Mexaniki	Arxa	f	27000	15882	4465085	Qabil	(051) 557-35-57	2020-11-17
6031	Bakı	Hyundai	Elantra	2011	Sedan	Ağ	1.8	150	Benzin	220000	Avtomat	Ön	f	15800	9294	4465088	Yalcin	(070) 222-54-74	2020-11-17
6032	Sabirabad	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	153620	Mexaniki	Arxa	f	5200	3059	4465092	Məhərrəm	(055) 841-32-31	2020-11-17
6033	Bakı	Toyota	Camry	2014	Sedan	Ağ	2.5	181	Benzin	220000	Avtomat	Ön	f	36550	21500	4409197	Inqilab	(055) 251-65-71	2020-11-17
6034	Bakı	Nissan	Maxima	2006	Sedan	Ağ	3	200	Benzin	227000	Avtomat	Ön	f	11500	6765	4465095	Tural	(070) 599-98-88	2020-11-17
6035	Qusar	LADA (VAZ)	2109	1989	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	148460	Mexaniki	Ön	f	2700	1588	4465100	Rewad	(070) 528-26-66	2020-11-17
6036	Şirvan	LADA (VAZ)	2106	1986	Sedan	Bej	1.5	65	Benzin	116000	Mexaniki	Tam	f	3500	2059	4465099	Kamil	(055) 216-27-55	2020-11-17
6037	Yevlax	Lifan	520	2008	Sedan	Qara	1.6	115	Benzin	284272	Mexaniki	Tam	f	5800	3412	4465104	Cahid	(050) 566-18-77	2020-11-17
6038	Qusar	GAZ	3302-744	2013	Yük maşını	Ağ	2.9	150	Benzin	90000	Mexaniki	Arxa	f	17000	10000	4465107	Fərhad	(077) 715-27-77	2020-11-17
6039	Quba	Kia	Sportage	2008	Offroader / SUV	Qara	2	141	Benzin	146000	Avtomat	Tam	f	16500	9706	4465129	Akif	(070) 816-53-10	2020-11-17
6040	Gəncə	GAZ	Sobol	2010	Furqon	Ağ	2.3	147	Benzin	96000	Mexaniki	Arxa	f	12000	7059	4465131	Niyamedin	(055) 758-58-38	2020-11-17
6041	Göygöl	GAZ	33021	1999	Yük maşını	Ağ	2.4	100	Benzin	332252	Mexaniki	Arxa	f	8000	4706	4465135	Esed	(055) 904-32-51	2020-11-17
6042	Bakı	BMW	530	2010	Sedan	Qara	3	272	Benzin	157000	Avtomat	Arxa	f	35530	20900	4465146	Mubariz	(050) 715-35-08	2020-11-17
6043	Bakı	Moskvich	2140	1982	Sedan	Sarı	1.5	65	Benzin	450000	Mexaniki	Arxa	f	1800	1059	4465191	Sahib	(077) 399-08-90	2020-11-17
6044	Bakı	Hyundai	ix35	2012	Offroader / SUV	Ağ	2	184	Dizel	144000	Avtomat	Ön	f	26500	15588	4465200	Arif	(055) 324-48-12	2020-11-17
6045	Sumqayıt	Hyundai	Veloster	2013	Hetçbek / Liftbek	Narıncı	2	166	Benzin	95000	Avtomat	Tam	f	16500	9706	4465203	Sevda	(050) 553-30-88	2020-11-17
6046	Bakı	Mercedes	190	1992	Sedan	Boz	1.8	109	Benzin	345000	Mexaniki	Arxa	f	7800	4588	4465046	Meherrem	(077) 390-85-82	2020-11-17
6047	Bakı	Ford	Fusion	2018	Sedan	Qara	1.5	181	Benzin	42000	Avtomat	Ön	f	24800	14588	4389572	Elgun	(050) 972-13-53	2020-11-17
6048	Bakı	GAZ	3110	1997	Sedan	Bej	2.4	131	Benzin	180000	Mexaniki	Tam	f	2000	1176	4465053	Dilaver	(077) 307-68-31	2020-11-17
6049	Bakı	IJ	2126 Oda	2005	Hetçbek / Liftbek	Göy	1.6	75	Benzin	253200	Mexaniki	Arxa	f	2350	1382	4465055	Fizuli	(050) 768-60-35	2020-11-17
6050	Bakı	BMW	528	2014	Sedan	Qara	2	245	Benzin	91000	Avtomat	Arxa	f	43860	25800	4465044	Elsen	(055) 206-01-04	2020-11-17
6051	Bakı	Ford	Transit	2000	Furqon	Gümüşü	2.4	140	Dizel	450000	Mexaniki	Arxa	f	14700	8647	4465060	Cabir	(055) 871-59-53	2020-11-17
6052	Kürdəmir	LADA (VAZ)	Priora	2013	Sedan	Qara	1.6	106	Benzin	171000	Mexaniki	Ön	f	10400	6118	4432000	Natiq 	(051) 425-31-11	2020-11-17
6053	Bakı	Mercedes	C 180	1994	Sedan	Gümüşü	1.8	122	Benzin	480800	Avtomat	Arxa	f	7800	4588	4465064	Dasqin 	(055) 990-80-95	2020-11-17
6054	Bakı	Mercedes	190	1991	Sedan	Qızılı	1.8	109	Benzin	253586	Avtomat	Arxa	f	5450	3206	4465065	TURAL	(051) 884-00-11	2020-11-17
6055	Saatlı	LADA (VAZ)	2106	1988	Sedan	Mavi	1.6	75	Benzin	66000	Mexaniki	Arxa	f	4800	2824	4465067	Rusl	(051) 840-25-84	2020-11-17
6056	Sumqayıt	LADA (VAZ)	2106	1994	Sedan	Göy	1.6	75	Benzin	555563	Mexaniki	Arxa	f	3750	2206	4465068	Ruslan	(050) 728-12-92	2020-11-17
6057	Bakı	Mercedes	E 220	1995	Sedan	Ağ	2.2	143	Benzin	521000	Avtomat	Arxa	f	8000	4706	4465069	Edqar	(055) 245-41-45	2020-11-17
6058	Bakı	Volkswagen	Passat	2016	Sedan	Boz	1.8	211	Benzin	102000	Avtomat	Ön	f	20000	11765	4465071	Zabit	(070) 309-09-19	2020-11-17
6059	Xudat	Mercedes	C 180	1998	Universal	Qara	1.8	122	Benzin	450000	Avtomat	Arxa	f	9800	5765	4465072	Tapdiq	(055) 424-05-11	2020-11-17
6060	Sumqayıt	Ford	Mondeo	2005	Sedan	Tünd qırmızı	2	150	Benzin	201000	Avtomat	Ön	f	6900	4059	4465073	Elnur	(077) 487-85-08	2020-11-17
6061	Gəncə	Jinbei	Haise H2	2014	Mikroavtobus	Ağ	2.2	185	Benzin	72445	Mexaniki	Arxa	f	15800	9294	4465076	Sebuhi	(050) 509-72-72	2020-11-17
6062	Gəncə	LADA (VAZ)	21099	1998	Sedan	Boz	1.5	75	Benzin	37500	Mexaniki	Ön	f	5200	3059	4464998	Hesen	(055) 691-30-00	2020-11-17
6063	Bakı	Infiniti	FX45	2006	Offroader / SUV	Qara	4.5	315	Benzin	153000	Avtomat	Tam	f	17900	10529	4461411	Elçin	(050) 765-02-47	2020-11-17
6065	Bakı	Mercedes	C 200	1994	Sedan	Boz	2	136	Benzin	287074	Avtomat	Arxa	f	7500	4412	4479278	Elgün	(050) 289-47-95	2020-11-17
6068	Bakı	Nissan	Maxima	2001	Sedan	Boz	3	200	Benzin	418000	Avtomat	Ön	f	4900	2882	4439608	Ferid	(050) 880-04-68	2020-11-17
6069	Bakı	LADA (VAZ)	2102	1981	Universal	Yaşıl	1.3	65	Benzin	56239	Mexaniki	Arxa	f	3300	1941	4479285	Mehman 	(070) 311-43-11	2020-11-17
6070	Sumqayıt	LADA (VAZ)	2106	2000	Sedan	Bənövşəyi	1.6	75	Benzin	90000	Mexaniki	Tam	f	6000	3529	4479286	Eli	(055) 588-51-96	2020-11-17
6075	Bakı	Ford	Transit	1993	Mikroavtobus	Ağ	2.5	85	Dizel	325742	Mexaniki	Arxa	f	11000	6471	4479262	Sahib	(055) 885-86-63	2020-11-17
6076	Bakı	Mercedes	Vito 111	2010	Furqon	Ağ	2.2	150	Dizel	337000	Mexaniki	Arxa	f	18200	10706	4479265	Vidadi	(070) 331-58-68	2020-11-17
6077	Sumqayıt	Volkswagen	Passat	2006	Sedan	Qara	1.8	150	Benzin	243565	Avtomat	Ön	f	8900	5235	4460108	Resad	(050) 369-17-96	2020-11-17
6078	Bakı	Opel	Astra	2006	Universal	Göy	1.3	90	Dizel	178000	Mexaniki	Ön	f	10800	6353	4479268	Zaur	(099) 333-38-81	2020-11-17
6079	Bakı	BMW	740	2000	Sedan	Yaş Asfalt	4.4	286	Benzin	340000	Avtomat	Arxa	f	10500	6176	4479267	Eldar	(050) 362-35-48	2020-11-17
6080	Bakı	Chery	A-15 Cowin/Amulet	2010	Sedan	Ağ	1.5	109	Benzin	200	Mexaniki	Ön	f	7100	4176	4479270	Hüsü	(077) 311-10-59	2020-11-17
6081	Şirvan	Daewoo	Nubira	1998	Sedan	Ağ	2	133	Benzin	312000	Mexaniki	Ön	f	5000	2941	4479271	Nadir	(055) 491-62-74	2020-11-17
6082	Gəncə	Ford	Transit	2001	Yük maşını	Ağ	2.5	125	Dizel	234300	Mexaniki	Arxa	f	22000	12941	4479273	Mahir	(055) 660-50-56	2020-11-17
6083	Bakı	Opel	Astra	2000	Hetçbek / Liftbek	Boz	1.8	125	Benzin	291000	Avtomat	Ön	f	9600	5647	4479277	Xatir	(050) 450-11-39	2020-11-17
6084	Sumqayıt	Chevrolet	Cruze	2012	Sedan	Ağ	1.4	141	Benzin	100397	Avtomat	Ön	f	14500	8529	4440123	Elxan	(050) 423-98-82	2020-11-17
6085	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	174	Benzin	227000	Avtomat	Ön	f	20300	11941	4465265	Ramin	(050) 391-51-04	2020-11-17
6087	Bakı	Volkswagen	Jetta	2016	Sedan	Yaş Asfalt	1.4	150	Benzin	71000	Avtomat	Ön	f	19300	11353	4448764	Elvin	(070) 844-24-54	2020-11-17
6088	Bakı	Mazda	CX-9	2009	Offroader / SUV	Ağ	3.7	273	Benzin	226000	Avtomat	Tam	f	20800	12235	4377209	Anar	(055) 251-00-94	2020-11-17
6091	Bakı	Mercedes	E 240	2000	Sedan	Göy	2.6	177	Benzin	321178	Avtomat	Arxa	f	14300	8412	4456582	Musa	(050) 460-93-11	2020-11-17
6095	Bakı	Kia	Cerato	2017	Sedan	Göy	2	150	Benzin	77819	Avtomat	Ön	f	24300	14294	4479292	Elmeddin 	(051) 500-00-15	2020-11-17
6096	Bakı	Fiat	Qubo	2014	Minivan	Ağ	1.4	73	Benzin	130000	Mexaniki	Ön	f	15800	9294	4479289	Telman	(077) 725-55-20	2020-11-17
6097	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	222000	Mexaniki	Ön	f	10500	6176	4479287	Elcin	(070) 740-13-73	2020-11-17
6098	Sabirabad	Mercedes	E 320	2000	Sedan	Ağ	3.2	224	Benzin	440000	Avtomat	Tam	f	26350	15500	4479293	Samil	(050) 371-91-14	2020-11-17
6100	Gəncə	Chevrolet	Cruze	2015	Sedan	Gümüşü	1.4	141	Benzin	113000	Avtomat	Ön	f	16800	9882	4479300	Zöhrab	(055) 233-14-34	2020-11-17
6109	Bakı	Opel	Astra	2006	Universal	Boz	1.4	90	Benzin	138000	Mexaniki	Ön	f	11300	6647	4479241	Zaur	(055) 500-03-02	2020-11-17
6110	Bakı	Opel	Astra	2016	Sedan	Ağ	1.4	140	Benzin	88473	Avtomat	Ön	f	18300	10765	4479242	İsmayıl	(077) 518-30-66	2020-11-17
6112	Ağdaş	Mercedes	C 200	1998	Sedan	Qara	2	136	Benzin	322000	Avtomat	Arxa	f	11800	6941	4423669	Celal	(051) 786-66-06	2020-11-17
6114	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Mavi	1.5	76	Benzin	129000	Avtomat	Ön	f	12000	7059	4477822	Мамедали	(050) 286-60-10	2020-11-17
6115	Sumqayıt	Ford	Transit	1998	Mikroavtobus	Göy	2.5	76	Dizel	290000	Mexaniki	Arxa	f	17500	10294	4479250	Şahin	(070) 320-79-31	2020-11-17
6117	Bakı	Peugeot	208	2013	Hetçbek / Liftbek	Ağ	1.6	124	Benzin	105000	Avtomat	Ön	f	14800	8706	4252250	Rəşad	(050) 228-95-95	2020-11-17
6118	Bakı	Opel	Astra	1997	Universal	Göy	1.6	75	Benzin	360000	Mexaniki	Ön	f	6900	4059	4479255	Zülfüqar	(050) 389-97-98	2020-11-17
6120	Bakı	Tofas	Sahin	2005	Sedan	Qara	1.6	86	Benzin	350000	Mexaniki	Ön	f	6500	3824	4479260	Nazim	(055) 829-10-31	2020-11-17
6132	Bakı	Volkswagen	Passat	2010	Sedan	Ağ	1.8	160	Benzin	238000	Avtomat	Ön	f	13400	7882	4410385	Ruslan	(050) 379-04-04	2020-11-17
6137	Ağcabədi	Mercedes	C 180	1998	Sedan	Ağ	1.8	122	Benzin	250000	Avtomat	Ön	f	13000	7647	4479209	Azer	(050) 633-37-36	2020-11-17
6138	Bakı	Volkswagen	Golf	1993	Hetçbek / Liftbek	Boz	1.8	90	Benzin	225632	Mexaniki	Ön	f	4700	2765	4479208	Zaur	(070) 664-82-13	2020-11-17
6139	Qusar	Peugeot	307	2004	Minivan	Tünd qırmızı	1.6	112	Benzin	404000	Mexaniki	Ön	f	7800	4588	4479212	Sərdar	(070) 385-55-61	2020-11-17
6140	Şirvan	Hyundai	ix35	2013	Offroader / SUV	Ağ	2	166	Benzin	102000	Avtomat	Tam	f	24500	14412	4478297	Həmid	(055) 634-99-05	2020-11-17
6142	Bakı	Kia	Rio	2007	Hetçbek / Liftbek	Mavi	1.4	97	Benzin	113000	Mexaniki	Ön	f	10800	6353	4479144	Bəybala	(050) 316-75-43	2020-11-17
6144	Sumqayıt	Opel	Vectra	1998	Sedan	Gümüşü	2	136	Benzin	230000	Avtomat	Ön	f	5800	3412	4479149	Cavansir	(055) 941-89-89	2020-11-17
6145	Bakı	Lexus	LX 470	2003	Offroader / SUV	Qara	4.7	287	Benzin	270000	Avtomat	Tam	f	24800	14588	4479153	Babək	(070) 745-22-74	2020-11-17
6147	Bakı	BMW	745	2005	Sedan	Qara	4.4	333	Benzin	150000	Avtomat	Arxa	f	18500	10882	4479155	Cemil	(055) 891-36-08	2020-11-17
6148	Lənkəran	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	306000	Mexaniki	Arxa	f	8500	5000	4479156	Vüqar	(051) 487-37-67	2020-11-17
6149	Bakı	LADA (VAZ)	2115	2011	Sedan	Qara	1.5	75	Benzin	250000	Mexaniki	Ön	f	7600	4471	4479158	FAZIL	(050) 343-52-65	2020-11-17
6150	Lənkəran	LADA (VAZ)	2106	1999	Sedan	Tünd qırmızı	1.6	75	Benzin	140630	Mexaniki	Arxa	f	5800	3412	4479159	Rauf	(051) 378-78-76	2020-11-17
6151	Sabirabad	Mercedes	E 230	1996	Sedan	Gümüşü	2.3	150	Benzin	413000	Avtomat	Arxa	f	10700	6294	4479168	Seyid	(070) 756-06-00	2020-11-17
6153	Bakı	Mercedes	208 D	1992	Mikroavtobus	Ağ	2.3	94	Dizel	110000	Mexaniki	Arxa	f	12900	7588	4479173	Bəhruz	(055) 949-04-06	2020-11-17
6155	Lənkəran	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	163000	Mexaniki	Arxa	f	8200	4824	4479174	Allahsukur	(070) 522-22-29	2020-11-17
6156	Bakı	LADA (VAZ)	2108	1985	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	256000	Mexaniki	Ön	f	5600	3294	4479182	Vusal	(077) 611-31-15	2020-11-17
6157	Neftçala	LADA (VAZ)	2115	2012	Sedan	Qara	1.6	80	Benzin	162000	Mexaniki	Ön	f	1000	588	4479192	Orxan	(055) 568-56-96	2020-11-17
6159	Gəncə	Hyundai	Sonata	2011	Sedan	Ağ	2	165	Qaz	232113	Avtomat	Ön	f	16500	9706	4479198	Aytin	(055) 252-70-54	2020-11-17
6160	Bakı	Ford	Transit	2006	Furqon	Qırmızı	2.4	140	Dizel	325000	Mexaniki	Arxa	f	18800	11059	4479201	Zamin	(070) 708-01-41	2020-11-17
6161	Bakı	Hyundai	Accent	2009	Sedan	Gümüşü	1.6	124	Dizel	82030	Avtomat	Ön	f	13500	7941	4479204	Azər	(077) 300-20-01	2020-11-17
6162	Qusar	Daewoo	Nexia	2008	Sedan	Ağ	1.5	75	Benzin	112249	Mexaniki	Ön	f	8600	5059	4479203	Nerman 	(070) 548-52-11	2020-11-17
6163	Bakı	Opel	Astra	2004	Universal	Gümüşü	1.4	90	Benzin	136000	Mexaniki	Ön	f	10200	6000	4479206	Санан	(070) 500-44-33	2020-11-17
6164	Bakı	Mercedes	E 240	2000	Sedan	Qara	2.4	170	Benzin	362548	Avtomat	Arxa	f	13700	8059	4479207	Firuz	(050) 585-61-03	2020-11-17
6172	Bakı	BMW	528	2012	Sedan	Gümüşü	2	245	Benzin	148000	Avtomat	Arxa	f	30260	17800	4479097	Baxtiyar	(050) 285-77-75	2020-11-17
6173	Bakı	Kia	Optima	2012	Sedan	Ağ	2	274	Benzin	118000	Avtomat	Ön	f	22200	13059	4479036	Namiq	(055) 650-74-79	2020-11-17
6174	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Qara	1.4	90	Benzin	199000	Mexaniki	Ön	f	11800	6941	4474121	Ferid	(050) 966-09-93	2020-11-17
6175	Cəlilabad	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	260000	Avtomat	Arxa	f	11500	6765	4479219	Aqil	(055) 558-56-56	2020-11-17
6176	Sumqayıt	Nissan	X-Trail	2002	Offroader / SUV	Boz	2	140	Benzin	160000	Avtomat	Tam	f	11500	6765	4479220	Vuqar	(050) 659-74-44	2020-11-17
6178	Bakı	Kia	Optima	2015	Sedan	Qara	2.4	178	Benzin	96128	Avtomat	Ön	f	21000	12353	4479225	Samil	(050) 596-08-05	2020-11-17
6179	Sumqayıt	Mercedes	E 280	1996	Sedan	Göy	2.8	193	Benzin	321125	Avtomat	Arxa	f	9900	5824	4479226	Yunus	(070) 389-39-39	2020-11-17
6180	Bakı	Volkswagen	Jetta	2017	Sedan	Qara	1.4	150	Benzin	51000	Avtomat	Ön	f	19800	11647	4459406	Musa	(050) 890-04-18	2020-11-17
6181	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	138000	Avtomat	Tam	f	73950	43500	4456979	Eli	(055) 601-92-42	2020-11-17
6182	Bakı	LADA (VAZ)	2104	2011	Universal	Qırmızı	1.5	75	Benzin	51227	Mexaniki	Arxa	f	8000	4706	4479228	Kamil	(070) 330-34-01	2020-11-17
6183	Bakı	Mercedes	C 220	1994	Sedan	Gümüşü	2.2	146	Benzin	376456	Avtomat	Arxa	f	7800	4588	4479229	Ferux	(050) 389-24-17	2020-11-17
6184	Yevlax	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	248000	Mexaniki	Ön	f	8800	5176	4479236	Səbuhi	(055) 545-37-08	2020-11-17
6185	Bakı	Volkswagen	Passat	2008	Sedan	Gümüşü	2	211	Benzin	167000	Avtomat	Ön	f	11800	6941	4322992	Имам	(055) 599-77-70	2020-11-17
6186	Lənkəran	Opel	Astra	1997	Hetçbek / Liftbek	Yaşıl	1.7	82	Dizel	332562	Mexaniki	Ön	f	6000	3529	4479235	Hicran	(051) 569-38-48	2020-11-17
6187	Sumqayıt	Mercedes	E 230	1997	Sedan	Göy	2.3	150	Benzin	85041	Avtomat	Arxa	f	10800	6353	4479123	Nasif	(070) 333-00-85	2020-11-17
6169	Bakı	Mercedes	CLK 240	2002	Kupe	Qara	2.6	170	Benzin	208000	Avtomat	Arxa	f	15500	9118	4372220	Cavid	(055) 799-00-33	2020-11-17
6188	Bakı	Peugeot	3008	2012	Offroader / SUV	Göy	1.6	156	Benzin	165000	Avtomat	Ön	f	13800	8118	4479122	Hüseyn	(050) 383-73-71	2020-11-17
6189	Bakı	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	290000	Avtomat	Arxa	f	11000	6471	4479128	Fərman	(055) 486-15-45	2020-11-17
6190	Gəncə	LADA (VAZ)	2107	2008	Sedan	Göy	1.6	75	Benzin	89300	Mexaniki	Arxa	f	7000	4118	4479131	Ali	(070) 229-04-26	2020-11-17
6191	Masallı	LADA (VAZ)	2106	1982	Sedan	Sarı	1.5	65	Benzin	123456	Mexaniki	Arxa	f	1950	1147	4479130	Resad	(055) 362-13-33	2020-11-17
6192	Bakı	BMW	728	1996	Sedan	Qara	2.8	193	Benzin	244450	Avtomat	Arxa	f	11200	6588	4479136	Aydin	(055) 628-52-37	2020-11-17
6193	Bakı	Mercedes	E 200	1990	Sedan	Göy	2	122	Benzin	375000	Mexaniki	Arxa	f	6500	3824	4479140	Yasın	(070) 217-46-47	2020-11-17
6194	Bakı	Ford	Fusion	2018	Sedan	Boz	1.5	181	Benzin	29000	Avtomat	Ön	f	24000	14118	4211271	Namik	(055) 710-44-30	2020-11-17
6195	Şəmkir	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	196853	Mexaniki	Ön	f	9000	5294	4479142	Kenan	(051) 402-33-04	2020-11-17
6197	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Boz	1.3	90	Dizel	240000	Mexaniki	Ön	f	11800	6941	4479145	Elxan	(070) 603-60-50	2020-11-17
6198	Gəncə	Opel	Astra	2007	Hetçbek / Liftbek	Göy	1.3	90	Dizel	168000	Mexaniki	Ön	f	11500	6765	4479143	Azer	(050) 776-01-11	2020-11-17
6200	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	128000	Avtomat	Ön	f	11800	6941	4479124	Sabir	(050) 471-69-07	2020-11-17
6201	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	185000	Mexaniki	Ön	f	10100	5941	4466972	Selim	(055) 660-77-77	2020-11-17
6202	Gəncə	Mercedes	E 200	1991	Sedan	Gümüşü	2	122	Dizel	242587	Mexaniki	Arxa	f	7200	4235	4479146	Elcan	(055) 861-70-71	2020-11-17
6211	Beyləqan	KamAz	5320	1988	Yük maşını	Göy	11	191	Dizel	395262	Mexaniki	Arxa	f	14800	8706	4479240	Behruz	(051) 563-41-81	2020-11-17
6212	Bakı	Mercedes	C 250	2014	Sedan	Göy	1.8	204	Benzin	130000	Avtomat	Arxa	f	28500	16765	4414499	Bəhruz	(055) 819-88-00	2020-11-17
6214	Bakı	LADA (VAZ)	2107	2006	Sedan	Qırmızı	1.6	75	Benzin	235000	Mexaniki	Tam	f	5700	3353	4479101	Valeh	(055) 229-77-65	2020-11-17
6215	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Benzin	200000	Avtomat	Ön	f	12000	7059	4479102	Elçin	(055) 251-30-77	2020-11-17
6219	Bakı	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4	243	Benzin	113531	Avtomat	Ön	f	55250	32500	4452281	Ramil	(070) 383-83-83	2020-11-17
6220	Bakı	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	100	Benzin	177750	Avtomat	Ön	f	12300	7235	4479105	İlkin	(050) 571-00-71	2020-11-17
6221	Bakı	Hyundai	Tucson	2007	Offroader / SUV	Gümüşü	2	142	Dizel	250000	Avtomat	Ön	f	17000	10000	4479109	Səbuhi	(070) 525-25-46	2020-11-17
6222	Bakı	Mercedes	C 200	2000	Sedan	Gümüşü	2	136	Benzin	360000	Avtomat	Arxa	f	13500	7941	4479110	Roman	(050) 209-23-30	2020-11-17
6223	Bakı	Opel	Astra	2002	Universal	Gümüşü	2	136	Benzin	226000	Mexaniki	Ön	f	9300	5471	4479111	Hafiz 	(055) 257-98-34	2020-11-17
6224	Bakı	BMW	320	1992	Sedan	Gümüşü	2	150	Benzin	257000	Mexaniki	Arxa	f	7600	4471	4479120	Sərxan	(070) 316-70-44	2020-11-17
6225	Bakı	LADA (VAZ)	21099	2008	Sedan	Qara	1.6	80	Benzin	254000	Mexaniki	Ön	f	9100	5353	4479119	Yasar	(070) 309-50-55	2020-11-17
6226	Kürdəmir	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	102020	Mexaniki	Ön	f	12200	7176	4479121	ANAR	(070) 505-40-80	2020-11-17
6227	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2.4	174	Benzin	253000	Avtomat	Ön	f	17100	10059	4408074	HEYDƏR	(055) 329-14-44	2020-11-17
6228	Bakı	Fiat	Fiorino	2016	Furqon	Ağ	1.4	110	Benzin	70300	Mexaniki	Ön	f	18000	10588	4479054	Rəşad	(050) 644-10-30	2020-11-17
6230	Bakı	Mercedes	0309	1998	Van	Göy	3.8	190	Dizel	166000	Mexaniki	Arxa	f	18500	10882	4479052	Aga	(055) 367-23-92	2020-11-17
6231	Gəncə	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	55555	Mexaniki	Arxa	f	8000	4706	4479061	Elvin	(055) 201-37-48	2020-11-17
6235	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2	274	Benzin	51500	Avtomat	Ön	f	27500	16176	4479067	Rasad	(050) 210-87-50	2020-11-17
6236	Şəmkir	LADA (VAZ)	2107	2004	Sedan	Qırmızı	1.6	75	Benzin	55100	Mexaniki	Arxa	f	7500	4412	4479070	Seymur	(050) 659-57-66	2020-11-17
6237	Bakı	Hyundai	Santa Fe	2007	Offroader / SUV	Ağ	2.7	177	Benzin	194800	Avtomat	Tam	f	16900	9941	4393365	Elmeddin	(055) 458-48-61	2020-11-17
6238	Bərdə	LADA (VAZ)	2107	2005	Sedan	Ağ	1.5	65	Benzin	746235	Mexaniki	Arxa	f	6300	3706	4479076	Zaman	(050) 682-64-01	2020-11-17
6239	Gəncə	Kia	Sportage	2013	Offroader / SUV	Qara	2	163	Benzin	125943	Avtomat	Tam	f	25500	15000	4479077	Parvin	(055) 830-24-11	2020-11-17
6240	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	112000	Avtomat	Ön	f	19300	11353	4479082	Cavid	(050) 842-52-64	2020-11-17
6242	Bakı	LADA (VAZ)	2115	2008	Sedan	Qara	1.6	80	Benzin	245000	Mexaniki	Ön	f	7800	4588	4479083	Vüsal	(077) 397-57-17	2020-11-17
6243	Bakı	BMW	320	2000	Sedan	Gümüşü	2	150	Benzin	345000	Avtomat	Arxa	f	10600	6235	4479084	İlkin	(070) 520-20-63	2020-11-17
6245	Ağstafa	LADA (VAZ)	21099	1994	Sedan	Qırmızı	1.5	75	Benzin	118570	Mexaniki	Ön	f	4400	2588	4479086	Elsen	(055) 788-10-20	2020-11-17
6246	Bakı	Hyundai	Elantra	2016	Sedan	Ağ	1.6	204	Benzin	32000	Avtomat	Ön	f	27500	16176	4460477	Samir	(070) 576-78-78	2020-11-17
6248	Bakı	Nissan	Patrol	2005	Offroader / SUV	Qara	4.8	250	Benzin	136000	Avtomat	Tam	f	19900	11706	4479094	ALIK	(055) 211-30-83	2020-11-17
6260	Bakı	Mercedes	C 230	2007	Sedan	Ağ	2.5	205	Benzin	258000	Mexaniki	Arxa	f	17800	10471	4439354	Ibrahim	(051) 988-89-82	2020-11-17
6261	Saatlı	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	122	Benzin	325746	Avtomat	Arxa	f	7000	4118	4479025	Toğrul	(050) 551-18-88	2020-11-17
6262	Bakı	Lamborghini	Urus	2019	Offroader / SUV	Qara	4	650	Benzin	5200	Avtomat	Tam	f	510000	300000	4291598	Eldar	(055) 533-33-32	2020-11-17
6263	Bakı	Mercedes	GL 550	2012	Offroader / SUV	Qara	5.5	388	Benzin	72000	Avtomat	Tam	f	83810	49300	4479034	Kanan	(055) 288-88-33	2020-11-17
6264	Bakı	Hyundai	Sonata	2010	Sedan	Yaş Asfalt	2.4	178	Benzin	157000	Avtomat	Ön	f	19900	11706	4438515	Zaur	(070) 277-48-44	2020-11-17
6266	Bakı	KamAz	65115	2007	Yük maşını	Ağ	11	191	Dizel	257000	Mexaniki	Arxa	f	36000	21176	4479023	Vuqar	(070) 306-02-03	2020-11-17
6267	Gəncə	Hyundai	Sonata	2013	Sedan	Ağ	2	274	Benzin	90000	Avtomat	Tam	f	19500	11471	4479026	Ceyhun 	(050) 550-81-23	2020-11-17
6269	Bakı	Volkswagen	Passat	1999	Sedan	Yaşıl	1.8	170	Benzin	196000	Avtomat	Ön	f	5700	3353	4479029	Kenan	(070) 243-17-27	2020-11-17
6272	Quba	LADA (VAZ)	2112	2004	Hetçbek / Liftbek	Yaş Asfalt	1.5	75	Benzin	360000	Mexaniki	Ön	f	7500	4412	4414630	Sahib 	(055) 931-23-88	2020-11-17
6273	Bakı	Mercedes	Viano	2010	Van	Qara	2.2	150	Benzin	244000	Avtomat	Tam	f	32450	19088	4479031	Rəhim	(050) 755-18-05	2020-11-17
6275	Gəncə	Volkswagen	Passat	2003	Sedan	Ağ	1.8	150	Benzin	207500	Avtomat	Ön	f	7200	4235	4411198	Qedir	(070) 622-22-05	2020-11-17
6276	Bakı	Opel	Astra	1998	Universal	Göy	1.6	101	Benzin	585600	Mexaniki	Ön	f	7200	4235	4478990	Vuqar	(051) 614-13-43	2020-11-17
6277	Bakı	Opel	Astra	2005	Universal	Boz	1.6	101	Benzin	140600	Mexaniki	Ön	f	10800	6353	4420965	Behruz	(070) 215-43-66	2020-11-17
6278	Bakı	Mercedes	ML 350	2006	Offroader / SUV	Ağ	3.5	272	Benzin	285000	Avtomat	Tam	f	25900	15235	4303962	Rəşad	(050) 250-29-79	2020-11-17
6279	Gəncə	Volkswagen	Passat	2005	Sedan	Boz	2	170	Benzin	228300	Avtomat	Ön	f	9600	5647	4470659	Huseyn	(070) 575-80-00	2020-11-17
6280	Masallı	Mercedes	E 240	2002	Sedan	Gümüşü	2.4	170	Benzin	245000	Avtomat	Arxa	f	16700	9824	4478995	Elfan	(050) 244-05-88	2020-11-17
6282	Sabirabad	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	342716	Avtomat	Arxa	f	16200	9529	4478997	Mubariz	(055) 568-92-78	2020-11-17
6283	Şəmkir	Ford	Transit	2009	Mikroavtobus	Ağ	2.4	140	Dizel	176000	Mexaniki	Arxa	f	27800	16353	4367234	elnur	(051) 637-25-17	2020-11-17
6284	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Göy	1.4	90	Benzin	190000	Mexaniki	Ön	f	11500	6765	4479003	Tuncay	(055) 260-83-36	2020-11-17
6286	Bakı	Volkswagen	Passat	2007	Sedan	Göy	2	200	Benzin	209300	Avtomat	Ön	f	12600	7412	4418900	Ceyhun	(050) 662-64-34	2020-11-17
6287	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Boz	1.5	76	Hibrid	141000	Avtomat	Ön	f	11100	6529	4479007	Nəcəf 	(051) 675-33-79	2020-11-17
6291	Bakı	Ford	Transit	1997	Furqon	Ağ	2.5	96	Dizel	253170	Mexaniki	Arxa	f	16000	9412	4473529	Azer	(055) 611-09-58	2020-11-17
6297	İsmayıllı	BMW	320	1996	Sedan	Qara	2	150	Benzin	289000	Avtomat	Arxa	f	6900	4059	4479037	Mahir	(055) 480-41-80	2020-11-17
6298	Şəki	LADA (VAZ)	2106	1993	Sedan	Bej	1.5	65	Benzin	175000	Mexaniki	Arxa	f	3800	2235	4479050	Samir	(055) 625-02-77	2020-11-17
6300	Bakı	BMW	320	2013	Sedan	Ağ	2	184	Benzin	99700	Avtomat	Arxa	f	29500	17353	4156005	İmran	(070) 310-22-43	2020-11-17
6307	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2	165	Benzin	170000	Avtomat	Ön	f	17200	10118	4478946	Ramiz	(070) 846-07-17	2020-11-17
6308	Şəmkir	GAZ	33021	1999	Furqon	Ağ	2.5	96	Benzin	50000	Mexaniki	Arxa	f	4700	2765	4478952	Reşad	(050) 984-58-86	2020-11-17
6309	Gəncə	Hyundai	Sonata	2016	Sedan	Qəhvəyi	1.6	180	Benzin	98554	Avtomat	Ön	f	21600	12706	4478953	Qismet	(077) 747-27-17	2020-11-17
6310	Bakı	Ford	Transit	1995	Mikroavtobus	Ağ	2.5	96	Dizel	214000	Mexaniki	Arxa	f	15500	9118	4478957	Ruslan	(051) 554-11-15	2020-11-17
6311	Ağcabədi	LADA (VAZ)	2107	2005	Sedan	Ağ	1.5	65	Benzin	80000	Mexaniki	Arxa	f	5500	3235	4478958	Faiq	(050) 697-42-87	2020-11-17
6315	Goranboy	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	130000	Mexaniki	Arxa	f	6500	3824	4478969	Elvin	(070) 299-27-99	2020-11-17
6316	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	156000	Mexaniki	Ön	f	12000	7059	4478967	Necef	(050) 419-52-89	2020-11-17
6320	Sumqayıt	LADA (VAZ)	2109	1992	Hetçbek / Liftbek	Tünd qırmızı	1.5	75	Benzin	172000	Mexaniki	Ön	f	3700	2176	4478978	Ceyhun	(051) 388-74-44	2020-11-17
6321	Masallı	Mercedes	S 350	2003	Sedan	Göy	3.5	272	Benzin	232000	Avtomat	Arxa	f	14500	8529	4478974	Husen 	(051) 313-03-75	2020-11-17
6323	Hacıqabul	LADA (VAZ)	2107	1982	Sedan	Qırmızı	1.3	69	Benzin	200222	Mexaniki	Arxa	f	3200	1882	4478982	Sahin	(070) 826-96-29	2020-11-17
6324	Bakı	BMW	320	2000	Sedan	Qara	2	150	Benzin	250000	Avtomat	Arxa	f	10000	5882	4478979	ZAHID	(070) 627-27-47	2020-11-17
6334	Bakı	Skoda	Fabia	2012	Hetçbek / Liftbek	Ağ	1.6	105	Benzin	75000	Avtomat	Ön	f	11800	6941	4160101	Sabir	(055) 644-71-93	2020-11-17
6336	Sumqayıt	Kia	Rio	2005	Hetçbek / Liftbek	Mavi	1.5	110	Dizel	158200	Mexaniki	Ön	f	11600	6824	4449587	Rövşen	(050) 751-82-00	2020-11-17
6337	Masallı	Mercedes	E 200	1999	Sedan	Göy	2	136	Benzin	170000	Avtomat	Arxa	f	12900	7588	4478908	Rahib	(050) 437-65-65	2020-11-17
6338	Bakı	Chevrolet	Aveo	2011	Sedan	Ağ	1.4	100	Benzin	141576	Mexaniki	Ön	f	10000	5882	4478910	Azer	(050) 758-92-97	2020-11-17
6339	Masallı	Mercedes	C 230	2000	Sedan	Gümüşü	2.3	193	Benzin	250000	Avtomat	Arxa	f	14200	8353	4478913	Kahin	(070) 377-44-01	2020-11-17
6341	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.3	90	Dizel	166000	Mexaniki	Ön	f	10500	6176	4478920	Elvin	(055) 824-77-28	2020-11-17
6342	Bakı	Opel	Vectra	1996	Sedan	Qızılı	1.6	101	Benzin	305435	Avtomat	Ön	f	4600	2706	4478929	Elvin 	(077) 446-46-40	2020-11-17
6343	Göyçay	GAZ	53	1979	Yük maşını	Bej	4.5	150	Benzin	123542	Mexaniki	Arxa	f	3500	2059	4478925	Resad	(077) 326-23-03	2020-11-17
6344	Bakı	Volkswagen	Passat	2001	Sedan	Yaşıl	1.8	170	Benzin	524000	Mexaniki	Ön	f	5000	2941	4478924	Kerim	(077) 426-41-36	2020-11-17
6345	Bakı	Kia	Cadenza	2014	Sedan	Qara	3.5	290	Benzin	115000	Avtomat	Ön	f	38080	22400	4452708	SÜBHAN	(050) 210-83-75	2020-11-17
6346	İsmayıllı	Hyundai	Santa Fe	2001	Offroader / SUV	Gümüşü	2.7	172	Benzin	225658	Avtomat	Tam	f	9000	5294	4478852	Nurlan	(051) 314-13-48	2020-11-17
6347	Şəmkir	Opel	Astra	1999	Universal	Gümüşü	1.6	101	Benzin	320500	Mexaniki	Ön	f	8000	4706	4478853	Ulvi	(051) 206-08-07	2020-11-17
6348	Bakı	Mercedes	E 240	2003	Sedan	Qara	2.6	177	Benzin	240000	Avtomat	Arxa	f	16800	9882	4478758	Teymur	(070) 207-73-83	2020-11-17
6350	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	60	Mexaniki	Tam	t	10800	6353	4478854	Haci	(055) 443-55-55	2020-11-17
6351	Bakı	Nissan	Micra	2012	Hetçbek / Liftbek	Ağ	1.2	85	Benzin	120000	Avtomat	Ön	f	12000	7059	4478861	Aydın	(070) 750-60-07	2020-11-17
6352	Bakı	Chevrolet	Cruze	2016	Sedan	Qırmızı	1.4	141	Benzin	124000	Avtomat	Ön	f	15900	9353	4478865	Ali Nagiyev	(050) 306-75-48	2020-11-17
6353	Bakı	Renault	Koleos	2012	Offroader / SUV	Ağ	2.5	175	Benzin	65000	Avtomat	Tam	f	20000	11765	4447979	Elnur	(070) 730-31-71	2020-11-17
6354	Bakı	Chery	A-15 Cowin/Amulet	2007	Sedan	Qızılı	2	105	Benzin	423000	Mexaniki	Ön	f	4200	2471	4478869	Elvin	(055) 510-82-95	2020-11-17
6355	Zaqatala	Mitsubishi	Rosa	1995	Avtobus	Bej	3.9	140	Dizel	357753	Mexaniki	Arxa	f	19000	11176	4478871	Ilyas	(070) 600-40-82	2020-11-17
6356	Bakı	Cadillac	Escalade	2010	Offroader / SUV	Ağ	6.2	409	Benzin	111000	Avtomat	Tam	f	59500	35000	4478875	Гасан	(050) 204-20-40	2020-11-17
6357	Bakı	Opel	Vectra	1996	Sedan	Qızılı	16	101	Benzin	250000	Avtomat	Ön	f	6500	3824	4478877	Vuqar	(070) 631-22-02	2020-11-17
6358	Astara	LADA (VAZ)	2106	1998	Sedan	Bənövşəyi	1.6	75	Benzin	143000	Mexaniki	Arxa	f	4800	2824	4478878	Şöhrət	(051) 778-64-48	2020-11-17
6359	Zaqatala	Mercedes	C 230	1999	Sedan	Ağ	2.3	193	Benzin	180000	Avtomat	Arxa	f	12000	7059	4478880	Edalet	(051) 557-64-64	2020-11-17
6360	Naxçıvan	Chevrolet	Cruze	2016	Sedan	Tünd qırmızı	1.4	141	Benzin	87000	Avtomat	Ön	f	17900	10529	4478881	mehemmed	(055) 304-90-10	2020-11-17
6361	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2.4	174	Benzin	159000	Avtomat	Ön	f	20300	11941	4399398	Zaur	(077) 598-92-18	2020-11-17
6362	Sumqayıt	Hyundai	Santa Fe	2010	Offroader / SUV	Qara	2.4	178	Benzin	266900	Avtomat	Tam	f	23800	14000	4478828	Elgun	(070) 606-65-65	2020-11-17
6363	Bakı	BMW	X5	2006	Offroader / SUV	Qara	3	231	Dizel	300000	Avtomat	Tam	f	30000	17647	4419499	Yenisey	(050) 207-09-87	2020-11-17
6364	Bakı	Mercedes	CLS 350	2008	Sedan	Qara	3.5	272	Benzin	181000	Avtomat	Arxa	f	29500	17353	4478892	Farman	(050) 231-01-48	2020-11-17
6365	Kürdəmir	GAZ	31105	2005	Sedan	Gümüşü	2.3	131	Benzin	98777	Mexaniki	Arxa	f	7500	4412	4463517	ANAR	(070) 510-01-31	2020-11-17
6366	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Göy	1.4	97	Benzin	171500	Mexaniki	Ön	f	10000	5882	4478901	Mahir	(077) 308-05-69	2020-11-17
6372	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	79000	Mexaniki	Arxa	f	7300	4294	4478917	Rehma	(055) 405-80-44	2020-11-17
6373	Gəncə	Yamaha	Grizzly 660	2013	Motosiklet	Göy	0.2	5	Benzin	15000	Avtomat	Arxa	f	2300	1353	4478932	Ferid	(077) 373-11-77	2020-11-17
6374	Masallı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.5	65	Benzin	250000	Mexaniki	Arxa	f	5300	3118	4478934	Vuqar	(050) 626-92-76	2020-11-17
6375	Sumqayıt	Mercedes	C 200	1996	Sedan	Qara	2	136	Benzin	165000	Avtomat	Arxa	f	9500	5588	4478936	Mətləb	(050) 589-78-16	2020-11-17
6377	Bakı	BMW	520	1998	Sedan	Boz	2	150	Benzin	370000	Avtomat	Arxa	f	9010	5300	4478938	vuqar	(055) 758-64-93	2020-11-17
6379	Şəki	Renault	12 Toros	1995	Universal	Sarı	1.2	150	Benzin	555550	Mexaniki	Ön	f	1900	1118	4478944	Soltan	(055) 783-20-53	2020-11-17
6380	Bakı	Nissan	Pathfinder	2001	Offroader / SUV	Gümüşü	3.5	243	Benzin	250000	Avtomat	Tam	f	6500	3824	4478943	Xəlil	(070) 288-33-32	2020-11-17
6386	İmişli	LADA (VAZ)	2111	1982	Sedan	Göy	1.5	65	Benzin	365555	Mexaniki	Arxa	f	3600	2118	4478811	Habil	(051) 457-81-98	2020-11-17
6387	Bakı	Chevrolet	Lacetti	2008	Universal	Qara	1.6	109	Benzin	121000	Mexaniki	Ön	f	12200	7176	4478809	Surac bey 	(051) 788-96-81	2020-11-17
6389	Gəncə	ZAZ	Sens	2010	Sedan	Qızılı	1.3	65	Benzin	238000	Mexaniki	Ön	f	6200	3647	4478814	Sahin	(051) 301-35-35	2020-11-17
6392	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	350000	Mexaniki	Tam	f	6500	3824	4478824	Nicat	(050) 853-83-73	2020-11-17
6393	Xaçmaz	Muravey	Muravey- 2 02	2000	Motosiklet	Göy	0.2	15	Benzin	250000	Mexaniki	Arxa	f	800	471	4478829	Məmməd	(070) 633-60-62	2020-11-17
6394	Naxçıvan	Kia	Optima	2014	Sedan	Göy	2	274	Benzin	61000	Avtomat	Ön	f	25400	14941	4478830	Tuncel	(050) 548-88-08	2020-11-17
6395	Bakı	Ford	Transit	2003	Mikroavtobus	Gümüşü	2	150	Dizel	350000	Mexaniki	Arxa	f	21500	12647	4478832	Fezail	(070) 232-04-44	2020-11-17
6396	Tovuz	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	107	Benzin	140200	Avtomat	Ön	f	12200	7176	4478833	Altay	(050) 366-38-25	2020-11-17
6397	Bakı	Mercedes	ML 350	2007	Offroader / SUV	Ağ	3.5	272	Benzin	205962	Avtomat	Tam	f	26500	15588	4478840	Elşən	(050) 727-73-57	2020-11-17
6398	Quba	LADA (VAZ)	2107	1998	Sedan	Ağ	1.5	65	Benzin	150000	Mexaniki	Arxa	f	4600	2706	4478844	Emil	(050) 357-43-97	2020-11-17
6399	Bakı	Hyundai	Accent	2007	Sedan	Mavi	1.5	110	Benzin	227000	Avtomat	Ön	f	12300	7235	4478819	Cavid	(055) 636-99-20	2020-11-17
6400	Bakı	Chevrolet	Cruze	2015	Sedan	Boz	1.4	153	Benzin	71500	Avtomat	Ön	f	15500	9118	4463263	Shamil	(051) 543-35-35	2020-11-17
6402	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Qəhvəyi	1.7	80	Benzin	47000	Mexaniki	Tam	f	13200	7765	4478780	Elşən	(055) 497-85-78	2020-11-17
6404	Bakı	Mercedes	C 180	1998	Universal	Yaş Asfalt	1.8	122	Benzin	466479	Avtomat	Arxa	f	11000	6471	4478781	Zamin	(055) 630-95-33	2020-11-17
6405	Lənkəran	LADA (VAZ)	2107	1993	Sedan	Bej	1.3	65	Benzin	300000	Mexaniki	Ön	f	3500	2059	4478784	Tərlan	(050) 368-85-04	2020-11-17
6406	Bakı	Volkswagen	Passat	2001	Sedan	Göy	1.8	170	Benzin	354000	Avtomat	Ön	f	6800	4000	4478785	Saleh	(050) 204-70-42	2020-11-17
6407	Bakı	Iran Khodro	Azsamand	2006	Sedan	Göy	1.8	110	Benzin	540000	Mexaniki	Ön	f	4500	2647	4478786	Rafiq	(050) 579-90-82	2020-11-17
6409	Sumqayıt	Mercedes	E 230	1996	Sedan	Yaş Asfalt	2.3	150	Benzin	440000	Avtomat	Arxa	f	10500	6176	4478792	Eldar	(050) 840-16-06	2020-11-17
6411	Bakı	Daewoo	Super Salon	1995	Sedan	Ağ	2	136	Benzin	280000	Mexaniki	Arxa	f	3600	2118	4478789	Xeyber	(070) 438-05-05	2020-11-17
6412	Astara	Mercedes	E 200	2001	Sedan	Göy	2	136	Benzin	194000	Avtomat	Arxa	f	14800	8706	4478796	Fazil	(050) 673-14-66	2020-11-17
6414	Bakı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	214500	Avtomat	Arxa	f	24900	14647	4422881	Xəyal	(070) 803-57-85	2020-11-17
6415	Bakı	Mercedes	Viano	2008	Van	Qara	2.2	170	Dizel	390800	Mexaniki	Arxa	f	27500	16176	4478804	Yavər	(070) 776-96-66	2020-11-17
6417	Astara	GAZ	32212	2003	Mikroavtobus	Ağ	2.7	160	Dizel	245022	Mexaniki	Arxa	f	12500	7353	4478808	Ilkin	(051) 335-60-56	2020-11-17
6418	Kürdəmir	LADA (VAZ)	Priora	2015	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	244100	Mexaniki	Ön	f	12500	7353	4455861	Allahverdi	(050) 583-40-34	2020-11-17
6428	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2.4	174	Benzin	140000	Avtomat	Ön	f	17700	10412	4436927	Ruslan 	(055) 200-93-05	2020-11-17
6430	Bakı	Hyundai	Accent	2005	Sedan	Qara	1.5	110	Benzin	324000	Mexaniki	Ön	f	8800	5176	4441269	Anar	(051) 465-84-77	2020-11-17
6431	Bakı	BMW	525	2006	Sedan	Ağ	2.5	218	Benzin	114000	Avtomat	Arxa	f	26500	15588	4460265	Tale	(051) 818-79-97	2020-11-17
6432	Bakı	Mercedes	C 320	2001	Sedan	Ağ	3.2	224	Benzin	356800	Avtomat	Arxa	f	9800	5765	4478850	Ruslan	(050) 394-10-79	2020-11-17
6440	Sumqayıt	LADA (VAZ)	Niva	1991	Offroader / SUV	Ağ	1.7	80	Benzin	280000	Mexaniki	Tam	f	3200	1882	4478753	Çingiz	(070) 312-01-26	2020-11-17
6441	Zaqatala	Mercedes	E 250	1993	Sedan	Yaş Asfalt	2.5	150	Dizel	447000	Mexaniki	Arxa	f	8000	4706	4478754	Akif	(070) 569-26-46	2020-11-17
6443	Bakı	Chery	Tiggo	2015	Offroader / SUV	Tünd qırmızı	1.6	132	Benzin	37484	Avtomat	Ön	f	16500	9706	4478755	Abbas	(070) 204-22-10	2020-11-17
6444	Bakı	Opel	Astra	2003	Hetçbek / Liftbek	Gümüşü	1.8	125	Benzin	230000	Avtomat	Ön	f	10000	5882	4478757	Fuzuli	(070) 201-12-37	2020-11-17
6449	Bakı	Audi	A4	2012	Sedan	Qara	1.8	170	Benzin	153000	Avtomat	Ön	f	23200	13647	4478762	Ceyhun	(070) 834-70-70	2020-11-17
6451	Qusar	Mercedes	E 220	2005	Universal	Qara	2.2	170	Dizel	375000	Avtomat	Arxa	f	17900	10529	4478765	Мариф	(070) 746-64-64	2020-11-17
6453	Gəncə	Daewoo	Nexia	2008	Sedan	Ağ	1.5	75	Benzin	238000	Mexaniki	Ön	f	6600	3882	4478717	Elsad	(055) 636-11-22	2020-11-17
6456	Bakı	Mercedes	E 220	2007	Sedan	Gümüşü	2.2	170	Dizel	249500	Avtomat	Arxa	f	24700	14529	4478152	Kenan	(050) 211-91-59	2020-11-17
6457	Bakı	Hyundai	Elantra	2016	Sedan	Qara	2	150	Benzin	98000	Avtomat	Tam	f	22800	13412	4478718	Pərviz	(070) 662-19-38	2020-11-17
6460	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Boz	1.4	97	Benzin	39714	Mexaniki	Tam	f	11300	6647	4478133	Kenan	(050) 211-91-59	2020-11-17
6461	Zaqatala	Chevrolet	Aveo	2013	Sedan	Ağ	1.2	86	Benzin	11111	Mexaniki	Ön	f	11800	6941	4478726	Taryel	(055) 446-44-40	2020-11-17
6462	Bakı	Mercedes	E 320	2003	Sedan	Boz	3.2	224	Benzin	207800	Avtomat	Arxa	f	15500	9118	4448856	Anar	(051) 730-31-31	2020-11-17
6463	Bakı	Kia	Cerato	2011	Sedan	Ağ	1.6	132	Benzin	180000	Avtomat	Ön	f	18500	10882	4478733	Nicat	(077) 429-64-85	2020-11-17
6466	Bakı	Mercedes	C 220	2010	Sedan	Ağ	2.2	170	Dizel	181000	Avtomat	Arxa	f	26000	15294	4478743	İslam	(050) 889-61-89	2020-11-17
6467	Bakı	LADA (VAZ)	Priora	2015	Sedan	Ağ	1.6	106	Benzin	43000	Mexaniki	Ön	f	14100	8294	4478746	Eldeniz	(050) 753-00-91	2020-11-17
6469	Bakı	Hyundai	Sonata	2015	Sedan	Qəhvəyi	2	274	Benzin	61000	Avtomat	Ön	f	30260	17800	4478731	Tural	(055) 280-11-11	2020-11-17
6470	Bakı	Chevrolet	Aveo	2011	Sedan	Ağ	1.4	107	Benzin	222222	Mexaniki	Ön	f	9999	5882	4474792	Azer	(050) 536-43-66	2020-11-17
6471	Şamaxı	Daewoo	Nexia	1996	Sedan	Gümüşü	1.5	75	Benzin	425256	Mexaniki	Ön	f	3900	2294	4478748	Nəsir	(055) 221-57-50	2020-11-17
6473	Bakı	Volkswagen	Jetta	2018	Sedan	Ağ	1.4	150	Benzin	34500	Avtomat	Ön	f	35000	20588	4478750	Malik	(051) 446-42-37	2020-11-17
6474	Bakı	Mercedes	C 250	2013	Sedan	Ağ	1.8	204	Benzin	133000	Avtomat	Arxa	f	28900	17000	4453584	Tural	(051) 855-55-55	2020-11-17
6479	Bakı	Volkswagen	Touareg	2004	Offroader / SUV	Qara	3.2	220	Benzin	223000	Avtomat	Tam	f	8300	4882	4471521	Dolunay	(050) 409-43-72	2020-11-17
6481	Bakı	Mercedes	C 180	1996	Sedan	Göy	1.8	122	Benzin	294000	Avtomat	Arxa	f	8800	5176	4460152	Orxan	(050) 396-36-92	2020-11-17
6482	Sumqayıt	Opel	Vita	1997	Hetçbek / Liftbek	Yaşıl	1.4	90	Benzin	350000	Avtomat	Ön	f	6500	3824	4478766	Orxan	(050) 962-99-32	2020-11-17
6483	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	180000	Avtomat	Ön	f	13200	7765	4478768	Amim	(055) 351-38-01	2020-11-17
6484	Bakı	Mercedes	Sprinter 313	2010	Furqon	Ağ	2.2	170	Dizel	234000	Mexaniki	Arxa	f	24500	14412	4478769	Aqil	(055) 203-80-13	2020-11-17
6485	Ağdaş	Ford	Transit	2007	Furqon	Sarı	2.4	170	Dizel	238000	Mexaniki	Arxa	f	21500	12647	4478775	Ramiq	(050) 692-93-65	2020-11-17
6486	Bakı	Kia	Rio	2007	Sedan	Ağ	1.5	110	Dizel	151000	Avtomat	Ön	f	12300	7235	4478777	Rafiq	(070) 285-52-54	2020-11-17
6454	Bakı	Mercedes	E 220	2000	Sedan	Gümüşü	2.2	143	Dizel	265235	Avtomat	Tam	f	15700	9235	4478722	Talib	(070) 501-00-77	2020-11-17
6492	Bərdə	Mercedes	C 180	1999	Sedan	Gümüşü	1.8	122	Benzin	404998	Avtomat	Arxa	f	12200	7176	4478696	Elşad	(050) 344-38-66	2020-11-17
6493	Bakı	Mack	Mack Anthem	2000	Dartqı	Sarı	12	350	Dizel	600000	Mexaniki	Arxa	f	36000	21176	4478698	Hesen	(050) 250-47-36	2020-11-17
6494	Bakı	Ford	Fusion	2016	Sedan	Ağ	1.5	181	Dizel	140000	Avtomat	Ön	f	23000	13529	4478700	Məhərrəm	(055) 915-40-16	2020-11-17
6495	Cəlilabad	Mercedes	C 180	1999	Sedan	Göy	1.8	122	Benzin	330556	Avtomat	Arxa	f	12000	7059	4478702	Ruslan	(050) 791-98-98	2020-11-17
6496	Bakı	Mitsubishi	ASX	2014	Offroader / SUV	Qırmızı	2	150	Benzin	115000	Avtomat	Tam	f	20900	12294	4444152	Cingiz	(070) 250-50-36	2020-11-17
6497	Bakı	Chevrolet	Cruze	2017	Hetçbek / Liftbek	Ağ	1.8	141	Benzin	80200	Avtomat	Ön	f	20300	11941	4478704	Valeh	(055) 930-56-26	2020-11-17
6498	Bakı	Mercedes	A 160	1999	Hetçbek / Liftbek	Ağ	1.6	102	Benzin	194000	Avtomat	Arxa	f	6800	4000	4478706	Emin	(070) 665-44-06	2020-11-17
6499	Şamaxı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	74000	Mexaniki	Tam	f	10500	6176	4478707	Elşən	(050) 563-03-90	2020-11-17
6500	Gəncə	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	147324	Mexaniki	Ön	f	11300	6647	4478709	Orxan	(055) 546-72-78	2020-11-17
6501	Bakı	Hyundai	Elantra	2019	Sedan	Yaş Asfalt	2	150	Benzin	14100	Avtomat	Ön	f	33500	19706	4478713	Ayaz	(050) 842-91-73	2020-11-17
6502	Göygöl	LADA (VAZ)	2107	2002	Sedan	Ağ	1.6	75	Benzin	152000	Mexaniki	Arxa	f	4300	2529	4478669	Nofer	(055) 395-75-62	2020-11-17
6503	Yevlax	Nissan	Patrol	1993	Offroader / SUV	Qara	2.8	170	Dizel	200000	Mexaniki	Tam	f	10800	6353	4478671	Malik	(050) 240-08-88	2020-11-17
6504	Xırdalan	Renault	Megane	2009	Hetçbek / Liftbek	Gümüşü	1.6	110	Benzin	42000	Avtomat	Ön	f	13200	7765	4423887	MirAğa	(070) 996-09-93	2020-11-17
6505	Gəncə	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	70	Benzin	24000	Mexaniki	Tam	f	13300	7824	4476245	Sadiq	(055) 593-20-77	2020-11-17
6507	Bakı	Ford	Transit	2008	Furqon	Yaşıl	2.4	140	Dizel	145500	Mexaniki	Arxa	f	22500	13235	4478661	Yaqub	(070) 955-00-40	2020-11-17
6508	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.4	90	Benzin	198000	Mexaniki	Ön	f	10700	6294	4478672	Rüstəm	(055) 778-03-13	2020-11-17
6509	Tovuz	Toyota	Land Cruiser	2011	Offroader / SUV	Ağ	4	243	Benzin	128000	Avtomat	Tam	f	58820	34600	4478676	Ramin	(050) 366-32-58	2020-11-17
6510	Zaqatala	Kia	Optima	2016	Sedan	Yaş Asfalt	2	274	Benzin	53500	Avtomat	Ön	f	30500	17941	4478675	Rehman	(050) 368-99-67	2020-11-17
6511	Bakı	Mercedes	S 350	2000	Sedan	Qara	3.5	272	Benzin	210000	Avtomat	Arxa	f	13000	7647	4478679	ilham	(070) 304-91-78	2020-11-17
6512	Sumqayıt	LADA (VAZ)	Priora	2018	Sedan	Qara	1.6	106	Benzin	45700	Mexaniki	Ön	f	15900	9353	4460282	YUSİF	(077) 763-25-63	2020-11-17
6513	Bakı	Mercedes	E 200	1998	Sedan	Qara	2	136	Benzin	401000	Avtomat	Arxa	f	13500	7941	4442683	Kerim	(055) 355-48-55	2020-11-17
6514	Astara	LADA (VAZ)	2106	2005	Sedan	Yaşıl	1.6	75	Benzin	356920	Mexaniki	Arxa	f	6700	3941	4478685	Ebili	(051) 672-41-93	2020-11-17
6516	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	268000	Avtomat	Ön	f	12300	7235	4461674	Namiq	(099) 888-00-42	2020-11-17
6517	Yevlax	LADA (VAZ)	Kalina	2015	Universal	Ağ	1.6	106	Benzin	47500	Avtomat	Ön	f	14000	8235	4478686	Xəyal	(051) 340-09-70	2020-11-17
6524	Bakı	DAF	95XF	2006	Dartqı	Qırmızı	13	450	Dizel	989000	Mexaniki	Arxa	f	30500	17941	4458829	Senan	(055) 895-34-50	2020-11-17
6525	Bakı	Ford	Fusion	2017	Sedan	Yaş Asfalt	1.5	181	Benzin	55000	Avtomat	Ön	f	22400	13176	4478420	Rafail	(050) 649-55-78	2020-11-17
6526	Bakı	Hyundai	Sonata	2011	Sedan	Qara	2.4	178	Benzin	122000	Avtomat	Ön	f	21800	12824	4478712	Ulfat	(055) 779-26-28	2020-11-17
6527	Bakı	LADA (VAZ)	2106	2003	Sedan	Göy	1.6	75	Benzin	155000	Mexaniki	Arxa	f	5800	3412	4467075	Rehim	(077) 604-41-11	2020-11-17
6528	Bakı	Mercedes	C 220	1999	Sedan	Gümüşü	2.2	143	Dizel	257425	Avtomat	Arxa	f	17500	10294	4478715	Aydin	(070) 216-12-26	2020-11-17
6529	Bakı	Daewoo	Nexia	2006	Sedan	Sarı	1.5	75	Benzin	560000	Mexaniki	Ön	f	5600	3294	4478716	Samir	(055) 880-19-09	2020-11-17
6536	Gəncə	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	111110	Mexaniki	Arxa	f	5900	3471	4478650	Satci	(055) 845-84-88	2020-11-17
6537	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Ağ	2.7	177	Benzin	232000	Avtomat	Tam	f	20700	12176	4478653	Kamil	(055) 773-87-05	2020-11-17
6538	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	102000	Avtomat	Tam	f	72250	42500	4478648	Elmin	(050) 271-10-00	2020-11-17
6541	Gəncə	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	61079	Mexaniki	Arxa	f	7300	4294	4478658	Tural	(050) 978-54-15	2020-11-17
6542	Bakı	Lexus	NX 200T	2017	Offroader / SUV	Boz	2	285	Benzin	29000	Avtomat	Tam	f	62730	36900	4478660	Vusal	(070) 287-19-11	2020-11-17
6543	Bakı	Opel	Astra	1996	Hetçbek / Liftbek	Qara	1.6	101	Benzin	247321	Mexaniki	Ön	f	5500	3235	4457517	Vahid	(055) 784-47-87	2020-11-17
6544	Gəncə	Hyundai	Sonata	2011	Sedan	Gümüşü	2	165	Qaz	113000	Avtomat	Ön	f	19000	11176	4478664	Aslan	(070) 910-92-93	2020-11-17
6545	Tovuz	Ford	Transit	2000	Mikroavtobus	Göy	2.5	150	Dizel	430000	Mexaniki	Arxa	f	15500	9118	4478665	Kərem	(070) 688-51-13	2020-11-17
6546	Sumqayıt	LADA (VAZ)	2106	1985	Sedan	Qırmızı	1.3	65	Benzin	200000	Mexaniki	Arxa	f	3400	2000	4478666	Kamal	(070) 555-35-84	2020-11-17
6547	Sumqayıt	Mercedes	C 200	2001	Sedan	Gümüşü	2	136	Benzin	288000	Avtomat	Arxa	f	7800	4588	4467705	Eli	(077) 306-80-59	2020-11-17
6550	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	4	250	Benzin	240000	Avtomat	Tam	f	37400	22000	4478643	Eynur	(050) 573-58-00	2020-11-17
6552	Bakı	Mercedes	C 230	2000	Sedan	Gümüşü	2.3	193	Benzin	290000	Avtomat	Arxa	f	11700	6882	4478645	Səbuhi	(070) 869-76-56	2020-11-17
6553	Bakı	Opel	Astra	1998	Universal	Göy	1.6	101	Benzin	250000	Mexaniki	Ön	f	7500	4412	4478646	Elnur	(055) 394-40-91	2020-11-17
6554	Göyçay	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	124000	Mexaniki	Arxa	f	7800	4588	4478649	Fariz	(055) 798-06-61	2020-11-17
6562	Astara	Ford	Focus	2011	Sedan	Qara	1.6	136	Benzin	190000	Avtomat	Ön	f	14800	8706	4478620	Validdin	(050) 335-08-41	2020-11-17
6563	Xaçmaz	BMW	525	1995	Sedan	Göy	2.5	192	Benzin	197656	Mexaniki	Arxa	f	8500	5000	4478623	Orxan	(055) 916-34-34	2020-11-17
6564	Gəncə	LADA (VAZ)	2114	2006	Hetçbek / Liftbek	Yaş Asfalt	1.6	80	Benzin	383800	Mexaniki	Ön	f	6700	3941	4478625	seymur	(055) 682-48-51	2020-11-17
6565	Bakı	Nissan	Sentra	2018	Sedan	Qara	1.6	181	Benzin	30000	Avtomat	Ön	f	26500	15588	4478599	Elshan	(055) 415-74-34	2020-11-17
6566	Bakı	BMW	328	2014	Sedan	Ağ	2	245	Benzin	162000	Avtomat	Arxa	f	33490	19700	4478565	Mubariz	(070) 266-33-33	2020-11-17
6567	Masallı	Hyundai	Tucson	2006	Offroader / SUV	Qara	2.7	175	Benzin	141000	Avtomat	Tam	f	15700	9235	4462000	Elçin	(055) 587-27-33	2020-11-17
6568	Bakı	LADA (VAZ)	2105	1982	Sedan	Qızılı	1.5	65	Benzin	10500	Mexaniki	Arxa	f	1900	1118	4478633	Nəsib	(055) 826-99-42	2020-11-17
6569	Bakı	LADA (VAZ)	21099	2003	Sedan	Gümüşü	1.5	75	Benzin	235078	Mexaniki	Ön	f	6600	3882	4478634	Habil	(050) 387-93-65	2020-11-17
6570	Sumqayıt	Toyota	Camry	2013	Sedan	Ağ	2.5	181	Benzin	181000	Avtomat	Ön	f	26800	15765	4383276	Vugar	(050) 703-00-31	2020-11-17
6571	Qazax	LADA (VAZ)	2106	1986	Sedan	Ağ	1.6	75	Benzin	276000	Mexaniki	Arxa	f	2700	1588	4478636	Əlixan	(070) 335-70-75	2020-11-17
6572	Bakı	Mercedes	E 220	1995	Sedan	Qara	2.2	170	Benzin	466000	Avtomat	Arxa	f	7800	4588	4414666	yusif	(077) 595-28-80	2020-11-17
6573	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	64000	Avtomat	Tam	f	77010	45300	3650533	Avtosalon "555"	(055) 442-31-91	2020-11-17
6575	Bakı	Hyundai	Grandeur	2013	Sedan	Ağ	2.4	180	Benzin	42000	Avtomat	Ön	f	41650	24500	4478607	Turan	(050) 449-53-36	2020-11-17
6576	Zaqatala	LADA (VAZ)	2109	1995	Hetçbek / Liftbek	Tünd qırmızı	1.5	75	Benzin	223000	Mexaniki	Ön	f	4500	2647	4478609	Zeynal	(077) 533-98-61	2020-11-17
6577	Sumqayıt	BMW	530	2006	Sedan	Qara	3	231	Benzin	280000	Avtomat	Arxa	f	18800	11059	4452705	Akif	(055) 853-53-83	2020-11-17
6578	Sumqayıt	Renault	19	1995	Sedan	Ağ	1.4	58	Benzin	200000	Mexaniki	Arxa	f	1400	824	4478611	Vuqar	(051) 727-43-25	2020-11-17
6579	Salyan	Mercedes	E 230	1989	Sedan	Qızılı	2.3	150	Benzin	253000	Mexaniki	Arxa	f	5900	3471	4478612	Elçin	(051) 500-37-18	2020-11-17
6580	Bakı	Chevrolet	Equinox	2017	Offroader / SUV	Tünd qırmızı	1.5	190	Benzin	43800	Avtomat	Ön	f	30430	17900	4397509	ILKIN	(055) 838-83-81	2020-11-17
6581	Bakı	Suzuki	XL7	2007	Offroader / SUV	Ağ	3.6	252	Benzin	110000	Avtomat	Tam	f	15717	9245	4478614	Seymur	(050) 313-95-84	2020-11-17
6583	Bakı	Renault	Megane	2006	Universal	Gümüşü	1.5	106	Dizel	191015	Mexaniki	Ön	f	12000	7059	4478617	Etibar	(077) 445-00-40	2020-11-17
6585	Ağstafa	Mercedes	E 350	2007	Sedan	Ağ	3.5	306	Benzin	219000	Avtomat	Arxa	f	30600	18000	4478618	Ramin	(050) 724-89-41	2020-11-17
6586	Bakı	Iveco	Otoyol	2001	Yük maşını	Ağ	3.5	135	Dizel	200000	Mexaniki	Arxa	f	9000	5294	4478621	Ramil	(050) 325-88-43	2020-11-17
6600	Bakı	BMW	320	2006	Sedan	Qara	2	177	Dizel	160000	Avtomat	Arxa	f	17800	10471	4439042	Azer	(055) 204-40-80	2020-11-17
6601	Gəncə	LADA (VAZ)	2107	2008	Sedan	Ağ	1.5	65	Benzin	86000	Mexaniki	Arxa	f	6200	3647	4478572	Seymur	(055) 281-35-17	2020-11-17
6603	Bakı	Kia	Ceed	2008	Universal	Ağ	1.6	126	Dizel	251000	Mexaniki	Ön	f	12300	7235	4478577	Cavid	(055) 581-76-68	2020-11-17
6604	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Qara	4	282	Benzin	163000	Avtomat	Tam	f	52700	31000	4457205	Kamandar	(070) 831-39-30	2020-11-17
6605	Bakı	Nissan	Tiida	2013	Hetçbek / Liftbek	Ağ	1.6	125	Benzin	90500	Avtomat	Ön	f	19500	11471	4478578	Namiq	(055) 455-25-99	2020-11-17
6606	Bakı	Chevrolet	Lacetti	2012	Sedan	Ağ	1.6	109	Benzin	201383	Avtomat	Ön	f	12500	7353	4478579	Osman	(055) 852-73-51	2020-11-17
6607	Bakı	Hyundai	Elantra	2015	Sedan	Ağ	1.8	150	Benzin	103000	Avtomat	Ön	f	19500	11471	4478581	Anar	(055) 636-35-10	2020-11-17
6608	Gəncə	LADA (VAZ)	Vesta	2018	Sedan	Gümüşü	1.6	116	Benzin	90000	Mexaniki	Ön	f	16450	9676	4478585	Coşqun	(055) 838-20-20	2020-11-17
6609	Bakı	BMW	750	2016	Sedan	Qara	4.4	450	Benzin	76000	Avtomat	Tam	f	170000	100000	4478584	Fikrət	(050) 682-21-97	2020-11-17
6610	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	99900	Avtomat	Ön	f	18190	10700	4478590	Nurlan 	(051) 979-98-88	2020-11-17
6611	Bakı	Hyundai	Accent	2007	Sedan	Gümüşü	1.4	97	Benzin	186000	Avtomat	Ön	f	12700	7471	4478588	Ilqar	(055) 201-21-98	2020-11-17
6612	Bakı	Toyota	Prado	2011	Offroader / SUV	Qara	4	250	Benzin	158000	Avtomat	Tam	f	55760	32800	4399050	Avtosalon "555"	(055) 442-31-91	2020-11-17
6613	Bakı	LADA (VAZ)	2107	1989	Sedan	Bənövşəyi	1.6	75	Benzin	620856	Mexaniki	Arxa	f	3500	2059	4478597	Akwin	(077) 426-40-60	2020-11-17
6614	Bakı	Mercedes	E 200	2006	Sedan	Gümüşü	1.8	184	Benzin	177000	Avtomat	Arxa	f	26300	15471	4478548	Musviq	(050) 415-21-21	2020-11-17
6615	Sumqayıt	Kia	Rio	2008	Hetçbek / Liftbek	Yaş Asfalt	1.4	97	Benzin	123523	Mexaniki	Ön	f	11300	6647	4478550	Elnur	(077) 566-61-39	2020-11-17
6616	Bakı	Kia	Ceed	2007	Hetçbek / Liftbek	Mavi	1.4	109	Benzin	180000	Mexaniki	Ön	f	11800	6941	4478553	RAFIZ	(055) 798-00-00	2020-11-17
6618	İsmayıllı	LADA (VAZ)	2106	1994	Sedan	Ağ	1.6	75	Benzin	120000	Mexaniki	Arxa	f	5500	3235	4478556	Faiq	(055) 380-08-29	2020-11-17
6619	Bakı	ZAZ	Slavuta	2004	Hetçbek / Liftbek	Yaş Asfalt	1.2	75	Benzin	111111	Mexaniki	Ön	f	4000	2353	4478557	Mubariz	(055) 575-00-80	2020-11-17
6622	Bakı	Toyota	Prius	2013	Hetçbek / Liftbek	Göy	1.8	99	Benzin	126600	Avtomat	Ön	f	18500	10882	4427643	Nurlan 	(051) 982-33-22	2020-11-17
6623	Gəncə	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	274310	Avtomat	Arxa	f	11000	6471	4478563	Aftandil	(055) 524-37-49	2020-11-17
6624	Salyan	Mercedes	190	1985	Sedan	Ağ	2	122	Dizel	450000	Mexaniki	Arxa	f	3500	2059	4478566	Zeynal	(050) 424-54-48	2020-11-17
6625	Sumqayıt	Mercedes	C 200	1995	Sedan	Qara	2	136	Benzin	265890	Avtomat	Arxa	f	8200	4824	4478567	Elnur	(050) 338-44-61	2020-11-17
6626	Bakı	Chevrolet	Malibu	2016	Sedan	Qara	1.5	181	Benzin	123000	Avtomat	Ön	f	20800	12235	4459083	Rasim	(055) 211-63-99	2020-11-17
6627	Bakı	Hyundai	Accent	2008	Sedan	Ağ	1.4	100	Benzin	193000	Avtomat	Ön	f	12500	7353	4478569	Elnur	(077) 552-40-65	2020-11-17
6628	Sumqayıt	Mercedes	C 180	2000	Sedan	Qara	1.8	122	Benzin	33000	Avtomat	Arxa	f	12500	7353	4478570	Cavid	(050) 444-56-44	2020-11-17
6629	Bakı	Mercedes	E 220	2012	Sedan	Qara	2.2	204	Dizel	245000	Avtomat	Arxa	f	29580	17400	4478571	Elnur	(077) 235-45-49	2020-11-17
6635	Oğuz	Mercedes	C 200	1998	Sedan	Qara	2	136	Benzin	244000	Avtomat	Arxa	f	12500	7353	4478598	Rafət	(050) 365-15-15	2020-11-17
6636	Bakı	Mercedes	E 250	2011	Sedan	Ağ	1.8	184	Benzin	185000	Avtomat	Arxa	f	36210	21300	4399043	Avtosalon "555"	(055) 442-31-91	2020-11-17
6637	Bakı	Land Rover	Discovery	2014	Offroader / SUV	Boz	3	256	Dizel	100000	Avtomat	Tam	f	66300	39000	3650669	Avtosalon "555"	(055) 442-31-91	2020-11-17
6638	Yevlax	Shacman	F3000	2011	Yük maşını	Göy	9.5	375	Dizel	98000	Mexaniki	Tam	f	45900	27000	4478601	Resid	(099) 744-06-66	2020-11-17
6639	Bakı	Chevrolet	Cruze	2011	Sedan	Gümüşü	1.4	141	Benzin	160000	Avtomat	Ön	f	12800	7529	4478603	Samir	(070) 970-54-01	2020-11-17
6640	Bakı	Mercedes	E 320	2003	Sedan	Qara	3.2	224	Benzin	316000	Avtomat	Arxa	f	18400	10824	4478604	Xezer	(050) 339-29-13	2020-11-17
6641	Bakı	Ford	Transit	2009	Furqon	Ağ	2.2	140	Dizel	185400	Mexaniki	Ön	f	17900	10529	4433377	Zaur	(070) 229-01-91	2020-11-17
6647	Bakı	Fiat	Doblo	2007	Minivan	Yaşıl	1.4	100	Benzin	310000	Mexaniki	Ön	f	12000	7059	4478521	Elşən	(050) 836-00-46	2020-11-17
6648	Bakı	Hyundai	Sonata	2008	Sedan	Ağ	2	165	Benzin	210000	Avtomat	Ön	f	16400	9647	4457266	Anar	(070) 801-00-51	2020-11-17
6649	Qazax	Ford	Transit	1990	Mikroavtobus	Ağ	2.5	150	Dizel	339600	Mexaniki	Arxa	f	14200	8353	4478523	Serif	(055) 834-05-95	2020-11-17
6651	Bakı	Volkswagen	Golf	2001	Hetçbek / Liftbek	Gümüşü	1.6	120	Benzin	234500	Avtomat	Tam	f	7800	4588	4478525	Elmir	(070) 732-77-37	2020-11-17
6652	Bakı	Land Rover	RR Sport	2015	Offroader / SUV	Qara	3	340	Dizel	150000	Avtomat	Tam	f	84150	49500	4478526	Elşən	(077) 422-08-54	2020-11-17
6653	Bakı	Mercedes	Sprinter 313	2008	Furqon	Narıncı	2.2	129	Dizel	172000	Mexaniki	Arxa	f	21000	12353	4478531	Elnur	(050) 314-36-80	2020-11-17
6654	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Ağ	1.8	99	Hibrid	84000	Avtomat	Ön	f	19500	11471	4364878	Elnur	(050) 395-01-09	2020-11-17
6656	Mingəçevir	Mercedes	C 180	1995	Sedan	Yaş Asfalt	1.8	122	Benzin	335721	Avtomat	Arxa	f	10500	6176	4478533	Samir	(055) 471-18-29	2020-11-17
6657	Gəncə	LADA (VAZ)	21013	1983	Sedan	Mavi	1.2	65	Benzin	336000	Mexaniki	Arxa	f	5500	3235	4478534	Kinyaz	(055) 736-88-22	2020-11-17
6658	Gəncə	Mercedes	E 220	1999	Sedan	Gümüşü	2.2	143	Dizel	350000	Avtomat	Arxa	f	15000	8824	4478539	Ziyatxan	(070) 365-72-01	2020-11-17
6659	Bakı	Kia	Ceed	2008	Universal	Göy	1.6	116	Dizel	153454	Mexaniki	Ön	f	13250	7794	4478537	Zaur 	(050) 359-67-78	2020-11-17
6660	Gəncə	LADA (VAZ)	Priora	2008	Hetçbek / Liftbek	Gümüşü	1.6	98	Benzin	300000	Mexaniki	Ön	f	8200	4824	4478541	Kenan	(055) 593-33-99	2020-11-17
6663	Bakı	Chery	Tiggo	2013	Offroader / SUV	Qara	1.8	132	Benzin	210000	Avtomat	Ön	f	7800	4588	4460569	Anar	(070) 298-78-18	2020-11-17
6670	Gəncə	BMW	528	1998	Sedan	Qara	2.8	192	Benzin	284000	Avtomat	Arxa	f	11800	6941	4478498	FERID	(055) 825-08-08	2020-11-17
6671	Şamaxı	Ford	Transit	1998	Furqon	Sarı	2.5	150	Dizel	340000	Mexaniki	Arxa	f	13900	8176	4478499	Rehim	(055) 207-55-74	2020-11-17
6672	Bakı	Toyota	RAV 4	1996	Offroader / SUV	Qara	2	170	Benzin	260000	Avtomat	Tam	f	8000	4706	4478501	İlqar	(050) 222-26-13	2020-11-17
6674	Bakı	Great Wall	Voleex C30	2013	Sedan	Mavi	1.5	105	Benzin	145400	Avtomat	Ön	f	10500	6176	4464356	Tural	(050) 614-47-74	2020-11-17
6675	Bakı	LADA (VAZ)	2112	2007	Hetçbek / Liftbek	Göy	1.6	80	Benzin	81000	Mexaniki	Ön	f	8270	4865	4478505	Arif	(070) 510-98-10	2020-11-17
6676	Siyəzən	Nissan	Sunny	2007	Sedan	Ağ	1.6	109	Benzin	144000	Avtomat	Ön	f	12800	7529	4478507	Cavid	(050) 841-37-41	2020-11-17
6677	Ağcabədi	Land Rover	RR Sport	2008	Offroader / SUV	Ağ	3.6	272	Dizel	148000	Avtomat	Tam	f	38000	22353	4478508	Taleh	(050) 533-30-31	2020-11-17
6678	Bakı	Opel	Vita	1997	Hetçbek / Liftbek	Boz	1.4	95	Benzin	350000	Avtomat	Ön	f	6700	3941	4478459	ELMAN 	(050) 319-33-87	2020-11-17
6679	Bakı	Kia	Cerato	2015	Sedan	Qara	1.8	150	Benzin	79000	Avtomat	Ön	f	19800	11647	4478349	Hemid	(050) 273-26-20	2020-11-17
6680	Saatlı	Iran Khodro	Azsamand	2008	Sedan	Boz	1.8	110	Benzin	435000	Mexaniki	Ön	f	9700	5706	4478460	Sadiq	(050) 508-88-55	2020-11-17
6681	Bakı	Hyundai	Sonata	2012	Sedan	Boz	2.4	178	Benzin	160000	Avtomat	Ön	f	21300	12529	4478462	Emil	(099) 800-10-60	2020-11-17
6682	Qəbələ	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	241000	Mexaniki	Ön	f	11500	6765	4478465	Qərib	(050) 312-45-96	2020-11-17
6683	Sumqayıt	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	137000	Avtomat	Ön	f	10700	6294	4478467	Namiq	(070) 639-39-39	2020-11-17
6684	Bakı	Audi	Q5	2009	Offroader / SUV	Qara	3.2	280	Benzin	170000	Avtomat	Tam	f	24650	14500	4478461	Aysel	(055) 218-23-68	2020-11-17
6685	Bakı	BMW	320	2004	Sedan	Göy	2.2	178	Benzin	279000	Avtomat	Arxa	f	13700	8059	4478471	Vusal	(050) 591-06-89	2020-11-17
6686	Bakı	Opel	Astra	1994	Universal	Göy	2	136	Benzin	24423	Avtomat	Ön	f	4500	2647	4478477	Vüsal	(050) 648-86-62	2020-11-17
6687	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	67000	Avtomat	Ön	f	13000	7647	4478474	Zaur	(055) 833-90-31	2020-11-17
6688	Qusar	LADA (VAZ)	2107	2006	Sedan	Ağ	1.6	75	Benzin	213510	Mexaniki	Arxa	f	6000	3529	4478480	Arif	(077) 569-13-90	2020-11-17
6690	Bakı	Mercedes	S 320	1993	Sedan	Gümüşü	3.2	224	Qaz	280000	Avtomat	Arxa	f	6000	3529	4478484	huseyn	(050) 340-76-05	2020-11-17
6691	Bakı	Kia	Rio	2013	Hetçbek / Liftbek	Qara	1.3	90	Benzin	100500	Avtomat	Ön	f	13100	7706	4478485	Zöhrab	(055) 213-50-02	2020-11-17
6693	Bakı	Ford	Fusion	2018	Sedan	Gümüşü	1.5	181	Benzin	23000	Avtomat	Ön	f	25900	15235	4395071	Elnur 	(050) 388-28-70	2020-11-17
6696	Kürdəmir	LADA (VAZ)	2112	2001	Hetçbek / Liftbek	Mavi	1.6	80	Benzin	273000	Mexaniki	Ön	f	6400	3765	4478492	Cosqun	(050) 473-21-36	2020-11-17
6697	Bakı	LADA (VAZ)	Priora	2012	Hetçbek / Liftbek	Ağ	1.6	98	Benzin	126500	Mexaniki	Ön	f	9700	5706	4478493	Fuad	(055) 200-15-53	2020-11-17
6698	Bakı	Toyota	Land Cruiser	2012	Offroader / SUV	Ağ	4	282	Benzin	125000	Avtomat	Tam	f	68000	40000	4478495	Ağa	(050) 408-81-97	2020-11-17
6704	Bakı	Mitsubishi	Pajero	2013	Offroader / SUV	Ağ	3.5	202	Benzin	146000	Avtomat	Tam	f	37910	22300	4478494	Bəybala	(070) 316-75-43	2020-11-17
6705	Sumqayıt	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	1003000	Mexaniki	Tam	f	12800	7529	4478510	Miri	(050) 291-75-15	2020-11-17
6706	Gəncə	Mercedes	Sprinter 313	2003	Mikroavtobus	Ağ	2.2	173	Dizel	350000	Mexaniki	Arxa	f	28000	16471	4478514	Ismayil	(050) 626-57-11	2020-11-17
6707	Bakı	Hyundai	Santa Fe	2009	Offroader / SUV	Qara	2	183	Dizel	88000	Avtomat	Ön	f	22000	12941	4478515	Kamran	(055) 699-77-97	2020-11-17
6708	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qırmızı	1.5	76	Benzin	220000	Avtomat	Ön	f	12500	7353	4478516	Huseyn	(077) 760-00-10	2020-11-17
6709	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	79697	Mexaniki	Arxa	f	6400	3765	4478519	Sadiq	(050) 691-19-74	2020-11-17
6714	Bakı	Ford	Tourneo Connect	2009	Furqon	Ağ	1.8	180	Dizel	190000	Mexaniki	Ön	f	11800	6941	4478415	Elsen	(055) 705-00-29	2020-11-17
6715	Bakı	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	316632	Avtomat	Arxa	f	10500	6176	4478435	Gunduz	(055) 580-10-10	2020-11-17
6716	Bakı	Mercedes	Vito 115	2007	Van	Bej	2	150	Dizel	562000	Avtomat	Arxa	f	23000	13529	4478436	Ilqar	(055) 531-16-61	2020-11-17
6717	Şamaxı	Iran Khodro	Azsamand	2006	Sedan	Göy	1.8	110	Benzin	220000	Mexaniki	Ön	f	6000	3529	4478439	Elsever	(050) 693-82-29	2020-11-17
6718	Qəbələ	Opel	Vectra	1998	Sedan	Gümüşü	1.6	101	Benzin	200000	Mexaniki	Ön	f	6400	3765	4478443	Şahmar	(051) 445-76-80	2020-11-17
6719	Bakı	Mercedes	E 200	1999	Sedan	Yaşıl	2	136	Benzin	427000	Avtomat	Arxa	f	12500	7353	4478445	Самир	(050) 319-00-07	2020-11-17
6720	Lənkəran	GAZ	330200	2007	Yük maşını	Ağ	2.4	150	Benzin	257751	Mexaniki	Arxa	f	13500	7941	4478449	Kamal	(070) 697-16-67	2020-11-17
6721	Bakı	Peugeot	RCZ	2013	Kupe	Ağ	1.6	180	Benzin	56000	Avtomat	Ön	f	24800	14588	4478451	rauf	(055) 823-12-44	2020-11-17
6722	Bakı	Opel	Vectra	1998	Sedan	Yaşıl	2	136	Benzin	253352	Avtomat	Ön	f	7100	4176	4478452	Elşad	(070) 358-58-55	2020-11-17
6723	Bakı	Mercedes	S 350	2007	Sedan	Ağ	3.5	272	Benzin	220000	Avtomat	Arxa	f	31450	18500	4361767	Samir	(055) 246-33-56	2020-11-17
6726	Bakı	Mitsubishi	Airtrek	2002	Offroader / SUV	Gümüşü	2	136	Benzin	333000	Avtomat	Tam	f	10000	5882	4478403	Vüqar	(050) 256-63-69	2020-11-17
6727	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	124329	Avtomat	Ön	f	16200	9529	4478404	Vüqar	(070) 606-03-02	2020-11-17
6731	Bakı	Toyota	Prius	2014	Hetçbek / Liftbek	Göy	1.8	136	Hibrid	193000	Avtomat	Ön	f	23500	13824	4478416	Ilgar	(070) 600-70-37	2020-11-17
6732	Masallı	Mercedes	E 230	1996	Sedan	Gümüşü	2.3	150	Benzin	377000	Avtomat	Arxa	f	11600	6824	4478417	Tural	(055) 402-59-49	2020-11-17
6733	Sumqayıt	LADA (VAZ)	Niva	2018	Offroader / SUV	Yaş Asfalt	1.7	80	Benzin	60000	Mexaniki	Tam	f	15700	9235	4478422	KAMRAN	(055) 694-20-95	2020-11-17
6735	Bakı	Renault	Modus	2008	Hetçbek / Liftbek	Gümüşü	1.5	110	Dizel	218888	Mexaniki	Ön	f	10800	6353	4478424	Kamran	(050) 676-14-04	2020-11-17
6736	Bakı	Kia	Sorento	2003	Offroader / SUV	Gümüşü	2.5	140	Dizel	275000	Avtomat	Tam	f	14200	8353	4467109	Sexavet	(070) 303-85-43	2020-11-17
6738	Bakı	Mercedes	E 220	2006	Sedan	Gümüşü	2.2	170	Dizel	310000	Avtomat	Arxa	f	17500	10294	4478427	Əfsaləddin	(055) 725-87-79	2020-11-17
6739	Bakı	Mercedes	E 200	2000	Sedan	Gümüşü	2	136	Benzin	202058	Avtomat	Arxa	f	13000	7647	4478426	Asif	(055) 822-32-06	2020-11-17
6740	Bakı	ZAZ	Slavuta	2005	Sedan	Yaşıl	1.3	75	Benzin	284911	Mexaniki	Ön	f	3200	1882	4478433	Toğrul 	(050) 590-74-94	2020-11-17
6744	Qəbələ	Chery	Fulwin 2	2012	Sedan	Ağ	1.5	109	Benzin	159000	Mexaniki	Ön	f	6150	3618	4444967	Sexavet	(050) 366-63-44	2020-11-17
6747	Bakı	Mercedes	300 SEL	1986	Sedan	Gümüşü	3	175	Benzin	450000	Avtomat	Arxa	f	12000	7059	4478454	Sarxan	(055) 635-63-93	2020-11-17
6748	Bakı	LADA (VAZ)	2109	1991	Hetçbek / Liftbek	Ağ	1.5	75	Benzin	15536	Mexaniki	Ön	f	4500	2647	4478455	Rasim	(055) 316-65-83	2020-11-17
6749	Gəncə	Renault	19	1996	Sedan	Göy	1.6	90	Benzin	345334	Mexaniki	Ön	f	3100	1824	4478456	Mehman	(077) 403-60-50	2020-11-17
6750	Bakı	Mercedes	E 250	2011	Sedan	Ağ	1.8	204	Benzin	70000	Avtomat	Arxa	f	36550	21500	4478453	ALIK	(050) 707-55-55	2020-11-17
6751	Bakı	Hyundai	Sonata	2015	Sedan	Ağ	2	274	Benzin	56000	Avtomat	Ön	f	30800	18118	4467494	Elsen	(070) 766-05-05	2020-11-17
6756	Bakı	Ford	Fusion	2013	Sedan	Çəhrayı	1.5	181	Benzin	195000	Avtomat	Arxa	f	18500	10882	4478384	elcin	(055) 656-69-88	2020-11-17
6758	Bakı	Kia	Rio	2008	Hetçbek / Liftbek	Qara	1.4	97	Benzin	129683	Mexaniki	Ön	f	10700	6294	4462503	Ferid	(077) 217-35-05	2020-11-17
6759	Bakı	Kia	Optima	2008	Sedan	Qara	2	144	Benzin	210000	Avtomat	Ön	f	13600	8000	4478388	Rəşad	(055) 807-95-99	2020-11-17
6760	Bakı	Mercedes	Sprinter 311	2008	Mikroavtobus	Ağ	2.2	170	Dizel	522000	Mexaniki	Arxa	f	33200	19529	4478389	zamin	(055) 203-03-07	2020-11-17
6762	Sumqayıt	Opel	Astra	1995	Universal	Boz	1.6	101	Benzin	395735	Avtomat	Ön	f	5700	3353	4478394	vasif	(051) 496-30-30	2020-11-17
6763	Mingəçevir	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	217000	Mexaniki	Ön	f	10600	6235	4478393	Elxan	(070) 624-81-90	2020-11-17
6766	Gəncə	Mercedes	C 200	1998	Sedan	Yaş Asfalt	2	136	Benzin	280000	Avtomat	Arxa	f	11800	6941	4458541	Saleh	(055) 374-47-94	2020-11-17
6768	Gəncə	Mercedes	Vito 115	2007	Van	Qara	2.2	150	Dizel	285000	Avtomat	Arxa	f	26700	15706	4478399	Bahruz	(070) 800-14-01	2020-11-17
6769	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	180000	Variator	Ön	f	11900	7000	4478355	Behram	(050) 353-49-11	2020-11-17
6770	Şəki	LADA (VAZ)	2104	2008	Universal	Gümüşü	1.6	75	Benzin	175608	Mexaniki	Arxa	f	6200	3647	4478356	Mehman	(070) 643-28-55	2020-11-17
6771	Sumqayıt	LADA (VAZ)	2114	2004	Hetçbek / Liftbek	Qara	1.5	75	Benzin	170000	Mexaniki	Ön	f	6800	4000	4293766	Elmin	(055) 653-44-58	2020-11-17
6772	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	105249	Avtomat	Tam	f	69360	40800	4387249	Natiq	(055) 752-56-66	2020-11-17
6773	Bakı	BMW	X5	2000	Offroader / SUV	Qara	4.4	286	Benzin	286000	Avtomat	Tam	f	14800	8706	4478362	sebuhi	(050) 378-29-99	2020-11-17
6774	Bakı	BMW	X6 M	2009	Offroader / SUV	Ağ	4.4	555	Benzin	160000	Avtomat	Tam	f	39950	23500	4478367	Nizami	(050) 295-12-78	2020-11-17
6775	Bakı	Toyota	Corolla	2006	Universal	Gümüşü	1.4	97	Dizel	196300	Mexaniki	Ön	f	13300	7824	4478363	Rəşad	(050) 381-50-51	2020-11-17
6777	Bakı	Opel	Vectra	1998	Sedan	Boz	2	150	Benzin	28095	Avtomat	Ön	f	5555	3268	4478375	Elvin	(055) 445-36-45	2020-11-17
6778	Gəncə	Great Wall	Hover H3	2014	Offroader / SUV	Ağ	2	180	Benzin	175000	Mexaniki	Tam	f	19000	11176	4478377	Togrul	(055) 624-34-44	2020-11-17
6779	Mingəçevir	Audi	Q7	2006	Offroader / SUV	Boz	4.2	400	Benzin	270000	Avtomat	Tam	f	21930	12900	4478379	Ramil	(055) 606-55-44	2020-11-17
6780	Bakı	Hyundai	Accent	1994	Sedan	Yaşıl	1.3	75	Benzin	356924	Mexaniki	Ön	f	4700	2765	4427814	Vüqar	(055) 492-26-72	2020-11-17
6781	Gəncə	Mercedes	E 280	1998	Sedan	Gümüşü	2.8	193	Benzin	302000	Avtomat	Arxa	f	10500	6176	4478380	Adil	(070) 298-19-29	2020-11-17
6782	Bakı	Hyundai	Sonata	2007	Sedan	Ağ	2.4	181	Benzin	236000	Avtomat	Ön	f	13900	8176	4478381	Yaşar	(070) 711-15-84	2020-11-17
6789	Sumqayıt	LADA (VAZ)	2104	2002	Universal	Yaşıl	1.5	65	Benzin	645230	Mexaniki	Arxa	f	6200	3647	4478397	Sahib	(055) 550-50-09	2020-11-17
6790	Bakı	BMW	728	1996	Sedan	Qara	2.8	192	Benzin	312000	Avtomat	Arxa	f	9350	5500	4478400	Miri	(070) 216-40-42	2020-11-17
6792	Bakı	BMW	320	2007	Kabrio	Qara	2	170	Benzin	199000	Avtomat	Arxa	f	26350	15500	4478401	Mecid	(055) 646-16-97	2020-11-17
6794	Bakı	Ford	Fusion	2017	Sedan	Gümüşü	1.5	181	Benzin	79800	Avtomat	Ön	f	21700	12765	4463949	Amil	(050) 893-57-40	2020-11-17
6797	Sabirabad	LADA (VAZ)	2106	1992	Sedan	Ağ	1.6	75	Benzin	550000	Mexaniki	Arxa	f	5500	3235	4478329	Etibar	(051) 561-10-01	2020-11-17
6799	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	227000	Avtomat	Ön	f	11900	7000	4416616	Yaqub	(050) 509-72-86	2020-11-17
6800	Bakı	LADA (VAZ)	2107	2007	Sedan	Ağ	1.6	75	Benzin	95000	Mexaniki	Arxa	f	7200	4235	4478336	Zamiq	(050) 864-07-38	2020-11-17
6801	Gəncə	Hyundai	Accent	2016	Sedan	Ağ	1.6	132	Benzin	69000	Avtomat	Ön	f	16700	9824	4478337	Kamran	(055) 876-92-26	2020-11-17
6802	Şəmkir	LADA (VAZ)	2106	1982	Sedan	Ağ	1.3	65	Benzin	500000	Mexaniki	Arxa	f	2800	1647	4478339	Suliddin	(050) 448-78-02	2020-11-17
6803	Bakı	Mercedes	Vito	2011	Van	Qara	2.2	136	Dizel	278000	Avtomat	Arxa	f	30500	17941	4439663	Fuad	(070) 749-00-92	2020-11-17
6804	Bakı	Chevrolet	Malibu	2017	Sedan	Qara	1.5	181	Benzin	55200	Avtomat	Ön	f	18500	10882	4478331	Ramal	(055) 236-31-31	2020-11-17
6805	Bakı	Toyota	Camry	2020	Sedan	Qara	2.5	218	Hibrid	0	Avtomat	Ön	t	75140	44200	4450325	Vuqar	(050) 203-50-66	2020-11-17
6806	Bakı	Mercedes	C 250	2014	Sedan	Qara	1.8	204	Benzin	51600	Avtomat	Arxa	f	30940	18200	4478343	Taceddin	(055) 201-03-32	2020-11-17
6807	Biləsuvar	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	47000	Mexaniki	Arxa	f	8700	5118	4478326	Ramin	(070) 361-58-19	2020-11-17
6809	Qusar	Mitsubishi	Pajero	1996	Offroader / SUV	Ağ	2.8	125	Dizel	325800	Avtomat	Tam	f	8500	5000	4478302	Cemil	(070) 949-99-05	2020-11-17
6810	Bakı	Ford	Transit	1994	Mikroavtobus	Ağ	2.5	96	Dizel	200000	Mexaniki	Arxa	f	9000	5294	4478303	Subhan	(099) 344-99-30	2020-11-17
6811	Bakı	Hyundai	ix55	2011	Offroader / SUV	Qara	3	240	Dizel	157444	Avtomat	Tam	f	35000	20588	4369148	Rauf	(050) 560-55-55	2020-11-17
6812	Bakı	Mercedes	190	1992	Sedan	Qırmızı	2	122	Benzin	147000	Avtomat	Arxa	f	5900	3471	4389492	Elsen	(070) 694-31-38	2020-11-17
6813	Bakı	Mercedes	190	1993	Sedan	Göy	2	122	Benzin	258900	Mexaniki	Arxa	f	5600	3294	4467980	Neymət	(055) 474-88-68	2020-11-17
6815	Sumqayıt	Ford	Focus	2000	Sedan	Göy	2	152	Benzin	287300	Avtomat	Ön	f	5350	3147	4478315	Wahin	(050) 397-01-47	2020-11-17
6816	Neftçala	UAZ	469	1996	Offroader / SUV	Yaşıl	2.3	131	Benzin	97000	Mexaniki	Tam	f	4500	2647	4478318	Vusal	(055) 500-40-78	2020-11-17
6817	Bakı	Yamaha	YBR 125	2019	Motosiklet	Qırmızı	0.2	49	Benzin	15350	Avtomat	Arxa	f	1400	824	4478319	Ramiz	(055) 502-52-85	2020-11-17
6818	Bakı	Opel	Astra	2007	Universal	Yaş Asfalt	1.3	90	Dizel	182900	Mexaniki	Ön	f	11400	6706	4457227	Rövsən	(050) 200-63-43	2020-11-17
6819	Bakı	Ford	Tourneo Connect	2006	Furqon	Ağ	1.8	90	Dizel	250650	Mexaniki	Ön	f	11500	6765	4478322	Səhriyar	(050) 609-08-05	2020-11-17
6820	Xırdalan	Porsche	Cayenne S	2004	Offroader / SUV	Tünd qırmızı	4.5	340	Benzin	167000	Avtomat	Tam	f	17000	10000	4478324	Ceyhun	(070) 946-96-97	2020-11-17
6824	Bakı	Ford	Fusion	2015	Sedan	Ağ	1.5	181	Benzin	154000	Avtomat	Ön	f	19700	11588	4460126	Hüseyn	(050) 785-00-88	2020-11-17
6825	Bakı	LADA (VAZ)	21099	2004	Sedan	Tünd qırmızı	1.5	75	Benzin	124000	Mexaniki	Ön	f	8500	5000	4395027	Fazil	(050) 336-43-52	2020-11-17
6826	Bakı	BMW	520	2019	Sedan	Qara	2	184	Benzin	22000	Avtomat	Arxa	f	74800	44000	4335685	Elshen	(055) 213-13-31	2020-11-17
6827	Qəbələ	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	177	Benzin	310000	Avtomat	Arxa	f	16000	9412	4478352	Celal	(050) 663-72-53	2020-11-17
6834	Bakı	Volkswagen	Passat	2013	Sedan	Ağ	1.8	160	Benzin	163000	Avtomat	Ön	f	21500	12647	4218328	Ram	(050) 210-13-40	2020-11-17
6835	Bakı	Chevrolet	Malibu	2016	Sedan	Tünd qırmızı	1.5	160	Benzin	30154	Avtomat	Ön	f	22500	13235	4468965	Huseyin	(050) 807-49-81	2020-11-17
6836	Sumqayıt	Mercedes	CLS 63 AMG	2007	Sedan	Göy	6.2	420	Benzin	170000	Avtomat	Arxa	f	29000	17059	4478283	Kamal	(070) 903-02-50	2020-11-17
6837	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	108000	Avtomat	Ön	f	14300	8412	4469631	Əli	(050) 807-49-86	2020-11-17
6839	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	61000	Avtomat	Ön	f	14300	8412	4467195	Sadiq	(050) 741-13-75	2020-11-17
6840	Sabirabad	GAZ	33021	2002	Yük maşını	Qəhvəyi	2.4	131	Benzin	177170	Mexaniki	Arxa	f	7500	4412	4478288	Amid	(050) 308-79-07	2020-11-17
6841	Bakı	Chevrolet	Cruze	2016	Sedan	Göy	1.4	141	Benzin	41000	Avtomat	Ön	f	17400	10235	4437980	Məhəmməd	(050) 741-19-67	2020-11-17
6842	Bakı	Mercedes	Vito 115	2009	Van	Yaş Asfalt	2.2	150	Dizel	299000	Mexaniki	Arxa	f	22900	13471	4478290	Elburus	(077) 343-07-06	2020-11-17
6843	İmişli	BMW	X5	2008	Offroader / SUV	Qara	4.8	286	Benzin	177407	Avtomat	Tam	f	30600	18000	4478292	Elnur 	(050) 788-48-08	2020-11-17
6844	Bakı	Mercedes	C 230	1999	Sedan	Gümüşü	2.3	150	Benzin	197400	Avtomat	Arxa	f	10600	6235	4456553	Ruslan	(050) 688-67-90	2020-11-17
6845	Bakı	Honda	CR-V	2012	Offroader / SUV	Ağ	2.4	180	Benzin	80000	Avtomat	Tam	f	29240	17200	4478293	Shirxan 	(050) 405-93-46	2020-11-17
6846	Zaqatala	Opel	Astra	2000	Hetçbek / Liftbek	Bənövşəyi	1.6	101	Benzin	352744	Mexaniki	Ön	f	8500	5000	4455257	Həbib	(077) 411-11-54	2020-11-17
6848	Gəncə	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	370000	Mexaniki	Arxa	f	7300	4294	4478259	Vüsal	(055) 883-08-85	2020-11-17
6849	Bakı	Mitsubishi	Pajero io	1999	Offroader / SUV	Ağ	1.8	130	Benzin	190000	Avtomat	Tam	f	7800	4588	4478261	Hafiz	(070) 521-89-21	2020-11-17
6850	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2	274	Benzin	62000	Avtomat	Ön	f	26500	15588	4459278	Emin	(055) 202-18-18	2020-11-17
6851	Bakı	Fiat	Doblo	2006	Minivan	Qırmızı	1.9	130	Dizel	320563	Mexaniki	Ön	f	10500	6176	4478264	Sefer	(077) 251-50-91	2020-11-17
6852	Quba	GAZ	31105	2006	Sedan	Ağ	2.3	131	Benzin	100000	Mexaniki	Arxa	f	7800	4588	4478226	Murad	(070) 898-17-17	2020-11-17
6853	İsmayıllı	LADA (VAZ)	2106	1984	Sedan	Qırmızı	1.5	65	Benzin	256500	Mexaniki	Arxa	f	2750	1618	4478265	Orxan	(055) 426-05-47	2020-11-17
6854	Bakı	Volkswagen	Passat	1998	Sedan	Gümüşü	1.8	170	Benzin	360000	Avtomat	Ön	f	4500	2647	4478268	Ferid	(077) 721-23-06	2020-11-17
6855	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Qara	1.6	98	Benzin	98000	Mexaniki	Ön	f	10000	5882	4478269	Letif	(050) 682-85-85	2020-11-17
6856	Bakı	Toyota	Camry	2007	Sedan	Qara	2.4	175	Benzin	182000	Avtomat	Ön	f	16300	9588	4478270	Namiq	(070) 889-03-59	2020-11-17
6857	Bakı	Kia	Ceed	2007	Universal	Boz	1.6	110	Dizel	190000	Mexaniki	Ön	f	11700	6882	4478274	Behruz	(050) 300-04-10	2020-11-17
6858	Bakı	Mercedes	C 180	2000	Universal	Gümüşü	1.8	122	Benzin	345632	Mexaniki	Arxa	f	11300	6647	4478276	Sahib	(070) 651-19-89	2020-11-17
6859	Bakı	Chevrolet	Cruze	2016	Sedan	Göy	1.4	141	Benzin	12360	Avtomat	Ön	f	17900	10529	4469178	Ziya	(050) 688-65-47	2020-11-17
6860	Bakı	Ford	Fusion	2015	Sedan	Yaş Asfalt	1.5	181	Benzin	136000	Avtomat	Ön	f	18500	10882	4478277	Anar	(099) 856-00-08	2020-11-17
6861	Bakı	Chevrolet	Cruze	2015	Sedan	Tünd qırmızı	1.4	153	Benzin	63918	Avtomat	Ön	f	17000	10000	4469255	Azad	(050) 807-49-85	2020-11-17
6862	Gəncə	Ford	Fusion	2014	Sedan	Gümüşü	1.5	181	Benzin	63000	Avtomat	Ön	f	19700	11588	4478280	Kamran	(070) 498-94-94	2020-11-17
6863	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	234000	Avtomat	Ön	f	15700	9235	4478282	Edik	(055) 932-56-87	2020-11-17
6866	Bakı	Chevrolet	Cruze	2017	Sedan	Mavi	1.4	153	Benzin	23000	Avtomat	Ön	f	16300	9588	4440891	Fərid	(050) 741-32-70	2020-11-17
6867	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	105000	Avtomat	Ön	f	15300	9000	4453096	Abbas	(050) 807-49-36	2020-11-17
6868	Bakı	Volkswagen	Jetta	2013	Sedan	Qara	1.4	150	Benzin	173000	Avtomat	Ön	f	16500	9706	4478298	Əhmədov	(070) 272-00-90	2020-11-17
6871	Bakı	Porsche	Panamera Turbo	2018	Hetçbek / Liftbek	Qara	4	550	Benzin	18000	Avtomat	Tam	f	229500	135000	4405672	Togrul	(050) 205-45-75	2020-11-17
6872	Bakı	Toyota	Corolla	2006	Universal	Boz	1.4	97	Dizel	175000	Mexaniki	Ön	f	13100	7706	4478242	Vusal	(055) 762-27-80	2020-11-17
6873	Bakı	Hyundai	Santa Fe	2016	Offroader / SUV	Boz	2	185	Dizel	54000	Avtomat	Tam	f	40630	23900	4471948	Huseyn	(055) 696-96-97	2020-11-17
6874	Quba	GAZ	31105	2006	Sedan	Qara	2.3	131	Benzin	101000	Mexaniki	Arxa	f	7500	4412	4438491	Valeh	(070) 277-70-55	2020-11-17
6875	Bakı	Mercedes	E 220	2013	Sedan	Gümüşü	2.2	170	Dizel	144000	Avtomat	Arxa	f	45050	26500	4420237	Musviq	(070) 708-18-47	2020-11-17
6876	Bakı	LADA (VAZ)	2107	1993	Sedan	Qırmızı	1.5	65	Benzin	187296	Mexaniki	Arxa	f	3200	1882	4478246	Fərman	(050) 607-42-83	2020-11-17
6878	Bakı	LADA (VAZ)	2106	1984	Sedan	Bej	1.6	75	Benzin	333333	Mexaniki	Arxa	f	2600	1529	4478251	Rewad	(055) 415-98-79	2020-11-17
6879	Gəncə	Mercedes	Vito	2011	Van	Gümüşü	2.2	116	Dizel	223000	Mexaniki	Arxa	f	32000	18824	4478250	Camal	(055) 279-73-76	2020-11-17
6880	Bakı	BMW	750	2010	Sedan	Qara	4.4	407	Benzin	150500	Avtomat	Arxa	f	45050	26500	4478240	Serdar	(070) 768-09-09	2020-11-17
6882	Bakı	LADA (VAZ)	2107	2010	Sedan	Qara	1.6	75	Benzin	155000	Mexaniki	Arxa	f	7300	4294	4478217	Senan	(055) 495-04-66	2020-11-17
6883	Xaçmaz	Mercedes	C 200	2000	Sedan	Göy	2	163	Benzin	320000	Avtomat	Arxa	f	11200	6588	4478218	Nasir	(050) 316-61-94	2020-11-17
6884	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	301527	Mexaniki	Ön	f	7450	4382	4478220	Ehmed	(070) 640-86-33	2020-11-17
6885	Qazax	LADA (VAZ)	Niva	1990	Offroader / SUV	Göy	1.7	80	Benzin	353252	Mexaniki	Tam	f	3400	2000	4478221	Anar	(070) 883-35-00	2020-11-17
6886	Bakı	Volkswagen	Passat	2002	Sedan	Yaş Asfalt	1.8	150	Benzin	230000	Avtomat	Ön	f	6200	3647	4478222	İlqar	(070) 874-39-37	2020-11-17
6888	Bakı	LADA (VAZ)	21099	1996	Sedan	Ağ	1.5	75	Benzin	380000	Mexaniki	Ön	f	4000	2353	4470588	Kamran	(077) 565-22-58	2020-11-17
6889	Bakı	LADA (VAZ)	Niva	2020	Offroader / SUV	Qara	1.7	80	Benzin	1650	Mexaniki	Tam	f	16300	9588	4472731	Rəşad	(050) 449-53-18	2020-11-17
6891	Bakı	Mercedes	C 270	2003	Universal	Gümüşü	2.7	170	Dizel	28700	Avtomat	Arxa	f	12200	7176	4478234	Sebuhi	(050) 402-70-23	2020-11-17
6892	Bakı	Mercedes	C 250	2006	Sedan	Qara	2.5	204	Benzin	154000	Avtomat	Arxa	f	14000	8235	4478231	Faiq 	(050) 321-94-04	2020-11-17
6893	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	207632	Avtomat	Ön	f	19250	11324	4478235	Elgiz	(055) 813-22-30	2020-11-17
6894	Bakı	Mercedes	C 240	1997	Sedan	Gümüşü	2.4	170	Benzin	325000	Avtomat	Arxa	f	13300	7824	4478236	İbrahim	(055) 252-22-43	2020-11-17
6896	Bakı	Mercedes	E 320	2001	Sedan	Gümüşü	3.2	224	Benzin	370000	Avtomat	Tam	f	16000	9412	4478239	Emil	(055) 608-80-16	2020-11-17
6897	Yevlax	LADA (VAZ)	21099	2001	Sedan	Boz	1.5	75	Benzin	170000	Mexaniki	Ön	f	6700	3941	4478238	Vasif	(051) 817-36-37	2020-11-17
6898	Bakı	Mercedes	C 200	2004	Sedan	Gümüşü	1.8	184	Benzin	144000	Avtomat	Arxa	f	18000	10588	4472883	Behruz	(051) 518-55-55	2020-11-17
6904	Ağdaş	Mercedes	Axor 3028	1988	Yük maşını	Ağ	6.5	330	Dizel	100000	Mexaniki	Tam	f	25000	14706	4478257	Zeki	(051) 575-93-93	2020-11-17
6905	Gəncə	Opel	Astra	2006	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	203000	Mexaniki	Ön	f	11400	6706	4478195	Elvin	(055) 863-44-44	2020-11-17
6907	Bakı	Harley-Davidson	VRSCF V-Rod Muscle	2011	Motosiklet	Qara	1.3	176	Benzin	11500	Mexaniki	Arxa	f	25500	15000	4370338	Parviz	(050) 216-42-40	2020-11-17
6911	Bakı	Honda	Accord	1995	Sedan	Yaşıl	2	148	Benzin	400000	Mexaniki	Ön	f	5100	3000	4123964	Vuqar	(070) 222-02-16	2020-11-17
6912	Bakı	Hyundai	Accent	2007	Sedan	Gümüşü	1.5	110	Dizel	185412	Mexaniki	Ön	f	11000	6471	4428672	Tarix	(051) 559-15-59	2020-11-17
6913	Mingəçevir	Mitsubishi	Pajero io	2000	Offroader / SUV	Ağ	1.8	136	Benzin	220300	Avtomat	Tam	f	7300	4294	4478201	Alik	(055) 277-84-64	2020-11-17
6914	Bakı	Kia	Sportage	2012	Offroader / SUV	Ağ	2.4	176	Benzin	132658	Avtomat	Tam	f	26000	15294	4478203	Elgun	(050) 615-55-45	2020-11-17
6915	Xırdalan	LADA (VAZ)	Niva	2014	Offroader / SUV	Qara	1.7	80	Benzin	70000	Mexaniki	Tam	f	14500	8529	4478205	Ağa 	(051) 584-22-11	2020-11-17
6916	Bakı	BMW	525	2003	Sedan	Qara	2.5	192	Benzin	230240	Avtomat	Arxa	f	17340	10200	4478114	Sahin	(051) 444-66-66	2020-11-17
6917	Bakı	Mercedes	C 240	1999	Sedan	Gümüşü	2.4	170	Benzin	334000	Avtomat	Arxa	f	12500	7353	4478207	Murad	(070) 217-83-87	2020-11-17
6918	Bakı	Opel	Astra	1998	Universal	Göy	1.6	101	Benzin	256000	Mexaniki	Ön	f	7150	4206	4448327	heci	(050) 701-66-82	2020-11-17
6920	Şəmkir	LADA (VAZ)	2115	2012	Sedan	Ağ	1.5	75	Benzin	75000	Mexaniki	Ön	f	8400	4941	4478174	Ələkbər	(050) 659-57-57	2020-11-17
6922	Bakı	Chevrolet	Cruze	2012	Sedan	Qırmızı	1.4	141	Benzin	72000	Avtomat	Ön	f	13700	8059	4428595	Haci	(050) 876-74-80	2020-11-17
6923	Bakı	Kia	Optima	2012	Sedan	Ağ	2	150	Qaz	75000	Avtomat	Ön	f	19500	11471	4472187	Rufat	(055) 204-16-16	2020-11-17
6924	Bakı	Chevrolet	Lacetti	2008	Hetçbek / Liftbek	Qırmızı	1.4	95	Benzin	180000	Mexaniki	Ön	f	10800	6353	4478176	Yagub	(055) 550-00-72	2020-11-17
6925	Gəncə	Ford	Escape	2014	Offroader / SUV	Yaşıl	1.6	178	Benzin	85000	Avtomat	Ön	f	24700	14529	4478181	Ali	(050) 271-97-77	2020-11-17
6926	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	2.7	167	Benzin	139000	Avtomat	Tam	f	32900	19353	4450941	Vüsal	(050) 310-55-56	2020-11-17
6927	Gəncə	Mercedes	C 200	1999	Sedan	Gümüşü	2	136	Benzin	402000	Avtomat	Arxa	f	13300	7824	4478184	arzu	(070) 745-03-05	2020-11-17
6928	Bakı	Hyundai	Tucson	2006	Offroader / SUV	Gümüşü	2	141	Benzin	81000	Avtomat	Tam	f	16500	9706	4472410	Elşən	(055) 351-20-27	2020-11-17
6929	Bakı	Mercedes	C 180	1995	Sedan	Gümüşü	1.8	122	Benzin	334000	Avtomat	Arxa	f	7700	4529	4478188	Ilham	(070) 723-40-59	2020-11-17
6930	Bakı	Kia	Rio	2009	Hetçbek / Liftbek	Qara	1.4	97	Benzin	167000	Mexaniki	Ön	f	10700	6294	4478186	Qasım	(055) 944-98-94	2020-11-17
6931	Bakı	BMW	325	2006	Sedan	Qara	2.5	218	Benzin	172000	Avtomat	Arxa	f	18700	11000	4445118	Parviz	(050) 243-76-63	2020-11-17
6934	Dəliməmmədli	LADA (VAZ)	2101	1979	Sedan	Yaş Asfalt	1.5	65	Benzin	120000	Mexaniki	Arxa	f	2250	1324	4478191	Elmir	(050) 863-02-85	2020-11-17
6936	Bakı	Mercedes	C 200	2000	Sedan	Gümüşü	2	163	Benzin	196000	Avtomat	Arxa	f	12000	7059	4478197	Ilgar	(050) 460-02-35	2020-11-17
6942	Beyləqan	LADA (VAZ)	2106	1996	Sedan	Göy	1.5	65	Benzin	91210	Mexaniki	Arxa	f	5100	3000	4478209	Samir	(050) 411-05-07	2020-11-17
6943	Bakı	Mercedes	190	1993	Sedan	Tünd qırmızı	2	122	Benzin	459898	Mexaniki	Arxa	f	4650	2735	4478210	Mehman	(050) 428-57-12	2020-11-17
6945	Biləsuvar	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	114700	Mexaniki	Tam	f	11800	6941	4291246	Ramin	(050) 361-58-19	2020-11-17
6946	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qızılı	1.5	76	Hibrid	165875	Avtomat	Ön	f	11950	7029	4448938	Oktay	(051) 322-53-54	2020-11-17
6948	Sumqayıt	Mercedes	C 240	2001	Sedan	Qızılı	2.6	177	Benzin	239000	Avtomat	Arxa	f	11000	6471	4478212	Ramo	(055) 641-58-17	2020-11-17
6955	Bakı	Mitsubishi	Pajero	1998	Offroader / SUV	Gümüşü	2.4	175	Benzin	548178	Mexaniki	Tam	f	10500	6176	4478148	Sahib	(050) 685-14-70	2020-11-17
6956	Bakı	Toyota	Prado	2008	Offroader / SUV	Qara	2.7	167	Benzin	170000	Avtomat	Tam	f	32500	19118	4429340	Adil	(055) 205-65-35	2020-11-17
6957	Bakı	Ford	Escape	2007	Offroader / SUV	Qara	3	240	Benzin	360000	Avtomat	Tam	f	14000	8235	4478153	Elcin	(055) 680-72-90	2020-11-17
6959	Bakı	BMW	740	1994	Sedan	Yaşıl	4	286	Benzin	200000	Avtomat	Arxa	f	6500	3824	4477837	Urfan	(070) 360-20-30	2020-11-17
6960	Bakı	Hyundai	Elantra	2015	Sedan	Gümüşü	1.8	150	Benzin	48996	Avtomat	Ön	f	21800	12824	4452666	Baxış	(055) 517-02-02	2020-11-17
6961	Bakı	Toyota	Camry	2007	Sedan	Qara	2.5	168	Benzin	130000	Avtomat	Tam	f	18000	10588	4478155	Faiq	(050) 220-29-78	2020-11-17
6962	Bakı	Mercedes	Vito 111	2006	Van	Göy	2.2	150	Dizel	327000	Mexaniki	Arxa	f	16800	9882	4478154	Malik	(055) 359-03-61	2020-11-17
6963	Bakı	Kia	Optima	2018	Sedan	Göy	2.4	178	Benzin	45000	Avtomat	Ön	f	49300	29000	4397716	Kamran	(050) 291-98-26	2020-11-17
6964	Bərdə	LADA (VAZ)	2106	1981	Sedan	Qırmızı	1.6	75	Benzin	214212	Mexaniki	Arxa	f	2900	1706	4478161	Elçin	(050) 664-44-41	2020-11-17
6965	Gəncə	GAZ	M-21	1960	Sedan	Ağ	2.4	131	Benzin	123456	Mexaniki	Arxa	f	3000	1765	4478163	Sabir	(055) 670-62-77	2020-11-17
6966	Şəmkir	Opel	Astra	2008	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	186000	Mexaniki	Ön	f	11300	6647	4478165	Ilqar	(050) 656-31-32	2020-11-17
6967	Bakı	Harley-Davidson	Sportster Custom 1200	2014	Motosiklet	Qara	1.2	80	Benzin	3265	Mexaniki	Arxa	f	21250	12500	4113093	Asim 	(050) 216-02-53	2020-11-17
6968	Bakı	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	150000	Mexaniki	Arxa	f	4500	2647	4478168	Hidayet	(055) 301-70-46	2020-11-17
6969	Samux	LADA (VAZ)	2115	2011	Sedan	Ağ	1.6	80	Benzin	117582	Mexaniki	Ön	f	9300	5471	4478169	Sefer	(050) 655-66-95	2020-11-17
6970	Quba	Mercedes	C 220	1994	Sedan	Bənövşəyi	2.2	146	Benzin	500000	Mexaniki	Arxa	f	7700	4529	4477795	Tural	(051) 962-91-06	2020-11-17
6971	Bakı	Mercedes	E 220	2014	Sedan	Boz	2.2	204	Dizel	195000	Avtomat	Arxa	f	45730	26900	4478171	Samir	(055) 275-65-75	2020-11-17
6976	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Qara	1.7	80	Benzin	96000	Mexaniki	Tam	f	12000	7059	4459254	Ilxam	(055) 457-19-18	2020-11-17
6977	Bakı	Opel	Astra	2007	Universal	Göy	1.3	90	Dizel	154222	Mexaniki	Ön	f	12800	7529	4455287	Kamran 	(050) 671-82-78	2020-11-17
6978	Bakı	Nissan	Patrol	1992	Offroader / SUV	Qara	4.2	231	Dizel	598700	Mexaniki	Tam	f	13500	7941	4478119	Ali	(055) 211-74-04	2020-11-17
6980	Bakı	Opel	Astra	2004	Universal	Göy	1.4	90	Benzin	135000	Mexaniki	Ön	f	10000	5882	4472253	Yasin	(070) 377-27-26	2020-11-17
6981	Bakı	Honda	CR-V	2007	Offroader / SUV	Qara	2.4	170	Benzin	189252	Avtomat	Tam	f	16700	9824	4478121	Elxan	(050) 526-87-58	2020-11-17
6982	Bakı	Opel	Astra	2004	Hetçbek / Liftbek	Yaşıl	1.4	90	Benzin	105000	Mexaniki	Ön	f	10300	6059	4472223	Amil	(070) 607-42-22	2020-11-17
6983	İsmayıllı	UAZ	31519	2003	Mikroavtobus	Yaşıl	2.4	131	Benzin	55000	Mexaniki	Tam	f	9000	5294	4478127	Ziya	(077) 519-16-00	2020-11-17
6984	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	83000	Mexaniki	Tam	f	10400	6118	4478112	Farid	(070) 306-44-46	2020-11-17
6985	Füzuli	Mercedes	Sprinter 413	2003	Mikroavtobus	Göy	2.9	123	Dizel	350000	Mexaniki	Arxa	f	33000	19412	4478099	Eyis	(050) 409-58-83	2020-11-17
6986	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	136000	Avtomat	Tam	f	40120	23600	4471552	Royal	(055) 688-37-28	2020-11-17
6988	Bakı	Renault	Megane	2006	Universal	Qara	1.5	106	Dizel	276900	Mexaniki	Ön	f	10700	6294	4440280	Vahid	(077) 307-05-12	2020-11-17
6990	Bakı	Toyota	Camry	2020	Sedan	Ağ	2.5	181	Benzin	0	Avtomat	Ön	t	81600	48000	4448354	Kamran	(050) 323-82-18	2020-11-17
6991	Bakı	Kia	Cerato	2015	Sedan	Ağ	1.6	130	Benzin	50000	Avtomat	Ön	f	20500	12059	4475487	Ratmir 	(050) 675-53-12	2020-11-17
6992	Bakı	Toyota	Corolla	2020	Sedan	Qara	1.6	124	Benzin	0	Avtomat	Ön	t	38250	22500	4445331	Kamran	(050) 323-82-18	2020-11-17
6994	Yevlax	Mercedes	C 180	1996	Sedan	Yaşıl	1.8	122	Benzin	180000	Avtomat	Arxa	f	8500	5000	4478092	Tural	(050) 767-76-07	2020-11-17
6995	Ağcabədi	GAZ	330200	2012	Yük maşını	Ağ	2.9	96	Benzin	134000	Mexaniki	Arxa	f	14400	8471	4478093	Nəcməddin	(051) 305-51-91	2020-11-17
6996	Bakı	Mercedes	E 220	2010	Sedan	Gümüşü	2.2	143	Dizel	155000	Avtomat	Arxa	f	29750	17500	4470735	Ələkbər	(055) 759-65-55	2020-11-17
6997	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Ağ	1.7	80	Benzin	95000	Mexaniki	Tam	f	12500	7353	4478095	Farid 	(070) 500-48-05	2020-11-17
6998	Bakı	BMW	528	2013	Sedan	Yaş Asfalt	2	245	Benzin	100000	Avtomat	Arxa	f	35530	20900	4478100	Cingiz	(055) 322-22-73	2020-11-17
6999	Bakı	Mercedes	C 180	1993	Sedan	Gümüşü	1.8	122	Benzin	254000	Avtomat	Arxa	f	6700	3941	4375481	Elmar	(055) 531-31-11	2020-11-17
7000	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	270000	Avtomat	Arxa	f	16500	9706	4459119	Azer	(050) 314-15-16	2020-11-17
7001	Bakı	Opel	Astra	2009	Universal	Qara	1.3	95	Dizel	283500	Mexaniki	Ön	f	10800	6353	4478102	Faris	(050) 753-95-72	2020-11-17
7002	Bakı	Opel	Astra	2000	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	250344	Avtomat	Ön	f	9500	5588	4478103	Emin 	(050) 656-47-14	2020-11-17
7003	Bakı	LADA (VAZ)	2107	2007	Sedan	Qırmızı	1.6	75	Benzin	120000	Mexaniki	Arxa	f	5500	3235	4478105	İxtiyar	(070) 200-72-28	2020-11-17
7004	Şəki	LADA (VAZ)	2107	1997	Sedan	Tünd qırmızı	1.5	65	Benzin	240000	Mexaniki	Arxa	f	4500	2647	4478108	Fuad	(055) 700-55-13	2020-11-17
7005	Ağstafa	LADA (VAZ)	2106	1992	Sedan	Ağ	1.5	65	Benzin	255555	Mexaniki	Arxa	f	3800	2235	4478111	Kamran	(055) 644-19-15	2020-11-17
7006	Bakı	Toyota	Corolla	2015	Sedan	Qara	1.8	140	Benzin	67000	Avtomat	Ön	f	24500	14412	4478109	Farrux 	(055) 450-10-91	2020-11-17
7007	Bakı	Ford	Transit	2000	Furqon	Ağ	2.5	75	Dizel	206000	Mexaniki	Arxa	f	18300	10765	4478115	Raul	(055) 720-88-55	2020-11-17
7008	Quba	LADA (VAZ)	2115	2007	Sedan	Gümüşü	1.6	80	Benzin	364460	Mexaniki	Ön	f	6800	4000	4478117	Metleb	(050) 366-35-65	2020-11-17
7012	Bakı	Mercedes	190	1993	Sedan	Tünd qırmızı	2	122	Benzin	350200	Avtomat	Arxa	f	5300	3118	4478122	Amin	(055) 224-41-24	2020-11-17
7013	Bakı	Toyota	Land Cruiser	2010	Offroader / SUV	Qara	4	282	Benzin	159489	Avtomat	Tam	f	51500	30294	4478138	Ədalət	(077) 727-10-50	2020-11-17
7014	Bakı	Ford	Fusion	2012	Sedan	Yaş Asfalt	2	245	Benzin	131000	Avtomat	Ön	f	20600	12118	4472908	Sexavet	(050) 885-88-38	2020-11-17
7015	Bakı	Changan	Alsvin V7	2018	Sedan	Gümüşü	1.6	125	Benzin	89000	Avtomat	Ön	f	21600	12706	4469243	Zamin	(070) 770-40-40	2020-11-17
7016	Bakı	Chevrolet	Cruze	2014	Sedan	Boz	1.4	141	Benzin	128000	Avtomat	Ön	f	15000	8824	4328355	Sexavet	(055) 252-72-22	2020-11-17
7017	Bakı	Opel	Astra	2006	Universal	Qara	1.4	96	Benzin	164000	Mexaniki	Ön	f	10600	6235	4464602	Ramil	(050) 657-72-01	2020-11-17
7018	Bakı	Opel	Astra	2006	Universal	Yaş Asfalt	1.9	150	Dizel	350000	Mexaniki	Ön	f	8500	5000	4478145	Samir	(055) 995-90-80	2020-11-17
7019	Yevlax	LADA (VAZ)	2115	2004	Sedan	Yaşıl	1.5	75	Benzin	280000	Mexaniki	Ön	f	7300	4294	4478146	Nurəddin	(070) 539-38-20	2020-11-17
7023	Bakı	Mercedes	E 280	2007	Sedan	Qara	3	231	Benzin	255000	Avtomat	Arxa	f	23000	13529	4476067	Elçin	(050) 597-73-59	2020-11-17
7024	Bakı	BMW	750	2011	Sedan	Ağ	4.4	407	Benzin	143000	Avtomat	Arxa	f	42500	25000	4334370	Sənan	(070) 988-67-68	2020-11-17
7025	Bakı	Kia	Optima	2016	Sedan	Göy	1.6	180	Benzin	59000	Avtomat	Ön	f	24800	14588	4441731	Rövşən	(055) 246-91-03	2020-11-17
7026	Bakı	Chevrolet	Cruze	2013	Sedan	Ağ	1.4	141	Benzin	147000	Avtomat	Ön	f	16300	9588	4407217	Xeyal 	(050) 451-09-37	2020-11-17
7027	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	2.7	167	Benzin	245000	Avtomat	Tam	f	29500	17353	4450866	ilham	(055) 565-63-63	2020-11-17
7028	Gəncə	LADA (VAZ)	2106	1998	Sedan	Ağ	1.6	75	Benzin	369852	Mexaniki	Arxa	f	4750	2794	4478081	Ranin	(055) 911-52-58	2020-11-17
7029	Bakı	Hyundai	i30	2012	Hetçbek / Liftbek	Yaş Asfalt	1.6	128	Dizel	41000	Avtomat	Ön	f	18500	10882	4442440	Ramil	(070) 717-88-18	2020-11-17
7030	Bakı	Infiniti	FX35	2012	Offroader / SUV	Ağ	3.5	307	Benzin	112000	Avtomat	Arxa	f	24500	14412	4470218	Elcin 	(055) 670-07-17	2020-11-17
7031	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	89000	Avtomat	Tam	f	76160	44800	4365788	Bəxtiyar	(050) 460-68-30	2020-11-17
7032	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	61100	Avtomat	Ön	f	22900	13471	4453229	Efqan	(050) 632-77-26	2020-11-17
7033	Bakı	Tofas	Sahin	2005	Sedan	Qara	1.6	86	Benzin	160000	Mexaniki	Ön	f	5800	3412	4478087	Qurban	(055) 216-24-24	2020-11-17
7034	Bakı	Volkswagen	Jetta	2013	Sedan	Tünd qırmızı	2	115	Benzin	77000	Avtomat	Ön	f	20300	11941	4478088	Renad	(055) 751-89-09	2020-11-17
7035	Kürdəmir	LADA (VAZ)	Niva	1980	Offroader / SUV	Ağ	1.6	75	Benzin	50000	Mexaniki	Tam	f	3100	1824	4478068	Royal	(050) 870-00-33	2020-11-17
7036	Bakı	Toyota	RAV 4	2019	Offroader / SUV	Ağ	2	173	Benzin	35000	Avtomat	Ön	f	48960	28800	4358216	Bəxtiyar	(050) 460-68-30	2020-11-17
7037	Bakı	Tofas	Sahin	2004	Sedan	Qara	1.6	86	Benzin	54680	Mexaniki	Ön	f	7500	4412	4478072	Abili	(055) 902-12-06	2020-11-17
7038	Bakı	Tofas	Sahin	2005	Sedan	Boz	1.6	86	Benzin	139000	Mexaniki	Arxa	f	6500	3824	4463709	İqrar	(077) 702-02-02	2020-11-17
7039	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	157781	Avtomat	Ön	f	14800	8706	4456426	elshan	(055) 218-08-38	2020-11-17
7040	Bakı	Toyota	RAV 4	2019	Offroader / SUV	Ağ	2	181	Benzin	25000	Avtomat	Ön	f	49300	29000	4378410	Elçin	(050) 598-67-72	2020-11-17
7041	Bakı	Opel	Vectra	2005	Sedan	Ağ	2.2	155	Benzin	265000	Avtomat	Ön	f	11500	6765	4100116	Samir	(070) 477-04-99	2020-11-17
7042	Bakı	Opel	Astra	1998	Universal	Qırmızı	1.8	125	Benzin	325235	Mexaniki	Ön	f	7400	4353	4477992	Natiq	(055) 433-83-33	2020-11-17
7043	Bakı	Opel	Astra	2005	Universal	Qızılı	1.4	90	Benzin	208000	Mexaniki	Ön	f	10900	6412	4398502	Qədir	(055) 341-43-45	2020-11-17
7044	Bakı	Toyota	Prado	2012	Offroader / SUV	Boz	2.7	167	Benzin	124000	Avtomat	Tam	f	45900	27000	4413509	Elçin	(050) 598-67-72	2020-11-17
7045	Bakı	BMW	530	2018	Sedan	Qızılı	2	252	Benzin	20300	Avtomat	Arxa	f	67150	39500	4460565	Rail	(050) 424-29-61	2020-11-17
7046	Bakı	BMW	528	2011	Sedan	Ağ	2	245	Benzin	135000	Avtomat	Arxa	f	30600	18000	4464013	Sahib	(070) 309-71-71	2020-11-17
7047	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	182000	Avtomat	Tam	f	45900	27000	4404575	Elçin	(050) 598-67-72	2020-11-17
7048	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	51000	Avtomat	Tam	f	45560	26800	4383920	Bəxtiyar	(050) 460-68-30	2020-11-17
7051	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	55000	Mexaniki	Tam	f	13500	7941	4478090	HACI	(050) 236-16-46	2020-11-17
7052	Bakı	Toyota	Camry	2019	Sedan	Qara	2.5	181	Benzin	15000	Avtomat	Ön	f	73100	43000	4420603	Elçin	(050) 598-67-72	2020-11-17
7053	Bakı	Volkswagen	Jetta	2011	Sedan	Qara	2.5	190	Benzin	162000	Avtomat	Ön	f	11500	6765	4465021	Tahir	(055) 340-40-60	2020-11-17
7060	Bakı	Mitsubishi	Pajero	2013	Offroader / SUV	Ağ	3.5	202	Benzin	101670	Avtomat	Tam	f	38250	22500	4396017	Nemət	(050) 315-33-44	2020-11-17
7061	Sumqayıt	Mercedes	E 250	1980	Sedan	Gümüşü	2.5	125	Dizel	253514	Mexaniki	Arxa	f	4800	2824	4464195	Emin	(055) 560-54-58	2020-11-17
7062	Bakı	Mercedes	Sprinter 311	2006	Mikroavtobus	Ağ	2.2	170	Dizel	800000	Mexaniki	Ön	f	35000	20588	4478055	Bəxtiyar	(050) 613-25-24	2020-11-17
7063	Bakı	Opel	Astra	2008	Hetçbek / Liftbek	Qızılı	1.8	141	Benzin	196149	Avtomat	Ön	f	12000	7059	4478057	Murad 	(070) 635-35-22	2020-11-17
7066	Bakı	Ssang Yong	Rexton	2014	Offroader / SUV	Ağ	3.2	220	Benzin	98000	Avtomat	Tam	f	28700	16882	4478060	Natiq	(077) 719-47-74	2020-11-17
7067	Bakı	Toyota	Prado	2020	Offroader / SUV	Ağ	2.7	167	Benzin	500	Avtomat	Tam	f	82450	48500	4140091	Elçin	(050) 598-67-72	2020-11-17
7068	Bakı	BMW	730	2020	Sedan	Qara	2	249	Benzin	998	Avtomat	Arxa	f	185300	109000	4210907	Anar	(050) 422-22-72	2020-11-17
7069	Gəncə	Mercedes	E 240	1999	Sedan	Gümüşü	2.4	170	Benzin	296134	Avtomat	Arxa	f	12400	7294	4478058	Elxan	(055) 679-36-66	2020-11-17
7070	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Göy	1.4	90	Benzin	194000	Mexaniki	Ön	f	10600	6235	4467555	Arzu	(055) 277-70-70	2020-11-17
7071	Bakı	Toyota	Corolla	2018	Sedan	Qara	1.6	124	Benzin	20000	Avtomat	Ön	f	32300	19000	4300167	Elçin	(050) 598-67-72	2020-11-17
7072	Bakı	Chevrolet	Cruze	2018	Sedan	Qara	1.4	153	Benzin	39700	Avtomat	Ön	f	18900	11118	4450298	Aqil	(055) 211-82-46	2020-11-17
7073	Bakı	Chevrolet	Cruze	2016	Sedan	Tünd qırmızı	1.4	153	Benzin	106000	Avtomat	Ön	f	17700	10412	4428048	Samir	(050) 783-35-53	2020-11-17
7074	Bakı	Hyundai	Sonata	2010	Sedan	Ağ	2	165	Benzin	218000	Avtomat	Ön	f	18400	10824	4458250	Nurlan	(050) 988-35-59	2020-11-17
7075	Gəncə	Mercedes	C 250	2005	Sedan	Ağ	2.5	204	Benzin	200750	Avtomat	Arxa	f	16500	9706	4478033	Hesen	(070) 366-00-20	2020-11-17
7076	Bakı	Mercedes	C 200	1999	Sedan	Boz	2	136	Benzin	298000	Avtomat	Arxa	f	11300	6647	4478035	Cingiz	(055) 902-35-87	2020-11-17
7077	Bakı	Chevrolet	Cruze	2017	Sedan	Gümüşü	1.4	153	Benzin	55000	Avtomat	Ön	f	17700	10412	4420240	Bəhram	(077) 755-05-99	2020-11-17
7078	Masallı	LADA (VAZ)	Kalina	2010	Universal	Ağ	1.4	95	Benzin	215247	Mexaniki	Ön	f	9300	5471	4478037	Emil	(070) 308-88-69	2020-11-17
7080	Bakı	Mercedes	C 180	1999	Sedan	Yaşıl	1.8	150	Benzin	225394	Avtomat	Arxa	f	11900	7000	4470095	Tural	(050) 786-48-97	2020-11-17
7081	Xırdalan	Hyundai	Matrix	2008	Minivan	Ağ	1.6	110	Benzin	111010	Avtomat	Ön	f	11500	6765	4478038	Sahibi	(050) 404-86-39	2020-11-17
7082	Bakı	Chevrolet	Cruze	2014	Sedan	Gümüşü	1.4	141	Benzin	102000	Avtomat	Ön	f	15200	8941	4453364	Neriman 	(055) 270-27-70	2020-11-17
7083	Bakı	Volkswagen	Tiguan	2009	Offroader / SUV	Ağ	2	170	Benzin	157000	Avtomat	Tam	f	16500	9706	4478041	Hüseyn	(050) 212-89-82	2020-11-17
7084	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Ağ	1.5	76	Hibrid	138500	Avtomat	Ön	f	14800	8706	4464577	Terlan	(055) 611-11-15	2020-11-17
7085	Bakı	Opel	Astra	1998	Universal	Göy	1.6	101	Benzin	299000	Mexaniki	Ön	f	6800	4000	4445569	Şahin 	(055) 531-77-78	2020-11-17
7086	Bakı	Chevrolet	Cruze	2017	Sedan	Gümüşü	1.4	153	Benzin	75233	Avtomat	Ön	f	16800	9882	4457627	Revan	(055) 796-55-93	2020-11-17
7087	Yevlax	Opel	Astra	2006	Universal	Göy	1.4	90	Benzin	228000	Mexaniki	Ön	f	12000	7059	4478044	Azad	(050) 421-61-94	2020-11-17
7088	Sumqayıt	Opel	Astra	1999	Universal	Qəhvəyi	1.6	101	Benzin	127000	Mexaniki	Ön	f	7500	4412	4478048	Ulvi	(050) 860-22-02	2020-11-17
7089	Bakı	Toyota	FJ Cruiser	2011	Offroader / SUV	Ağ	4	282	Benzin	180000	Avtomat	Tam	f	45050	26500	4333919	Orxan	(055) 339-99-40	2020-11-17
7090	Cəlilabad	LADA (VAZ)	2106	1987	Sedan	Sarı	1.5	65	Benzin	150000	Mexaniki	Arxa	f	5400	3176	4478050	Nurlan	(051) 714-96-96	2020-11-17
7091	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.4	90	Benzin	210000	Mexaniki	Ön	f	11000	6471	4478046	Royal	(070) 477-10-10	2020-11-17
7092	Bakı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	132250	Mexaniki	Arxa	f	4300	2529	4478051	Ulvi	(050) 876-42-83	2020-11-17
7096	Bakı	Toyota	Camry	2016	Sedan	Ağ	2.5	181	Benzin	59400	Avtomat	Ön	f	45900	27000	4325984	Bəxtiyar	(050) 460-68-30	2020-11-17
7097	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Qara	1.4	90	Benzin	171000	Mexaniki	Ön	f	11600	6824	4437554	QABiL	(055) 667-97-61	2020-11-17
7098	Bakı	Toyota	RAV 4	2019	Offroader / SUV	Qara	2	181	Benzin	10000	Avtomat	Ön	f	49810	29300	4353108	Elçin	(050) 598-67-72	2020-11-17
7099	Bakı	Subaru	Forester	2007	Offroader / SUV	Gümüşü	2	150	Benzin	161000	Avtomat	Tam	f	11700	6882	4478066	Rasim	(055) 264-44-73	2020-11-17
7093	Bakı	Kia	Sportage	2016	Offroader / SUV	Ağ	1.7	141	Dizel	41000	Avtomat	Ön	f	33800	19882	4430784	Oktay	(055) 643-84-23	2020-11-17
7100	Bakı	Jeep	Grand Cherokee	2005	Offroader / SUV	Qara	4.7	258	Benzin	250000	Avtomat	Tam	f	15500	9118	4478067	Sebuhi	(050) 233-20-39	2020-11-17
7106	Bakı	Volkswagen	Touareg	2008	Offroader / SUV	Qara	4.2	360	Benzin	175000	Avtomat	Tam	f	21200	12471	4449897	Haci	(050) 735-00-27	2020-11-17
7108	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	250000	Mexaniki	Ön	f	10300	6059	4471596	Orxan	(050) 807-49-71	2020-11-17
7109	Bakı	Daewoo	Nexia	1997	Sedan	Yaşıl	1.5	75	Benzin	576267	Mexaniki	Ön	f	3300	1941	4478021	Alik	(070) 959-99-85	2020-11-17
7110	Bakı	Ford	Fusion	2014	Sedan	Ağ	1.5	181	Benzin	67900	Avtomat	Ön	f	20500	12059	4470401	Ali	(055) 264-31-64	2020-11-17
7112	Sumqayıt	Opel	Astra	2001	Hetçbek / Liftbek	Yaşıl	1.6	101	Benzin	236000	Avtomat	Ön	f	8450	4971	4438381	Aqsin	(070) 430-50-12	2020-11-17
7113	Qəbələ	LADA (VAZ)	2106	1983	Sedan	Ağ	1.3	65	Benzin	44083	Mexaniki	Arxa	f	2550	1500	4478025	Yusif	(050) 417-71-80	2020-11-17
7115	İsmayıllı	Daewoo	Nexia	2008	Sedan	Gümüşü	1.6	109	Benzin	305000	Mexaniki	Ön	f	8500	5000	4478002	Resad	(055) 224-99-10	2020-11-17
7116	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.5	65	Benzin	234560	Mexaniki	Arxa	f	4800	2824	4469701	Sahib	(050) 567-06-57	2020-11-17
7118	Bakı	Saipa	132	2013	Sedan	Ağ	1.3	65	Benzin	298000	Mexaniki	Ön	f	5900	3471	4478009	aysun	(050) 667-70-78	2020-11-17
7119	Bakı	Mercedes	Vito 111	2009	Van	Ağ	2.2	150	Dizel	321111	Mexaniki	Arxa	f	28800	16941	4455578	Eyvaz	(050) 322-00-10	2020-11-17
7120	Bakı	Toyota	Prius	2006	Hetçbek / Liftbek	Qırmızı	1.5	76	Hibrid	174500	Avtomat	Ön	f	12000	7059	4461642	Eyyub	(055) 203-73-33	2020-11-17
7121	Bakı	Volkswagen	Passat	1997	Sedan	Göy	1.8	170	Benzin	141415	Mexaniki	Ön	f	3800	2235	4478011	Vaqif	(050) 449-23-47	2020-11-17
7123	Bakı	Mercedes	S 600	2006	Sedan	Qara	5.5	538	Benzin	138000	Avtomat	Arxa	f	37400	22000	4472889	Elşən	(055) 604-04-39	2020-11-17
7124	Bakı	Mercedes	190	1990	Sedan	Ağ	2	122	Benzin	320000	Avtomat	Arxa	f	6300	3706	4478016	Emin	(070) 612-62-66	2020-11-17
7125	Bakı	LADA (VAZ)	2115	2005	Sedan	Qara	1.5	75	Benzin	189990	Mexaniki	Ön	f	6000	3529	4478017	Elbey	(077) 763-93-13	2020-11-17
7126	Bakı	Toyota	Prado	2010	Offroader / SUV	Ağ	2.7	167	Benzin	128000	Avtomat	Tam	f	40120	23600	4310764	Elçin 	(070) 263-13-15	2020-11-17
7127	Bakı	Volkswagen	Passat	2012	Sedan	Ağ	2.5	170	Benzin	119000	Avtomat	Ön	f	20000	11765	4446006	Vuqar	(055) 272-32-42	2020-11-17
7130	Bakı	Hyundai	Sonata	2009	Sedan	Ağ	2.4	178	Benzin	252000	Avtomat	Ön	f	15900	9353	4478026	ramin	(070) 862-86-94	2020-11-17
7131	Bakı	Honda	CBR 600	2017	Motosiklet	Ağ	0.6	120	Benzin	2800	Mexaniki	Arxa	f	20400	12000	4478027	Vüsal	(055) 262-15-06	2020-11-17
7132	Bakı	Hyundai	Santa Fe	2006	Offroader / SUV	Boz	2.2	150	Dizel	240000	Avtomat	Tam	f	19500	11471	4464077	Naiq	(070) 229-44-10	2020-11-17
7133	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Yaşıl	1.4	90	Benzin	199999	Mexaniki	Ön	f	10800	6353	4472372	Elmar	(050) 622-47-90	2020-11-17
7134	Sumqayıt	Opel	Astra	2001	Universal	Qırmızı	1.6	101	Benzin	256461	Mexaniki	Ön	f	7400	4353	4409110	MAQA	(070) 652-42-01	2020-11-17
7135	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	77000	Mexaniki	Tam	f	12800	7529	4471342	Mahmud	(051) 504-05-05	2020-11-17
7136	Bakı	Nissan	Sunny	2007	Sedan	Gümüşü	1.6	109	Benzin	270000	Avtomat	Ön	f	11900	7000	4478031	Mehdi	(055) 355-78-63	2020-11-17
7138	Bakı	Mercedes	C 240	1999	Sedan	Göy	2.4	170	Benzin	245381	Avtomat	Arxa	f	12600	7412	4477972	Gündüz 	(050) 656-54-38	2020-11-17
7139	Bakı	Mercedes	190	1990	Sedan	Bej	1.8	109	Benzin	214141	Avtomat	Arxa	f	4700	2765	4477973	Murad	(050) 449-23-72	2020-11-17
7140	Göyçay	Hyundai	Sonata	2014	Sedan	Ağ	2.4	178	Benzin	94400	Avtomat	Ön	f	27000	15882	4477975	Ilkin	(050) 636-03-32	2020-11-17
7141	Bakı	Kia	Rio	2007	Hetçbek / Liftbek	Qara	1.4	97	Benzin	168000	Mexaniki	Ön	f	11100	6529	4469416	Kənan	(050) 254-11-72	2020-11-17
7142	Bakı	Mitsubishi	Pajero	1992	Offroader / SUV	Göy	2.5	125	Dizel	340000	Avtomat	Tam	f	9500	5588	4477976	Müşfiq	(050) 233-77-33	2020-11-17
7143	Bakı	Toyota	Prius	2013	Hetçbek / Liftbek	Gümüşü	1.8	99	Hibrid	90000	Robotlaşdırılmış	Ön	f	21500	12647	4444128	MAHİR	(055) 320-88-07	2020-11-17
7144	Bakı	Hyundai	Accent	2018	Sedan	Ağ	1.6	128	Benzin	106000	Avtomat	Ön	f	21500	12647	4468408	Emin	(055) 280-34-34	2020-11-17
7145	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	142000	Avtomat	Ön	f	13400	7882	4477979	RaBuTaY	(055) 317-34-82	2020-11-17
7146	Bakı	Hyundai	Sonata	2006	Sedan	Ağ	2.4	116	Benzin	176000	Avtomat	Ön	f	12900	7588	4411577	ayxan	(050) 336-11-04	2020-11-17
7147	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.3	90	Dizel	298400	Mexaniki	Ön	f	8200	4824	4467594	EMİL	(055) 266-70-77	2020-11-17
7148	Bakı	Renault	Megane	2006	Universal	Qara	1.5	106	Dizel	290000	Mexaniki	Ön	f	9200	5412	4477984	Murad	(055) 274-34-39	2020-11-17
7149	Bakı	Hyundai	Santa Fe	2011	Offroader / SUV	Ağ	2.4	184	Benzin	112000	Avtomat	Tam	f	23500	13824	4244763	Heşim	(050) 376-87-43	2020-11-17
7151	Ağdaş	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	90	Benzin	135000	Mexaniki	Tam	f	11000	6471	4477939	Rüstem	(050) 963-90-90	2020-11-17
7152	Bakı	Hyundai	ix35	2012	Offroader / SUV	Ağ	2	166	Benzin	81000	Avtomat	Tam	f	26500	15588	4477940	Bəhruz Rüstəmov	(050) 255-06-01	2020-11-17
7153	Bakı	Kia	Sportage	2013	Offroader / SUV	Ağ	2	150	Benzin	121000	Avtomat	Tam	f	25400	14941	4447980	Ramil	(055) 637-34-34	2020-11-17
7154	Bakı	Mitsubishi	Attrage	2016	Sedan	Gümüşü	1.2	78	Benzin	79147	Avtomat	Ön	f	14900	8765	4461560	CAHİD	(055) 880-07-00	2020-11-17
7155	Bakı	Jeep	Grand Cherokee	2015	Offroader / SUV	Qara	3.6	286	Benzin	99000	Avtomat	Tam	f	55760	32800	4175808	Cavad	(055) 205-00-56	2020-11-17
7156	Bakı	Kia	Sportage	2018	Offroader / SUV	Qəhvəyi	1.6	177	Benzin	39000	Avtomat	Ön	f	34510	20300	4427377	ELMİR	(050) 470-07-00	2020-11-17
7157	İmişli	GAZ	31029	1992	Sedan	Qəhvəyi	2.4	131	Benzin	70805	Mexaniki	Arxa	f	3800	2235	4477942	Maqsud	(050) 530-32-34	2020-11-17
7158	Bakı	Kia	Optima	2013	Sedan	Qara	2	165	Benzin	186000	Avtomat	Ön	f	24200	14235	4472524	Sabir	(070) 642-29-00	2020-11-17
7159	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2	165	Benzin	133400	Avtomat	Ön	f	18600	10941	4368250	Ramin 	(050) 353-50-06	2020-11-17
7160	Bakı	Chevrolet	Cruze	2017	Sedan	Boz	1.4	153	Benzin	106000	Avtomat	Ön	f	17600	10353	4451538	Ferid	(077) 305-56-35	2020-11-17
7161	Bakı	Mercedes	E 220	1994	Sedan	Qara	2.2	170	Benzin	300000	Avtomat	Arxa	f	5800	3412	4467507	Senan	(050) 664-70-98	2020-11-17
7162	Bakı	Chevrolet	Cruze	2015	Sedan	Qəhvəyi	1.4	153	Benzin	194731	Avtomat	Ön	f	15400	9059	4458326	Namiq	(055) 254-02-56	2020-11-17
7163	Bakı	Tofas	Sahin	2006	Sedan	Qara	1.6	86	Benzin	160000	Mexaniki	Ön	f	5600	3294	4477960	Cavid	(055) 453-25-77	2020-11-17
7164	Bakı	Opel	Astra	2005	Universal	Yaş Asfalt	1.3	90	Dizel	341733	Mexaniki	Ön	f	9750	5735	4431181	Vaqif	(055) 777-37-44	2020-11-17
7165	Sumqayıt	LADA (VAZ)	2109	1994	Hetçbek / Liftbek	Qırmızı	1.5	75	Benzin	76200	Mexaniki	Ön	f	4700	2765	4477971	Rauf	(055) 509-99-39	2020-11-17
7166	Bakı	Toyota	RAV 4	2016	Offroader / SUV	Yaş Asfalt	2.5	176	Benzin	56000	Avtomat	Tam	f	40630	23900	4285282	Nicat	(050) 211-64-43	2020-11-17
7168	Bakı	Mercedes	E 350	2011	Sedan	Qara	3.5	272	Benzin	182000	Avtomat	Ön	f	27500	16176	4456061	Amil	(077) 250-80-08	2020-11-17
7169	Bakı	BMW	528	2012	Sedan	Qara	2	245	Benzin	190000	Avtomat	Arxa	f	38250	22500	4477514	Elşən	(050) 823-99-66	2020-11-17
7170	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	55990	Mexaniki	Tam	f	12200	7176	4477993	Sirali	(050) 673-76-72	2020-11-17
7174	Bakı	Mercedes	CLA 45 AMG	2014	Sedan	Boz	2	360	Benzin	99000	Avtomat	Tam	f	55930	32900	4431826	Etibar	(050) 451-00-01	2020-11-17
7179	Bakı	Chevrolet	Cruze	2015	Sedan	Qızılı	1.4	141	Benzin	150000	Avtomat	Ön	f	15000	8824	4444884	Kenan	(050) 313-39-32	2020-11-17
7180	Bərdə	LADA (VAZ)	2105	1984	Sedan	Göy	1.5	65	Benzin	885239	Mexaniki	Arxa	f	2200	1294	4477915	Semed	(050) 476-52-11	2020-11-17
7181	Bakı	Mercedes	E 220	1993	Sedan	Qara	2.2	146	Benzin	372132	Avtomat	Arxa	f	8800	5176	4422787	Resad	(070) 795-04-04	2020-11-17
7182	Bakı	Chevrolet	Malibu	2017	Sedan	Göy	1.5	160	Benzin	37000	Avtomat	Ön	f	22800	13412	4466747	Anar	(055) 895-69-09	2020-11-17
7183	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Boz	1.4	90	Benzin	157500	Mexaniki	Ön	f	11800	6941	4409933	intigam	(051) 880-99-09	2020-11-17
7184	Bakı	Opel	Astra	2005	Universal	Gümüşü	1.4	90	Benzin	235000	Mexaniki	Ön	f	11900	7000	4477919	Abdul	(070) 282-22-14	2020-11-17
7185	Bakı	Hyundai	Sonata	2011	Sedan	Gümüşü	2	165	Qaz	160000	Avtomat	Ön	f	17000	10000	4475964	Anar	(055) 709-34-60	2020-11-17
7186	Bakı	Toyota	Prado	2006	Offroader / SUV	Qara	2.7	167	Benzin	181200	Avtomat	Tam	f	26600	15647	4383274	Elmir 	(055) 252-52-99	2020-11-17
7187	Salyan	Mercedes	E 200	1997	Sedan	Bənövşəyi	2	136	Benzin	357000	Avtomat	Tam	f	9800	5765	4477922	Qadir	(050) 644-26-46	2020-11-17
7188	Bakı	BMW	X5	2005	Offroader / SUV	Qara	3	231	Benzin	241000	Avtomat	Tam	f	23500	13824	4477923	Kamran	(070) 288-99-33	2020-11-17
7189	Bakı	Kia	Optima	2014	Sedan	Ağ	2.4	180	Benzin	107000	Avtomat	Ön	f	30500	17941	4466976	Fuad	(050) 993-32-66	2020-11-17
7190	Bakı	Hyundai	Tucson	2005	Offroader / SUV	Mavi	2	150	Dizel	265000	Avtomat	Tam	f	14500	8529	4411017	Behruz	(050) 454-68-64	2020-11-17
7191	Bakı	Opel	Vectra	1997	Hetçbek / Liftbek	Boz	2	130	Benzin	335000	Avtomat	Ön	f	4850	2853	4477898	Elvin	(077) 453-00-78	2020-11-17
7192	Bakı	Opel	Astra	2005	Universal	Gümüşü	1.4	90	Benzin	212800	Mexaniki	Ön	f	10800	6353	4469856	Qədir	(055) 341-43-45	2020-11-17
7193	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	192000	Mexaniki	Tam	f	12660	7447	4477902	Kamal	(070) 270-32-33	2020-11-17
7194	Mingəçevir	LADA (VAZ)	2106	1986	Sedan	Sarı	1.5	65	Benzin	155000	Mexaniki	Arxa	f	3400	2000	4477903	Ceyhun	(051) 987-55-56	2020-11-17
7195	Bakı	Chevrolet	Spark	2014	Hetçbek / Liftbek	Qara	1.2	85	Benzin	86222	Avtomat	Ön	f	13600	8000	4477901	Nesreddin	(055) 202-40-48	2020-11-17
7196	Bakı	Renault	Scenic	2007	Minivan	Boz	1.5	106	Dizel	213000	Mexaniki	Ön	f	8300	4882	4477904	Asif	(070) 878-15-62	2020-11-17
7197	Bakı	Volkswagen	Jetta	2009	Sedan	Ağ	1.6	102	Benzin	154000	Avtomat	Ön	f	11900	7000	4449882	Ekber	(055) 212-25-20	2020-11-17
7198	Bakı	BMW	528	2012	Sedan	Qara	2.8	245	Benzin	83000	Avtomat	Arxa	f	26500	15588	4473412	Emin	(055) 248-01-28	2020-11-17
7199	Bakı	Mercedes	C 240	1998	Sedan	Qara	2.4	170	Benzin	333600	Avtomat	Arxa	f	11800	6941	4469296	Elnur	(051) 733-05-04	2020-11-17
7200	Sumqayıt	Mercedes	E 260	1988	Sedan	Qara	2.6	177	Benzin	230000	Mexaniki	Arxa	f	4750	2794	4477907	Qasim	(070) 321-04-03	2020-11-17
7202	Balakən	Mercedes	Vito 111	2006	Van	Göy	2.2	150	Dizel	649520	Mexaniki	Arxa	f	23000	13529	4477910	Ilham	(051) 458-68-68	2020-11-17
7203	Bakı	Opel	Zafira	2002	Minivan	Qara	2.2	147	Benzin	325000	Mexaniki	Ön	f	9200	5412	4477913	musa	(055) 257-66-65	2020-11-17
7204	Quba	Ford	Transit	2002	Yük maşını	Ağ	2.4	140	Dizel	250000	Mexaniki	Arxa	f	18300	10765	4477914	Murad	(077) 377-30-30	2020-11-17
7205	Bakı	Toyota	Prado	2012	Offroader / SUV	Qara	4	250	Benzin	139000	Avtomat	Tam	f	58140	34200	4420737	Rovshan	(070) 203-22-33	2020-11-17
7207	Sumqayıt	SEAT	Leon	2012	Hetçbek / Liftbek	Qırmızı	1.8	160	Benzin	92500	Avtomat	Ön	f	15000	8824	4405382	Rufat	(050) 221-03-42	2020-11-17
7208	Bakı	Mercedes	E 220	2010	Sedan	Ağ	2.2	170	Dizel	173000	Avtomat	Arxa	f	35530	20900	4386762	Kənan	(055) 616-00-06	2020-11-17
7214	Bakı	Chevrolet	Cruze	2016	Sedan	Qara	1.4	153	Benzin	92000	Avtomat	Ön	f	17300	10176	4434132	islam	(070) 205-60-99	2020-11-17
7215	Bakı	Nissan	Sunny	2012	Sedan	Ağ	1.5	90	Benzin	215800	Avtomat	Ön	f	13000	7647	4477925	Ruslan 	(050) 342-34-34	2020-11-17
7216	Bakı	Land Rover	RR Sport	2011	Offroader / SUV	Ağ	3	245	Dizel	169000	Avtomat	Tam	f	50150	29500	4477928	Rasul	(050) 210-16-03	2020-11-17
7217	Bakı	Daewoo	Nexia	2010	Sedan	Gümüşü	1.5	102	Benzin	235324	Mexaniki	Ön	f	5950	3500	4477930	farid	(050) 350-86-94	2020-11-17
7218	Xırdalan	Changan	Eado	2015	Sedan	Narıncı	1.6	110	Benzin	84000	Avtomat	Ön	f	14500	8529	4477931	Namiq	(055) 899-99-00	2020-11-17
7219	Gəncə	GAZ	330200	2000	Yük maşını	Bej	2.3	170	Benzin	206479	Mexaniki	Arxa	f	6800	4000	4477934	Dawqin	(055) 356-53-21	2020-11-17
7220	Bakı	Mercedes	190	1991	Sedan	Gümüşü	2	122	Benzin	425145	Mexaniki	Arxa	f	5300	3118	4477933	Şahin	(055) 286-86-36	2020-11-17
7221	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	177	Benzin	266000	Avtomat	Arxa	f	17500	10294	4477935	Azer	(050) 393-99-53	2020-11-17
7222	Bakı	Opel	Astra	2015	Universal	Gümüşü	1.4	140	Benzin	75156	Avtomat	Ön	f	17500	10294	4463890	CAHİD	(055) 880-07-00	2020-11-17
7223	Bakı	Toyota	Prius	2012	Sedan	Gümüşü	1.8	99	Benzin	89000	Avtomat	Ön	f	20000	11765	4447595	Murad	(070) 208-15-90	2020-11-17
7227	Şirvan	Chevrolet	Cruze	2013	Hetçbek / Liftbek	Ağ	1.8	141	Benzin	110000	Avtomat	Ön	f	16300	9588	4458997	Samid	(055) 397-97-96	2020-11-17
7228	Bakı	Toyota	Prado	2009	Offroader / SUV	Qara	4	250	Benzin	110000	Avtomat	Tam	f	50150	29500	4477882	Vüqar	(050) 717-65-25	2020-11-17
7229	Bakı	Mercedes	E 220	1994	Sedan	Yaşıl	2.2	163	Benzin	380000	Avtomat	Arxa	f	8800	5176	4477885	Xaliqi	(050) 695-77-75	2020-11-17
7230	Bakı	LADA (VAZ)	2115	2011	Sedan	Qara	1.6	80	Benzin	180000	Mexaniki	Ön	f	8900	5235	4477884	Cavid	(050) 647-59-85	2020-11-17
7231	Sumqayıt	Opel	Omega	1999	Sedan	Boz	2	136	Benzin	293000	Avtomat	Arxa	f	4700	2765	4477891	Qedim	(050) 623-24-71	2020-11-17
7232	Bakı	Kia	Optima	2009	Sedan	Ağ	2	174	Benzin	195000	Avtomat	Ön	f	17500	10294	4458448	Orxan	(055) 886-09-09	2020-11-17
7233	Sumqayıt	Opel	Astra	1998	Hetçbek / Liftbek	Gümüşü	1.6	101	Benzin	223525	Mexaniki	Ön	f	8500	5000	4477893	Elçin	(055) 780-87-88	2020-11-17
7234	Bakı	Mitsubishi	Pajero io	2000	Offroader / SUV	Gümüşü	2	136	Benzin	223125	Avtomat	Tam	f	15980	9400	4477883	Mehebbet	(050) 602-51-51	2020-11-17
7235	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.4	90	Benzin	167600	Mexaniki	Ön	f	11200	6588	4469584	Qədir	(055) 341-43-45	2020-11-17
7236	Bakı	BMW	528	2016	Sedan	Ağ	2	245	Benzin	48000	Avtomat	Arxa	f	48960	28800	4447122	Nihad	(055) 210-89-04	2020-11-17
7237	Qəbələ	LADA (VAZ)	Niva	2014	Offroader / SUV	Göy	1.7	80	Benzin	103000	Mexaniki	Tam	f	9600	5647	4477896	Sebri	(050) 336-68-74	2020-11-17
7238	Bakı	Hyundai	Elantra	2012	Sedan	Yaş Asfalt	1.8	150	Benzin	94817	Avtomat	Ön	f	18500	10882	4463219	Elsen	(055) 842-39-53	2020-11-17
7239	Bakı	Hyundai	Sonata	2009	Sedan	Qara	2.4	174	Benzin	180000	Avtomat	Ön	f	18800	11059	4451911	Eli	(050) 868-80-80	2020-11-17
7242	Siyəzən	GAZ	3110	2003	Sedan	Qara	2.3	131	Benzin	254000	Mexaniki	Arxa	f	4400	2588	4477856	Tahir	(070) 626-26-90	2020-11-17
7243	Bakı	Mercedes	C 200	1998	Sedan	Qəhvəyi	2	136	Benzin	263000	Avtomat	Arxa	f	11800	6941	4458967	Nurlan	(055) 811-36-15	2020-11-17
7244	Bərdə	Mercedes	Sprinter 312	1998	Mikroavtobus	Ağ	2.9	170	Dizel	300000	Mexaniki	Arxa	f	25000	14706	4477857	Bəxtiyar	(050) 665-63-22	2020-11-17
7245	Bakı	LADA (VAZ)	2107	2010	Sedan	Ağ	1.6	75	Benzin	84541	Mexaniki	Arxa	f	6600	3882	4477858	Sahib	(070) 607-04-09	2020-11-17
7246	Bakı	BMW	525	2002	Sedan	Qara	2.5	191	Benzin	235000	Avtomat	Arxa	f	14500	8529	4439250	Rövsen	(050) 504-08-94	2020-11-17
7247	Sumqayıt	Opel	Astra	2000	Sedan	Tünd qırmızı	1.8	125	Benzin	336000	Avtomat	Ön	f	7200	4235	4477862	Ramin 	(077) 537-73-07	2020-11-17
7248	Bakı	Renault	Megane	2007	Universal	Qırmızı	1.5	110	Dizel	245000	Mexaniki	Ön	f	8000	4706	4477868	Hikmat	(051) 897-07-17	2020-11-17
7249	Bakı	Volkswagen	Jetta	2016	Sedan	Yaş Asfalt	1.4	150	Benzin	58600	Avtomat	Ön	f	16900	9941	4477867	Elnur	(070) 290-48-58	2020-11-17
7250	Bakı	Volkswagen	Passat	2003	Sedan	Boz	1.8	193	Benzin	262375	Avtomat	Ön	f	7700	4529	4477869	Elmeddin	(077) 303-93-57	2020-11-17
7206	Bakı	Opel	Astra	1995	Hetçbek / Liftbek	Göy	1.6	116	Benzin	380836	Avtomat	Ön	f	5900	3471	4450592	Meqsed	(055) 829-94-46	2020-11-17
7251	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Gümüşü	2	184	Dizel	65000	Avtomat	Ön	f	23800	14000	4349462	ELVIN	(050) 836-05-70	2020-11-17
7252	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2	274	Benzin	141622	Avtomat	Ön	f	19800	11647	4457826	Azer	(050) 276-77-51	2020-11-17
7253	Sumqayıt	BMW	X5	2003	Offroader / SUV	Gümüşü	3	231	Benzin	290000	Avtomat	Tam	f	16000	9412	4477870	Rahil	(070) 930-09-03	2020-11-17
7254	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	95000	Mexaniki	Tam	f	13500	7941	4471975	Hesen	(055) 260-03-63	2020-11-17
7256	Bakı	Mitsubishi	Airtrek	2002	Offroader / SUV	Gümüşü	2	236	Benzin	225370	Avtomat	Tam	f	9300	5471	4477875	Məhəmmədəli	(055) 861-08-14	2020-11-17
7257	Şəki	Opel	Astra	1999	Hetçbek / Liftbek	Boz	1.6	101	Benzin	330000	Mexaniki	Tam	f	9500	5588	4477876	Raqif	(051) 808-08-07	2020-11-17
7258	Bakı	Toyota	Camry	2008	Sedan	Ağ	2.4	175	Benzin	176694	Avtomat	Ön	f	20500	12059	4469547	Serhed	(070) 970-00-03	2020-11-17
7259	Bakı	Hyundai	Elantra	2015	Sedan	Ağ	1.6	132	Dizel	83000	Avtomat	Ön	f	21500	12647	4435820	Kamandar	(070) 831-39-30	2020-11-17
7260	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Ağ	1.8	99	Hibrid	182000	Avtomat	Ön	f	16500	9706	4423661	ORXAN	(051) 524-54-54	2020-11-17
7262	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Göy	1.4	90	Benzin	196000	Mexaniki	Ön	f	9800	5765	4473179	Kamil	(050) 314-57-95	2020-11-17
7263	Bakı	Volkswagen	Passat	2016	Sedan	Qara	1.8	180	Benzin	126200	Avtomat	Ön	f	35530	20900	4289582	Samir	(050) 202-12-05	2020-11-17
7271	Bakı	Toyota	Prado	2020	Offroader / SUV	Ağ	3	163	Dizel	800	Avtomat	Tam	f	90950	53500	4377558	Ali	(077) 288-88-17	2020-11-17
7272	Bakı	Ford	Fusion	2013	Sedan	Gümüşü	1.5	181	Benzin	115000	Avtomat	Ön	f	17500	10294	4418513	Sehriyar	(099) 395-98-90	2020-11-17
7274	Sumqayıt	Opel	Sintra	1997	Minivan	Yaş Asfalt	2.2	141	Benzin	365214	Mexaniki	Ön	f	5700	3353	4338049	Kenan	(050) 430-57-26	2020-11-17
7275	Mingəçevir	LADA (VAZ)	2107	2003	Sedan	Ağ	1.6	75	Benzin	105000	Mexaniki	Arxa	f	4000	2353	4477849	Eldar	(070) 372-42-43	2020-11-17
7276	Bakı	Hyundai	i30	2007	Hetçbek / Liftbek	Boz	1.6	116	Dizel	213742	Mexaniki	Ön	f	12800	7529	4451000	Ali	(050) 697-84-62	2020-11-17
7277	Bakı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	169000	Mexaniki	Arxa	f	5900	3471	4477819	ismayil	(050) 868-90-09	2020-11-17
7279	Bakı	Renault	Megane	2006	Universal	Boz	1.9	130	Dizel	314000	Mexaniki	Ön	f	9000	5294	4477590	Kamran	(055) 399-26-62	2020-11-17
7281	Quba	Mercedes	C 180	1998	Universal	Gümüşü	1.8	122	Benzin	450000	Avtomat	Arxa	f	10200	6000	4477824	Fərid	(050) 448-87-81	2020-11-17
7282	Gəncə	LADA (VAZ)	2106	1992	Sedan	Göy	1.3	65	Benzin	253378	Mexaniki	Arxa	f	3600	2118	4477826	Sadiq	(055) 514-91-97	2020-11-17
7283	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	105200	Avtomat	Ön	f	22000	12941	4477827	Murad	(055) 903-11-96	2020-11-17
7284	Xızı	LADA (VAZ)	21099	1993	Sedan	Boz	1.5	75	Benzin	215963	Mexaniki	Ön	f	4200	2471	4477828	Teymur	(070) 723-22-55	2020-11-17
7285	Tərtər	Mercedes	Sprinter 316	2009	Mikroavtobus	Ağ	2.7	170	Dizel	400000	Mexaniki	Tam	f	42000	24706	4477833	Elvin	(051) 445-95-95	2020-11-17
7286	Bakı	Toyota	Prado	2007	Offroader / SUV	Qara	2.7	167	Benzin	192000	Avtomat	Tam	f	30000	17647	4477834	Baxtiyar	(055) 331-00-59	2020-11-17
7288	Bakı	Subaru	Impreza	2007	Hetçbek / Liftbek	Ağ	2	176	Benzin	176000	Avtomat	Tam	f	10900	6412	4477835	Elvin	(055) 440-52-12	2020-11-17
7289	Mingəçevir	LADA (VAZ)	21099	2003	Sedan	Gümüşü	1.5	75	Benzin	189000	Mexaniki	Tam	f	6900	4059	4477840	Sənan	(055) 990-87-12	2020-11-17
7290	Bakı	Chevrolet	Cruze	2017	Sedan	Boz	2	163	Benzin	60000	Avtomat	Ön	f	17500	10294	4477836	Hesen	(070) 297-77-77	2020-11-17
7291	Bakı	Mercedes	190	1992	Sedan	Boz	2	122	Benzin	473484	Mexaniki	Arxa	f	4900	2882	4477841	Alı	(050) 547-79-89	2020-11-17
7292	Bakı	Daewoo	Nexia	2009	Sedan	Gümüşü	1.5	75	Benzin	172000	Mexaniki	Ön	f	7300	4294	4477842	Elnur	(050) 646-94-10	2020-11-17
7293	Bakı	Chevrolet	Cruze	2015	Sedan	Ağ	1.4	141	Benzin	56000	Avtomat	Ön	f	15800	9294	4416329	Şəhriyar	(070) 839-39-19	2020-11-17
7294	Bakı	Mercedes	E 220	2009	Sedan	Ağ	2.2	170	Dizel	252000	Avtomat	Arxa	f	27500	16176	4477845	Məhərrəm	(070) 309-33-02	2020-11-17
7295	Bakı	Toyota	Corolla	2013	Sedan	Tünd qırmızı	1.6	132	Benzin	98000	Avtomat	Ön	f	21500	12647	4443967	Şəhriyar	(050) 330-07-49	2020-11-17
7296	Gəncə	Mercedes	C 180	2009	Sedan	Qara	1.8	156	Benzin	170000	Mexaniki	Arxa	f	18500	10882	4477847	Nuran	(050) 981-06-49	2020-11-17
7297	Xırdalan	Mercedes	S 350	2004	Sedan	Qara	3.7	245	Qaz	219295	Avtomat	Arxa	f	14500	8529	4400296	Kenan	(055) 223-36-23	2020-11-17
7300	Bakı	Porsche	Cayenne GTS	2014	Offroader / SUV	Ağ	4.8	386	Benzin	105000	Avtomat	Tam	f	76330	44900	4332070	Novruz	(055) 623-38-00	2020-11-17
7301	Bakı	Chevrolet	Cruze	2014	Sedan	Göy	1.4	141	Benzin	110000	Avtomat	Ön	f	15500	9118	4421073	Resad	(051) 677-77-72	2020-11-17
7278	Bakı	Hyundai	Sonata	2012	Sedan	Ağ	2	165	Benzin	74000	Avtomat	Ön	f	20700	12176	4411407	Anar	(055) 929-24-06	2020-11-17
7273	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Göy	1.4	97	Benzin	187444	Mexaniki	Ön	f	10900	6412	4451705	Ceyhun	(050) 697-84-62	2020-11-17
7280	Bakı	Kia	Optima	2012	Sedan	Ağ	2	274	Benzin	115000	Avtomat	Ön	f	21800	12824	4471857	İlham	(050) 689-06-97	2020-11-17
7302	Bakı	Mercedes	E 350	2007	Sedan	Qara	3.5	272	Benzin	250000	Avtomat	Arxa	f	18700	11000	4426065	Seyid	(050) 326-06-63	2020-11-17
7304	Salyan	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	66000	Avtomat	Tam	f	79900	47000	4461233	Rasim	(051) 556-52-52	2020-11-17
7305	Bakı	Ford	Transit	1998	Furqon	Ağ	2.5	150	Dizel	405000	Mexaniki	Arxa	f	14400	8471	4409424	Fuad	(055) 343-63-08	2020-11-17
7307	Naftalan	LADA (VAZ)	2104	1989	Universal	Göy	1.5	65	Benzin	180000	Avtomat	Ön	f	3000	1765	4477801	Elcin	(070) 364-36-46	2020-11-17
7308	Bakı	Hyundai	Sonata	2015	Sedan	Qara	2	274	Benzin	68000	Avtomat	Ön	f	30500	17941	4473801	Ruslan	(077) 563-03-73	2020-11-17
7309	Bakı	LADA (VAZ)	2107	2006	Sedan	Ağ	1.5	65	Benzin	333000	Mexaniki	Arxa	f	5200	3059	4477804	İlkin	(055) 785-95-26	2020-11-17
7310	Bakı	Toyota	Camry	2012	Sedan	Qara	2.5	181	Benzin	142000	Avtomat	Ön	f	30430	17900	4296690	Murad	(050) 516-59-99	2020-11-17
7311	Şəmkir	LADA (VAZ)	Priora	2015	Hetçbek / Liftbek	Boz	1.6	106	Benzin	79000	Mexaniki	Ön	f	13700	8059	4477805	Fərid	(051) 694-93-94	2020-11-17
7312	Sabirabad	LADA (VAZ)	2107	2005	Sedan	Ağ	1.5	65	Benzin	89000	Mexaniki	Arxa	f	5700	3353	4477807	Ilqar	(051) 331-33-23	2020-11-17
7313	Bakı	GAZ	M-21	1969	Sedan	Bej	2.4	70	Benzin	50000	Mexaniki	Arxa	f	14000	8235	4366426	Nazim	(050) 255-58-16	2020-11-17
7314	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	149450	Mexaniki	Tam	f	10300	6059	4469773	Kenan	(051) 935-55-44	2020-11-17
7317	Bakı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	250000	Mexaniki	Arxa	f	5600	3294	4477809	kamran	(070) 318-39-36	2020-11-17
7318	Bakı	Ford	Escape	2010	Offroader / SUV	Ağ	2.5	171	Benzin	97000	Avtomat	Tam	f	14300	8412	4477813	cavid	(070) 401-23-96	2020-11-17
7320	Bakı	Opel	Astra	2008	Universal	Ağ	1.3	90	Dizel	187000	Mexaniki	Ön	f	10950	6441	4466608	Vaqif	(055) 636-61-83	2020-11-17
7321	Bakı	Chevrolet	Cruze	2013	Sedan	Gümüşü	1.4	141	Benzin	110000	Avtomat	Ön	f	13900	8176	4477786	Behruz	(050) 685-06-84	2020-11-17
7322	Şəki	Opel	Vectra	1997	Sedan	Qızılı	1.8	125	Benzin	235368	Avtomat	Ön	f	5500	3235	4477793	Mahir 	(050) 880-35-31	2020-11-17
7323	Bakı	Mercedes	E 270	2001	Sedan	Gümüşü	2.7	170	Dizel	500000	Avtomat	Arxa	f	16000	9412	4477794	Sabit	(077) 403-00-92	2020-11-17
7325	Şəki	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	250000	Mexaniki	Ön	f	9800	5765	4477798	Azer	(055) 470-00-88	2020-11-17
7326	Bakı	BMW	328	2013	Sedan	Yaş Asfalt	2	245	Benzin	82000	Avtomat	Arxa	f	36550	21500	4300108	Şahin	(070) 246-05-06	2020-11-17
7329	Bakı	Kia	Rio	2008	Sedan	Gümüşü	1.4	97	Benzin	192000	Mexaniki	Arxa	f	9300	5471	4477815	Elçin	(055) 696-66-00	2020-11-17
7330	Bakı	Mitsubishi	Pajero	2007	Offroader / SUV	Ağ	3	190	Benzin	129000	Avtomat	Tam	f	24650	14500	4477817	Vüqar	(055) 212-78-57	2020-11-17
7331	Sumqayıt	Lexus	RX 300	2002	Offroader / SUV	Gümüşü	3	201	Benzin	155000	Avtomat	Tam	f	13300	7824	4477780	qurban	(070) 804-49-75	2020-11-17
7332	Gəncə	Hyundai	Santa Fe	2009	Offroader / SUV	Qara	2	184	Dizel	111350	Avtomat	Ön	f	20500	12059	4424169	Kamil	(070) 942-77-88	2020-11-17
7333	Bakı	Mercedes	A 160	2000	Hetçbek / Liftbek	Yaş Asfalt	1.6	105	Benzin	256400	Avtomat	Ön	f	4600	2706	4477818	Anar	(050) 609-82-41	2020-11-17
7337	Bakı	Mercedes	E 500	2003	Sedan	Qara	5	306	Benzin	360000	Avtomat	Arxa	f	16700	9824	4477775	musa	(055) 600-67-97	2020-11-17
7339	Bakı	Opel	Astra	1997	Universal	Qara	1.8	125	Benzin	257000	Avtomat	Ön	f	4700	2765	4468956	Abdul	(070) 207-28-27	2020-11-17
7340	Şəmkir	GAZ	2705-764	2004	Yük maşını	Ağ	2.4	96	Benzin	350000	Mexaniki	Arxa	f	8500	5000	4477769	Elmir	(099) 790-68-69	2020-11-17
7342	Bakı	Mitsubishi	Mirage	2016	Sedan	Göy	1.2	78	Benzin	98000	Variator	Ön	f	13800	8118	4477770	Adil	(077) 350-09-80	2020-11-17
7343	Bakı	Mercedes	C 230	1997	Sedan	Qızılı	2.3	193	Benzin	185000	Avtomat	Ön	f	9800	5765	4477773	Sakir	(051) 300-09-74	2020-11-17
7344	Bakı	Volkswagen	Jetta	2017	Sedan	Ağ	1.4	150	Benzin	91000	Avtomat	Ön	f	19800	11647	4462075	Enver	(055) 768-70-74	2020-11-17
7345	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	186000	Avtomat	Ön	f	11900	7000	4463979	Ismail	(050) 610-88-99	2020-11-17
7346	Bakı	Opel	Astra	2005	Universal	Gümüşü	1.4	90	Benzin	239000	Mexaniki	Arxa	f	10300	6059	4477776	Elnur	(050) 655-23-75	2020-11-17
7347	Bakı	Land Rover	Discovery	2011	Offroader / SUV	Qara	3	252	Dizel	239000	Avtomat	Tam	f	48450	28500	4477777	Faiq	(055) 388-00-99	2020-11-17
7348	Bakı	Volkswagen	Jetta	2016	Sedan	Göy	1.4	150	Benzin	47000	Avtomat	Ön	f	16800	9882	4464528	Ekber	(050) 332-67-59	2020-11-17
7349	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Benzin	150000	Avtomat	Ön	f	11800	6941	4470384	Şamil	(051) 663-91-33	2020-11-17
7350	Bakı	LADA (VAZ)	2107	2008	Sedan	Ağ	1.6	75	Benzin	158000	Mexaniki	Arxa	f	6800	4000	4477756	Niftali	(055) 590-22-86	2020-11-17
7351	Bakı	LADA (VAZ)	2107	1999	Sedan	Yaşıl	1.5	65	Benzin	150000	Mexaniki	Arxa	f	4000	2353	4477758	Fərid	(070) 866-96-17	2020-11-17
7316	Bakı	Chevrolet	Cruze	2017	Sedan	Göy	1.4	153	Benzin	42000	Avtomat	Ön	f	19600	11529	4401568	Ilham	(051) 625-03-11	2020-11-17
7319	Bakı	Kia	Rio	2005	Hetçbek / Liftbek	Boz	1.4	97	Benzin	99000	Mexaniki	Ön	f	10600	6235	4473034	Xaqani	(055) 202-10-20	2020-11-17
7352	Bakı	GAZ	33021	1998	Yük maşını	Sarı	2.4	90	Benzin	200000	Mexaniki	Ön	f	6200	3647	4448182	Pərviz	(051) 575-45-35	2020-11-17
7341	Gəncə	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	113000	Avtomat	Tam	f	43800	25765	4469095	İlham	(070) 437-00-20	2020-11-17
7315	Sumqayıt	Mercedes	Vito	2007	Van	Qara	2.2	150	Dizel	512000	Mexaniki	Arxa	f	14600	8588	4444102	Teymur	(050) 773-39-20	2020-11-17
7353	Bakı	Chrysler	300C	2005	Sedan	Ağ	3.5	250	Benzin	205102	Avtomat	Arxa	f	17300	10176	4477759	Elşad	(050) 347-77-72	2020-11-17
7354	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	3	173	Dizel	305000	Mexaniki	Tam	f	35000	20588	4477763	Enver 	(050) 209-91-06	2020-11-17
7355	Sumqayıt	Ford	Transit	1998	Yük maşını	Qırmızı	2.4	75	Dizel	255000	Mexaniki	Arxa	f	21500	12647	4449958	Niyaz	(055) 304-41-34	2020-11-17
7357	Ucar	LADA (VAZ)	2107	1999	Sedan	Göy	1.6	75	Benzin	650000	Mexaniki	Arxa	f	3900	2294	4477768	Samir	(050) 393-56-76	2020-11-17
7359	Sumqayıt	Kia	Cerato	2019	Sedan	Yaş Asfalt	2	145	Benzin	55000	Avtomat	Ön	f	35500	20882	4458082	Kamal	(051) 600-40-00	2020-11-17
7365	Neftçala	Mercedes	C 240	1997	Universal	Yaşıl	2.4	170	Benzin	120000	Mexaniki	Arxa	f	9000	5294	4477784	Kamal	(050) 658-67-07	2020-11-17
7366	Şəmkir	Mercedes	ML 350	2006	Offroader / SUV	Gümüşü	3.5	272	Benzin	170000	Avtomat	Tam	f	20000	11765	4477783	Razim	(077) 422-17-37	2020-11-17
7367	Gəncə	Hyundai	Accent	2008	Sedan	Gümüşü	1.5	110	Dizel	282000	Mexaniki	Ön	f	10400	6118	4477781	Etibar	(051) 737-94-35	2020-11-17
7369	Bakı	Jeep	Patriot	2017	Offroader / SUV	Qəhvəyi	2	159	Benzin	39000	Avtomat	Ön	f	28050	16500	4373201	Emin	(055) 715-77-07	2020-11-17
7372	Bakı	Land Rover	Discovery	2014	Offroader / SUV	Ağ	3	340	Benzin	110000	Avtomat	Tam	f	62730	36900	4466479	Zaur	(070) 200-08-08	2020-11-17
7373	Bakı	Hyundai	Elantra	2011	Sedan	Qara	1.8	150	Benzin	171050	Avtomat	Ön	f	19100	11235	4477745	Ayaz	(055) 371-09-00	2020-11-17
7374	Bakı	BMW	528	2016	Sedan	Qara	2	245	Benzin	58000	Avtomat	Arxa	f	51850	30500	4466887	Rufat	(055) 326-44-44	2020-11-17
7375	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Qara	1.4	90	Benzin	180180	Mexaniki	Ön	f	11600	6824	4461838	Veli	(077) 313-61-79	2020-11-17
7376	Sumqayıt	Opel	Astra	1998	Universal	Göy	1.6	106	Benzin	245368	Mexaniki	Ön	f	7700	4529	4477748	Emin	(055) 743-70-75	2020-11-17
7377	Bakı	GAZ	Sadko Next C41A23	2012	Yük maşını	Ağ	4.5	150	Dizel	36000	Mexaniki	Arxa	f	25000	14706	4477730	Rahib	(055) 525-10-93	2020-11-17
7381	Şamaxı	LADA (VAZ)	2106	1984	Sedan	Boz	1.6	75	Benzin	85000	Mexaniki	Arxa	f	3700	2176	4477734	Ramin	(070) 667-42-69	2020-11-17
7384	Bakı	Porsche	Cayenne GTS	2013	Offroader / SUV	Ağ	4.8	420	Benzin	52000	Avtomat	Tam	f	84150	49500	4357329	Nicat	(050) 235-46-99	2020-11-17
7391	Bakı	Toyota	Corolla	2016	Sedan	Gümüşü	1.6	124	Benzin	63300	Avtomat	Ön	f	27300	16059	4459866	Fuad	(055) 284-01-06	2020-11-17
7392	Bakı	Toyota	Camry	2017	Sedan	Ağ	2.5	181	Benzin	47000	Avtomat	Ön	f	54400	32000	4411986	Abdulla	(050) 315-51-97	2020-11-17
7393	Bakı	LADA (VAZ)	Niva	2016	Offroader / SUV	Ağ	1.7	80	Benzin	100000	Mexaniki	Tam	f	12500	7353	4400461	Fərahib	(077) 904-00-00	2020-11-17
7394	Bakı	Kia	Cerato	2011	Sedan	Gümüşü	1.6	132	Benzin	178000	Avtomat	Ön	f	15600	9176	4477753	Mubariz	(050) 703-21-33	2020-11-17
7395	Bakı	Kia	Optima	2012	Sedan	Ağ	2	274	Benzin	150000	Avtomat	Ön	f	21500	12647	4447692	SERXAN	(055) 218-83-86	2020-11-17
7397	Bakı	Toyota	Camry	2017	Sedan	Qara	2.5	181	Benzin	69000	Avtomat	Ön	f	32300	19000	4457483	Ruslan	(051) 539-12-26	2020-11-17
7398	Şirvan	BMW	528	2013	Sedan	Ağ	2	245	Benzin	70000	Avtomat	Arxa	f	42500	25000	4477726	Azer	(055) 608-90-08	2020-11-17
7399	Quba	Opel	Zafira	1999	Minivan	Gümüşü	1.8	125	Benzin	322400	Mexaniki	Ön	f	8800	5176	4477725	İlyaz	(070) 687-70-29	2020-11-17
7401	Gəncə	BMW	535	2010	Sedan	Qara	3	306	Benzin	267000	Avtomat	Arxa	f	34850	20500	4477713	Kamran	(055) 203-18-01	2020-11-17
7402	Bakı	LADA (VAZ)	2104	1988	Universal	Tünd qırmızı	1.5	75	Benzin	400000	Mexaniki	Arxa	f	3300	1941	4477728	Mərəyev	(070) 430-35-33	2020-11-17
7403	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Yaş Asfalt	1.4	90	Benzin	121000	Mexaniki	Ön	f	12800	7529	4467275	Tehmez	(077) 319-62-34	2020-11-17
7400	Bakı	Mercedes	S 350	1995	Sedan	Yaş Asfalt	3.5	272	Dizel	420101	Avtomat	Arxa	f	12000	7059	4449519	Vüqar	(051) 477-76-12	2020-11-17
7383	Gəncə	Ford	Fusion	2016	Sedan	Ağ	1.5	181	Benzin	59600	Avtomat	Ön	f	23000	13529	4420514	Cabbar	(055) 555-45-41	2020-11-17
7385	Bakı	Mercedes	E 200	1995	Sedan	Yaşıl	2	136	Benzin	315000	Avtomat	Arxa	f	10800	6353	4324599	Elnur	(055) 970-05-07	2020-11-17
7356	Bakı	Toyota	Prado	2008	Offroader / SUV	Ağ	2.7	167	Benzin	146000	Avtomat	Tam	f	33900	19941	4344017	Asif	(050) 412-30-68	2020-11-17
7364	Sumqayıt	Toyota	Land Cruiser	2003	Offroader / SUV	Ağ	4.2	131	Dizel	420000	Mexaniki	Tam	f	23500	13824	4460605	Etibar	(050) 327-19-15	2020-11-17
7378	Bakı	Opel	Astra	2007	Universal	Qara	1.4	90	Benzin	116000	Mexaniki	Ön	f	11300	6647	4397085	Taleh	(050) 402-63-86	2020-11-17
7358	Bakı	Toyota	Prius	2012	Hetçbek / Liftbek	Boz	1.8	99	Hibrid	155000	Variator	Ön	f	18500	10882	4466217	Nicat	(055) 795-66-06	2020-11-17
7368	Bakı	Hyundai	i30	2012	Universal	Yaş Asfalt	1.4	112	Benzin	105500	Mexaniki	Ön	f	14500	8529	4454869	Edik	(055) 800-87-17	2020-11-17
7404	Bakı	Hyundai	Elantra	2013	Sedan	Ağ	1.8	150	Benzin	76000	Avtomat	Ön	f	17000	10000	4459939	Ceyhun	(077) 302-23-56	2020-11-17
7417	Bakı	LADA (VAZ)	Priora	2015	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	140000	Mexaniki	Ön	f	12900	7588	4439631	Elmar	(051) 201-63-69	2020-11-17
7418	Bakı	Opel	Astra	1998	Universal	Göy	1.6	101	Benzin	100000	Mexaniki	Ön	f	7300	4294	4477720	Ramiz	(077) 304-99-24	2020-11-17
7419	Sumqayıt	BMW	530	2001	Sedan	Ağ	3	231	Benzin	303000	Avtomat	Arxa	f	16500	9706	4460630	Kamal	(077) 321-41-99	2020-11-17
7420	Bakı	Toyota	Prado	2012	Offroader / SUV	Ağ	2.7	167	Benzin	157000	Avtomat	Tam	f	44880	26400	4430388	Miri	(050) 379-17-69	2020-11-17
7427	Bakı	Hyundai	Elantra	2018	Sedan	Ağ	1.6	132	Dizel	35200	Avtomat	Ön	f	26800	15765	4459470	Mahir	(050) 212-39-39	2020-11-17
7422	Bakı	Mercedes	E 280	2000	Sedan	Gümüşü	2.8	193	Benzin	313200	Avtomat	Arxa	f	14800	8706	4408734	Rəşad	(070) 249-11-99	2020-11-17
7445	Bakı	Daewoo	Nexia	2007	Sedan	Narıncı	1.5	75	Benzin	325412	Mexaniki	Ön	f	5350	3147	4456651	Yusif	(050) 350-87-04	2020-11-17
7450	Bakı	Kia	Optima	2013	Sedan	Qara	2	274	Benzin	89000	Avtomat	Ön	f	22800	13412	4471928	Ferhad	(050) 513-10-10	2020-11-17
7493	Gəncə	Opel	Astra	2001	Hetçbek / Liftbek	Yaş Asfalt	2	136	Benzin	175000	Avtomat	Ön	f	8200	4824	4278164	Elvin	(055) 905-15-27	2020-11-17
7505	Bakı	LADA (VAZ)	Niva	2018	Offroader / SUV	Qara	1.7	80	Benzin	28000	Mexaniki	Tam	f	20300	11941	4464128	Murad	(055) 206-71-21	2020-11-17
7480	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaş Asfalt	1.3	90	Dizel	195000	Mexaniki	Ön	f	10700	6294	4413726	Perviz	(050) 334-57-54	2020-11-17
7513	Bakı	LADA (VAZ)	Niva	2011	Pikap	Göy	1.7	80	Benzin	184000	Mexaniki	Arxa	f	13800	8118	4469850	Zamiq	(055) 662-31-31	2020-11-17
7519	Bakı	Jeep	Grand Cherokee	2013	Offroader / SUV	Qara	3.6	286	Benzin	177000	Avtomat	Tam	f	51000	30000	4389847	Ilkin	(077) 500-44-55	2020-11-17
7552	Bakı	Volkswagen	Passat	1998	Sedan	Yaşıl	2	115	Benzin	285215	Avtomat	Ön	f	5200	3059	4455163	Samir	(055) 202-68-08	2020-11-17
7530	Bakı	Hyundai	Terracan	2004	Offroader / SUV	Qara	2.9	163	Dizel	320000	Avtomat	Tam	f	13900	8176	4452642	Ferid	(055) 810-85-16	2020-11-17
7579	Bakı	Opel	Astra	2000	Universal	Gümüşü	1.6	101	Benzin	320000	Mexaniki	Ön	f	8300	4882	4467189	elmar	(050) 633-75-82	2020-11-17
7608	Bakı	Jeep	Grand Cherokee	2009	Offroader / SUV	Qara	6.1	560	Benzin	175000	Avtomat	Tam	f	68000	40000	4241278	Rovşan	(050) 625-95-99	2020-11-17
7614	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	47000	Avtomat	Ön	f	18200	10706	4376107	Hafiz	(070) 222-06-62	2020-11-17
7623	Bakı	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	107	Benzin	222000	Avtomat	Ön	f	10800	6353	4477542	Elcin	(050) 744-15-16	2020-11-17
7652	Bakı	Toyota	Prado	2014	Offroader / SUV	Qara	2.7	167	Benzin	117000	Avtomat	Tam	f	54400	32000	4471898	Etibar	(050) 842-63-83	2020-11-17
7684	Bakı	Toyota	Corolla	2005	Hetçbek / Liftbek	Mavi	1.4	95	Dizel	139000	Mexaniki	Ön	f	11900	7000	4464597	Arif	(050) 616-95-11	2020-11-17
7735	Bakı	Hyundai	Sonata	2018	Sedan	Yaş Asfalt	1.6	190	Benzin	21000	Avtomat	Ön	f	28390	16700	4441912	Namaz	(055) 511-70-10	2020-11-17
7759	Bakı	Jeep	Grand Cherokee	1995	Offroader / SUV	Boz	4	210	Benzin	108845	Avtomat	Tam	f	9000	5294	4477448	Pərviz 	(077) 555-83-84	2020-11-17
7768	Bakı	BMW	528	2013	Sedan	Yaş Asfalt	2	245	Benzin	83000	Avtomat	Arxa	f	37060	21800	4225401	Kazim	(055) 588-84-99	2020-11-17
7822	Bakı	Cadillac	CT6	2016	Sedan	Qara	2	300	Benzin	31000	Avtomat	Arxa	f	60350	35500	4428571	Orxan	(050) 303-44-77	2020-11-17
7843	Bakı	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	107	Benzin	206000	Avtomat	Ön	f	12300	7235	4477287	Elnur	(070) 842-86-61	2020-11-17
7849	Bakı	Chevrolet	Aveo	2012	Sedan	Gümüşü	1.4	100	Benzin	190800	Mexaniki	Ön	f	11500	6765	4477305	Rüfət 	(055) 440-69-76	2020-11-17
7913	Xırdalan	Chevrolet	Aveo	2011	Sedan	Qara	1.4	107	Benzin	140000	Avtomat	Ön	f	10800	6353	4477143	Seymur	(051) 229-91-05	2020-11-17
7914	Bakı	Volkswagen	Passat	2005	Sedan	Qara	2	170	Dizel	500000	Avtomat	Ön	f	11000	6471	4477030	Ramiz	(050) 605-92-62	2020-11-17
7945	Bakı	BMW	X5	2003	Offroader / SUV	Qara	3	231	Dizel	460000	Avtomat	Tam	f	22500	13235	4476994	Sadiq..	(070) 281-99-99	2020-11-17
8046	Gəncə	Volkswagen	Passat	2002	Sedan	Ağ	1.8	150	Benzin	235800	Avtomat	Ön	f	7100	4176	4476726	Ismet	(055) 784-14-18	2020-11-17
8060	Bakı	BMW	528	2014	Sedan	Ağ	2	245	Benzin	143000	Avtomat	Tam	f	38250	22500	4114743	UGUR	(055) 202-52-72	2020-11-17
8089	Gəncə	Volkswagen	Passat	2002	Sedan	Boz	1.8	150	Benzin	220144	Avtomat	Ön	f	6700	3941	4446833	Tofig	(070) 311-11-79	2020-11-17
8126	Bakı	Volkswagen	Passat	1998	Sedan	Ağ	2	160	Benzin	346743	Mexaniki	Ön	f	5500	3235	4476581	Cemil	(055) 811-94-45	2020-11-17
8232	Şəki	Volkswagen	Golf	1994	Sedan	Qırmızı	1.6	101	Benzin	250000	Mexaniki	Ön	f	3500	2059	4476298	Rövşən	(055) 477-89-07	2020-11-17
8266	Bakı	Chevrolet	Cruze	2016	Sedan	Qırmızı	1.4	153	Benzin	125000	Avtomat	Ön	f	17700	10412	4313970	Asiman	(055) 332-26-06	2020-11-17
8270	Bakı	Jeep	Grand Cherokee	2017	Offroader / SUV	Qəhvəyi	3.6	290	Benzin	18500	Avtomat	Tam	f	74800	44000	4476192	Daniel	(050) 325-49-33	2020-11-17
8339	Şəmkir	Chevrolet	Aveo	2006	Hetçbek / Liftbek	Qırmızı	1.2	72	Benzin	115123	Mexaniki	Ön	f	7200	4235	4476078	Faxreddin	(051) 713-95-77	2020-11-17
8348	Bakı	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	94685	Mexaniki	Tam	f	9600	5647	4303696	ATAŞ	(051) 306-22-21	2020-11-17
8383	Bakı	Volkswagen	Passat	2005	Sedan	Qara	2	200	Benzin	315000	Avtomat	Ön	f	11000	6471	4476002	Nazim	(050) 460-34-11	2020-11-17
8393	Bakı	Volkswagen	Passat	2000	Sedan	Boz	2.8	192	Benzin	198300	Avtomat	Ön	f	5600	3294	4132028	Əhməd	(050) 302-33-77	2020-11-18
8411	Bakı	Chevrolet	Aveo	2012	Sedan	Gümüşü	1.2	89	Benzin	280000	Mexaniki	Ön	f	10600	6235	4458222	Ramil	(050) 892-19-56	2020-11-18
8425	Bakı	Daewoo	Gentra	2014	Sedan	Ağ	1.5	107	Benzin	250000	Mexaniki	Ön	f	14000	8235	4419829	Etibar	(050) 412-01-45	2020-11-18
8434	Bakı	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	107	Benzin	215000	Avtomat	Ön	f	11000	6471	4475968	Pərviz	(055) 659-58-61	2020-11-18
8466	Sumqayıt	Volkswagen	Passat	2005	Sedan	Qara	2	150	Benzin	274000	Avtomat	Ön	f	8200	4824	4475844	Ayaz	(050) 668-62-53	2020-11-18
8468	Bakı	Kia	Sportage	2011	Offroader / SUV	Ağ	2.4	177	Benzin	170000	Avtomat	Tam	f	24500	14412	4458127	Maşın sahibi	(055) 890-77-77	2020-11-18
8491	Bakı	Jeep	Grand Cherokee	2012	Offroader / SUV	Ağ	3.6	286	Benzin	156000	Avtomat	Tam	f	36550	21500	4448584	Elxan	(070) 829-50-47	2020-11-18
8531	Sumqayıt	Volkswagen	Passat	2006	Sedan	Gümüşü	2	170	Dizel	232300	Avtomat	Ön	f	8800	5176	4475691	Rafo	(077) 439-39-39	2020-11-18
8585	Bakı	Mercedes	GL 500	2013	Offroader / SUV	Ağ	4.7	435	Benzin	78000	Avtomat	Tam	f	74800	44000	4430390	Nihad	(050) 665-76-16	2020-11-18
8586	Bakı	LADA (VAZ)	Niva	2018	Offroader / SUV	Qara	1.7	80	Benzin	35000	Mexaniki	Tam	f	17300	10176	4470058	Ibrahim	(051) 850-50-50	2020-11-18
8607	Bakı	Volkswagen	Passat	2002	Sedan	Gümüşü	1.8	150	Benzin	190850	Avtomat	Ön	f	6600	3882	4475536	Əbülfəz	(070) 222-97-81	2020-11-18
8627	Astara	Volkswagen	Passat	1990	Sedan	Bej	2	140	Dizel	150000	Mexaniki	Ön	f	2000	1176	4475602	Rahib	(050) 470-22-58	2020-11-18
8665	Bakı	Volkswagen	Passat	1999	Sedan	Gümüşü	1.8	125	Benzin	190000	Avtomat	Ön	f	5400	3176	4475465	behruz	(050) 540-13-92	2020-11-18
8669	Bakı	Chevrolet	Cruze	2013	Sedan	Yaş Asfalt	1.4	141	Benzin	178000	Avtomat	Ön	f	14800	8706	4453479	Mahir	(050) 881-99-91	2020-11-18
8687	Bakı	Volkswagen	Passat	2008	Sedan	Qara	1.8	180	Benzin	193000	Avtomat	Ön	f	13500	7941	4446123	Rüfət	(050) 457-20-20	2020-11-18
8738	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Yaş Asfalt	1.3	101	Dizel	249502	Mexaniki	Ön	f	11600	6824	4454332	Razi	(070) 748-30-38	2020-11-18
8786	Bakı	Ford	Transit	1999	Furqon	Ağ	2.5	150	Dizel	418000	Mexaniki	Arxa	f	14000	8235	4419255	Zamiq	(055) 731-31-66	2020-11-18
8821	Bakı	Volkswagen	Passat	2005	Sedan	Qara	2	220	Benzin	206000	Avtomat	Ön	f	10300	6059	4392603	Namiq	(050) 840-65-10	2020-11-18
8836	Bakı	Opel	Astra	2006	Universal	Yaş Asfalt	1.3	90	Dizel	192000	Mexaniki	Ön	f	10950	6441	4475174	Murad	(050) 308-48-80	2020-11-18
8854	Bakı	Hyundai	Elantra	2013	Sedan	Qara	1.8	150	Benzin	82000	Avtomat	Ön	f	17400	10235	4425442	Elvir	(050) 433-50-53	2020-11-18
8848	Bakı	Kia	Optima	2014	Sedan	Boz	2	274	Benzin	96000	Avtomat	Ön	f	25600	15059	4461765	Elvir	(050) 433-50-53	2020-11-18
8965	Bakı	Chevrolet	Aveo	2011	Sedan	Boz	1.4	107	Benzin	63500	Avtomat	Ön	f	12000	7059	4474987	Səməd	(077) 485-83-84	2020-11-18
8985	Bakı	Volkswagen	Passat	2005	Sedan	Yaş Asfalt	2	211	Benzin	310000	Avtomat	Ön	f	7400	4353	4474992	Amil	(051) 340-10-80	2020-11-18
8988	Bakı	Mercedes	E 220	2002	Sedan	Yaş Asfalt	2.2	150	Dizel	220000	Avtomat	Arxa	f	15800	9294	4446938	Aga	(051) 702-00-02	2020-11-18
9003	Bakı	Chevrolet	Aveo	2011	Sedan	Ağ	1.2	86	Benzin	281111	Mexaniki	Ön	f	9000	5294	4474900	Ruslan	(055) 517-14-87	2020-11-18
9058	Bakı	BMW	528	2013	Sedan	Göy	2	245	Benzin	85000	Avtomat	Arxa	f	39440	23200	4471422	Yuksəl	(055) 572-72-44	2020-11-18
9181	Lənkəran	Volkswagen	Touareg	2008	Offroader / SUV	Ağ	3.6	280	Benzin	257384	Avtomat	Arxa	f	23000	13529	4474486	Zahid	(051) 385-23-98	2020-11-18
9184	Bakı	Chevrolet	Aveo	2006	Sedan	Yaş Asfalt	1.4	107	Benzin	294000	Avtomat	Ön	f	10900	6412	4474541	Elnur	(050) 605-54-00	2020-11-18
9206	Bakı	Volkswagen	Touareg	2014	Offroader / SUV	Qara	3.6	280	Benzin	155000	Avtomat	Tam	f	44200	26000	4474399	Elvin	(050) 210-04-59	2020-11-18
9223	Bakı	Volkswagen	Passat	2004	Sedan	Yaşıl	1.8	150	Benzin	260000	Avtomat	Ön	f	6900	4059	4474410	Fərid	(077) 566-65-46	2020-11-18
9261	Bakı	Chevrolet	Aveo	2017	Sedan	Qızılı	1.4	140	Benzin	76000	Mexaniki	Ön	f	15900	9353	4456094	Anar	(055) 713-10-00	2020-11-18
9273	Bakı	Volkswagen	Touareg	2007	Offroader / SUV	Ağ	4.2	350	Benzin	138000	Avtomat	Tam	f	17800	10471	4474208	Elnur	(050) 431-79-36	2020-11-18
9279	Bakı	Volkswagen	Touareg	2004	Offroader / SUV	Qara	3.2	240	Benzin	220000	Avtomat	Tam	f	14800	8706	4474231	Namiq	(055) 765-58-66	2020-11-18
9332	Bakı	Chevrolet	Aveo	2012	Sedan	Qırmızı	1.4	107	Benzin	170000	Avtomat	Ön	f	12000	7059	4474033	Sahib	(055) 492-91-83	2020-11-18
9394	Bakı	Volkswagen	Passat	2007	Offroader / SUV	Qara	2	141	Benzin	158000	Avtomat	Ön	f	10500	6176	4459236	Nazim	(070) 220-08-00	2020-11-18
9418	Bakı	Volkswagen	Passat	2012	Sedan	Boz	2.5	170	Benzin	117000	Avtomat	Ön	f	16500	9706	4473779	Sedi	(050) 721-71-51	2020-11-18
9428	Bakı	Volkswagen	Passat	2013	Sedan	Ağ	1.8	180	Benzin	211000	Avtomat	Ön	f	18200	10706	4457364	Seymur 	(055) 253-05-50	2020-11-18
9451	Bakı	Volkswagen	Touareg	2006	Offroader / SUV	Qara	3	231	Dizel	205000	Avtomat	Tam	f	22500	13235	4473659	Fariz	(050) 486-21-75	2020-11-18
9571	Bakı	Volkswagen	Passat	2008	Sedan	Ağ	2	200	Benzin	172000	Avtomat	Ön	f	11700	6882	4473282	Izzet	(050) 374-69-94	2020-11-18
9612	Bakı	Mercedes	E 220	2011	Sedan	Boz	2.2	170	Dizel	277000	Avtomat	Arxa	f	28900	17000	4451930	Ağa	(051) 663-63-64	2020-11-18
9613	Bakı	Chevrolet	Aveo	2010	Sedan	Ağ	1.4	100	Benzin	288709	Mexaniki	Ön	f	9500	5588	4473257	Elvin	(051) 525-20-05	2020-11-18
9631	Bakı	Kia	Optima	2016	Sedan	Qara	2	274	Benzin	55000	Avtomat	Tam	f	31800	18706	4467468	Zakir	(050) 787-80-00	2020-11-18
9641	Bakı	Volkswagen	Passat	2008	Sedan	Ağ	1.8	180	Benzin	189000	Avtomat	Ön	f	13900	8176	4437862	İbrahim	(050) 273-89-99	2020-11-18
9642	Bakı	Volkswagen	Touareg	2005	Offroader / SUV	Göy	3.2	220	Benzin	240000	Avtomat	Tam	f	13800	8118	4473231	Эльшад 	(051) 800-00-38	2020-11-18
9695	Yevlax	Volkswagen	Passat	2008	Sedan	Ağ	1.8	130	Benzin	186000	Mexaniki	Ön	f	12700	7471	4473089	Həsən	(055) 475-67-67	2020-11-18
9709	Sumqayıt	Volkswagen	Passat	2010	Sedan	Qızılı	2	211	Benzin	142000	Variator	Ön	f	15900	9353	4473150	ANAR	(055) 211-66-03	2020-11-18
9770	Bakı	Volkswagen	Passat	2002	Sedan	Gümüşü	1.8	128	Benzin	145123	Avtomat	Ön	f	7500	4412	4472922	Oruc	(050) 680-37-21	2020-11-18
9786	Bakı	Kia	Opirus	2008	Sedan	Ağ	3.8	267	Benzin	229000	Avtomat	Ön	f	16900	9941	4448333	Mahmud	(055) 700-39-88	2020-11-18
9816	Bakı	Mercedes	C 230	2000	Sedan	Ağ	2.3	193	Benzin	230817	Avtomat	Arxa	f	13000	7647	4447638	Emin	(070) 477-72-23	2020-11-18
9818	Qax	Volkswagen	Passat	2011	Sedan	Qara	1.8	160	Benzin	95000	Avtomat	Ön	f	18200	10706	3876585	Elçin	(055) 616-58-38	2020-11-18
9849	Bakı	Chevrolet	Aveo	2012	Sedan	Tünd qırmızı	1.4	107	Benzin	211000	Avtomat	Ön	f	11800	6941	4472752	Ehtiram	(050) 654-72-18	2020-11-18
9891	Bakı	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	107	Benzin	96000	Avtomat	Arxa	f	12500	7353	4472698	Adil	(070) 270-97-11	2020-11-18
9923	Bakı	Volkswagen	Passat	2003	Sedan	Ağ	1.8	170	Benzin	125000	Avtomat	Ön	f	8000	4706	4472619	Yusif	(050) 736-02-02	2020-11-18
9928	Bakı	Volkswagen	Passat	2008	Sedan	Qara	1.8	180	Benzin	176843	Avtomat	Ön	f	12700	7471	4472602	Cavad	(055) 880-70-60	2020-11-18
9952	Bakı	Volkswagen	Passat	2013	Sedan	Göy	1.8	180	Benzin	198000	Avtomat	Ön	f	17900	10529	4402361	Nicat	(050) 707-92-53	2020-11-18
9965	Bakı	Volkswagen	Passat	2009	Sedan	Ağ	1.8	180	Benzin	250000	Avtomat	Ön	f	12000	7059	4472615	Recan	(055) 797-77-88	2020-11-18
10082	Bakı	Kia	Optima	2016	Sedan	Ağ	2	165	Benzin	55538	Avtomat	Ön	f	27800	16353	4448475	İbrahim	(050) 344-43-11	2020-11-18
10118	Bakı	Jeep	Grand Cherokee	2013	Offroader / SUV	Ağ	3.6	286	Benzin	100565	Avtomat	Tam	f	48450	28500	4449410	İlham	(055) 696-62-72	2020-11-18
10187	Bakı	Volkswagen	Touareg	2006	Offroader / SUV	Gümüşü	3.2	350	Benzin	110000	Avtomat	Tam	f	15899	9352	4472073	Emin	(050) 323-17-77	2020-11-18
10193	Bakı	Jeep	Grand Cherokee	2002	Offroader / SUV	Gümüşü	2.7	163	Dizel	431000	Avtomat	Tam	f	16000	9412	4361984	Umud	(050) 505-99-90	2020-11-18
10229	Bakı	Chevrolet	Aveo	2019	Sedan	Ağ	1.4	110	Benzin	22500	Avtomat	Ön	f	22500	13235	4416048	Aga 	(050) 383-33-37	2020-11-18
10253	Gəncə	Volkswagen	Touareg	2006	Offroader / SUV	Qara	4.2	286	Benzin	250000	Avtomat	Tam	f	16000	9412	4471934	Pərviz	(070) 307-17-94	2020-11-18
10266	Bakı	Volkswagen	Touareg	2004	Offroader / SUV	Yaşıl	3.2	220	Benzin	378000	Avtomat	Tam	f	12500	7353	4471951	ALi	(055) 350-50-01	2020-11-18
10284	Bakı	Volkswagen	Passat	2004	Sedan	Yaş Asfalt	1.8	150	Benzin	257000	Avtomat	Ön	f	7200	4235	4471889	Rauf	(055) 354-77-77	2020-11-18
10324	Bakı	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	100	Benzin	170000	Avtomat	Ön	f	12500	7353	4400018	Nicat	(077) 270-02-14	2020-11-18
10330	Bakı	Volkswagen	Touareg	2004	Offroader / SUV	Gümüşü	3.2	240	Benzin	290404	Avtomat	Tam	f	13500	7941	4418780	Elnur	(050) 709-13-20	2020-11-18
10447	Sumqayıt	Volkswagen	Touareg	2006	Offroader / SUV	Qara	3.6	280	Benzin	249500	Avtomat	Tam	f	16500	9706	4471527	Kamil	(050) 268-10-01	2020-11-18
10451	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	91000	Avtomat	Ön	f	18500	10882	4415680	Rövşən	(050) 484-88-55	2020-11-18
10452	Bakı	Toyota	Camry	2007	Sedan	Ağ	2.4	168	Benzin	161000	Avtomat	Ön	f	16000	9412	4422506	Emil	(055) 881-16-66	2020-11-18
10509	Naxçıvan	Chevrolet	Aveo	2012	Sedan	Ağ	1.4	107	Benzin	90000	Mexaniki	Ön	f	13000	7647	4471260	Çingiz	(070) 385-92-93	2020-11-18
10539	Bakı	Toyota	Prado	2008	Offroader / SUV	Qızılı	4	250	Benzin	138000	Avtomat	Tam	f	38250	22500	4456445	Sahin	(055) 364-95-95	2020-11-18
10541	Bakı	Volkswagen	Touareg	2004	Offroader / SUV	Yaş Asfalt	3.2	220	Benzin	196000	Avtomat	Tam	f	13300	7824	4471284	Vüqar	(055) 949-88-01	2020-11-18
10542	Bakı	Volkswagen	Passat	2002	Sedan	Göy	1.8	160	Benzin	250000	Avtomat	Ön	f	6200	3647	4471290	Sehriyar	(099) 746-49-99	2020-11-18
10666	Bakı	Volkswagen	Passat	2006	Universal	Gümüşü	2	170	Dizel	186739	Avtomat	Ön	f	10800	6353	4470790	Hüseyin	(070) 595-61-61	2020-11-18
10675	Bakı	Chevrolet	Aveo	2014	Sedan	Yaş Asfalt	1.4	100	Benzin	222000	Avtomat	Tam	f	12700	7471	4470718	Şahin	(050) 377-93-92	2020-11-18
10735	Bakı	Volkswagen	Passat	2009	Sedan	Qara	1.8	180	Benzin	220000	Avtomat	Ön	f	13000	7647	4470515	Resad	(055) 553-33-36	2020-11-18
10817	Bakı	Chevrolet	Aveo	2018	Sedan	Qara	1.4	100	Benzin	22777	Avtomat	Ön	f	22000	12941	4448780	Camal	(055) 377-09-19	2020-11-18
10851	Bakı	Volkswagen	Passat	2016	Sedan	Qara	1.8	180	Benzin	50000	Avtomat	Ön	f	41310	24300	4470129	Nihat	(055) 555-54-10	2020-11-18
10896	Bakı	Chevrolet	Aveo	2011	Sedan	Ağ	1.2	86	Benzin	180000	Mexaniki	Ön	f	10800	6353	4470047	pervin	(055) 400-16-51	2020-11-18
10938	Bərdə	Chevrolet	Aveo	2011	Sedan	Ağ	1.2	86	Benzin	180000	Mexaniki	Ön	f	8500	5000	4469952	Anar	(055) 351-27-10	2020-11-18
10954	Bakı	SEAT	Ibiza	2012	Hetçbek / Liftbek	Ağ	1.6	105	Benzin	183000	Avtomat	Ön	f	10900	6412	4460725	Emin	(055) 497-10-01	2020-11-18
10970	Bakı	Chevrolet	Aveo	2008	Sedan	Boz	1.4	100	Benzin	105000	Mexaniki	Ön	f	10500	6176	4469864	Nicat	(050) 737-95-49	2020-11-18
11003	Bakı	Volkswagen	Touareg	2004	Offroader / SUV	Ağ	4.2	340	Benzin	164000	Avtomat	Tam	f	12800	7529	4469780	Rahid	(077) 534-68-04	2020-11-18
11031	Bakı	Volkswagen	Passat	2002	Sedan	Gümüşü	1.8	150	Benzin	164000	Avtomat	Ön	f	7600	4471	4475309	Orxan	(051) 425-59-59	2020-11-18
11015	Bakı	Kia	Sorento	2007	Sedan	Qara	2.5	170	Dizel	280000	Avtomat	Tam	f	15800	9294	4480054	ƏIi	(050) 254-15-77	2020-11-18
11016	Bakı	Toyota	Prado	2013	Offroader / SUV	Ağ	2.7	167	Benzin	108400	Avtomat	Tam	f	45730	26900	4480045	Soltan	(055) 918-88-93	2020-11-18
11022	Bakı	Ford	Transit	1996	Mikroavtobus	Narıncı	2.5	76	Dizel	800100	Mexaniki	Arxa	f	15200	8941	4456892	Arzuman	(055) 661-99-21	2020-11-18
11018	Bakı	Volkswagen	Multivan	2019	Van	Qara	1.9	84	Benzin	12600	Avtomat	Ön	f	100300	59000	4480056	Heyder	(055) 222-01-11	2020-11-18
11044	Bakı	Chevrolet	Cruze	2016	Sedan	Ağ	1.4	153	Benzin	64000	Avtomat	Ön	f	16900	9941	4469129	Ruslan	(077) 597-01-02	2020-11-18
11017	Bakı	Lexus	GX 470	2006	Offroader / SUV	Qara	4.7	273	Benzin	124300	Avtomat	Tam	f	35360	20800	4444623	Asif	(050) 784-64-36	2020-11-18
11028	Bakı	SEAT	Ibiza	2013	Universal	Ağ	1.6	115	Benzin	200000	Avtomat	Ön	f	10600	6235	4445379	Qulu	(050) 443-14-63	2020-11-18
11025	Astara	Mercedes	Vito 111	2007	Van	Sarı	2.2	150	Dizel	612000	Mexaniki	Arxa	f	23300	13706	4479986	Rüfət Müəllim	(051) 314-41-41	2020-11-18
11053	Bakı	Toyota	RAV 4	2007	Offroader / SUV	Qara	2	170	Benzin	267267	Avtomat	Tam	f	15700	9235	4400643	Elnur	(077) 606-33-99	2020-11-18
11029	Bakı	Mercedes	190	1990	Sedan	Ağ	1.8	109	Benzin	316780	Mexaniki	Arxa	f	4200	2471	4469707	Mehman	(050) 447-04-31	2020-11-18
11020	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2.4	178	Benzin	150000	Avtomat	Ön	f	20500	12059	4435082	Rafael	(050) 402-70-70	2020-11-18
11032	Mingəçevir	LADA (VAZ)	2115	2012	Sedan	Ağ	1.6	75	Benzin	151000	Mexaniki	Ön	f	8400	4941	4480053	Nazir	(070) 602-00-45	2020-11-18
11014	Bakı	Chevrolet	Cruze	2015	Sedan	Tünd qırmızı	1.4	141	Benzin	51000	Avtomat	Ön	f	15000	8824	4425247	Qulu	(070) 810-50-40	2020-11-18
11024	Bakı	BMW	325	2007	Sedan	Ağ	2.5	218	Benzin	248000	Avtomat	Arxa	f	17800	10471	4442448	Aqil	(055) 914-00-00	2020-11-18
11026	Sumqayıt	ZAZ	Slavuta	2009	Sedan	Ağ	1.5	65	Benzin	160000	Mexaniki	Ön	f	3500	2059	4480049	Ömər	(055) 258-43-25	2020-11-18
11060	Bakı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	472737	Mexaniki	Arxa	f	4750	2794	4480033	Vusal	(050) 851-57-23	2020-11-18
11082	Bakı	Lamborghini	Aventador	2014	Kupe	Qara	6.5	700	Benzin	6800	Avtomat	Tam	f	455600	268000	3980166	Aydin	(050) 210-12-51	2020-11-18
11086	Bakı	Opel	Astra	2004	Hetçbek / Liftbek	Boz	1.4	90	Benzin	180200	Mexaniki	Ön	f	9700	5706	4476248	Vusall	(055) 203-94-61	2020-11-18
11094	Bakı	BMW	X6	2009	Offroader / SUV	Ağ	4.4	407	Benzin	170000	Avtomat	Arxa	f	32300	19000	4453326	Rəşad	(055) 469-69-69	2020-11-18
11065	Bakı	Nissan	Juke	2014	Offroader / SUV	Qırmızı	1.6	117	Benzin	56000	Avtomat	Ön	f	22500	13235	4464147	Sərxan	(070) 718-88-82	2020-11-18
11066	Sumqayıt	LADA (VAZ)	2106	1983	Sedan	Göy	1.5	65	Benzin	456807	Mexaniki	Arxa	f	3700	2176	4480035	Sebuhi	(055) 532-31-31	2020-11-18
11099	Ağcabədi	LADA (VAZ)	2109	1999	Hetçbek / Liftbek	Göy	1.5	75	Benzin	200000	Mexaniki	Ön	f	4500	2647	4480024	Dəyanət	(050) 764-07-87	2020-11-18
11100	Bakı	BMW	325	2003	Sedan	Qara	2.5	192	Benzin	200000	Avtomat	Arxa	f	13000	7647	4480020	Zaur	(070) 629-70-70	2020-11-18
11054	Bakı	Hyundai	Accent	2007	Sedan	Qara	1.4	97	Benzin	475000	Avtomat	Arxa	f	8950	5265	4480030	Vusal	(050) 805-52-93	2020-11-18
11055	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2	274	Benzin	170000	Avtomat	Ön	f	29000	17059	4464168	Sərxan	(070) 718-88-82	2020-11-18
11058	Gəncə	Mercedes	S 320	1999	Sedan	Qara	3.2	224	Benzin	179580	Avtomat	Arxa	f	7850	4618	4480031	Zabit	(050) 525-06-00	2020-11-18
11097	Bərdə	Mercedes	814 D	1995	Yük maşını	Göy	4	170	Dizel	312512	Mexaniki	Arxa	f	20500	12059	4480022	Yaşar	(051) 514-00-01	2020-11-18
11104	Bakı	Kia	Sorento	2011	Offroader / SUV	Gümüşü	2	184	Dizel	153300	Avtomat	Ön	f	21500	12647	4480017	Ramin	(055) 660-65-85	2020-11-18
11131	Bakı	Chevrolet	Malibu	1979	Kupe	Qırmızı	5	160	Benzin	92000	Avtomat	Arxa	f	68000	40000	4479988	Ferid	(077) 465-85-27	2020-11-18
11137	Bakı	Kia	Carens	2007	Minivan	Yaş Asfalt	2	140	Dizel	289000	Avtomat	Ön	f	15300	9000	4479366	Mahir	(050) 645-75-10	2020-11-18
11142	Bakı	Volkswagen	Passat	2000	Sedan	Ağ	1.8	170	Benzin	265425	Avtomat	Ön	f	4400	2588	4478258	Efqan	(055) 676-58-61	2020-11-18
11128	Bakı	Kia	Sportage	2009	Offroader / SUV	Ağ	2	170	Benzin	84000	Avtomat	Tam	f	18500	10882	4454712	Bəybala	(050) 227-22-17	2020-11-18
11129	Sumqayıt	BMW	318	1993	Sedan	Tünd qırmızı	1.8	116	Benzin	317627	Avtomat	Arxa	f	5700	3353	4480006	EFQAN	(050) 392-94-85	2020-11-18
11109	Bakı	BMW	523	2006	Sedan	Sarı	2.5	177	Benzin	365506	Avtomat	Arxa	f	20500	12059	4480008	Misir	(051) 432-12-77	2020-11-18
11140	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	110	Benzin	123560	Avtomat	Ön	f	14500	8529	4426190	Elnur	(070) 816-50-68	2020-11-18
11141	Bakı	Ford	Focus	2008	Universal	Ağ	1.6	125	Dizel	190000	Mexaniki	Ön	f	12800	7529	4473604	Fizuli	(055) 411-89-67	2020-11-18
11144	Bakı	Kia	Cadenza	2011	Sedan	Qara	3.5	290	Benzin	195213	Avtomat	Ön	f	23500	13824	4479977	Fuad	(051) 503-00-99	2020-11-18
11132	Bakı	LADA (VAZ)	Priora	2015	Sedan	Qara	1.6	106	Benzin	67000	Mexaniki	Ön	f	19900	11706	4479667	Polad	(050) 612-93-17	2020-11-18
11133	Bakı	Opel	Astra	2000	Hetçbek / Liftbek	Göy	1.6	101	Benzin	284300	Mexaniki	Ön	f	8400	4941	4479995	Aqil	(077) 313-65-28	2020-11-18
11134	Bakı	BMW	728	1999	Sedan	Yaşıl	2.8	193	Benzin	490000	Avtomat	Arxa	f	12400	7294	4479991	Ekber	(050) 842-82-92	2020-11-18
11135	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	278000	Avtomat	Arxa	f	14700	8647	4477880	Akif	(050) 827-02-22	2020-11-18
11136	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Gümüşü	1.6	116	Benzin	190482	Avtomat	Ön	f	14000	8235	4479996	Riad	(055) 577-26-62	2020-11-18
11139	Bakı	Hyundai	Elantra	2010	Sedan	Ağ	1.6	132	Benzin	200000	Avtomat	Ön	f	15400	9059	4480000	Edalet	(077) 632-83-23	2020-11-18
11157	Bakı	Hyundai	Accent	2006	Sedan	Ağ	1.6	112	Benzin	352437	Avtomat	Ön	f	9300	5471	4479978	Eli	(055) 228-88-73	2020-11-18
11159	Bakı	Mercedes	C 220	1998	Universal	Göy	2.2	143	Dizel	345000	Avtomat	Arxa	f	11800	6941	4479979	Vuqar	(050) 527-12-57	2020-11-18
11161	Bakı	GAZ	Sobol	2010	Furqon	Ağ	2.4	131	Benzin	105000	Mexaniki	Arxa	f	10000	5882	4479984	Həsrət	(055) 754-31-26	2020-11-18
11175	Bakı	Mercedes	E 320	2001	Sedan	Qara	3.2	224	Benzin	180480	Avtomat	Arxa	f	15000	8824	4294614	Əmirağa 	(050) 353-93-94	2020-11-18
11190	Bakı	Toyota	Corolla	2006	Universal	Gümüşü	1.4	90	Dizel	245000	Mexaniki	Ön	f	12800	7529	4479958	Elmir 	(050) 742-05-05	2020-11-18
11199	Bakı	Peugeot	407	2006	Sedan	Qara	2	147	Benzin	213213	Avtomat	Ön	f	7900	4647	4479943	Tofik	(055) 787-74-59	2020-11-18
11201	Gədəbəy	PAZ	32054	2001	Avtobus	Ağ	4	250	Dizel	96000	Mexaniki	Tam	f	11000	6471	4479944	Arzuman	(050) 545-69-66	2020-11-18
11202	Bakı	Volkswagen	Passat	2011	Sedan	Ağ	1.8	160	Benzin	145000	Avtomat	Ön	f	14200	8353	4479945	Murad	(050) 660-81-81	2020-11-18
11203	Bakı	Mercedes	190	1990	Sedan	Qara	1.8	109	Benzin	151000	Avtomat	Arxa	f	5500	3235	4479950	Araz	(055) 485-24-42	2020-11-18
11204	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Gümüşü	1.4	109	Benzin	172000	Mexaniki	Ön	f	11800	6941	4478868	Ayaz	(050) 500-60-01	2020-11-18
11184	Bakı	Ford	Focus	2005	Universal	Mavi	1.6	109	Dizel	155000	Mexaniki	Ön	f	11000	6471	4479989	Mirzahid	(077) 484-52-05	2020-11-18
11171	Bakı	Nissan	Pathfinder	2006	Offroader / SUV	Qara	4	269	Benzin	160000	Avtomat	Tam	f	25000	14706	4479973	Yasin	(055) 233-36-32	2020-11-18
11172	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Gümüşü	2.2	170	Dizel	217899	Avtomat	Tam	f	20600	12118	4459340	Nebi	(055) 698-51-02	2020-11-18
11196	Sumqayıt	Mercedes	C 180	1999	Sedan	Tünd qırmızı	1.8	122	Benzin	402345	Avtomat	Arxa	f	10800	6353	4437501	Vüsal	(055) 647-92-67	2020-11-18
11197	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Gümüşü	1.6	116	Benzin	95000	Avtomat	Ön	f	16500	9706	4479971	Fuad	(055) 226-16-12	2020-11-18
11169	Bakı	Ford	Transit	1998	Furqon	Ağ	2.5	96	Dizel	280000	Mexaniki	Arxa	f	15800	9294	4449934	Ramiz	(055) 438-71-11	2020-11-18
11207	Sabirabad	Mercedes	190	1993	Sedan	Ağ	2.3	136	Benzin	328000	Avtomat	Arxa	f	7600	4471	4479951	Kamran	(070) 735-35-05	2020-11-18
11210	Bakı	Fiat	Doblo	2007	Minivan	Göy	1.3	75	Dizel	290000	Mexaniki	Ön	f	11700	6882	4479955	YASAR	(050) 717-71-77	2020-11-18
11214	Mingəçevir	LADA (VAZ)	2106	1992	Sedan	Ağ	1.5	65	Benzin	257000	Mexaniki	Arxa	f	4200	2471	4479963	Ferrux	(077) 441-17-81	2020-11-18
11215	Saatlı	Mercedes	B 180	2010	Hetçbek / Liftbek	Qara	1.7	116	Benzin	80000	Avtomat	Ön	f	13500	7941	4479964	Tofiq	(051) 617-06-83	2020-11-18
11216	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	84709	Mexaniki	Arxa	f	6000	3529	4479966	Elvin	(070) 204-00-18	2020-11-18
11217	Şəmkir	Chery	Tiggo	2012	Offroader / SUV	Qara	2	130	Benzin	168000	Avtomat	Tam	f	12500	7353	4479965	Xosror	(050) 340-52-97	2020-11-18
11233	Bakı	Mercedes	E 280	2007	Sedan	Gümüşü	3	231	Benzin	207600	Avtomat	Arxa	f	21800	12824	4449554	Fuad	(055) 377-78-46	2020-11-18
11235	Bakı	Ford	Edge	2011	Offroader / SUV	Ağ	3.5	288	Benzin	220000	Avtomat	Tam	f	28900	17000	4479933	Orxan	(055) 529-92-42	2020-11-18
11237	Bakı	Hyundai	Veracruz	2008	Offroader / SUV	Qara	3	240	Dizel	406000	Avtomat	Tam	f	19500	11471	4479935	Fazil	(055) 210-35-98	2020-11-18
11238	Bakı	LADA (VAZ)	21099	1996	Sedan	Qara	1.5	75	Benzin	253000	Mexaniki	Ön	f	5000	2941	4479936	Həmid	(099) 846-80-00	2020-11-18
11239	Bakı	LADA (VAZ)	2106	1990	Sedan	Ağ	1.6	75	Benzin	180000	Mexaniki	Arxa	f	5500	3235	4479938	Taleh	(050) 413-57-16	2020-11-18
11240	Bakı	Mercedes	C 180	1997	Universal	Gümüşü	1.8	122	Benzin	254179	Mexaniki	Arxa	f	9000	5294	4479939	Elgün	(055) 229-33-33	2020-11-18
11242	Bakı	Volkswagen	Golf	1995	Hetçbek / Liftbek	Gümüşü	1.8	100	Benzin	250000	Avtomat	Ön	f	4500	2647	4479940	Orxan	(077) 391-02-07	2020-11-18
11243	Bakı	Hyundai	Elantra	2013	Sedan	Boz	1.8	150	Benzin	190000	Avtomat	Ön	f	19500	11471	4479941	Fuad	(055) 444-00-47	2020-11-18
11244	Bakı	LADA (VAZ)	2107	1983	Sedan	Ağ	1.5	65	Benzin	220000	Mexaniki	Arxa	f	2500	1471	4479906	Satan	(050) 587-70-55	2020-11-18
11246	Bakı	Kia	Cerato	2010	Sedan	Qara	2	150	Benzin	200000	Avtomat	Ön	f	15300	9000	4479907	Hesen	(077) 766-69-59	2020-11-18
11248	Gəncə	Opel	Vectra	2000	Sedan	Gümüşü	1.8	125	Benzin	222000	Mexaniki	Ön	f	7600	4471	4308704	Rauf	(055) 810-03-78	2020-11-18
11249	Gəncə	GAZ	31105	2006	Sedan	Qızılı	2.5	131	Benzin	220134	Mexaniki	Arxa	f	6700	3941	4479913	Sahib	(055) 286-91-10	2020-11-18
11251	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Qara	2.7	188	Benzin	160000	Avtomat	Tam	f	21900	12882	4479915	Rüfət	(055) 529-29-77	2020-11-18
11253	Xırdalan	Chevrolet	Aveo	2011	Sedan	Ağ	1.2	86	Benzin	230000	Mexaniki	Ön	f	10000	5882	4460549	Rüfət	(050) 573-82-37	2020-11-18
11256	Sabirabad	LADA (VAZ)	2107	2006	Sedan	Ağ	1.5	65	Benzin	170000	Mexaniki	Arxa	f	5500	3235	4479923	Elvin	(055) 349-13-83	2020-11-18
11257	Bakı	LADA (VAZ)	2107	2011	Sedan	Qara	1.6	75	Benzin	122270	Mexaniki	Arxa	f	7800	4588	4479924	Azer	(050) 586-55-62	2020-11-18
11262	Sumqayıt	Chevrolet	Captiva	2007	Offroader / SUV	Gümüşü	2	150	Dizel	160000	Avtomat	Tam	f	17000	10000	4479931	Vahid	(050) 499-82-79	2020-11-18
11277	Astara	LADA (VAZ)	2107	1994	Sedan	Ağ	1.5	65	Benzin	30450	Mexaniki	Arxa	f	3800	2235	4479897	Asif	(050) 474-79-27	2020-11-18
11278	Zaqatala	LADA (VAZ)	2110	2011	Sedan	Boz	1.6	80	Benzin	112400	Mexaniki	Ön	f	10800	6353	4461578	Oqtay	(070) 888-19-84	2020-11-18
11281	Bakı	LADA (VAZ)	Niva	2012	Offroader / SUV	Ağ	1.7	80	Benzin	215727	Mexaniki	Tam	f	8400	4941	4479881	Nihad	(070) 835-18-85	2020-11-18
11282	Bakı	LADA (VAZ)	21099	1996	Sedan	Tünd qırmızı	1.5	75	Benzin	200000	Mexaniki	Ön	f	4600	2706	4359736	Elmin	(051) 551-57-59	2020-11-18
11285	Kürdəmir	Ford	Transit	2002	Furqon	Ağ	2	96	Dizel	300003	Mexaniki	Ön	f	13800	8118	4288637	IQBAL	(050) 589-34-99	2020-11-18
11286	Bakı	Mercedes	GLE 450	2016	Offroader / SUV	Gümüşü	3	367	Benzin	85000	Avtomat	Tam	f	130900	77000	3983625	Yusif	(050) 210-30-31	2020-11-18
11287	Bakı	Kia	Sportage	2011	Offroader / SUV	Qara	2	166	Benzin	192000	Avtomat	Tam	f	24500	14412	4479888	Əsgər	(050) 292-19-77	2020-11-18
11294	Sumqayıt	Mercedes	E 200	1992	Sedan	Ağ	2	150	Benzin	320000	Avtomat	Arxa	f	6400	3765	4458544	Isi	(070) 852-11-40	2020-11-18
11295	Bakı	Nissan	Note	2008	Minivan	Yaş Asfalt	1.5	88	Dizel	145000	Mexaniki	Ön	f	11500	6765	4479899	Ceyhun	(070) 995-67-67	2020-11-18
11296	Bakı	LADA (VAZ)	2107	2004	Sedan	Ağ	1.5	65	Benzin	111122	Mexaniki	Arxa	f	5800	3412	4479900	Qehraman 	(051) 391-60-57	2020-11-18
11297	Bakı	Chevrolet	Cruze	2012	Sedan	Qırmızı	1.4	141	Benzin	165000	Avtomat	Ön	f	15500	9118	4479898	Habil	(050) 764-39-02	2020-11-18
11303	Bərdə	LADA (VAZ)	Niva	2015	Offroader / SUV	Göy	1.7	80	Benzin	33004	Mexaniki	Tam	f	11200	6588	4479879	Xeyal	(050) 782-13-84	2020-11-18
11305	Gədəbəy	Mercedes	Sprinter 316	2011	Furqon	Qırmızı	2.2	125	Dizel	225000	Mexaniki	Arxa	f	26500	15588	4479878	Elmar	(055) 567-02-02	2020-11-18
11311	Bakı	Chevrolet	Niva	2006	Offroader / SUV	Gümüşü	1.7	80	Benzin	425416	Mexaniki	Tam	f	7000	4118	4479863	Nihad	(055) 200-86-66	2020-11-18
11313	Bakı	Mercedes	Vito 111	2004	Minivan	Göy	2.2	109	Dizel	422465	Avtomat	Arxa	f	18500	10882	4479852	Saleh	(055) 513-27-20	2020-11-18
11314	Qax	LADA (VAZ)	2104	1993	Universal	Sarı	1.6	75	Benzin	300000	Mexaniki	Arxa	f	2900	1706	4479854	Elnur	(070) 601-94-00	2020-11-18
11315	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.6	170	Benzin	233000	Avtomat	Arxa	f	15700	9235	4479861	Maftun	(051) 996-99-79	2020-11-18
11316	Bakı	Lexus	GS 300	2007	Sedan	Ağ	3	249	Benzin	195000	Avtomat	Arxa	f	19000	11176	4479858	Mirhacı	(051) 455-25-25	2020-11-18
11317	Gəncə	Mercedes	208 D	1993	Mikroavtobus	Yaşıl	2.3	94	Dizel	654456	Mexaniki	Arxa	f	8000	4706	4479869	Arzu	(055) 673-77-75	2020-11-18
11318	Bakı	BMW	750	2010	Sedan	Qara	4.4	407	Benzin	142000	Avtomat	Arxa	f	33150	19500	4399260	Aga	(077) 500-99-00	2020-11-18
11319	Bakı	Opel	Astra	2006	Universal	Gümüşü	1.4	90	Benzin	325000	Mexaniki	Ön	f	10900	6412	4479872	Əli	(050) 299-69-49	2020-11-18
11324	Bakı	LADA (VAZ)	Kalina	2015	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	73000	Mexaniki	Ön	f	12000	7059	4479877	Seymur M.	(070) 332-96-18	2020-11-18
11332	Bakı	Hyundai	Veloster	2012	Hetçbek / Liftbek	Ağ	1.6	138	Benzin	65000	Avtomat	Ön	f	17000	10000	4479843	Resad	(055) 792-63-85	2020-11-18
11333	Bakı	Khazar	LX	2018	Sedan	Ağ	1.7	110	Qaz	93000	Mexaniki	Tam	f	13000	7647	4143110	Əhməd	(055) 751-38-93	2020-11-18
11337	Şamaxı	LADA (VAZ)	2107	2005	Sedan	Ağ	1.6	75	Benzin	185000	Mexaniki	Arxa	f	5800	3412	4479847	Səid	(070) 222-27-46	2020-11-18
11339	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qara	1.5	76	Hibrid	167800	Avtomat	Ön	f	11200	6588	4479850	azer	(055) 348-20-03	2020-11-18
11346	Bakı	Hyundai	Genesis Coupe	2010	Kupe	Qırmızı	2	213	Benzin	135000	Avtomat	Ön	f	18500	10882	4392375	SƏMƏD	(070) 857-66-67	2020-11-18
11347	Bakı	Daewoo	Nexia	2010	Sedan	Gümüşü	1.5	75	Benzin	278000	Mexaniki	Ön	f	7000	4118	4380419	İsmayıl	(050) 425-00-52	2020-11-18
11349	Bakı	Hyundai	Elantra	2011	Sedan	Ağ	1.8	150	Benzin	120000	Avtomat	Ön	f	18500	10882	4479809	Sehran	(055) 944-44-40	2020-11-18
11350	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Boz	1.8	125	Benzin	201000	Avtomat	Ön	f	11700	6882	4479812	Zaur	(099) 350-20-80	2020-11-18
11351	Lənkəran	Mercedes	C 180	1997	Sedan	Bənövşəyi	1.8	122	Benzin	150456	Avtomat	Arxa	f	9800	5765	4479813	Zebi	(051) 669-27-43	2020-11-18
11352	Bakı	Tofas	Dogan	2004	Sedan	Boz	1.6	86	Benzin	100000	Mexaniki	Arxa	f	5500	3235	4479822	anar	(055) 385-84-85	2020-11-18
11353	Sabirabad	Chevrolet	Captiva	2012	Offroader / SUV	Ağ	2.4	167	Benzin	170000	Avtomat	Tam	f	19100	11235	4479823	Səyid 	(050) 692-50-50	2020-11-18
11354	Bərdə	LADA (VAZ)	2107	1988	Sedan	Ağ	1.5	65	Benzin	200000	Mexaniki	Arxa	f	3200	1882	4479826	sahib	(050) 399-66-27	2020-11-18
11355	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Benzin	241401	Avtomat	Ön	f	12400	7294	4479827	ilkin	(050) 374-55-01	2020-11-18
11356	Şabran	LADA (VAZ)	2109	1998	Hetçbek / Liftbek	Gümüşü	1.5	75	Benzin	213000	Mexaniki	Ön	f	5500	3235	4479830	Vüqar	(077) 714-24-24	2020-11-18
11357	Bakı	LADA (VAZ)	2102	1984	Universal	Yaşıl	1.5	65	Benzin	100000	Mexaniki	Arxa	f	3200	1882	4479831	Tural	(055) 599-96-46	2020-11-18
11358	Neftçala	ZIL	130	1989	Yük maşını	Göy	6	156	Dizel	328458	Mexaniki	Arxa	f	7500	4412	4479751	Atas	(070) 392-86-25	2020-11-18
11359	Bakı	Opel	Astra	2009	Hetçbek / Liftbek	Ağ	1.4	90	Benzin	182000	Mexaniki	Ön	f	11500	6765	4479811	Ferid	(050) 397-76-91	2020-11-18
11360	Bakı	BMW	X5	2007	Offroader / SUV	Boz	3	306	Dizel	280000	Avtomat	Tam	f	32500	19118	4478968	farid	(070) 998-12-13	2020-11-18
11361	Bakı	Mercedes	E 320	2004	Sedan	Qara	3.2	224	Benzin	292000	Avtomat	Arxa	f	18800	11059	4427979	Muxtar	(055) 555-28-54	2020-11-18
11362	Ağcabədi	Toyota	Prado	2008	Offroader / SUV	Ağ	2.7	167	Benzin	160000	Avtomat	Tam	f	34000	20000	4479835	Tehmasib	(070) 701-70-08	2020-11-18
11363	Bakı	Mercedes	C 240	2000	Sedan	Ağ	2.4	170	Benzin	198000	Avtomat	Ön	f	13800	8118	4479839	Anar	(051) 226-82-98	2020-11-18
11365	Lənkəran	LADA (VAZ)	2107	1999	Sedan	Ağ	1.5	65	Benzin	333333	Mexaniki	Arxa	f	5700	3353	4479840	Kamran	(050) 462-91-91	2020-11-18
11378	Bakı	Iran Khodro	Runna	2013	Sedan	Ağ	1.6	107	Benzin	16900	Mexaniki	Ön	f	7500	4412	4479780	 kazim 	(070) 284-60-65	2020-11-18
11379	Bakı	Mercedes	190	1992	Sedan	Göy	1.8	109	Benzin	299000	Avtomat	Arxa	f	6600	3882	4479782	Əli	(050) 628-28-97	2020-11-18
11381	Bakı	Chevrolet	Trax	2017	Offroader / SUV	Ağ	1.4	140	Benzin	61000	Avtomat	Ön	f	21900	12882	4479772	Mehman	(070) 270-37-73	2020-11-18
11382	Şamaxı	LADA (VAZ)	2106	1991	Sedan	Bej	1.5	65	Benzin	80000	Mexaniki	Arxa	f	4200	2471	4479789	Rəşadət	(050) 858-74-00	2020-11-18
11383	Bərdə	Khazar	LX	2019	Sedan	Göy	1.7	113	Benzin	20000	Mexaniki	Ön	f	14000	8235	4479795	Ramil	(050) 852-00-32	2020-11-18
11385	Bakı	Nissan	Tiida	2007	Hetçbek / Liftbek	Bənövşəyi	1.6	110	Benzin	251000	Avtomat	Ön	f	12000	7059	4479802	Yusif	(055) 520-56-46	2020-11-18
11386	Mingəçevir	Mercedes	190	1991	Sedan	Yaş Asfalt	1.8	109	Benzin	403608	Avtomat	Arxa	f	6000	3529	4479807	Cavid	(055) 618-03-34	2020-11-18
11387	Bakı	LADA (VAZ)	Priora	2017	Sedan	Ağ	1.6	106	Benzin	107000	Mexaniki	Ön	f	13800	8118	4443348	Yunis	(055) 508-33-35	2020-11-18
11388	Bakı	Mercedes	E 240	1998	Sedan	Göy	2.4	177	Benzin	402000	Avtomat	Arxa	f	11900	7000	4395104	Ramin	(070) 281-13-53	2020-11-18
11389	Bakı	Hyundai	Santa Fe	2009	Offroader / SUV	Ağ	2	184	Dizel	63000	Avtomat	Ön	f	21000	12353	4424901	Elcin	(055) 336-09-59	2020-11-18
11390	Bakı	Mitsubishi	ASX	2013	Offroader / SUV	Ağ	1.8	140	Benzin	92358	Avtomat	Ön	f	21500	12647	4479717	Anar	(070) 230-99-96	2020-11-18
11391	Bakı	Opel	Astra	2010	Hetçbek / Liftbek	Göy	1.4	90	Benzin	154750	Mexaniki	Ön	f	11000	6471	4479726	Elvin	(070) 251-19-90	2020-11-18
11392	Bakı	BMW	535	2014	Sedan	Qara	3	306	Benzin	109000	Avtomat	Arxa	f	62050	36500	4133363	Qiyas	(051) 561-91-92	2020-11-18
11393	Bakı	Ford	Focus	2003	Universal	Ağ	2	144	Benzin	140000	Avtomat	Ön	f	6900	4059	4159059	Salman	(070) 528-18-88	2020-11-18
11394	Masallı	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	160000	Mexaniki	Tam	f	9900	5824	4479737	Turqud	(077) 344-77-66	2020-11-18
11395	Sumqayıt	Mercedes	190	1992	Sedan	Qara	2	122	Benzin	753333	Mexaniki	Arxa	f	7000	4118	4479738	Aga	(055) 404-34-20	2020-11-18
11396	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	140000	Mexaniki	Tam	f	11000	6471	4479744	İsa	(055) 267-68-01	2020-11-18
11397	Bakı	Toyota	Prius	2013	Hetçbek / Liftbek	Ağ	1.8	99	Hibrid	120000	Avtomat	Ön	f	19600	11529	4479745	Emil	(051) 877-73-37	2020-11-18
11398	Şəki	LADA (VAZ)	2107	2010	Sedan	Yaş Asfalt	1.6	75	Benzin	63000	Mexaniki	Arxa	f	9200	5412	4479746	Anar	(055) 855-90-80	2020-11-18
11399	Şəki	Audi	Q7	2006	Offroader / SUV	Ağ	4.2	350	Benzin	160000	Avtomat	Tam	f	26850	15794	4479747	Şirin	(051) 338-55-43	2020-11-18
11400	Quba	Mercedes	Vito	1999	Van	Gümüşü	2.3	150	Benzin	32000	Mexaniki	Ön	f	15200	8941	4479754	Elcin	(070) 597-95-55	2020-11-18
11401	Sumqayıt	Hyundai	Sonata	2016	Sedan	Ağ	2.4	178	Benzin	95000	Avtomat	Ön	f	22700	13353	4479756	Roma	(077) 377-02-85	2020-11-18
11402	Bakı	Kia	Optima	2009	Sedan	Ağ	2	143	Benzin	229000	Avtomat	Ön	f	15200	8941	4479760	Nadir	(070) 539-39-89	2020-11-18
11403	İsmayıllı	Moskvich	408	1971	Sedan	Yaşıl	1.5	75	Benzin	100000	Mexaniki	Arxa	f	1200	706	4479763	Xeyal	(055) 868-96-11	2020-11-18
11405	Cəlilabad	LADA (VAZ)	Niva	1984	Offroader / SUV	Ağ	1.6	75	Benzin	248548	Mexaniki	Tam	f	5200	3059	4479765	Ferid	(050) 629-64-64	2020-11-18
11406	Bakı	Chevrolet	Cruze	2014	Sedan	Qara	1.4	141	Benzin	165000	Avtomat	Arxa	f	16000	9412	4479766	Nicat	(050) 440-04-04	2020-11-18
11412	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	120000	Mexaniki	Arxa	f	7300	4294	4480138	Vəliş	(099) 884-00-09	2020-11-18
11422	Qazax	LADA (VAZ)	2107	2004	Sedan	Ağ	1.6	75	Benzin	180000	Mexaniki	Arxa	f	3900	2294	4480153	Osman	(055) 394-52-32	2020-11-18
11443	Bakı	BMW	X6	2014	Offroader / SUV	Qara	4.4	450	Benzin	53000	Avtomat	Tam	f	110500	65000	4436389	Elçin	(050) 697-66-00	2020-11-18
11448	Bakı	Nissan	Qashqai	2010	Offroader / SUV	Gümüşü	1.5	110	Dizel	183000	Mexaniki	Ön	f	18700	11000	4480150	Kerim	(050) 300-42-52	2020-11-18
11445	Bakı	Nissan	Sentra	2017	Sedan	Gümüşü	1.8	130	Benzin	90000	Avtomat	Ön	f	21300	12529	4422494	Terlan	(070) 607-07-88	2020-11-18
11447	Bakı	Khazar	LX	2020	Sedan	Ağ	1.7	113	Benzin	24000	Mexaniki	Ön	f	16000	9412	4480155	Turan	(050) 518-06-68	2020-11-18
5304	Bakı	Nissan	Tiida	2010	Hetçbek / Liftbek	Göy	1.6	109	Benzin	181000	Avtomat	Ön	f	12000	7059	4438165	Hacı	(050) 640-02-01	2020-11-17
11428	Sumqayıt	Mercedes	E 270	2000	Sedan	Gümüşü	2.7	170	Dizel	392143	Avtomat	Arxa	f	17900	10529	4480129	Dadas	(050) 207-41-04	2020-11-18
11431	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	136000	Mexaniki	Ön	f	11300	6647	4415471	Rasim	(055) 200-83-48	2020-11-18
11435	Biləsuvar	LADA (VAZ)	Niva	2013	Offroader / SUV	Göy	1.7	80	Benzin	82000	Mexaniki	Tam	f	10800	6353	4479969	Rövşən 	(051) 640-27-32	2020-11-18
11437	Quba	LADA (VAZ)	Niva	2012	Offroader / SUV	Qara	1.7	80	Benzin	164000	Mexaniki	Tam	f	11500	6765	4480136	Fərhad	(055) 691-69-68	2020-11-18
11414	Bakı	LADA (VAZ)	Niva	2017	Offroader / SUV	Qara	1.7	80	Benzin	40000	Mexaniki	Tam	f	14300	8412	4480139	Sahib	(055) 338-83-83	2020-11-18
11418	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Göy	1.5	76	Hibrid	183000	Avtomat	Ön	f	12500	7353	4480133	Ramin 	(050) 656-52-38	2020-11-18
11419	Bakı	Mercedes	C 220	1998	Sedan	Ağ	2.2	146	Dizel	260000	Avtomat	Arxa	f	12400	7294	4445342	Huseyn	(055) 301-11-77	2020-11-18
11420	Şamaxı	Chevrolet	Niva	2011	Offroader / SUV	Yaş Asfalt	1.7	80	Benzin	256000	Mexaniki	Tam	f	11800	6941	4480149	Şahin	(055) 215-70-31	2020-11-18
11421	Bakı	Kia	Rio	2013	Sedan	Ağ	1.4	107	Benzin	141200	Mexaniki	Ön	f	14200	8353	4480148	Farman	(050) 243-10-40	2020-11-18
11474	Sumqayıt	Mercedes	C 280	1994	Sedan	Qızılı	2.8	193	Benzin	250000	Avtomat	Arxa	f	6800	4000	4398295	RAMİN	(070) 502-92-52	2020-11-18
11475	Quba	LADA (VAZ)	2112	2005	Hetçbek / Liftbek	Gümüşü	1.6	80	Benzin	333333	Mexaniki	Ön	f	6800	4000	4480117	Emrah	(077) 364-10-62	2020-11-18
11476	Bakı	Volkswagen	Passat	1991	Universal	Ağ	2	150	Benzin	200000	Mexaniki	Ön	f	5000	2941	4480118	İslam	(055) 485-32-09	2020-11-18
11481	Gəncə	Toyota	Land Cruiser	2018	Offroader / SUV	Ağ	4	282	Benzin	28000	Avtomat	Tam	f	116790	68700	4464034	Agil	(055) 209-03-13	2020-11-18
11452	Bakı	Opel	Astra	2001	Hetçbek / Liftbek	Gümüşü	1.8	110	Benzin	205000	Avtomat	Ön	f	9800	5765	4480134	Aydin	(050) 432-51-49	2020-11-18
11463	Bakı	Mercedes	Sprinter 316	2012	Mikroavtobus	Ağ	2.7	175	Dizel	400000	Mexaniki	Arxa	f	43000	25294	4480125	Zaman	(050) 550-66-66	2020-11-18
11477	Bakı	Lexus	LX 470	2006	Offroader / SUV	Qara	4.7	275	Benzin	364084	Avtomat	Tam	f	29500	17353	4480116	Tural	(050) 287-48-58	2020-11-18
6989	Bakı	Kia	Optima	2012	Sedan	Qara	2	274	Benzin	87000	Avtomat	Ön	f	24500	14412	4478135	Ramal	(077) 627-00-09	2020-11-17
11486	Bakı	Volkswagen	Touareg	2011	Offroader / SUV	Bej	3.6	280	Benzin	197000	Avtomat	Tam	f	37060	21800	4402300	Səbuhi	(050) 437-37-77	2020-11-18
11514	Bakı	BMW	528	2012	Sedan	Yaş Asfalt	2	245	Benzin	79300	Avtomat	Arxa	f	31280	18400	4428626	Elçin	(050) 213-65-60	2020-11-18
11516	Bakı	BMW	535	2013	Sedan	Qara	3	306	Benzin	171000	Avtomat	Tam	f	41650	24500	4411754	RAMİN	(051) 626-60-00	2020-11-18
11487	Bakı	Hyundai	Sonata	2012	Sedan	Ağ	2	274	Benzin	70000	Avtomat	Ön	f	21000	12353	4468831	Niko	(051) 504-04-38	2020-11-18
11494	Bakı	Kia	Rio	2010	Sedan	Ağ	1.4	97	Benzin	141200	Avtomat	Ön	f	12800	7529	4480115	Zamin 	(055) 355-19-19	2020-11-18
11511	Bakı	Renault	Megane	2006	Universal	Gümüşü	1.5	106	Dizel	165000	Mexaniki	Ön	f	10600	6235	4422956	Vidadi	(051) 799-55-99	2020-11-18
11512	Bakı	Mercedes	E 240	1997	Sedan	Boz	2.4	170	Benzin	354000	Avtomat	Arxa	f	13000	7647	4480088	Elbrus	(055) 701-26-64	2020-11-18
7501	Bakı	LADA (VAZ)	Niva	2015	Offroader / SUV	Ağ	1.7	80	Benzin	66000	Mexaniki	Tam	f	14800	8706	4466812	Cavidan	(050) 593-00-55	2020-11-17
11515	Sumqayıt	Opel	Vectra	1993	Sedan	Göy	1.8	125	Benzin	335000	Avtomat	Ön	f	5300	3118	4480087	elmeddin	(099) 808-00-39	2020-11-18
11518	Bakı	LADA (VAZ)	Niva	2017	Offroader / SUV	Göy	1.7	80	Benzin	116000	Mexaniki	Tam	f	12900	7588	4480100	Həsən	(051) 969-55-00	2020-11-18
11519	Sabirabad	LADA (VAZ)	2106	1977	Sedan	Ağ	1.6	75	Benzin	230700	Mexaniki	Arxa	f	3200	1882	4480094	Samir	(050) 563-26-85	2020-11-18
11520	Bakı	Infiniti	FX35	2010	Offroader / SUV	Göy	3.5	307	Benzin	189000	Avtomat	Tam	f	30500	17941	4480101	Ali	(055) 212-03-33	2020-11-18
11485	Bakı	Mercedes	C 180	1998	Universal	Gümüşü	1.8	122	Benzin	389000	Mexaniki	Arxa	f	9450	5559	4480110	Vusal	(077) 443-47-12	2020-11-18
11508	Bakı	Nissan	X-Trail	2009	Offroader / SUV	Ağ	2.5	175	Benzin	223446	Avtomat	Tam	f	17500	10294	4480084	Yusif	(055) 525-53-13	2020-11-18
11509	Qəbələ	LADA (VAZ)	2101	1984	Sedan	Tünd qırmızı	1.5	65	Benzin	333330	Mexaniki	Arxa	f	3600	2118	4480086	Nurlan	(051) 662-33-22	2020-11-18
11061	Bakı	Mercedes	Vito 115	2010	Van	Gümüşü	2.2	150	Dizel	201522	Avtomat	Ön	f	28900	17000	4369227	ZAUR	(050) 557-07-51	2020-11-18
11524	Bakı	LADA (VAZ)	2106	1986	Sedan	Bej	1.6	75	Benzin	250000	Mexaniki	Arxa	f	6800	4000	4480077	Rufet	(055) 505-03-68	2020-11-18
11527	Bakı	Toyota	Prado	2009	Offroader / SUV	Ağ	2.7	167	Benzin	252190	Avtomat	Tam	f	36040	21200	4480080	Ələkbər	(050) 311-01-27	2020-11-18
11534	Bakı	Toyota	Camry	2008	Sedan	Gümüşü	2.4	167	Benzin	255000	Avtomat	Ön	f	17000	10000	4404490	Elcin	(077) 589-70-70	2020-11-18
11542	Bakı	LADA (VAZ)	2107	2009	Sedan	Ağ	1.6	75	Benzin	15356	Mexaniki	Arxa	f	6300	3706	4480102	Vuqar	(070) 833-39-34	2020-11-18
11543	Bakı	Volkswagen	Caravelle	2008	Minivan	Qara	2.5	180	Dizel	160000	Avtomat	Ön	f	39950	23500	4480103	İlham	(070) 203-01-02	2020-11-18
11525	Sumqayıt	Mercedes	S 320	1998	Sedan	Qara	3.2	224	Benzin	210320	Avtomat	Arxa	f	12500	7353	4480079	Ayaz	(070) 438-78-48	2020-11-18
11526	Bakı	Mitsubishi	Pajero	2013	Offroader / SUV	Qara	3.5	202	Benzin	93000	Avtomat	Tam	f	33600	19765	4334049	Fexreddin	(050) 632-24-77	2020-11-18
11530	Bakı	Chevrolet	Cruze	2010	Sedan	Qırmızı	1.4	141	Benzin	198000	Avtomat	Ön	f	11799	6941	4392287	Əli 	(050) 254-15-77	2020-11-18
11531	Sumqayıt	Kia	Ceed	2007	Universal	Gümüşü	1.6	115	Dizel	165000	Mexaniki	Ön	f	13400	7882	4480073	Azər	(055) 939-89-95	2020-11-18
11555	Bakı	Kia	Ceed	2007	Universal	Boz	1.6	106	Dizel	204058	Mexaniki	Ön	f	12800	7529	4479161	Bextiyar	(055) 868-20-98	2020-11-18
11556	Bakı	Ford	Transit	2007	Furqon	Ağ	2.4	140	Dizel	305000	Mexaniki	Arxa	f	21900	12882	4438999	Nihal	(070) 600-64-62	2020-11-18
11557	Bakı	Mercedes	C 220	1995	Sedan	Qara	2.2	143	Benzin	269800	Avtomat	Arxa	f	6900	4059	4480068	Baba	(050) 702-09-88	2020-11-18
11521	Bakı	Hyundai	H 100	1996	Minivan	Göy	2.5	80	Benzin	253800	Mexaniki	Arxa	f	6300	3706	4480076	Roma	(055) 450-60-40	2020-11-18
11522	Bakı	Mercedes	C 240	2000	Sedan	Göy	2.4	170	Benzin	197000	Avtomat	Arxa	f	12500	7353	4480074	Omer	(055) 732-40-77	2020-11-18
11034	Bakı	Ford	Fusion	2014	Sedan	Qara	1.5	181	Benzin	151000	Avtomat	Ön	f	18000	10588	4426498	Davud	(077) 305-30-17	2020-11-18
11574	Bakı	Land Rover	Range Rover	2012	Offroader / SUV	Qara	5	510	Benzin	83000	Avtomat	Tam	f	60520	35600	4389218	Akşin	(051) 500-01-00	2020-11-18
1545	Bakı	BMW	520	1998	Sedan	Qara	2	150	Benzin	342000	Avtomat	Arxa	f	8300	4882	4353601	Şirxan	(055) 531-44-90	2020-11-17
11595	Mingəçevir	Mercedes	Vito 115	2007	Van	Gümüşü	2.2	150	Dizel	440000	Mexaniki	Arxa	f	28800	16941	4480194	Emin	(070) 606-90-90	2020-11-18
11596	Bakı	SEAT	Ibiza	2014	Universal	Ağ	1.4	98	Benzin	98000	Mexaniki	Ön	f	11200	6588	4480196	Tural	(070) 750-01-77	2020-11-18
11597	Bakı	Fiat	Doblo	2009	Minivan	Ağ	1.3	98	Dizel	222222	Mexaniki	Ön	f	12500	7353	4472397	Xayal	(055) 280-52-23	2020-11-18
7382	Bakı	Opel	Astra	2007	Universal	Gümüşü	1.6	116	Benzin	186354	Mexaniki	Ön	f	13200	7765	4268862	Nurlan	(055) 965-65-44	2020-11-17
1205	Bakı	Chevrolet	Cruze	2012	Sedan	Qızılı	1.4	141	Benzin	144679	Avtomat	Ön	f	13100	7706	4469836	Elcin	(055) 424-54-20	2020-11-17
7664	Bakı	Nissan	Patrol	2008	Offroader / SUV	Qara	3	170	Dizel	324959	Avtomat	Tam	f	30000	17647	4457225	Elanin sahibi	(050) 332-07-07	2020-11-17
11599	Bakı	Toyota	Prado	2010	Offroader / SUV	Gümüşü	4	250	Benzin	113000	Avtomat	Tam	f	51850	30500	4480202	Farid	(050) 222-16-22	2020-11-18
11600	Bakı	Iran Khodro	Azsamand	2007	Sedan	Qəhvəyi	1.8	110	Benzin	250000	Mexaniki	Ön	f	6000	3529	4480203	Terlan	(055) 999-82-59	2020-11-18
11601	Bakı	BMW	525	1995	Sedan	Qara	2.5	192	Benzin	58421	Mexaniki	Arxa	f	9500	5588	4461036	Elnur	(050) 656-45-38	2020-11-18
7107	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Göy	1.6	101	Benzin	202000	Avtomat	Ön	f	8400	4941	4478019	Əli	(070) 277-49-00	2020-11-17
11605	Bakı	Ford	Fusion	2014	Sedan	Gümüşü	1.5	181	Benzin	102000	Avtomat	Ön	f	18500	10882	4438169	Çingiz	(050) 225-22-30	2020-11-18
11606	Bakı	Chevrolet	Malibu	2016	Sedan	Mavi	1.5	181	Benzin	70300	Avtomat	Ön	f	20500	12059	4480189	Elshen	(050) 314-66-88	2020-11-18
4124	Bakı	Opel	Astra	1998	Universal	Boz	1.6	101	Benzin	426000	Mexaniki	Ön	f	8400	4941	4470747	Tural	(070) 801-09-54	2020-11-17
11609	Bakı	Toyota	Prius	2009	Hetçbek / Liftbek	Ağ	1.5	76	Hibrid	125000	Avtomat	Ön	f	11900	7000	4480190	Sabir	(055) 674-60-92	2020-11-18
3341	Bakı	Hyundai	Elantra	2015	Sedan	Göy	1.8	150	Benzin	110000	Avtomat	Ön	f	18100	10647	4399559	perviz	(050) 643-93-69	2020-11-17
7380	Bakı	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Ağ	1.6	106	Benzin	138000	Mexaniki	Ön	f	10700	6294	4433754	Nurlan	(077) 271-02-40	2020-11-17
2982	Bakı	LADA (VAZ)	Niva	2018	Offroader / SUV	Qara	1.7	80	Benzin	23000	Mexaniki	Tam	f	16400	9647	4459189	ELCAN	(050) 627-77-58	2020-11-17
6887	Bakı	Mercedes	E 280	2006	Sedan	Ağ	3	231	Benzin	104000	Avtomat	Arxa	f	26000	15294	4469941	Əli	(050) 524-14-61	2020-11-17
2070	Bakı	Hyundai	Sonata	2013	Sedan	Gümüşü	2	274	Benzin	71000	Avtomat	Ön	f	19800	11647	4450159	Senan	(050) 393-90-76	2020-11-17
2078	Bakı	Toyota	Corolla	2015	Sedan	Yaş Asfalt	1.8	170	Benzin	42000	Avtomat	Ön	f	22800	13412	4411566	ZAHİD	(050) 395-61-54	2020-11-17
11626	Bakı	Chevrolet	Malibu	2016	Sedan	Gümüşü	1.5	181	Benzin	44000	Avtomat	Ön	f	18900	11118	4480207	Ruslan	(070) 884-02-01	2020-11-18
11629	Bakı	Mercedes	E 250	2017	Sedan	Boz	2	211	Benzin	64500	Avtomat	Arxa	f	92500	54412	4480210	Anar	(055) 682-90-60	2020-11-18
11630	Xırdalan	Opel	Vectra	2000	Sedan	Gümüşü	1.8	125	Benzin	321485	Mexaniki	Ön	f	6900	4059	4480212	Ramin	(050) 752-42-64	2020-11-18
11634	Bakı	Kia	Cerato	2010	Sedan	Gümüşü	1.6	115	Dizel	54000	Avtomat	Ön	f	16000	9412	4480181	Fariz	(055) 355-53-35	2020-11-18
11636	Bakı	Great Wall	Voleex C30	2014	Sedan	Ağ	1.5	120	Benzin	170000	Mexaniki	Ön	f	9000	5294	4480183	Turxan	(070) 207-27-66	2020-11-18
7421	Bakı	Hyundai	ix35	2013	Offroader / SUV	Qara	2	166	Benzin	60000	Avtomat	Ön	f	25800	15176	4462411	Mehman	(055) 782-46-11	2020-11-17
11641	Bakı	Mercedes	190	1990	Sedan	Bej	2	122	Benzin	358000	Avtomat	Arxa	f	5500	3235	4480188	Nadir	(051) 856-62-62	2020-11-18
11642	Bakı	Kia	Soul	2012	Hetçbek / Liftbek	Qəhvəyi	1.6	132	Benzin	130000	Avtomat	Ön	f	16800	9882	4226509	Ehmed	(055) 323-71-79	2020-11-18
1880	Bakı	Hyundai	Sonata	2006	Sedan	Gümüşü	2.4	161	Benzin	234000	Avtomat	Ön	f	13000	7647	4438975	Elşad	(070) 396-25-10	2020-11-17
7805	Yevlax	Nissan	Tiida	2010	Sedan	Ağ	1.8	126	Benzin	117000	Avtomat	Ön	f	15800	9294	4460329	Tural	(055) 924-29-30	2020-11-17
11656	Bakı	Opel	Astra	1998	Hetçbek / Liftbek	Göy	1.6	101	Benzin	457892	Mexaniki	Ön	f	7600	4471	4480174	Ruslan	(077) 327-77-56	2020-11-18
11660	Gəncə	LADA (VAZ)	21013	1986	Sedan	Bej	1.6	75	Benzin	200000	Mexaniki	Arxa	f	5800	3412	4480178	Arif	(050) 578-70-80	2020-11-18
11661	Bakı	Mercedes	E 240	2000	Sedan	Gümüşü	2.4	170	Benzin	293000	Avtomat	Arxa	f	14700	8647	4348117	Amal	(070) 228-33-73	2020-11-18
839	Bakı	Nissan	Tiida	2010	Hetçbek / Liftbek	Ağ	1.8	125	Benzin	110400	Avtomat	Ön	f	14900	8765	4450075	Tural	(050) 697-84-62	2020-11-17
6168	Bakı	Hyundai	Elantra	2010	Sedan	Göy	1.8	150	Benzin	169469	Avtomat	Ön	f	20500	12059	4443163	Elcin	(050) 968-27-68	2020-11-17
11666	Bakı	BMW	525	1992	Sedan	Qara	2.5	192	Dizel	500000	Avtomat	Arxa	f	4900	2882	4480184	Ramil	(070) 256-23-03	2020-11-18
11667	Bakı	Mercedes	E 350	2011	Sedan	Ağ	3.5	272	Benzin	137573	Avtomat	Tam	f	37910	22300	4480166	Perviz	(055) 363-33-36	2020-11-18
11668	Şəki	BMW	325	2002	Sedan	Qara	2.5	192	Benzin	160000	Avtomat	Arxa	f	16000	9412	3453611	Rauf	(050) 563-60-74	2020-11-18
11673	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Gümüşü	1.4	90	Benzin	185000	Mexaniki	Ön	f	10900	6412	4439098	Nihat	(070) 284-84-81	2020-11-18
11674	Bakı	Hyundai	ix35	2013	Offroader / SUV	Ağ	2	166	Benzin	94000	Avtomat	Tam	f	24200	14235	4431195	Mikayil	(050) 320-01-54	2020-11-18
11676	Bakı	Land Rover	Range Rover	2010	Offroader / SUV	Qara	5	510	Benzin	156000	Avtomat	Tam	f	48450	28500	4463849	Elcin	(077) 422-50-58	2020-11-18
3006	Bakı	Renault	Megane	2007	Universal	Gümüşü	1.5	106	Dizel	221000	Mexaniki	Ön	f	10800	6353	4473395	Elnur	(055) 420-79-41	2020-11-17
11678	Bakı	Opel	Astra	2007	Hetçbek / Liftbek	Gümüşü	1.3	90	Dizel	134000	Mexaniki	Ön	f	11500	6765	4459198	Nihat	(070) 667-05-04	2020-11-18
4759	Bakı	Hyundai	Santa Fe	2010	Offroader / SUV	Qara	2.2	200	Dizel	338101	Avtomat	Tam	f	23500	13824	4367259	Rauf	(050) 706-13-20	2020-11-17
4272	Bakı	LADA (VAZ)	2103	1978	Sedan	Narıncı	1.3	69	Benzin	221000	Mexaniki	Arxa	f	7000	4118	4421794	Anar	(051) 437-93-93	2020-11-17
11423	Quba	LADA (VAZ)	Niva	2015	Offroader / SUV	Qırmızı	1.7	80	Benzin	132000	Mexaniki	Tam	f	13300	7824	4480154	Rafael	(070) 616-48-26	2020-11-18
11451	Masallı	Mercedes	E 240	2000	Sedan	Yaşıl	2.4	170	Benzin	317482	Avtomat	Arxa	f	15500	9118	4461959	Elman	(050) 418-59-99	2020-11-18
2723	Bakı	Toyota	Prius	2011	Hetçbek / Liftbek	Gümüşü	1.8	136	Benzin	113000	Avtomat	Ön	f	16800	9882	4466845	Namik	(055) 350-55-66	2020-11-17
11701	Bakı	Mercedes	E 240	1998	Sedan	Gümüşü	2.4	170	Benzin	238965	Avtomat	Arxa	f	11600	6824	4475220	Anar	(050) 653-78-49	2020-11-18
3562	Bakı	Kia	Optima	2016	Sedan	Gümüşü	2	150	Qaz	40000	Avtomat	Ön	f	27900	16412	3987696	Руслан	(055) 210-57-94	2020-11-17
3637	Biləsuvar	Kia	Sportage	2011	Offroader / SUV	Ağ	2	150	Benzin	137900	Avtomat	Tam	f	24400	14353	4421616	NURLAN	(050) 338-65-66	2020-11-17
11729	Bakı	Land Rover	Discovery	2018	Offroader / SUV	Qara	2	300	Benzin	45000	Avtomat	Tam	f	102000	60000	4480160	Zaur	(050) 210-41-74	2020-11-18
2454	Bakı	Hyundai	i30	2008	Hetçbek / Liftbek	Qırmızı	1.6	116	Benzin	135000	Avtomat	Ön	f	12400	7294	4462844	Yalçın	(055) 495-15-25	2020-11-17
8852	Bakı	Kia	Optima	2012	Sedan	Qara	2	274	Benzin	97000	Avtomat	Ön	f	22500	13235	4461802	Elvir	(050) 433-50-53	2020-11-18
10079	Bakı	Opel	Corsa	2002	Hetçbek / Liftbek	Göy	1	65	Benzin	295000	Mexaniki	Ön	f	6400	3765	4472330	Ramin	(077) 310-72-71	2020-11-18
1140	İmişli	Mercedes	E 230	1991	Sedan	Gümüşü	2.3	150	Benzin	485000	Avtomat	Arxa	f	6500	3824	4465541	vusal	(055) 362-30-05	2020-11-17
11728	Şəki	Opel	Astra	2005	Hetçbek / Liftbek	Ağ	1.4	100	Benzin	137000	Mexaniki	Ön	f	12000	7059	3913541	Rauf	(055) 836-90-24	2020-11-18
4819	Mingəçevir	Lexus	LS 460	2007	Sedan	Göy	4.6	380	Benzin	215000	Avtomat	Arxa	f	29500	17353	4479005	Sübhan	(077) 553-88-85	2020-11-17
7241	Sumqayıt	Ford	Focus	2014	Hetçbek / Liftbek	Ağ	1.6	126	Benzin	180000	Avtomat	Ön	f	15150	8912	4471606	Саша	(055) 295-00-86	2020-11-17
5521	Bakı	Mercedes	C 180	1997	Sedan	Qara	1.8	122	Benzin	352500	Avtomat	Arxa	f	9600	5647	4418311	Yiysi	(050) 430-48-38	2020-11-17
10974	Bakı	Nissan	Pathfinder	1997	Offroader / SUV	Qızılı	3.3	256	Benzin	256000	Avtomat	Tam	f	7750	4559	4469876	Samir	(055) 338-31-56	2020-11-18
8648	Bakı	BMW	525	1999	Sedan	Gümüşü	2.5	192	Benzin	300000	Avtomat	Arxa	f	11200	6588	4440233	Rovshen	(070) 822-24-79	2020-11-18
6382	Bakı	Mercedes	B 180	2011	Hetçbek / Liftbek	Qara	1.8	116	Benzin	61500	Avtomat	Ön	f	13300	7824	4459140	Araz	(050) 877-38-06	2020-11-17
603	Neftçala	Nissan	Pathfinder	2006	Offroader / SUV	Qara	4	325	Benzin	232000	Avtomat	Tam	f	21000	12353	4414478	ELŞEN	(050) 857-95-59	2020-11-17
1838	Bakı	Chevrolet	Malibu	2016	Sedan	Qara	1.5	181	Benzin	28900	Avtomat	Ön	f	25000	14706	4382062	Rauf	(055) 295-84-84	2020-11-17
7525	Bakı	Chevrolet	Cruze	2014	Sedan	Qırmızı	1.4	141	Benzin	116365	Avtomat	Ön	f	14600	8588	4449240	Elcin	(070) 286-99-09	2020-11-17
11576	Bakı	Hyundai	Santa Fe	2008	Offroader / SUV	Ağ	2	150	Dizel	89000	Avtomat	Ön	f	20500	12059	4480072	Allahverdi	(070) 291-91-03	2020-11-18
8414	Bakı	Toyota	Camry	2015	Sedan	Qara	2.5	181	Benzin	100200	Avtomat	Ön	f	28300	16647	4400740	Fazil	(055) 487-65-93	2020-11-18
4886	Bakı	BMW	535	2011	Sedan	Qara	3	306	Benzin	200000	Avtomat	Arxa	f	39100	21500	4449791	Aziz	(051) 300-00-56	2020-11-17
11021	Bakı	LADA (VAZ)	2115	2011	Sedan	Gümüşü	1.5	75	Benzin	280000	Mexaniki	Ön	f	7200	4235	4480063	Müşviq	(055) 282-00-22	2020-11-18
243	Bakı	Kia	Optima	2016	Sedan	Qara	2	274	Benzin	43000	Avtomat	Ön	f	27900	16412	4441879	Camal	(050) 210-27-84	2020-11-16
1588	Bakı	LADA (VAZ)	Niva	2017	Offroader / SUV	Ağ	1.7	80	Benzin	60000	Mexaniki	Tam	f	16300	9588	4450924	Amil	(055) 599-69-99	2020-11-17
2870	Bakı	Chevrolet	Cruze	2015	Sedan	Qırmızı	1.4	141	Benzin	88000	Avtomat	Ön	f	16000	9412	4473661	Uğur	(055) 817-03-11	2020-11-17
3781	Bakı	Renault	Megane	2009	Universal	Qızılı	1.5	106	Dizel	131000	Mexaniki	Ön	f	11850	6971	4450945	Rizvan	(055) 533-08-09	2020-11-17
3862	Sumqayıt	Infiniti	QX4	2000	Offroader / SUV	Qızılı	3.5	180	Benzin	198800	Avtomat	Tam	f	9500	5588	4449969	Fazil	(055) 735-99-77	2020-11-17
1327	Bakı	Mercedes	Atego 1218	2000	Yük maşını	Ağ	4.3	177	Dizel	266837	Mexaniki	Arxa	f	29500	17353	3997696	Ramil	(055) 395-00-80	2020-11-17
1926	Bakı	LADA (VAZ)	Priora	2015	Sedan	Ağ	1.6	106	Benzin	141000	Mexaniki	Ön	f	20500	12059	4384106	Salman	(055) 653-68-53	2020-11-17
4695	Bakı	Opel	Astra	2005	Universal	Gümüşü	1.4	90	Benzin	136469	Mexaniki	Ön	f	10800	6353	4469197	Bayram	(070) 200-15-30	2020-11-17
11126	Bakı	Mitsubishi	Lancer	2008	Sedan	Qara	2	150	Benzin	171000	Variator	Ön	f	15000	8824	4480005	Kazım	(070) 561-52-20	2020-11-18
1672	Bakı	Toyota	Prius	2007	Hetçbek / Liftbek	Gümüşü	1.5	76	Hibrid	163000	Avtomat	Ön	f	13850	8147	4470795	Arzuman	(070) 654-55-55	2020-11-17
5685	Bakı	Volkswagen	Jetta	2008	Sedan	Qara	1.6	102	Benzin	99000	Avtomat	Ön	f	11800	6941	4275370	Huseyn	(055) 999-51-51	2020-11-17
11162	Bakı	Tofas	Sahin	2005	Sedan	Qara	1.6	86	Benzin	197000	Mexaniki	Arxa	f	5600	3294	4443114	Azər	(070) 246-80-50	2020-11-18
1369	Bakı	Kia	Koup	2011	Kupe	Qara	2	166	Benzin	150000	Avtomat	Ön	f	18000	10588	4464925	Asif	(099) 349-49-00	2020-11-17
6477	Bakı	Hyundai	Terracan	2003	Offroader / SUV	Qara	2.9	163	Dizel	203000	Avtomat	Arxa	f	13900	8176	4460451	Yalçın m.	(055) 219-76-25	2020-11-17
3701	Bakı	Hyundai	Accent	2009	Sedan	Ağ	1.6	112	Benzin	127000	Avtomat	Ön	f	11000	6471	4459709	Tahir	(077) 514-61-06	2020-11-17
12009	Bakı	BMW	525	2009	Sedan	Göy	2.5	218	Benzin	135000	Avtomat	Arxa	f	28900	17000	4429279	Roma	(050) 964-39-70	2020-11-18
12017	Bakı	Land Rover	Range Rover	2005	Offroader / SUV	Qara	4.4	286	Benzin	146000	Avtomat	Tam	f	27500	16176	4480259	Ekber	(050) 763-78-61	2020-11-18
12018	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Qara	1.5	76	Benzin	156000	Avtomat	Ön	f	13200	7765	4480263	Roman	(050) 842-37-72	2020-11-18
12019	Şamaxı	Iran Khodro	Azsamand	2007	Sedan	Yaş Asfalt	1.8	110	Benzin	150000	Mexaniki	Ön	f	4700	2765	4480265	Qismət	(055) 230-39-32	2020-11-18
12020	Bakı	Volkswagen	Jetta	2003	Sedan	Boz	2	136	Benzin	320000	Avtomat	Ön	f	7000	4118	4480264	Oqtay	(070) 657-09-75	2020-11-18
12021	Bakı	BMW	320	2006	Sedan	Qara	2	156	Benzin	155000	Avtomat	Arxa	f	16700	9824	4480258	Yusif	(050) 457-01-50	2020-11-18
12022	Bakı	Hyundai	Sonata	2010	Sedan	Qara	2.4	178	Benzin	192236	Avtomat	Ön	f	17000	10000	4480269	cabir	(077) 345-70-70	2020-11-18
7306	Bakı	Hyundai	Sonata	2013	Sedan	Yaş Asfalt	2.4	178	Benzin	175000	Avtomat	Ön	f	19700	11588	4446302	Hummbet	(050) 285-19-96	2020-11-17
12024	Bakı	Hyundai	Sonata	2014	Sedan	Ağ	2.4	178	Benzin	49000	Avtomat	Ön	f	30500	17941	4480273	Hesen	(070) 722-56-00	2020-11-18
12025	Şirvan	LADA (VAZ)	21099	2003	Sedan	Gümüşü	1.5	75	Benzin	167000	Mexaniki	Ön	f	4000	2353	4480274	Elman	(077) 313-91-58	2020-11-18
3500	Bakı	Mercedes	E 240	2002	Sedan	Gümüşü	2.6	177	Benzin	165000	Avtomat	Arxa	f	19800	11647	4433932	Resad	(050) 868-73-20	2020-11-17
12027	Bakı	Isuzu	D-Max	2019	Pikap	Ağ	3	163	Dizel	0	Mexaniki	Tam	t	49130	28900	4480256	Elnur	(051) 206-13-14	2020-11-18
3066	Bakı	Hyundai	Elantra	2012	Sedan	Göy	1.8	150	Benzin	112000	Avtomat	Arxa	f	16500	9706	4436000	Həsrət	(050) 659-16-96	2020-11-17
12038	Sumqayıt	Mercedes	E 250	2009	Sedan	Boz	2.2	204	Dizel	208000	Avtomat	Arxa	f	27900	16412	4480301	Əli	(055) 363-50-66	2020-11-18
6933	Bakı	Chevrolet	Cruze	2017	Sedan	Ağ	1.4	153	Benzin	46900	Avtomat	Ön	f	18500	10882	4478187	Orxan	(050) 734-00-00	2020-11-17
12041	Bakı	Mercedes	C 240	1997	Sedan	Gümüşü	2.4	170	Benzin	206130	Avtomat	Arxa	f	12400	7294	4480305	Cəlal	(050) 363-75-64	2020-11-18
2344	Xırdalan	BMW	320	2003	Sedan	Yaşıl	2.2	170	Benzin	224000	Mexaniki	Arxa	f	9400	5529	4460846	TƏRLAN	(050) 426-00-19	2020-11-17
12011	Bakı	LADA (VAZ)	2109	1990	Hetçbek / Liftbek	Qara	1.5	78	Benzin	210000	Mexaniki	Ön	f	5800	3412	4480286	Niyazi	(055) 882-80-08	2020-11-18
12015	Xırdalan	Hyundai	Sonata	2007	Sedan	Qara	2.4	174	Benzin	196000	Avtomat	Ön	f	11500	6765	4480295	Mamed	(050) 751-94-23	2020-11-18
12016	Bakı	Mitsubishi	Airtrek	2001	Offroader / SUV	Qırmızı	2	178	Benzin	280000	Avtomat	Ön	f	9300	5471	4260495	Famil	(050) 710-32-32	2020-11-18
12035	Bakı	Tofas	Sahin	2006	Sedan	Qara	1.6	92	Benzin	255000	Mexaniki	Arxa	f	8470	4982	4480294	nurlan	(070) 226-11-19	2020-11-18
12053	Bakı	Mercedes	E 200	2016	Sedan	Qara	2	194	Benzin	199900	Avtomat	Arxa	f	62730	36900	4458931	Oktay	(050) 315-00-10	2020-11-18
12054	Bakı	Lexus	ES 350	2007	Sedan	Qara	3.5	249	Benzin	180000	Avtomat	Ön	f	22100	13000	4480233	Reshad	(050) 339-90-91	2020-11-18
12055	Sumqayıt	Lexus	RX 300	2000	Offroader / SUV	Ağ	3	201	Benzin	185296	Avtomat	Tam	f	11600	6824	4416437	qurban	(070) 804-49-75	2020-11-18
12063	Sabirabad	GAZ	330202-740	1999	Yük maşını	Bej	2.4	100	Benzin	170000	Mexaniki	Arxa	f	5500	3235	4480226	Elxan	(050) 377-66-78	2020-11-18
12064	Bakı	Mitsubishi	L 200	2007	Pikap	Qara	2.5	136	Dizel	397000	Mexaniki	Tam	f	18000	10588	4480231	Togrul	(050) 204-40-87	2020-11-18
12066	Bakı	Toyota	Land Cruiser	2013	Offroader / SUV	Ağ	4	282	Benzin	75000	Avtomat	Tam	f	72250	42500	4458742	Orxan 	(055) 536-55-00	2020-11-18
12068	Bakı	LADA (VAZ)	Niva	1992	Offroader / SUV	Ağ	1.7	80	Benzin	491000	Mexaniki	Tam	f	4900	2882	4480236	Чингиз	(055) 902-47-62	2020-11-18
12069	Bakı	Opel	Astra	2008	Universal	Gümüşü	1.3	90	Dizel	99725	Mexaniki	Ön	f	12500	7353	4443100	Şikayət	(070) 623-25-54	2020-11-18
12071	Bakı	Land Rover	Range Rover	2018	Offroader / SUV	Qara	3	360	Benzin	38500	Avtomat	Tam	f	176800	104000	4337825	Ali	(050) 822-66-97	2020-11-18
12072	Bakı	Kia	Avella	1996	Sedan	Mavi	1.5	92	Benzin	380000	Mexaniki	Ön	f	4600	2706	4480237	Etibar	(050) 753-24-91	2020-11-18
7338	Gəncə	BMW	X5	2001	Offroader / SUV	Qara	3	231	Benzin	285520	Avtomat	Arxa	f	14500	8529	4324312	Eyvaz	(055) 233-16-76	2020-11-17
12076	Bakı	Infiniti	FX35	2011	Offroader / SUV	Qara	3.5	307	Benzin	139000	Avtomat	Tam	f	34850	20500	4480177	Adaw	(055) 860-69-62	2020-11-18
12077	Bakı	Mercedes	C 230	1998	Sedan	Gümüşü	2.3	150	Benzin	307000	Avtomat	Arxa	f	12600	7412	4478440	Ildirim	(050) 268-03-02	2020-11-18
12078	Bakı	Opel	Astra	2006	Hetçbek / Liftbek	Qara	1.3	90	Dizel	188000	Mexaniki	Ön	f	10500	6176	4480220	Əhməd	(050) 278-78-20	2020-11-18
12080	Bakı	Kia	Ceed	2007	Universal	Göy	1.6	115	Dizel	238000	Mexaniki	Ön	f	14000	8235	4458482	Arif	(050) 664-48-01	2020-11-18
3369	Bakı	Kia	Rio	2010	Hetçbek / Liftbek	Qızılı	1.5	110	Dizel	110000	Avtomat	Ön	f	13700	8059	4472530	Rəhim	(070) 378-66-55	2020-11-17
5450	Bakı	Volkswagen	Touareg	2006	Offroader / SUV	Qara	3.2	240	Benzin	217000	Avtomat	Tam	f	15300	9000	4466920	Fuad	(077) 311-29-66	2020-11-17
12084	Bakı	Kia	Sorento	2010	Offroader / SUV	Yaş Asfalt	2	184	Dizel	58000	Avtomat	Ön	f	24200	14235	4480217	Samir	(050) 728-22-66	2020-11-18
4815	Bakı	Hyundai	Elantra	2007	Sedan	Qara	1.6	120	Dizel	121000	Avtomat	Ön	f	14200	8353	4415590	Rəhim	(050) 378-66-55	2020-11-17
4197	Bakı	Hyundai	Elantra	2007	Sedan	Ağ	1.6	115	Dizel	123000	Avtomat	Ön	f	14500	8529	4470666	Rəhim	(050) 378-66-55	2020-11-17
12087	Bakı	Toyota	Avalon	2007	Sedan	Ağ	3.5	268	Benzin	216600	Avtomat	Ön	f	17800	10471	4450728	Emil	(070) 500-03-03	2020-11-18
12088	Bakı	Chrysler	200	2012	Sedan	Ağ	2.4	178	Benzin	109300	Avtomat	Ön	f	11550	6794	4422752	Fuad	(055) 555-25-51	2020-11-18
12092	Bakı	Mercedes	E 250	2011	Sedan	Qəhvəyi	2.5	204	Dizel	178625	Avtomat	Arxa	f	31200	18353	4480227	Raul	(050) 750-19-65	2020-11-18
10120	Bakı	Opel	Astra	2001	Sedan	Ağ	1.7	110	Dizel	296000	Mexaniki	Arxa	f	8800	5176	4454508	Zahid	(055) 814-97-15	2020-11-18
12100	Bakı	Mercedes	E 320	2000	Sedan	Gümüşü	3.2	224	Benzin	260000	Avtomat	Arxa	f	12900	7588	4480244	Riza	(055) 211-99-19	2020-11-18
12101	Bakı	Hyundai	Elantra	2014	Sedan	Ağ	1.8	150	Benzin	85260	Avtomat	Ön	f	17800	10471	4480239	Huseyin	(050) 649-42-17	2020-11-18
12103	Şəki	Kia	Sportage	2007	Offroader / SUV	Qırmızı	2	141	Dizel	90000	Avtomat	Ön	f	18800	11059	4480245	Asiman	(055) 407-79-65	2020-11-18
10729	Xırdalan	LADA (VAZ)	Priora	2013	Hetçbek / Liftbek	Qara	1.6	106	Benzin	117000	Mexaniki	Ön	f	11700	6882	4419713	Elvin	(051) 300-57-00	2020-11-18
12042	Bakı	Mercedes	E 240	1998	Sedan	Göy	2.4	170	Benzin	300000	Avtomat	Arxa	f	11000	6471	4480270	Anar	(055) 396-03-03	2020-11-18
12111	Bakı	LADA (VAZ)	2115	2011	Sedan	Gümüşü	1.5	78	Benzin	186599	Mexaniki	Ön	f	6400	3765	4480306	Samil	(055) 367-02-00	2020-11-18
12112	Bakı	Hyundai	Sonata	2014	Sedan	Qara	2.4	178	Benzin	54040	Avtomat	Ön	f	30500	17941	4480307	Turan	(055) 711-71-61	2020-11-18
12113	Bakı	Opel	Astra	2005	Hetçbek / Liftbek	Göy	1.4	90	Benzin	175666	Mexaniki	Ön	f	10400	6118	4480310	Reşad	(050) 482-89-26	2020-11-18
12114	Xırdalan	Ford	Fusion	2016	Sedan	Yaş Asfalt	1.5	181	Benzin	51500	Avtomat	Ön	f	19300	11353	4480289	rafo.	(070) 285-84-87	2020-11-18
12115	Bakı	Kia	Sportage	2015	Offroader / SUV	Yaş Asfalt	1.7	115	Dizel	43500	Avtomat	Ön	f	33660	19800	4480308	Orxan	(055) 205-52-51	2020-11-18
12116	Bakı	Mercedes	E 200	1997	Sedan	Gümüşü	2	136	Benzin	325000	Avtomat	Arxa	f	11000	6471	4480311	Mehman	(070) 320-00-45	2020-11-18
12117	Bakı	Iveco	Daily 35C12H	2007	Yük maşını	Ağ	2.5	150	Dizel	342000	Mexaniki	Arxa	f	25000	14706	4480312	Ferid	(055) 209-07-34	2020-11-18
7287	Bakı	Volkswagen	Jetta	2006	Sedan	Yaş Asfalt	2.5	170	Benzin	234865	Avtomat	Ön	f	9000	5294	4469041	Sarxan	(055) 918-55-22	2020-11-17
12119	Bakı	Mercedes	A 170	2007	Hetçbek / Liftbek	Bənövşəyi	1.7	116	Benzin	86000	Avtomat	Arxa	f	11000	6471	4480316	Elgün	(070) 540-34-60	2020-11-18
12134	Bakı	BMW	X6	2014	Offroader / SUV	Qara	3	306	Benzin	51000	Avtomat	Tam	f	127500	75000	4480315	Ferid	(055) 881-81-24	2020-11-18
12135	Bakı	Hyundai	Santa Fe	2006	Offroader / SUV	Qara	2.7	177	Benzin	175000	Avtomat	Tam	f	17300	10176	4480321	Tural	(077) 554-15-34	2020-11-18
12137	Bakı	Land Rover	Range Rover	2015	Offroader / SUV	Ağ	3	340	Dizel	80000	Avtomat	Tam	f	117300	69000	4408197	Ariz	(060) 298-98-98	2020-11-18
12136	Bakı	Mercedes	E 220	2000	Hetçbek / Liftbek	Qara	2.2	170	Dizel	500000	Avtomat	Arxa	f	14800	8706	4480320	İsrail	(051) 937-39-98	2020-11-18
12132	Bakı	Hyundai	Santa Fe	2012	Offroader / SUV	Qara	2.4	175	Benzin	191009	Avtomat	Tam	f	29600	17412	4449966	Mubariz	(055) 214-10-24	2020-11-18
12133	Sumqayıt	Mercedes	C 200	1998	Sedan	Qara	2	136	Benzin	315000	Avtomat	Ön	f	12000	7059	4458582	Elsafa	(055) 762-98-99	2020-11-18
12138	Bakı	Bajaj	RS200	2018	Motosiklet	Qırmızı	0.2	24	Benzin	2000	Mexaniki	Arxa	f	5000	2941	4480324	Kamran	(050) 250-08-69	2020-11-18
12139	Göyçay	Opel	Astra	1999	Hetçbek / Liftbek	Qara	2	136	Benzin	290000	Mexaniki	Ön	f	9400	5529	4480325	Aqil 	(055) 681-91-61	2020-11-18
12140	Bakı	MG	350	2011	Sedan	Ağ	1.5	107	Benzin	195000	Avtomat	Ön	f	8900	5235	4480327	Ruslan	(077) 320-28-73	2020-11-18
12141	Bakı	Land Rover	Range Rover	2015	Offroader / SUV	Qara	3	340	Benzin	25000	Avtomat	Tam	f	132600	78000	4427087	Cahad	(051) 562-22-55	2020-11-18
12142	Bakı	Opel	Vectra	1997	Sedan	Gümüşü	1.6	101	Benzin	339000	Mexaniki	Ön	f	6500	3824	4480352	Dilsuz	(070) 611-81-21	2020-11-18
12143	Şirvan	LADA (VAZ)	2106	1997	Sedan	Ağ	1.5	65	Benzin	25000	Mexaniki	Arxa	f	4900	2882	4480348	Ferid	(070) 513-08-22	2020-11-18
12144	Bakı	Fiat	Doblo	2006	Minivan	Boz	1.3	76	Dizel	294738	Mexaniki	Ön	f	12700	7471	4480357	Abbas	(051) 659-14-74	2020-11-18
12145	Bakı	LADA (VAZ)	Niva	2009	Offroader / SUV	Ağ	1.7	80	Benzin	152338	Mexaniki	Tam	f	9500	5588	4480356	Sahib	(070) 222-20-37	2020-11-18
12146	Samux	LADA (VAZ)	2115	2011	Sedan	Tünd qırmızı	1.6	80	Benzin	149000	Mexaniki	Ön	f	9400	5529	4480355	Əlvan	(051) 449-98-98	2020-11-18
12147	Bakı	Mercedes	E 280	1997	Sedan	Göy	2.8	193	Benzin	304000	Avtomat	Arxa	f	10800	6353	4462867	Edalet	(050) 753-32-65	2020-11-18
12150	Bakı	LADA (VAZ)	Priora	2011	Sedan	Qara	1.6	106	Benzin	29500	Mexaniki	Arxa	f	9600	5647	4480371	Ceyhun	(077) 600-52-57	2020-11-18
12151	Bakı	Mercedes	E 220	2007	Sedan	Qara	2.2	150	Dizel	340000	Avtomat	Arxa	f	16500	9706	4325516	Tengiz	(070) 319-29-56	2020-11-18
12152	Bakı	Chevrolet	Cruze	2015	Sedan	Qara	1.4	141	Benzin	60000	Avtomat	Ön	f	14400	8471	4480374	Maqsut	(050) 781-07-23	2020-11-18
12153	Bakı	Mitsubishi	Pajero io	1999	Offroader / SUV	Ağ	1.8	136	Benzin	425000	Avtomat	Tam	f	5400	3176	4480361	Adik	(050) 530-09-76	2020-11-18
12156	Qəbələ	Hyundai	Genesis	2011	Sedan	Qara	3.8	283	Benzin	266000	Avtomat	Arxa	f	26600	15647	4480345	Vusal	(055) 244-40-44	2020-11-18
12157	Bakı	Volkswagen	Touareg	2009	Offroader / SUV	Qara	3.6	280	Benzin	181000	Avtomat	Tam	f	23500	13824	4423440	Ali	(070) 288-00-18	2020-11-18
12158	Siyəzən	Mitsubishi	Pajero	1992	Offroader / SUV	Qızılı	2.5	125	Dizel	990651	Avtomat	Tam	f	6000	3529	4480350	Naib	(070) 514-43-79	2020-11-18
12159	Bakı	Kia	Rio	2006	Hetçbek / Liftbek	Gümüşü	1.4	107	Benzin	179500	Mexaniki	Ön	f	10900	6412	4443524	Bextiyar	(055) 295-70-80	2020-11-18
12167	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Yaş Asfalt	1.5	76	Hibrid	159000	Avtomat	Ön	f	12500	7353	4480360	Elşad	(055) 649-67-77	2020-11-18
12169	Salyan	KamAz	53212	1992	Yük maşını	Boz	11	191	Dizel	354242	Mexaniki	Arxa	f	17000	10000	4480358	Ferman	(050) 962-56-08	2020-11-18
12171	Bakı	Hyundai	ix35	2013	Offroader / SUV	Ağ	2	166	Benzin	159000	Avtomat	Tam	f	24900	14647	4480365	Arastun	(051) 994-54-64	2020-11-18
12179	Bakı	Mercedes	S 500	2014	Sedan	Qara	4.7	435	Benzin	118500	Avtomat	Arxa	f	114750	67500	4417614	kamil	(050) 444-19-19	2020-11-18
12183	Bakı	LADA (VAZ)	2104	1996	Universal	Ağ	1.5	65	Benzin	213000	Mexaniki	Arxa	f	2950	1735	4480372	Ruslan	(070) 878-16-33	2020-11-18
12194	Bakı	BMW	535	2000	Sedan	Yaş Asfalt	3.5	245	Benzin	360000	Avtomat	Arxa	f	10000	5882	4480330	Ayaz	(055) 800-11-04	2020-11-18
12196	Göyçay	LADA (VAZ)	2115	2010	Sedan	Yaş Asfalt	1.6	80	Benzin	240000	Mexaniki	Ön	f	6900	4059	4480335	Kamil	(051) 882-07-73	2020-11-18
12198	Bakı	Chevrolet	Cruze	2014	Sedan	Ağ	1.4	141	Benzin	100000	Avtomat	Ön	f	14800	8706	4480336	Taleh	(055) 283-34-84	2020-11-18
12199	Bakı	Opel	Astra	1997	Universal	Qara	1.6	101	Benzin	570000	Mexaniki	Ön	f	4800	2824	4480337	Elnur	(050) 225-71-17	2020-11-18
12201	Salyan	LADA (VAZ)	2106	1985	Sedan	Qırmızı	1.5	65	Benzin	324708	Mexaniki	Arxa	f	1650	971	4480339	Rafiq	(050) 643-10-89	2020-11-18
12202	Bakı	Ford	Transit	2009	Furqon	Narıncı	2.4	140	Dizel	154000	Mexaniki	Arxa	f	26800	15765	4480340	Teymur	(055) 677-57-55	2020-11-18
12203	Bakı	Kia	Cerato	2013	Sedan	Ağ	2	156	Benzin	63000	Avtomat	Ön	f	24700	14529	4397107	Sahid	(050) 778-75-55	2020-11-18
12245	Bakı	Mercedes	S 500	2013	Sedan	Qara	4.7	455	Benzin	73000	Avtomat	Tam	f	101150	59500	4078793	Emin	(050) 266-69-67	2020-11-18
12346	Bakı	Mercedes	E 230	1988	Sedan	Qara	2.3	150	Benzin	546798	Mexaniki	Arxa	f	4700	2765	4437391	Elgun	(050) 660-56-19	2020-11-18
12348	Saatlı	LADA (VAZ)	2106	1984	Sedan	Ağ	1.6	75	Benzin	78000	Mexaniki	Arxa	f	2700	1588	4433497	Tarı	(050) 447-61-44	2020-11-18
12349	Bakı	Toyota	Camry	2013	Sedan	Gümüşü	2.5	181	Benzin	195000	Avtomat	Ön	f	34850	20500	4480218	Tural	(050) 687-01-51	2020-11-18
12350	Şəmkir	Renault	Megane	2007	Universal	Boz	1.5	106	Dizel	250000	Mexaniki	Ön	f	9900	5824	4480219	Rəsad	(050) 896-80-20	2020-11-18
12351	Bakı	Kia	Optima	2013	Sedan	Qəhvəyi	2	166	Benzin	118000	Avtomat	Ön	f	27700	16294	4413692	Oqtay	(077) 277-04-36	2020-11-18
12357	Bakı	Renault	Megane	2007	Universal	Göy	1.5	85	Dizel	227000	Mexaniki	Ön	f	11000	6471	4480423	Sadiq	(055) 852-00-94	2020-11-18
12358	Bakı	GAZ	33021	1995	Yük maşını	Göy	2.4	96	Benzin	237000	Mexaniki	Arxa	f	6500	3824	4480425	Sahin	(055) 897-77-78	2020-11-18
12359	Bakı	Volkswagen	Touareg	2009	Offroader / SUV	Qara	3.6	280	Benzin	238000	Avtomat	Tam	f	18700	11000	4478540	Mehemed	(055) 782-05-70	2020-11-18
12360	Bakı	Mercedes	C 180	1999	Sedan	Ağ	1.8	122	Benzin	297000	Avtomat	Arxa	f	10500	6176	4480389	Cavid	(055) 463-74-21	2020-11-18
12368	Sumqayıt	Mercedes	E 240	1999	Sedan	Göy	2.4	170	Benzin	297326	Avtomat	Arxa	f	14900	8765	4480427	Qedir	(051) 627-14-14	2020-11-18
12369	Quba	LADA (VAZ)	21011	1980	Sedan	Bej	1.5	65	Benzin	281284	Mexaniki	Arxa	f	2300	1353	4480435	Elsever	(050) 755-33-13	2020-11-18
12370	Gəncə	Mercedes	C 200	1996	Sedan	Göy	2	136	Benzin	224000	Avtomat	Arxa	f	10500	6176	4480439	Elnur	(055) 257-13-81	2020-11-18
12376	Bakı	Toyota	Prius	2008	Hetçbek / Liftbek	Gümüşü	1.5	76	Benzin	220000	Avtomat	Ön	f	13000	7647	4480416	Mehman	(055) 320-00-45	2020-11-18
12377	Bakı	Kia	Ceed	2007	Hetçbek / Liftbek	Gümüşü	1.4	109	Benzin	207000	Mexaniki	Ön	f	13500	7941	4480417	RAHİB	(050) 343-80-88	2020-11-18
12378	Şamaxı	LADA (VAZ)	Kalina	2008	Sedan	Gümüşü	1.6	81	Benzin	168000	Mexaniki	Ön	f	8800	5176	4480415	Qibləli	(070) 840-38-42	2020-11-18
12379	Bakı	Mercedes	190	1990	Sedan	Tünd qırmızı	1.8	109	Benzin	477892	Avtomat	Arxa	f	6000	3529	4480418	Rafiq	(070) 648-38-18	2020-11-18
12381	Bakı	Nissan	Maxima	2016	Sedan	Ağ	3.5	268	Benzin	115000	Avtomat	Ön	f	42500	25000	4480419	Elvin	(070) 555-05-05	2020-11-18
12382	Bakı	BMW	740	2001	Sedan	Qırmızı	4.4	286	Benzin	236000	Avtomat	Arxa	f	12600	7412	4480421	Rovwen	(055) 643-84-01	2020-11-18
12383	Bakı	BMW	528	2015	Sedan	Qara	2	245	Benzin	87000	Avtomat	Arxa	f	42160	24800	4265891	Ahmed	(050) 221-60-69	2020-11-18
12384	Bakı	Hyundai	Sonata	2012	Sedan	Ağ	2.4	178	Benzin	171000	Avtomat	Ön	f	23500	13824	4297780	Arif	(055) 615-54-52	2020-11-18
12391	Bakı	Chevrolet	Niva	2003	Offroader / SUV	Boz	1.7	80	Benzin	179000	Mexaniki	Tam	f	7200	4235	4480443	Əzizxan	(050) 499-64-39	2020-11-18
12394	İsmayıllı	Chrysler	300C	2012	Sedan	Ağ	3.6	300	Benzin	176000	Avtomat	Arxa	f	30600	18000	4480442	Zeka	(055) 222-11-97	2020-11-18
12399	Bakı	LADA (VAZ)	Priora	2009	Sedan	Qara	1.6	106	Benzin	96000	Mexaniki	Ön	f	10000	5882	4480388	Renad	(055) 600-73-37	2020-11-18
12400	Bakı	Mitsubishi	Lancer	2008	Sedan	Qara	2	150	Benzin	223567	Avtomat	Ön	f	12500	7353	4480393	Şəhriyar	(051) 431-01-02	2020-11-18
12401	Bakı	Mercedes	Vito 116	2012	Van	Gümüşü	2.2	163	Dizel	221200	Mexaniki	Arxa	f	29000	17059	4480394	Elşən	(055) 800-81-74	2020-11-18
12402	Bakı	Volkswagen	Jetta	2009	Offroader / SUV	Ağ	1.6	102	Benzin	181000	Avtomat	Ön	f	13500	7941	4432847	İlqar	(077) 352-01-11	2020-11-18
12403	Bakı	Opel	Zafira	2008	Sedan	Gümüşü	1.9	120	Dizel	168488	Avtomat	Ön	f	12500	7353	4480400	Samil	(077) 581-40-00	2020-11-18
12405	Xırdalan	Ford	Tourneo Custom	2014	Mikroavtobus	Qara	2.2	125	Dizel	174000	Mexaniki	Ön	f	30000	17647	4480405	Elnur	(070) 703-04-44	2020-11-18
12406	Şəki	LADA (VAZ)	2114	2012	Hetçbek / Liftbek	Qara	1.6	80	Benzin	230000	Mexaniki	Ön	f	9000	5294	4480409	Sehriyar 	(055) 558-78-99	2020-11-18
12407	Bakı	Hyundai	Elantra	2014	Hetçbek / Liftbek	Ağ	2	163	Benzin	74000	Avtomat	Ön	f	18800	11059	4480408	Şirxan	(055) 255-25-37	2020-11-18
12408	İsmayıllı	LADA (VAZ)	2106	2005	Sedan	Qəhvəyi	1.5	65	Benzin	127000	Mexaniki	Arxa	f	4800	2824	4480406	Kamil	(050) 761-90-27	2020-11-18
12409	Bakı	Mercedes	C 180	1998	Sedan	Gümüşü	1.8	122	Benzin	557940	Avtomat	Arxa	f	11000	6471	4480410	Abdul	(050) 396-96-28	2020-11-18
12410	Şirvan	Mercedes	C 180	1996	Sedan	Boz	1.8	122	Benzin	396000	Avtomat	Arxa	f	8700	5118	4461338	Cəlil	(070) 597-63-70	2020-11-18
12413	Bakı	Porsche	Cayenne GTS	2013	Offroader / SUV	Qara	4.8	420	Benzin	81000	Avtomat	Arxa	f	74800	44000	4448366	Orxan	(055) 560-41-41	2020-11-18
12443	Xırdalan	LADA (VAZ)	2106	1982	Sedan	Ağ	1.6	75	Benzin	110000	Mexaniki	Arxa	f	3250	1912	4480386	Anar	(050) 367-49-26	2020-11-18
12444	Bakı	Mercedes	G 55 AMG	2008	Offroader / SUV	Qara	5.5	507	Benzin	156487	Avtomat	Tam	f	82960	48800	4480390	Efqan	(077) 620-72-72	2020-11-18
12445	Bakı	LADA (VAZ)	Niva	2014	Offroader / SUV	Ağ	1.7	80	Benzin	91000	Mexaniki	Tam	f	11400	6706	4480391	Ramal	(055) 740-11-11	2020-11-18
12453	Bakı	Iran Khodro	Azsamand	2007	Sedan	Qara	1.8	100	Benzin	365000	Mexaniki	Ön	f	6700	3941	4480447	Ilqar	(055) 531-53-23	2020-11-18
12455	Bakı	Ford	Fusion	2015	Sedan	Qara	1.5	181	Benzin	72000	Avtomat	Ön	f	20500	12059	4457452	Fərhad	(070) 507-01-14	2020-11-18
12456	Naftalan	Hyundai	ix35	2010	Offroader / SUV	Qara	2	166	Benzin	195000	Avtomat	Tam	f	23300	13706	4480450	Emin	(055) 529-20-29	2020-11-18
\.


--
-- Data for Name: SalonAutos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SalonAutos" (id, "City", "Brand", "Model", "Year", "BodyType", "Color", "Engine", "Power", "Fuel", "Mileage", "Transmission", "DriveType", "New", "PriceM", "PriceD", "Order") FROM stdin;
\.


--
-- Name: Autos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Autos_id_seq"', 55, true);


--
-- Name: SalonAutos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SalonAutos_id_seq"', 1, false);


--
-- Name: Autos Autos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autos"
    ADD CONSTRAINT "Autos_pkey" PRIMARY KEY (id);


--
-- Name: SalonAutos SalonAutos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalonAutos"
    ADD CONSTRAINT "SalonAutos_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

