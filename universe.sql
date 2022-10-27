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
-- Name: artificial_satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_satelite (
    artificial_satelite_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL
);


ALTER TABLE public.artificial_satelite OWNER TO freecodecamp;

--
-- Name: artificial_satelite_artificial_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_satelite_artificial_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_satelite_artificial_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: artificial_satelite_artificial_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_satelite_artificial_satelite_id_seq OWNED BY public.artificial_satelite.artificial_satelite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions numeric,
    galaxy_type character varying(30) NOT NULL,
    has_black_hole boolean
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
    name character varying(30),
    planet_id integer,
    description text,
    is_spherical boolean NOT NULL
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
    name character varying(30),
    star_id integer,
    has_life boolean,
    description text,
    age_in_millions integer,
    number_of_moons integer NOT NULL
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
    name character varying(30),
    galaxy_id integer,
    description text,
    is_spherical boolean,
    age_in_millions numeric,
    color character varying(30) NOT NULL
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
-- Name: artificial_satelite artificial_satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satelite ALTER COLUMN artificial_satelite_id SET DEFAULT nextval('public.artificial_satelite_artificial_satelite_id_seq'::regclass);


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
-- Data for Name: artificial_satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_satelite VALUES (1, 'Sat1', 29);
INSERT INTO public.artificial_satelite VALUES (2, 'SaT2', 60);
INSERT INTO public.artificial_satelite VALUES (3, 'Sat3', 90);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 'closest neighbour to earth', 240, 'irregular', NULL);
INSERT INTO public.galaxy VALUES (2, 'Cyngus A', 'one of the strongest radio sources in the sky', 3, 'elliptical', true);
INSERT INTO public.galaxy VALUES (3, 'Milky way', 'our solar system galaxy', 13.6, 'spiral', true);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds', 'or Nubecula Major is a satellite galaxy of Milky Way', 1.1, 'satellite galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'Virgo A', 'a small cluster of galaxies', 5, 'spiral', true);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'also known as Messier 31 or NGC 224', 2.5, 'barrel spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5, 'our pretty moon', true);
INSERT INTO public.moon VALUES (2, 'Europa', 7, 'Jupiter moon', true);
INSERT INTO public.moon VALUES (3, 'Titan', 8, 'Saturns moon', true);
INSERT INTO public.moon VALUES (4, 'Lo', 7, 'another Jupiter moon', true);
INSERT INTO public.moon VALUES (5, 'Callisto', 7, 'Jupiters moon', true);
INSERT INTO public.moon VALUES (6, 'Triton', 8, 'Saturns moon', true);
INSERT INTO public.moon VALUES (7, 'Titania', 9, 'Uranus moon', true);
INSERT INTO public.moon VALUES (8, 'Elara', 7, 'Jupiters moon', true);
INSERT INTO public.moon VALUES (9, 'Thebe', 7, 'Jupiters moon', false);
INSERT INTO public.moon VALUES (10, 'Janus', 8, 'Saturns moon', false);
INSERT INTO public.moon VALUES (11, 'Rhea', 8, 'Saturns moon', true);
INSERT INTO public.moon VALUES (12, 'Mimas', 8, 'Saturns moon', true);
INSERT INTO public.moon VALUES (13, 'Oberon', 9, 'cute', true);
INSERT INTO public.moon VALUES (14, 'Himalia', 7, 'Jupiters', true);
INSERT INTO public.moon VALUES (15, 'BEKO', 6, 'cute beko', true);
INSERT INTO public.moon VALUES (16, 'Dudu', 7, 'cutest witch', false);
INSERT INTO public.moon VALUES (17, 'Tea', 7, 'earth beauty', false);
INSERT INTO public.moon VALUES (18, 'Berkin', 9, 'nice', true);
INSERT INTO public.moon VALUES (19, 'Dudushka', 8, 'cutest be', true);
INSERT INTO public.moon VALUES (20, 'Delka', 8, 'the shiniest moon', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Venus', 7, false, 'second planet of our solar system', 4500, 0);
INSERT INTO public.planet VALUES (4, 'Mercury', 7, false, 'first planet of our solar system', 4500, 0);
INSERT INTO public.planet VALUES (5, 'Earth', 7, true, 'our planet', 4500, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 7, false, 'fourth planet', 4500, 2);
INSERT INTO public.planet VALUES (7, 'Jupiter', 7, false, 'biggest planet', 4600, 80);
INSERT INTO public.planet VALUES (8, 'Saturn', 7, false, 'cute', 2300, 83);
INSERT INTO public.planet VALUES (9, 'Uranus', 7, false, 'I think i like it', 4500, 27);
INSERT INTO public.planet VALUES (10, 'Neptune', 7, false, 'least planet of our solar system', 4600, 14);
INSERT INTO public.planet VALUES (11, 'Pluto', 7, false, 'our dwarf planet', 4600, 5);
INSERT INTO public.planet VALUES (12, 'Haumea', 7, false, 'dwarf planet', 4500, 2);
INSERT INTO public.planet VALUES (13, 'Makemake', 7, false, 'another dwarf planet', 4500, 1);
INSERT INTO public.planet VALUES (14, 'Eris', 7, false, 'another dwarf planet', 4500, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 1, 'biggest star of the galaxy', true, 60, 'blue');
INSERT INTO public.star VALUES (2, 'Deneb', 2, 'biggest star of the galaxy', true, 10.01, 'blue');
INSERT INTO public.star VALUES (3, 'Stephenson 2-18', 3, 'biggest star of the galaxy', true, 17, 'yellow');
INSERT INTO public.star VALUES (4, 'R71', 4, 'biggest star of the galaxy', true, 13, 'white');
INSERT INTO public.star VALUES (5, 'Spica', 5, 'brightest star of the galaxy', true, 12.5, 'blue');
INSERT INTO public.star VALUES (6, 'Eta Canis Majoris', 6, 'biggest star of the galaxy', true, 13000, 'blue');
INSERT INTO public.star VALUES (7, 'Sun', 3, 'our star', true, 4000, 'orange');


--
-- Name: artificial_satelite_artificial_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_satelite_artificial_satelite_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: artificial_satelite artificial_satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satelite
    ADD CONSTRAINT artificial_satelite_name_key UNIQUE (name);


--
-- Name: artificial_satelite artificial_satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satelite
    ADD CONSTRAINT artificial_satelite_pkey PRIMARY KEY (artificial_satelite_id);


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
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


