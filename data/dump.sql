--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE books (
    id integer NOT NULL,
    title text,
    author text,
    price numeric(12,2),
    published date
);


ALTER TABLE books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY books (id, title, author, price, published) FROM stdin;
1	Developing SPAs	James Bender	48.00	2018-01-01
2	Web Scraping with Python	Ryan Mitchell	18.00	2017-11-01
3	Mining the Social Web	Matthew A. Russell, Mikhail Klassen	38.00	2017-11-01
4	Apache Cookbook	Rich Bowen, Ken Coar	58.00	2017-11-01
5	Learning Perl 6	brian d foy	68.00	2017-11-01
6	Learning Web Design	Jennifer Niederst Robbins	78.00	2017-10-01
7	Interactive Data Visualization for the Web	Scott Murray	68.00	2017-08-01
8	Securing Third-Party Code	Guy Podjarny	58.00	2017-08-01
9	The Art of Capacity Planning	Arun Kejariwal, John Allspaw	38.00	2017-08-01
10	Building Progressive Web Apps	Tal Ater	48.00	2017-08-01
11	Test-Driven Development with Python, 2nd Edition	Harry Percival	48.00	2017-08-01
12	Responsively Retrofitting	Christopher Schmitt	88.00	2017-07-01
13	Windows 10: The Missing Manual	David Pogue	28.00	2017-07-01
14	Flexbox in CSS	Estelle Weyl	68.00	2017-05-01
15	Learning React	Alex Banks, Eve Porcello	48.00	2017-04-01
16	Creating Web Animations	Kirupa Chinnathambi	48.00	2017-03-01
17	Getting Started with Varnish Cache	Thijs Feryn	78.00	2017-03-01
18	JSON at Work	Tom Marrs	18.00	2017-03-01
19	RESTful Web Clients	Mike Amundsen	38.00	2017-02-01
20	Efficient R Programming	Colin Gillespie, Robin Lovelace	68.00	2016-12-01
21	CSS: The Definitive Guide, 4th Edition	Eric Meyer, Estelle Weyl	78.00	2016-12-01
22	Using SVG with CSS3 and HTML5	Kurt Cagle, Amelia Bellamy-Royds, Dudley Storey	58.00	2016-11-01
23	Laravel: Up and Running	Matt Stauffer	78.00	2016-11-01
24	Introduction to Apache Flink	Ellen Friedman, Kostas Tzoumas	38.00	2016-10-01
25	Node.js for Embedded Systems	Patrick Mulder, Kelsey Breseman	18.00	2016-10-01
26	Automating Security in the Cloud	Tim Sandage, Ted Steffan	48.00	2016-10-01
27	High Performance Mobile Web	Maximiliano Firtman	58.00	2016-09-01
28	Building Isomorphic JavaScript Apps	Jason Strimpel, Maxime Najim	48.00	2016-09-01
29	Designing for Sustainability	Tim Frick	48.00	2016-08-01
30	Learning Rails 5	J. Mark Locklear, Eric J Gruber, Barnabas Bulpett	18.00	2016-08-01
31	OpenShift for Developers	Grant Shipley, Graham Dumpleton	78.00	2016-08-01
32	React: Up & Running	Stoyan Stefanov	38.00	2016-07-01
33	Data Visualization with Python and JavaScript	Kyran Dale	48.00	2016-06-01
34	Cassandra: The Definitive Guide	Jeff Carpenter, Eben Hewitt	48.00	2016-06-01
35	Table Layout in CSS	Eric A. Meyer	58.00	2016-06-01
36	Identity and Data Security for Web Development	Jonathan LeBlanc, Tim Messerschmidt	68.00	2016-06-01
37	Time Is Money	Tammy Everts	48.00	2016-06-01
38	Learning Ratpack	Dan Woods	38.00	2016-06-01
39	Learning Node	Shelley Powers	68.00	2016-05-01
40	Grid Layout in CSS	Eric A. Meyer	88.00	2016-04-01
41	Transitions and Animations in CSS	Estelle Weyl	48.00	2016-04-01
42	Learning PHP	David Sklar	38.00	2016-04-01
43	Positioning in CSS	Eric A. Meyer	68.00	2016-04-01
44	Web Content Management	Deane Barker	38.00	2016-03-01
45	Frontend Architecture for Design Systems	Micah Godbolt	48.00	2016-01-01
46	PHP Web Services	Lorna Jane Mitchell	58.00	2016-01-01
47	Client-Side Data Storage	Raymond Camden	78.00	2015-12-01
48	Padding, Borders, Outlines, and Margins in CSS	Eric A. Meyer	48.00	2015-12-01
49	Security for Web Developers	John Paul Mueller	38.00	2015-11-01
50	Learning Virtual Reality	Tony Parisi	48.00	2015-10-01
51	Programmer's Guide to Drupal	Jennifer Hodgdon	48.00	2015-10-01
52	Using WebPageTest	Rick Viscomi, Andy Davies, Marcel Duran	78.00	2015-10-01
53	RESTful Rails Development	Silvia Puglisi	28.00	2015-10-01
54	nginx	Stephen Corona	28.00	2015-10-01
55	Information Architecture	Louis Rosenfeld, Peter Morville, Jorge Arango	38.00	2015-09-01
56	Hack and HHVM	Owen Yamauchi	28.00	2015-09-01
57	Beautiful JavaScript	Anton Kovalyov	48.00	2015-08-01
58	CSS: The Missing Manual	David Sawyer McFarland	38.00	2015-08-01
59	Programming Google App Engine with Java	Dan Sanderson	38.00	2015-06-01
60	Programming Google App Engine with Python	Dan Sanderson	78.00	2015-06-01
61	Web Scraping with Python	Ryan Mitchell	58.00	2015-06-01
62	CSS Secrets	Lea Verou	38.00	2015-06-01
63	Colors, Backgrounds, and Gradients	Eric A. Meyer	28.00	2015-06-01
64	ASP.NET MVC 5 with Bootstrap and Knockout.js	Jamie Munro	58.00	2015-05-01
65	BeagleBone Cookbook	Mark A. Yoder, Jason Kridner	68.00	2015-04-01
66	Learning AngularJS	Ken Williamson	58.00	2015-03-01
67	Developing Web Apps with Haskell and Yesod	Michael Snoyman	48.00	2015-02-01
68	Developing Web Components	Jarrod Overson, Jason Strimpel	58.00	2015-02-01
69	JavaScript Cookbook	Shelley Powers	58.00	2015-01-01
70	Programming Chrome Apps	Marc Rochkind	48.00	2014-12-01
71	The Uncertain Web	Rob Larsen	48.00	2014-12-01
72	Knockout.js	Jamie Munro	68.00	2014-12-01
73	Designing for Performance	Lara Callender Hogan	28.00	2014-12-01
74	Learning PHP, MySQL & JavaScript	Robin Nixon	58.00	2014-12-01
75	High Performance Responsive Design	Tom Barker	58.00	2014-11-01
76	Lightweight Django	Julia Elman, Mark Lavin	58.00	2014-11-01
77	SVG Essentials	J. David Eisenberg, Amelia Bellamy-Royds	18.00	2014-10-01
78	JavaScript & jQuery: The Missing Manual	David Sawyer McFarland	48.00	2014-09-01
79	Responsive Typography	Jason Pamental	68.00	2014-09-01
80	AngularJS: Up and Running	Shyam Seshadri, Brad Green	88.00	2014-09-01
81	AWS System Administration	Mike Ryan, Federico Lucifredi	78.00	2014-08-01
82	Mobile and Web Messaging	Jeff Mesnil	58.00	2014-08-01
83	Responsive & Fast	Guy Podjarny	78.00	2014-08-01
84	Hands-On Sencha Touch 2	Lee Boonstra	48.00	2014-07-01
85	Building Web Apps with Ember.js	Jesse Cravens, Thomas Q Brady	48.00	2014-07-01
86	Enterprise Web Development	Yakov Fain, Victor Rasputnis, Anatole Tartakovsky, Viktor Gamov	58.00	2014-07-01
87	Web Development with Node and Express	Ethan Brown	58.00	2014-07-01
88	Programming JavaScript Applications	Eric Elliott	78.00	2014-06-01
89	WordPress: The Missing Manual	Matthew MacDonald	68.00	2014-06-01
90	Full Stack Web Development with Backbone.js	Patrick Mulder	68.00	2014-06-01
91	Learning Responsive Web Design	Clarissa Peterson	58.00	2014-06-01
92	Learning PHP, MySQL, JavaScript, CSS & HTML5	Robin Nixon	38.00	2014-05-01
93	Getting Started with OpenShift	Steve Pousty, Katie Miller	18.00	2014-05-01
94	Flask Web Development	Miguel Grinberg	48.00	2014-04-01
95	eCommerce in the Cloud	Kelly Goetsch	28.00	2014-04-01
96	Real-Time Communication with WebRTC	Salvatore Loreto, Simon Pietro Romano	68.00	2014-04-01
97	Building Web Apps with WordPress	Brian Messenlehner, Jason Coleman, Brad Williams	38.00	2014-04-01
98	Client-Server Web Apps with JavaScript and Java	Casimir Saternos	78.00	2014-03-01
99	Google Apps Script	James Ferreira	38.00	2014-03-01
100	Data Push Apps with HTML5 SSE	Darren Cook	38.00	2014-03-01
101	Designing Evolvable Web APIs with ASP.NET	Glenn Block, Pablo Cibraro, Pedro Felix, Howard Dierking, Darrel Miller	28.00	2014-03-01
102	Data Structures and Algorithms with JavaScript	Michael McMillan	68.00	2014-03-01
103	The Web Platform	Simon St.Laurent	68.00	2014-03-01
104	Building Polyfills	Brandon Satrom	48.00	2014-02-01
105	Learning Web App Development	Semmy Purewal	38.00	2014-02-01
106	Programming 3D Applications with HTML5 and WebGL	Tony Parisi	58.00	2014-02-01
107	Responsive Theming for Drupal	Mike Crittenden	28.00	2014-02-01
108	HTML5: The Missing Manual	Matthew MacDonald	58.00	2013-12-01
109	RaphaelJS	Chris Wilson	28.00	2013-12-01
110	Mobile HTML5	Estelle Weyl	58.00	2013-11-01
111	RESTful Java with JAX-RS 2.0	Bill Burke	38.00	2013-11-01
112	Releasing HTML5 Games for Windows 8	Jesse Freeman	58.00	2013-11-01
113	Test-Driven Infrastructure with Chef	Stephen Nelson-Smith	48.00	2013-10-01
114	Mining the Social Web	Matthew A. Russell	38.00	2013-10-01
115	RESTful Web APIs	Leonard Richardson, Mike Amundsen, Sam Ruby	58.00	2013-09-01
116	High Performance Browser Networking	Ilya Grigorik	58.00	2013-09-01
117	Java Web Services: Up and Running	Martin Kalin	58.00	2013-08-01
118	Programming for PaaS	Lucas Carlson	48.00	2013-07-01
119	HTML5 Pocket Reference	Jennifer Niederst Robbins	68.00	2013-07-01
120	CSS Fonts	Eric A. Meyer	18.00	2013-07-01
121	Learning SPARQL	Bob DuCharme	88.00	2013-07-01
122	Lift Cookbook	Richard Dallaway	38.00	2013-06-01
123	MongoDB: The Definitive Guide	Kristina Chodorow	28.00	2013-05-01
124	Bootstrap	Jake Spurlock, Dave Winer	48.00	2013-05-01
125	JavaScript for PHP Developers	Stoyan Stefanov	38.00	2013-04-01
126	PHP Web Services	Lorna Jane Mitchell	48.00	2013-04-01
127	Access 2013: The Missing Manual	Matthew MacDonald	28.00	2013-04-01
128	HTML5 Canvas	Steve Fulton, Jeff Fulton	78.00	2013-04-01
129	AngularJS	Brad Green, Shyam Seshadri	38.00	2013-04-01
130	Programming the Mobile Web	Maximiliano Firtman	48.00	2013-03-01
131	Web Audio API	Boris Smus	78.00	2013-03-01
132	Interactive Data Visualization for the Web	Scott Murray	58.00	2013-03-01
133	Opa: Up and Running	Henri Binsztok, Adam Koprowski, Ida Swarczewskaja	68.00	2013-02-01
134	Lean UX	Jeff Gothelf, Josh Seiden	58.00	2013-02-01
135	Sencha Touch 2 Up and Running	Adrian Kosmaczewski	38.00	2013-02-01
136	Programming PHP	Kevin Tatroe, Peter MacIntyre, Rasmus Lerdorf, Michael Bourque	88.00	2013-02-01
137	Developing with Couchbase Server	MC Brown	48.00	2013-02-01
138	CSS3: The Missing Manual	David Sawyer McFarland	78.00	2012-12-01
139	iPad: The Missing Manual	J.D. Biersdorfer	58.00	2012-12-01
140	Effective Monitoring and Alerting	Slawek Ligus	18.00	2012-11-01
141	Building Web, Cloud, and Mobile Solutions with F#	Daniel Mohl	68.00	2012-11-01
142	HTML5 Hacks	Jesse Cravens, Jeff Burtoft	48.00	2012-11-01
143	Adobe Edge Animate: The Missing Manual	Chris Grover	88.00	2012-11-01
144	HTML5 and JavaScript Web Apps	Wesley Hales	58.00	2012-10-01
145	ClojureScript: Up and Running	Stuart Sierra, Luke VanderHart	48.00	2012-10-01
146	Dart: Up and Running	Kathy Walrath, Seth Ladd	18.00	2012-10-01
147	WordPress: The Missing Manual	Matthew MacDonald	48.00	2012-10-01
148	Programming C# 5.0	Ian Griffiths	58.00	2012-10-01
149	Programming Google App Engine	Dan Sanderson	58.00	2012-10-01
150	CSS and Documents	Eric A. Meyer	58.00	2012-09-01
151	Selectors, Specificity, and the Cascade	Eric A. Meyer	88.00	2012-09-01
152	Values, Units, and Colors	Eric A. Meyer	58.00	2012-09-01
153	Adobe Edge Animate Preview 7: The Missing Manual	Chris Grover	58.00	2012-09-01
154	Programming ASP.NET MVC 4	Jess Chadwick, Todd Snyder, Hrusikesh Panda	18.00	2012-09-01
155	Learning Node	Shelley Powers	28.00	2012-08-01
156	Head First HTML and CSS	Elisabeth Robson, Eric Freeman	48.00	2012-08-01
157	Head First HTML and CSS	Elisabeth Robson, Eric Freeman	28.00	2012-08-01
158	Learning PHP, MySQL, JavaScript, and CSS	Robin Nixon	28.00	2012-08-01
159	Learning Web Design	Jennifer Niederst Robbins	28.00	2012-08-01
160	WebGL: Up and Running	Tony Parisi	38.00	2012-08-01
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('books_id_seq', 161, false);


--
-- Name: books books_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey1 PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

