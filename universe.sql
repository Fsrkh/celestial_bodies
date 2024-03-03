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
-- Name: celestial_body; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body (
    celestial_body_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(50),
    description text,
    is_active boolean
);


ALTER TABLE public.celestial_body OWNER TO freecodecamp;

--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_body_id_seq OWNED BY public.celestial_body.celestial_body_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    shape text,
    spiral boolean
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
    name character varying NOT NULL,
    orbit_period integer NOT NULL,
    planet_id integer,
    composition text,
    has_life boolean
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
    name character varying NOT NULL,
    size numeric NOT NULL,
    habitable boolean,
    star_id integer,
    atmosphere text,
    rings boolean
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
    name character varying NOT NULL,
    type text NOT NULL,
    age integer,
    galaxy_id integer,
    luminosity integer,
    is_main_star boolean
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
-- Name: celestial_body celestial_body_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN celestial_body_id SET DEFAULT nextval('public.celestial_body_body_id_seq'::regclass);


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
-- Data for Name: celestial_body; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body VALUES (1, 'Sun', 'Star', 'The star at the center of our solar system', true);
INSERT INTO public.celestial_body VALUES (2, 'Moon', 'Satellite', 'The natural satellite of Earth', true);
INSERT INTO public.celestial_body VALUES (3, 'Mars', 'Planet', 'The fourth planet from the Sun', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 200000, 'Elliptical', false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 80000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 150000, 'Unbarred Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 90000, 'Face-on Spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon1', 27, 73, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (22, 'Moon2', 2, 73, 'Ice and rock', false);
INSERT INTO public.moon VALUES (23, 'Moon3', 24, 74, 'Water ice', false);
INSERT INTO public.moon VALUES (24, 'Moon4', 16, 74, 'Rocky', false);
INSERT INTO public.moon VALUES (25, 'Moon5', 4, 74, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (26, 'Moon6', 6, 75, 'Ice and rock', false);
INSERT INTO public.moon VALUES (27, 'Moon7', 7, 75, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (28, 'Moon8', 2, 75, 'Water ice', false);
INSERT INTO public.moon VALUES (29, 'Moon9', 7, 75, 'Rocky', false);
INSERT INTO public.moon VALUES (30, 'Moon10', 6, 75, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (31, 'Moon11', 8, 76, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (32, 'Moon12', 13, 76, 'Water ice', false);
INSERT INTO public.moon VALUES (33, 'Moon13', 5, 77, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (34, 'Moon14', 2, 77, 'Rocky', false);
INSERT INTO public.moon VALUES (35, 'Moon15', 9, 77, 'Ice and rock', false);
INSERT INTO public.moon VALUES (36, 'Moon16', 13, 77, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (37, 'Moon17', 18, 78, 'Water ice', false);
INSERT INTO public.moon VALUES (38, 'Moon18', 12, 78, 'Rocky', false);
INSERT INTO public.moon VALUES (39, 'Moon19', 21, 78, 'Silicate rocks', false);
INSERT INTO public.moon VALUES (40, 'Moon20', 22, 79, 'Silicate rocks', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (73, 'Earth', 1, true, 1, 'Nitrogen, Oxygen', false);
INSERT INTO public.planet VALUES (74, 'Mars', 0.53, false, 1, 'Carbon Dioxide', false);
INSERT INTO public.planet VALUES (75, 'Venus', 0.95, false, 1, 'Carbon Dioxide', false);
INSERT INTO public.planet VALUES (76, 'Jupiter', 317.8, false, 2, 'Hydrogen, Helium', true);
INSERT INTO public.planet VALUES (77, 'Saturn', 95.2, false, 2, 'Hydrogen, Helium', true);
INSERT INTO public.planet VALUES (78, 'Neptune', 17.1, false, 3, 'Hydrogen, Helium', false);
INSERT INTO public.planet VALUES (79, 'Uranus', 14.5, false, 3, 'Hydrogen, Helium', false);
INSERT INTO public.planet VALUES (80, 'Mercury', 0.06, false, 1, 'No significant atmosphere', false);
INSERT INTO public.planet VALUES (81, 'Kepler-452b', 1.6, true, 5, 'Unknown', false);
INSERT INTO public.planet VALUES (82, 'HD 209458 b', 1.3, true, 6, 'Unknown', false);
INSERT INTO public.planet VALUES (83, 'TrES-2b', 1.2, false, 5, 'Unknown', false);
INSERT INTO public.planet VALUES (84, 'KELT-9b', 1.8, false, 6, 'Unknown', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence', 46000000, 1, 1, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G2V main-sequence', 60000000, 1, 1, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 'K1V main-sequence', 60000000, 1, 1, false);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'M5.5Ve red dwarf', 42000000, 1, 0, false);
INSERT INTO public.star VALUES (5, 'Sirius A', 'A1V main-sequence', 2300000, 2, 25, true);
INSERT INTO public.star VALUES (6, 'Sirius B', 'White dwarf', 2300000, 2, 0, false);


--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_body_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 84, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_body celestial_body_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_id_pkey PRIMARY KEY (celestial_body_id);


--
-- Name: celestial_body celestial_body_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_name_key UNIQUE (name);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

