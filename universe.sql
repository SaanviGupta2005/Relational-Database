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
    name character varying(50) NOT NULL,
    age integer,
    size numeric(10,2),
    type text,
    is_active boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    distance_from_planet numeric(10,2),
    diameter integer,
    is_round boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    distance_from_star numeric(10,2),
    number_of_moons integer,
    is_habitable boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    temperature integer NOT NULL,
    classification text,
    is_active boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    size numeric(10,2),
    is_expanding boolean NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ABC', 13, 100000.00, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'CDE', 14, 50000.00, 'Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'FGH', 26, 100034.00, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'IJK', 13, 40000.00, 'Spiral', true);
INSERT INTO public.galaxy VALUES (5, 'LMN', 16, 200000.00, 'Irregular', true);
INSERT INTO public.galaxy VALUES (6, 'STU', 15, 30000.00, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (13, 'earth', 82, 5778.00, 1, true, 18);
INSERT INTO public.moon VALUES (14, 'mars', 6, 2220.00, 2, false, 19);
INSERT INTO public.moon VALUES (15, 'jupiter', 23, 673.00, 79, false, 22);
INSERT INTO public.moon VALUES (16, 'saturn', 8, 1300.00, 45, false, 21);
INSERT INTO public.moon VALUES (17, 'uranus', 5, 46.00, 358, false, 20);
INSERT INTO public.moon VALUES (18, 'neptune', 6, 34.00, 4575, false, 23);
INSERT INTO public.moon VALUES (19, 'mercury', 67, 2578.00, 78, false, 24);
INSERT INTO public.moon VALUES (20, 'venus', 23, 6.00, 3456, false, 24);
INSERT INTO public.moon VALUES (21, 'pluto', 7, 78.00, 890, false, 25);
INSERT INTO public.moon VALUES (22, 'makemaker', 5, 90.67, 0, false, 16);
INSERT INTO public.moon VALUES (23, 'haumea', 5, 6422.00, 8, false, 16);
INSERT INTO public.moon VALUES (24, 'eris', 5, 10138.00, 1, false, 15);
INSERT INTO public.moon VALUES (26, 'ear56th', 82, 78.00, 1, true, 18);
INSERT INTO public.moon VALUES (27, 'mjdars', 16, 2220.00, 2, false, 19);
INSERT INTO public.moon VALUES (28, 'jcvnupiter', 23, 673.00, 79, false, 22);
INSERT INTO public.moon VALUES (29, 'satusdrn', 8, 16300.00, 45, false, 21);
INSERT INTO public.moon VALUES (30, 'uhfranus', 5, 46.00, 358, false, 20);
INSERT INTO public.moon VALUES (31, 'n67eptune', 6, 34.00, 4575, false, 23);
INSERT INTO public.moon VALUES (32, 'mercuvdry', 67, 2578.00, 78, false, 24);
INSERT INTO public.moon VALUES (33, 'fgvenus', 23, 6.00, 3456, false, 24);
INSERT INTO public.moon VALUES (34, 'psluto', 7, 78.00, 8990, false, 25);
INSERT INTO public.moon VALUES (35, 'tymakemaker', 5, 90.67, 0, false, 16);
INSERT INTO public.moon VALUES (36, 'haumvsea', 4, 6422.00, 8, false, 16);
INSERT INTO public.moon VALUES (37, 'erdwdis', 5, 10138.00, 1, false, 25);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (15, 'earth', 82, 5778.00, 1, true, 1);
INSERT INTO public.planet VALUES (16, 'mars', 6, 2220.00, 2, false, 1);
INSERT INTO public.planet VALUES (17, 'jupiter', 23, 673.00, 79, false, 2);
INSERT INTO public.planet VALUES (18, 'saturn', 8, 1300.00, 45, false, 2);
INSERT INTO public.planet VALUES (19, 'uranus', 5, 46.00, 358, false, 3);
INSERT INTO public.planet VALUES (20, 'neptune', 6, 34.00, 4575, false, 3);
INSERT INTO public.planet VALUES (21, 'mercury', 67, 2578.00, 78, false, 4);
INSERT INTO public.planet VALUES (22, 'venus', 23, 6.00, 3456, false, 4);
INSERT INTO public.planet VALUES (23, 'pluto', 7, 78.00, 890, false, 5);
INSERT INTO public.planet VALUES (24, 'makemaker', 5, 90.67, 0, false, 6);
INSERT INTO public.planet VALUES (25, 'haumea', 5, 6422.00, 8, false, 6);
INSERT INTO public.planet VALUES (26, 'eris', 5, 10138.00, 1, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 5, 5778, 'G34', true, 1);
INSERT INTO public.star VALUES (2, 'acs', 6, 2220, 'M34e', true, 1);
INSERT INTO public.star VALUES (3, 'hfd', 23, 673, 'HJ9', false, 1);
INSERT INTO public.star VALUES (4, 'beter', 8, 1300, 'Mk3', true, 2);
INSERT INTO public.star VALUES (5, 'sdf', 5, 46, 'Gh2', false, 2);
INSERT INTO public.star VALUES (6, 'fhe', 6, 34, 'AOva', true, 2);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'sun', 5, 5778.00, true);
INSERT INTO public.universe VALUES (2, 'acs', 6, 2220.00, true);
INSERT INTO public.universe VALUES (3, 'hfd', 23, 673.00, false);
INSERT INTO public.universe VALUES (4, 'beter', 8, 1300.00, true);
INSERT INTO public.universe VALUES (5, 'sdf', 5, 46.00, false);
INSERT INTO public.universe VALUES (6, 'fhe', 6, 34.00, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 6, true);


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
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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
