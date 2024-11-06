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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    size numeric,
    orbit_distance numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    description text,
    has_life boolean NOT NULL
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
    name character varying(50),
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_planet integer
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
    name character varying(50),
    age_in_millions_of_years integer,
    planet_types text,
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
    name character varying(50),
    distance_from_earth numeric(20,2),
    is_spherical boolean NOT NULL,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 1, 940, 413.0);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 2, 525, 510.0);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 3, 512, 640.0);
INSERT INTO public.asteroid VALUES (4, 'Juno', 4, 250, 390.0);
INSERT INTO public.asteroid VALUES (5, 'Eros', 5, 16.8, 180.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 12000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 9000, 'Elliptical', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 5000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 3000, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, false, 384400);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 9377);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, 23463);
INSERT INTO public.moon VALUES (4, 'Io', 5, false, 421700);
INSERT INTO public.moon VALUES (5, 'Europa', 5, false, 671034);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, false, 1070400);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, false, 1882700);
INSERT INTO public.moon VALUES (8, 'Titan', 6, false, 1221870);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, false, 527040);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, false, 3561000);
INSERT INTO public.moon VALUES (11, 'Oberon', 7, false, 583520);
INSERT INTO public.moon VALUES (12, 'Titania', 7, false, 435910);
INSERT INTO public.moon VALUES (13, 'Triton', 8, false, 354760);
INSERT INTO public.moon VALUES (14, 'Nereid', 8, false, 5513400);
INSERT INTO public.moon VALUES (15, 'Charon', 9, false, 19570);
INSERT INTO public.moon VALUES (16, 'Styx', 9, false, 42656);
INSERT INTO public.moon VALUES (17, 'Nix', 9, false, 48694);
INSERT INTO public.moon VALUES (18, 'Kerberos', 9, false, 57774);
INSERT INTO public.moon VALUES (19, 'Hydra', 9, false, 64738);
INSERT INTO public.moon VALUES (20, 'Enceladus', 6, false, 238020);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 3000, 'Exoplanet', 6);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 3000, 'Exoplanet', 6);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 3000, 'Exoplanet', 6);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 3000, 'Exoplanet', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.00, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 8.60, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 643.00, true, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 860.00, true, 1);
INSERT INTO public.star VALUES (5, 'Vega', 25.00, true, 1);
INSERT INTO public.star VALUES (6, 'Antares', 550.00, true, 2);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


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
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

