--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    speed integer,
    is_periodic boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(50),
    distance_from_earth numeric,
    has_life boolean NOT NULL,
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    diameter integer,
    planet_id integer,
    has_life boolean NOT NULL,
    description text
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
    name character varying(100) NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_star integer NOT NULL,
    star_id integer,
    description text
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
    name character varying(100) NOT NULL,
    type character varying(50),
    mass integer NOT NULL,
    galaxy_id integer,
    description text
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 29000000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 50000000, false, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, true, 'The Milky Way contains our solar system.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2500000, false, 'Andromeda is the closest spiral galaxy to us.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 1, false, 'Earth''s natural satellite.');
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 2, false, 'One of Mars'' moons.');
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 2, false, 'Smaller moon of Mars.');
INSERT INTO public.moon VALUES (4, 'Europa', 3121, 3, false, 'An icy moon of Jupiter.');
INSERT INTO public.moon VALUES (5, 'Ganymede', 5268, 3, false, 'Largest moon in the solar system.');
INSERT INTO public.moon VALUES (6, 'Io', 3643, 3, false, 'A volcanic moon of Jupiter.');
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 3, false, 'A heavily cratered moon of Jupiter.');
INSERT INTO public.moon VALUES (8, 'Proxima b Moon 1', 500, 4, false, 'Moon of Proxima b.');
INSERT INTO public.moon VALUES (9, 'Sirius b Moon 1', 800, 5, false, 'Moon orbiting Sirius b Planet 1.');
INSERT INTO public.moon VALUES (10, 'Alpha b Moon 1', 1200, 7, false, 'Moon orbiting Alpha b.');
INSERT INTO public.moon VALUES (11, 'Alpha b Moon 2', 1100, 7, false, 'Second moon of Alpha b.');
INSERT INTO public.moon VALUES (12, 'Betelgeuse b Moon 1', 1000, 9, false, 'Moon near Betelgeuse.');
INSERT INTO public.moon VALUES (13, 'Betelgeuse b Moon 2', 1500, 9, false, 'Another moon near Betelgeuse.');
INSERT INTO public.moon VALUES (14, 'Betelgeuse c Moon 1', 1400, 10, false, 'Moon orbiting Betelgeuse c.');
INSERT INTO public.moon VALUES (15, 'Whirlpool Moon 1', 700, 11, false, 'Exomoon in the Whirlpool galaxy.');
INSERT INTO public.moon VALUES (16, 'Whirlpool Moon 2', 750, 12, false, 'Second exomoon in the Whirlpool galaxy.');
INSERT INTO public.moon VALUES (17, 'Earth Moon 2', 3400, 1, false, 'A hypothetical moon for Earth.');
INSERT INTO public.moon VALUES (18, 'Phobos 2', 20, 2, false, 'A hypothetical second moon for Mars.');
INSERT INTO public.moon VALUES (19, 'Jupiter''s Ice Moon', 3200, 3, false, 'Another moon of Jupiter.');
INSERT INTO public.moon VALUES (20, 'Callisto 2', 4800, 3, false, 'A twin moon of Callisto.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 1, 'The only planet known to support life.');
INSERT INTO public.planet VALUES (2, 'Mars', true, 2, 1, 'Known as the Red Planet.');
INSERT INTO public.planet VALUES (3, 'Jupiter', true, 5, 1, 'Largest planet in the solar system.');
INSERT INTO public.planet VALUES (4, 'Proxima b', true, 0, 2, 'A potentially habitable exoplanet.');
INSERT INTO public.planet VALUES (5, 'Sirius b Planet 1', true, 0, 3, 'A planet orbiting Sirius B.');
INSERT INTO public.planet VALUES (6, 'Sirius b Planet 2', true, 1, 3, 'Another planet in the Sirius system.');
INSERT INTO public.planet VALUES (7, 'Alpha b', true, 0, 5, 'Planet in the Alpha Centauri system.');
INSERT INTO public.planet VALUES (8, 'Alpha c', true, 0, 5, 'Another planet in the Alpha Centauri system.');
INSERT INTO public.planet VALUES (9, 'Betelgeuse b', true, 3, 4, 'Gas giant near Betelgeuse.');
INSERT INTO public.planet VALUES (10, 'Betelgeuse c', true, 5, 4, 'Another planet orbiting Betelgeuse.');
INSERT INTO public.planet VALUES (11, 'Whirlpool Planet 1', true, 2, 6, 'An exoplanet in the Whirlpool galaxy.');
INSERT INTO public.planet VALUES (12, 'Whirlpool Planet 2', true, 3, 6, 'Second exoplanet in the Whirlpool galaxy.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-Type Main Sequence', 1, 1, 'Our star in the Milky Way.');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'M-Type Red Dwarf', 0, 1, 'Closest star to our solar system.');
INSERT INTO public.star VALUES (3, 'Sirius', 'A-Type Main Sequence', 2, 1, 'Brightest star in the night sky.');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red Supergiant', 20, 1, 'Massive star near the end of its life.');
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'G-Type Main Sequence', 1, 2, 'Part of the Alpha Centauri system.');
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 'K-Type Main Sequence', 0, 2, 'Part of the Alpha Centauri system.');


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 13, true);


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
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

