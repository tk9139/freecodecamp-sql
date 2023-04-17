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
-- Name: astro; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astro (
    astro_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.astro OWNER TO freecodecamp;

--
-- Name: astro_astro_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astro_astro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astro_astro_id_seq OWNER TO freecodecamp;

--
-- Name: astro_astro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astro_astro_id_seq OWNED BY public.astro.astro_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    distance_from_earth integer,
    is_spherical boolean DEFAULT true,
    has_life boolean
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
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth text,
    is_spherical boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric,
    distance_from_sun numeric,
    full_rotation integer,
    natural_satellite integer,
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
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth integer,
    diameter integer,
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
-- Name: astro astro_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astro ALTER COLUMN astro_id SET DEFAULT nextval('public.astro_astro_id_seq'::regclass);


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
-- Data for Name: astro; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astro VALUES (1, 'meteor', NULL);
INSERT INTO public.astro VALUES (2, 'asteroid', NULL);
INSERT INTO public.astro VALUES (3, 'comet', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Aquarius', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Le Gentil', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Veritae', NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Upsilon', NULL, NULL, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Titan', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Enceladus', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Pan', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Atlas', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Pandora', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Calisto', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'Mimas', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'Ananke', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'Ersa', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'Elara', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'Eirene', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'Hermippe', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Thebe', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, 'Carpo', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'Europie', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'Autonoc', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'Thermisto', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 'Carme', NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'v428', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'g2v', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'k11v', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'f8v', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Mirach', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (4, 'Sadalsuud', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'Veritate', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Titawin', NULL, NULL, NULL, 6);


--
-- Name: astro_astro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astro_astro_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astro astro_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astro
    ADD CONSTRAINT astro_description_key UNIQUE (description);


--
-- Name: astro astro_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astro
    ADD CONSTRAINT astro_pkey PRIMARY KEY (astro_id);


--
-- Name: galaxy galaxy_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_diameter_key UNIQUE (diameter);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_diameter_key UNIQUE (diameter);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_diameter_key UNIQUE (diameter);


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

