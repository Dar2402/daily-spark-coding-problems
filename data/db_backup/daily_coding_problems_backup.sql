--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Debian 16.9-1.pgdg130+1)
-- Dumped by pg_dump version 16.9 (Debian 16.9-1.pgdg130+1)

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
-- Name: daily_coding_problem_19_08_2025; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daily_coding_problem_19_08_2025 (
    user_id integer NOT NULL,
    login_date date NOT NULL
);


ALTER TABLE public.daily_coding_problem_19_08_2025 OWNER TO postgres;

--
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    user_id integer,
    txn_date date,
    amount integer
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- Data for Name: daily_coding_problem_19_08_2025; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.daily_coding_problem_19_08_2025 (user_id, login_date) FROM stdin;
1	2025-01-01
1	2025-01-02
1	2025-01-04
2	2025-01-01
2	2025-01-02
2	2025-01-03
2	2025-01-05
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (user_id, txn_date, amount) FROM stdin;
1	2025-01-01	500
1	2025-01-03	-200
1	2025-01-05	300
2	2025-01-02	1000
2	2025-01-04	-400
\.


--
-- PostgreSQL database dump complete
--

