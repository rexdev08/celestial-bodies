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
    name character varying NOT NULL,
    descrption text,
    int1 integer,
    int2 integer,
    numeric1 numeric,
    bool1 boolean NOT NULL,
    bool2 boolean
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
    name character varying,
    description text NOT NULL,
    int1 integer,
    int2 integer,
    numeric1 numeric,
    bool1 boolean NOT NULL,
    bool2 boolean NOT NULL,
    planet_id integer
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
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    int1 integer,
    int2 integer,
    numeric1 numeric,
    bool1 boolean NOT NULL,
    bool2 boolean NOT NULL
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_other_id_seq OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    int1 integer,
    int2 integer,
    numeric1 numeric,
    bool1 boolean NOT NULL,
    bool2 boolean NOT NULL,
    star_id integer
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
    name character varying,
    description text NOT NULL,
    int1 integer,
    int2 integer,
    numeric1 numeric,
    bool1 boolean NOT NULL,
    bool2 boolean NOT NULL,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_other_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'descripcion del planet 1', NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', 'descripcion del galaxy 2', NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy3', 'descripcion del galaxy 3', NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (7, 'galaxy4', 'descripcion del galaxy 3', NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (8, 'galaxy5', 'descripcion del galaxy 3', NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (9, 'galaxy6', 'descripcion del galaxy 3', NULL, NULL, NULL, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (2, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (3, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (4, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (5, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (6, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (7, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (8, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (9, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (10, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (11, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (12, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (13, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (14, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (15, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (16, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (17, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (18, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (19, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (20, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (21, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (22, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (23, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (24, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (25, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (26, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (27, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (28, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (29, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (30, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (31, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (32, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (33, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (34, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (35, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (36, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (37, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (38, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (39, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (40, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (41, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (42, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (43, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (44, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (45, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (46, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (47, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (48, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (49, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (50, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (51, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (52, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (53, 'moon1', 'descripcion del moon 1', NULL, NULL, NULL, true, true, 1);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'galaxy1', 'descripcion del galaxy 1', NULL, NULL, NULL, true, true);
INSERT INTO public.other VALUES (5, 'galaxy3', 'descripcion del galaxy 3', NULL, NULL, NULL, true, true);
INSERT INTO public.other VALUES (7, 'galaxy4', 'descripcion del galaxy 4', NULL, NULL, NULL, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (3, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (4, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (5, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (6, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (7, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (8, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (9, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (10, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (11, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (12, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (13, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (14, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (15, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (16, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (17, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (18, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (19, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (20, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (21, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (22, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (23, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (24, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (25, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (26, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (27, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (28, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (29, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (30, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (31, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (32, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (33, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (34, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (35, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (36, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.planet VALUES (37, 'planet1', 'descripcion del planet 1', NULL, NULL, NULL, true, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (2, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (3, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (4, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (5, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (6, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (7, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (8, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (9, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (10, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (11, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (12, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (13, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (14, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (15, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (16, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (17, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (18, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (19, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (20, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (21, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);
INSERT INTO public.star VALUES (22, 'star1', 'descripcion del star 1', NULL, NULL, NULL, true, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 53, true);


--
-- Name: other_other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_other_id_seq', 7, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 37, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 22, true);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon uni_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uni_moon UNIQUE (moon_id);


--
-- Name: other uni_other; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT uni_other UNIQUE (description);


--
-- Name: planet uni_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uni_planet UNIQUE (planet_id);


--
-- Name: star uni_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uni_star UNIQUE (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

