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
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    galaxy_types text,
    description text
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
-- Name: monosa; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.monosa (
    mona1 integer,
    mona2 integer,
    mona3 integer,
    name character varying(30) NOT NULL,
    monosa_id integer NOT NULL
);


ALTER TABLE public.monosa OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    year_discovered integer NOT NULL,
    planet_name text NOT NULL,
    diameter_in_km numeric,
    in_solar_system boolean NOT NULL,
    moon_id integer NOT NULL
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
    planet_name character varying(30) NOT NULL,
    year_discovered integer NOT NULL,
    diameter_in_km numeric,
    in_solar_system boolean NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30)
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
    name character varying(30) NOT NULL,
    year_discovered integer NOT NULL,
    diameter_in_km numeric,
    star_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    has_life boolean
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

INSERT INTO public.galaxy VALUES ('Andromeda', 'Andromeda', 1, false, 'spiral', 'uwu');
INSERT INTO public.galaxy VALUES ('Antennae', 'Corvus', 2, false, 'irregular', '');
INSERT INTO public.galaxy VALUES ('Backward', 'Centaurus', 3, false, 'spiral', '');
INSERT INTO public.galaxy VALUES ('Black Eye', 'Coma Berenices', 4, false, 'spiral', '');
INSERT INTO public.galaxy VALUES ('Bodes', 'Ursa Major', 5, false, 'spiral', '');
INSERT INTO public.galaxy VALUES ('Butterfly Galaxies', 'Virgo', 6, false, 'spiral', '');


--
-- Data for Name: monosa; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.monosa VALUES (1, 1, 1, 'mona1', 1);
INSERT INTO public.monosa VALUES (1, 1, 1, 'mona2', 2);
INSERT INTO public.monosa VALUES (1, 1, 1, 'mona3', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 0, 'earth', 0, true, 4);
INSERT INTO public.moon VALUES ('phobos', 0, 'mars', 0, true, 5);
INSERT INTO public.moon VALUES ('deimos', 0, 'mars', 0, true, 6);
INSERT INTO public.moon VALUES ('ip', 0, 'jupiter', 0, true, 3);
INSERT INTO public.moon VALUES ('ganymede', 0, 'jupiter', 0, true, 7);
INSERT INTO public.moon VALUES ('callisto', 0, 'jupiter', 0, true, 8);
INSERT INTO public.moon VALUES ('amalthra', 0, 'jupiter', 0, true, 9);
INSERT INTO public.moon VALUES ('himalia', 0, 'jupiter', 0, true, 10);
INSERT INTO public.moon VALUES ('elara', 0, 'jupiter', 0, true, 11);
INSERT INTO public.moon VALUES ('pasiphae', 0, 'jupiter', 0, true, 12);
INSERT INTO public.moon VALUES ('sinope', 0, 'jupiter', 0, true, 13);
INSERT INTO public.moon VALUES ('thebe', 0, 'jupiter', 0, true, 18);
INSERT INTO public.moon VALUES ('lysithea', 0, 'jupiter', 0, true, 19);
INSERT INTO public.moon VALUES ('carme', 0, 'jupiter', 0, true, 20);
INSERT INTO public.moon VALUES ('ananke', 0, 'jupiter', 0, true, 21);
INSERT INTO public.moon VALUES ('leda', 0, 'jupiter', 0, true, 22);
INSERT INTO public.moon VALUES ('uwu1', 0, 'earth', 0, true, 1);
INSERT INTO public.moon VALUES ('uwu2', 0, 'earth', 0, true, 2);
INSERT INTO public.moon VALUES ('uwu3', 0, 'earth', 0, true, 24);
INSERT INTO public.moon VALUES ('uwu4', 0, 'earth', 0, true, 25);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 0, 0.383, true, 1, NULL);
INSERT INTO public.planet VALUES ('venys', 0, 0.949, true, 2, NULL);
INSERT INTO public.planet VALUES ('earth', 0, 1, true, 3, NULL);
INSERT INTO public.planet VALUES ('mars', 0, 0.532, true, 4, NULL);
INSERT INTO public.planet VALUES ('jupiter', 0, 11.209, true, 5, NULL);
INSERT INTO public.planet VALUES ('saturn', 0, 9.449, true, 6, NULL);
INSERT INTO public.planet VALUES ('uranus', 0, 4.007, true, 7, NULL);
INSERT INTO public.planet VALUES ('neptune', 0, 3.883, true, 8, NULL);
INSERT INTO public.planet VALUES ('ceres', 0, 0.0742, true, 9, NULL);
INSERT INTO public.planet VALUES ('orcus', 0, 0.072, true, 10, NULL);
INSERT INTO public.planet VALUES ('pluto', 0, 0.0022, true, 11, NULL);
INSERT INTO public.planet VALUES ('haumea', 0, 0.13, true, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', 0, 2.7, 1, 97, false);
INSERT INTO public.star VALUES ('Mirach', 0, 2.7, 2, 97, false);
INSERT INTO public.star VALUES ('Almach', 0, 2.7, 3, 97, false);
INSERT INTO public.star VALUES ('Sadiradra', 0, 2.7, 4, 97, false);
INSERT INTO public.star VALUES ('Nembus', 0, 2.7, 5, 97, false);
INSERT INTO public.star VALUES ('Titawin', 0, 2.7, 6, 97, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: monosa monosa_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.monosa
    ADD CONSTRAINT monosa_pkey PRIMARY KEY (monosa_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id UNIQUE (moon_id);


--
-- Name: monosa unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.monosa
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (planet_name);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- PostgreSQL database dump complete
--

