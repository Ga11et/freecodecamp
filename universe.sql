--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    amount_of_planets integer,
    color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteorit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorit (
    meteorit_id integer NOT NULL,
    name character varying(40) NOT NULL,
    speed numeric(4,1),
    size integer,
    is_dangerous boolean
);


ALTER TABLE public.meteorit OWNER TO freecodecamp;

--
-- Name: meteorit_meteorit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorit_meteorit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorit_meteorit_id_seq OWNER TO freecodecamp;

--
-- Name: meteorit_meteorit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorit_meteorit_id_seq OWNED BY public.meteorit.meteorit_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    temperature integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    size numeric(4,1),
    alter_name text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: meteorit meteorit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorit ALTER COLUMN meteorit_id SET DEFAULT nextval('public.meteorit_meteorit_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'margarita', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'aberona', 17, 3, NULL);
INSERT INTO public.galaxy VALUES (3, 'arkadia', 12, 7, NULL);
INSERT INTO public.galaxy VALUES (4, 'chernaya zhemchuzhina', 300, 3, NULL);
INSERT INTO public.galaxy VALUES (5, 'assasins creed', 213, 8, NULL);
INSERT INTO public.galaxy VALUES (6, 'mstitely', 180, 15, NULL);


--
-- Data for Name: meteorit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorit VALUES (1, 'alexandra', 5.0, 15, true);
INSERT INTO public.meteorit VALUES (2, 'svyatoslava', 50.0, 110, false);
INSERT INTO public.meteorit VALUES (3, 'daniel', 130.0, 220, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'makar', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'griffindor', 6, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'arina', 7, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'raya', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'puffenduy', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'kimbervik', 9, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'munshtuk', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'koktevran', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'suon', 10, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'katrin', 10, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'uil', 11, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'molot', 11, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'molniya', 11, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'istochnik', 12, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'metch', 12, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'titanik', 13, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'pobeda', 13, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'rayman', 14, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'my little pony', 14, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'pautina', 15, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'boshki', 16, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'mjolnir', 17, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'ragneda', true, true, 9.0, 2);
INSERT INTO public.planet VALUES (4, 'malificenta', false, true, 200.5, 3);
INSERT INTO public.planet VALUES (5, 'mandragora', true, true, 10.8, 3);
INSERT INTO public.planet VALUES (6, 'maggonagal', true, true, 5.3, 3);
INSERT INTO public.planet VALUES (7, 'antilopa', true, true, 20.6, 4);
INSERT INTO public.planet VALUES (8, 'akardion', false, true, 21.1, 4);
INSERT INTO public.planet VALUES (9, 'ammunichnik', true, true, 25.4, 4);
INSERT INTO public.planet VALUES (10, 'elizabeth', true, true, 8.7, 5);
INSERT INTO public.planet VALUES (11, 'terner', true, true, 12.2, 5);
INSERT INTO public.planet VALUES (12, 'boroda', false, true, 144.4, 6);
INSERT INTO public.planet VALUES (13, 'blackflag', true, true, 12.1, 6);
INSERT INTO public.planet VALUES (14, 'origins', false, true, 24.1, 6);
INSERT INTO public.planet VALUES (15, 'piter parker', true, true, 5.4, 7);
INSERT INTO public.planet VALUES (16, 'venom', false, true, 7.7, 7);
INSERT INTO public.planet VALUES (17, 'thor', true, true, 15.3, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'magnolia', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'skorpion', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'archik', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'vorobey', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'tortuga', 5, NULL, NULL);
INSERT INTO public.star VALUES (7, 'tony stark', 6, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: meteorit_meteorit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorit_meteorit_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 17, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteorit meteorit_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorit
    ADD CONSTRAINT meteorit_name_key UNIQUE (name);


--
-- Name: meteorit meteorit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorit
    ADD CONSTRAINT meteorit_pkey PRIMARY KEY (meteorit_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

