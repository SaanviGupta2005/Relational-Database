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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 172, 11, NULL);
INSERT INTO public.games VALUES (2, 594, 11, NULL);
INSERT INTO public.games VALUES (3, 140, 12, NULL);
INSERT INTO public.games VALUES (4, 676, 12, NULL);
INSERT INTO public.games VALUES (5, 484, 11, NULL);
INSERT INTO public.games VALUES (6, 338, 11, NULL);
INSERT INTO public.games VALUES (7, 212, 11, NULL);
INSERT INTO public.games VALUES (8, 45, 13, NULL);
INSERT INTO public.games VALUES (9, 871, 13, NULL);
INSERT INTO public.games VALUES (10, 427, 14, NULL);
INSERT INTO public.games VALUES (11, 345, 14, NULL);
INSERT INTO public.games VALUES (12, 499, 13, NULL);
INSERT INTO public.games VALUES (13, 687, 13, NULL);
INSERT INTO public.games VALUES (14, 754, 13, NULL);
INSERT INTO public.games VALUES (15, 8, 15, 26);
INSERT INTO public.games VALUES (16, 8, 15, 770);
INSERT INTO public.games VALUES (17, 773, 16, 772);
INSERT INTO public.games VALUES (18, 614, 16, 613);
INSERT INTO public.games VALUES (19, 367, 17, 366);
INSERT INTO public.games VALUES (20, 505, 17, 504);
INSERT INTO public.games VALUES (21, 354, 16, 351);
INSERT INTO public.games VALUES (22, 569, 16, 567);
INSERT INTO public.games VALUES (23, 563, 16, 562);
INSERT INTO public.games VALUES (24, 914, 18, 913);
INSERT INTO public.games VALUES (25, 102, 18, 101);
INSERT INTO public.games VALUES (26, 522, 19, 521);
INSERT INTO public.games VALUES (27, 837, 19, 836);
INSERT INTO public.games VALUES (28, 826, 18, 823);
INSERT INTO public.games VALUES (29, 318, 18, 316);
INSERT INTO public.games VALUES (30, 437, 18, 436);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1687888177626');
INSERT INTO public.users VALUES (2, 'user_1687888177625');
INSERT INTO public.users VALUES (3, 'saanvu');
INSERT INTO public.users VALUES (4, 'user_1687888217580');
INSERT INTO public.users VALUES (5, 'user_1687888217579');
INSERT INTO public.users VALUES (6, 'user_1687888334565');
INSERT INTO public.users VALUES (7, 'user_1687888334564');
INSERT INTO public.users VALUES (8, 'user_1687888367473');
INSERT INTO public.users VALUES (9, 'user_1687888367472');
INSERT INTO public.users VALUES (10, 'saanvi');
INSERT INTO public.users VALUES (11, 'user_1687888759631');
INSERT INTO public.users VALUES (12, 'user_1687888759630');
INSERT INTO public.users VALUES (13, 'user_1687889503896');
INSERT INTO public.users VALUES (14, 'user_1687889503895');
INSERT INTO public.users VALUES (15, 'sau');
INSERT INTO public.users VALUES (16, 'user_1687890078595');
INSERT INTO public.users VALUES (17, 'user_1687890078594');
INSERT INTO public.users VALUES (18, 'user_1687890108122');
INSERT INTO public.users VALUES (19, 'user_1687890108121');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

