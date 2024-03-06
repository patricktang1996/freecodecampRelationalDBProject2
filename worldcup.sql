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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 65, 66, 2, 4, 2018, 'Final');
INSERT INTO public.games VALUES (2, 67, 68, 0, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 66, 68, 1, 2, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 65, 67, 0, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 66, 69, 2, 3, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 68, 70, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 67, 71, 1, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 65, 72, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 68, 73, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 70, 74, 0, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 67, 75, 2, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 71, 76, 0, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 66, 77, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 69, 78, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 72, 79, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 65, 80, 3, 4, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 81, 80, 0, 1, 2014, 'Final');
INSERT INTO public.games VALUES (18, 82, 71, 0, 3, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 80, 82, 0, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 81, 71, 1, 7, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 82, 83, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 80, 67, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 71, 73, 1, 2, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 81, 65, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 71, 84, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 73, 72, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 65, 85, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 81, 86, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 82, 76, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 83, 87, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 80, 74, 0, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 67, 88, 1, 2, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (65, 'France');
INSERT INTO public.teams VALUES (66, 'Croatia');
INSERT INTO public.teams VALUES (67, 'Belgium');
INSERT INTO public.teams VALUES (68, 'England');
INSERT INTO public.teams VALUES (69, 'Russia');
INSERT INTO public.teams VALUES (70, 'Sweden');
INSERT INTO public.teams VALUES (71, 'Brazil');
INSERT INTO public.teams VALUES (72, 'Uruguay');
INSERT INTO public.teams VALUES (73, 'Colombia');
INSERT INTO public.teams VALUES (74, 'Switzerland');
INSERT INTO public.teams VALUES (75, 'Japan');
INSERT INTO public.teams VALUES (76, 'Mexico');
INSERT INTO public.teams VALUES (77, 'Denmark');
INSERT INTO public.teams VALUES (78, 'Spain');
INSERT INTO public.teams VALUES (79, 'Portugal');
INSERT INTO public.teams VALUES (80, 'Argentina');
INSERT INTO public.teams VALUES (81, 'Germany');
INSERT INTO public.teams VALUES (82, 'Netherlands');
INSERT INTO public.teams VALUES (83, 'Costa Rica');
INSERT INTO public.teams VALUES (84, 'Chile');
INSERT INTO public.teams VALUES (85, 'Nigeria');
INSERT INTO public.teams VALUES (86, 'Algeria');
INSERT INTO public.teams VALUES (87, 'Greece');
INSERT INTO public.teams VALUES (88, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 88, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

