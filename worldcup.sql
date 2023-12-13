--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: team_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.team_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id OWNER TO freecodecamp;

--
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO freecodecamp;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (65, 2018, 'Final', 513, 514, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 515, 516, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 514, 516, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 513, 515, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 514, 522, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 516, 524, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 515, 526, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 513, 528, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 516, 530, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 524, 532, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 515, 534, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 526, 536, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 514, 538, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 522, 540, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 528, 542, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 513, 544, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 545, 544, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 547, 526, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 544, 547, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 545, 526, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 547, 554, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 544, 515, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 526, 530, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 545, 513, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 526, 562, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 530, 528, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 513, 566, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 545, 568, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 547, 536, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 554, 572, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 544, 532, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 515, 576, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (513, 'France');
INSERT INTO public.teams VALUES (514, 'Croatia');
INSERT INTO public.teams VALUES (515, 'Belgium');
INSERT INTO public.teams VALUES (516, 'England');
INSERT INTO public.teams VALUES (522, 'Russia');
INSERT INTO public.teams VALUES (524, 'Sweden');
INSERT INTO public.teams VALUES (526, 'Brazil');
INSERT INTO public.teams VALUES (528, 'Uruguay');
INSERT INTO public.teams VALUES (530, 'Colombia');
INSERT INTO public.teams VALUES (532, 'Switzerland');
INSERT INTO public.teams VALUES (534, 'Japan');
INSERT INTO public.teams VALUES (536, 'Mexico');
INSERT INTO public.teams VALUES (538, 'Denmark');
INSERT INTO public.teams VALUES (540, 'Spain');
INSERT INTO public.teams VALUES (542, 'Portugal');
INSERT INTO public.teams VALUES (544, 'Argentina');
INSERT INTO public.teams VALUES (545, 'Germany');
INSERT INTO public.teams VALUES (547, 'Netherlands');
INSERT INTO public.teams VALUES (554, 'Costa Rica');
INSERT INTO public.teams VALUES (562, 'Chile');
INSERT INTO public.teams VALUES (566, 'Nigeria');
INSERT INTO public.teams VALUES (568, 'Algeria');
INSERT INTO public.teams VALUES (572, 'Greece');
INSERT INTO public.teams VALUES (576, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: team_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.team_id', 1, false);


--
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.team_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 576, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

