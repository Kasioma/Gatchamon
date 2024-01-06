
CREATE TABLE public.monstats (
    name character varying(50) NOT NULL,
    hp integer NOT NULL,
    attack integer NOT NULL,
    defence integer NOT NULL,
    sp_attack integer NOT NULL,
    sp_defence integer NOT NULL,
    speed integer NOT NULL
);



--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--



ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currency (user_id, pokecash, pokedust, expeditions) FROM stdin;
\.


--
-- Data for Name: expeditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.expeditions (user_id, pokemon_id_one, pokemon_id_two, pokemon_id_three, location, "time") FROM stdin;
\.


--
-- Data for Name: moninv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moninv (id, user_id, pok_entry, shiny, level, exp, busy) FROM stdin;
\.


--
-- Data for Name: monstats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.monstats (name, hp, attack, defence, sp_attack, sp_defence, speed) FROM stdin;
Charmeleon	58	64	58	80	65	80
Charizard	78	84	78	109	85	100
Squirtle	44	48	65	50	64	43
\.


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemons (entry, name, type, ability, icon, rarity, evo, evolution) FROM stdin;
146	Moltres	Fire Flying	Pressure	https://img.pokemondb.net/sprites/black-white/normal/moltres.png	legendary	3	0
84	Doduo	Normal Flying	Run Away	https://img.pokemondb.net/sprites/black-white/normal/doduo-f.png	common	2	85
135	Jolteon	Electric	Volt Absorb	https://img.pokemondb.net/sprites/black-white/normal/jolteon.png	epic	3	0
5	Charmeleon	Fire	Blaze Solar Power	https://img.pokemondb.net/sprites/black-white/normal/charmeleon.png	rare	2	6
54	Psyduck	Water	Damp	https://img.pokemondb.net/sprites/black-white/normal/psyduck.png	uncommon	2	55
99	Kingler	Water	Hyper Cutter	https://img.pokemondb.net/sprites/black-white/normal/kingler.png	rare	3	0
151	Mew	Phychic	Synchronize	https://img.pokemondb.net/sprites/black-white/normal/mew.png	mythic	3	0
118	Goldeen	Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/goldeen-f.png	common	2	118
22	Fearow	Normal Flying	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/fearow.png	uncommon	3	0
27	Sandshrew	Ground	Sand Veil	https://img.pokemondb.net/sprites/black-white/normal/sandshrew.png	common	2	28
49	Venomoth	Bug Poison	Compound Eyes	https://img.pokemondb.net/sprites/black-white/normal/venomoth.png	uncommon	3	0
55	Golduck	Water	Damp	https://img.pokemondb.net/sprites/black-white/normal/golduck.png	rare	3	0
96	Drowzee	Phychic	Insomnia	https://img.pokemondb.net/sprites/black-white/normal/drowzee.png	uncommon	2	97
110	Weezing	Poison	Levitate	https://img.pokemondb.net/sprites/black-white/normal/weezing.png	rare	3	0
97	Hypno	Phychic	Insomnia	https://img.pokemondb.net/sprites/black-white/normal/hypno-f.png	rare	3	0
122	Mr. Mime	Phychic Fairy	Soundproof	https://img.pokemondb.net/sprites/black-white/normal/mr-mime.png	rare	3	0
101	Electrode	Electric	Soundproof	https://img.pokemondb.net/sprites/black-white/normal/electrode.png	rare	3	0
103	Exeggutor	Grass Phychic	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/exeggutor.png	rare	3	0
140	Kabuto	Rock Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/kabuto.png	common	2	141
124	Jynx	Ice Phychic	Oblivious	https://img.pokemondb.net/sprites/black-white/normal/jynx.png	rare	3	0
113	Chansey	Natural Cure	Natural Cure	https://img.pokemondb.net/sprites/black-white/normal/chansey.png	rare	3	0
119	Seaking	Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/seaking-f.png	uncommon	3	0
19	Rattata	Normal	Run Away	https://img.pokemondb.net/sprites/black-white/normal/rattata-f.png	common	2	20
125	Electabuzz	Electric	Static	https://img.pokemondb.net/sprites/black-white/normal/electabuzz.png	rare	3	0
21	Spearow	Normal Flying	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/spearow.png	common	2	22
108	Lickitung	Normal	Own Tempo	https://img.pokemondb.net/sprites/black-white/normal/lickitung.png	uncommon	3	0
107	Hitmonchan	Fighting	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/hitmonchan.png	rare	3	0
133	Eevee	Normal	Run Away	https://img.pokemondb.net/sprites/black-white/normal/eevee.png	rare	2	134
94	Gengar	Ghost Poison	Cursed Body	https://img.pokemondb.net/sprites/black-white/normal/gengar.png	epic	3	0
1	Bulbasaur	Grass Poison	Overgrow Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/bulbasaur.png	uncommon	1	2
116	Horsea	Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/horsea.png	uncommon	2	117
50	Diglett	Ground	Sand Veil	https://img.pokemondb.net/sprites/black-white/normal/diglett.png	common	2	51
121	Starmie	Water Phychic	Illuminate	https://img.pokemondb.net/sprites/black-white/normal/starmie.png	rare	3	0
14	Kakuna	Bug Poison	Shed Skin	https://img.pokemondb.net/sprites/black-white/normal/kakuna.png	common	2	15
33	Nidorino	Poison	Poison Point	https://img.pokemondb.net/sprites/black-white/normal/nidorino.png	uncommon	2	34
78	Rapidash	Fire	Flash Fire	https://img.pokemondb.net/sprites/black-white/normal/rapidash.png	rare	3	0
109	Koffing	Poison	Levitate	https://img.pokemondb.net/sprites/black-white/normal/koffing.png	uncommon	2	110
13	Weedle	Bug Poison	Shield Dust	https://img.pokemondb.net/sprites/black-white/normal/weedle.png	common	1	14
46	Paras	Bug Grass	Effect Spore	https://img.pokemondb.net/sprites/black-white/normal/paras.png	common	2	47
40	Wigglytuff	Normal Fairy	Cute Charm	https://img.pokemondb.net/sprites/black-white/normal/wigglytuff.png	uncommon	3	0
34	Nidoking	Poison Ground	Poison Point	https://img.pokemondb.net/sprites/black-white/normal/nidoking.png	rare	3	0
47	Parasect	Bug Grass	Effect Spore	https://img.pokemondb.net/sprites/black-white/normal/parasect.png	uncommon	3	0
38	Ninetales	Fire	Flash Fire	https://img.pokemondb.net/sprites/black-white/normal/ninetales.png	epic	3	0
36	Clefable	Fairy	Cute Charm	https://img.pokemondb.net/sprites/black-white/normal/clefable.png	epic	3	0
57	Primeape	Fighting	Vital Spirit	https://img.pokemondb.net/sprites/black-white/normal/primeape.png	uncommon	3	0
59	Arcanine	Fire	Intimidate	https://img.pokemondb.net/sprites/black-white/normal/arcanine.png	rare	3	0
51	Dugtrio	Ground	Sand Veil	https://img.pokemondb.net/sprites/black-white/normal/dugtrio.png	uncommon	3	0
142	Aerodactyl	Rock Flying	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/aerodactyl.png	epic	3	0
130	Gyarados	Water Flying	Intimidate	https://img.pokemondb.net/sprites/black-white/normal/gyarados-f.png	rare	3	0
141	Kabutops	Rock Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/kabutops.png	uncommon	3	0
106	Hitmonlee	Fighting	Limber	https://img.pokemondb.net/sprites/black-white/normal/hitmonlee.png	rare	3	0
85	Dodrio	Normal Flying	Run Away	https://img.pokemondb.net/sprites/black-white/normal/dodrio-f.png	uncommon	3	0
23	Ekans	Poison	Intimidate	https://img.pokemondb.net/sprites/black-white/normal/ekans.png	common	2	24
37	Vulpix	Fire	Flash Fire	https://img.pokemondb.net/sprites/black-white/normal/vulpix.png	rare	2	38
126	Magmar	Fire	Flame Body	https://img.pokemondb.net/sprites/black-white/normal/magmar.png	rare	3	0
35	Clefairy	Fairy	Cute Charm	https://img.pokemondb.net/sprites/black-white/normal/clefairy.png	rare	2	36
117	Seadra	Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/seadra.png	rare	3	0
9	Blastoise	Water	Torrent Rain-Dish	https://img.pokemondb.net/sprites/black-white/normal/blastoise.png	epic	3	0
12	Butterfree	Bug Flying	Compound Eyes	https://img.pokemondb.net/sprites/black-white/normal/butterfree-f.png	uncommon	3	0
15	Beedrill	Bug Poison	Swarm	https://img.pokemondb.net/sprites/black-white/normal/beedrill.png	uncommon	3	0
6	Charizard	Fire	Blaze Solar-Power	https://img.pokemondb.net/sprites/black-white/normal/charizard.png	epic	3	0
3	Venusaur	Grass Poison	Overgrow Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/venusaur-f.png	epic	3	0
24	Arbok	Poison	Intimidate	https://img.pokemondb.net/sprites/black-white/normal/arbok.png	uncommon	3	0
18	Pidgeot	Normal Flying	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/pidgeot.png	rare	3	0
129	Magikarp	Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/magikarp-f.png	common	2	130
31	Nidoqueen	Poison Ground	Poison Point	https://img.pokemondb.net/sprites/black-white/normal/nidoqueen.png	rare	3	0
98	Krabby	Water	Hyper Cutter	https://img.pokemondb.net/sprites/black-white/normal/krabby.png	uncommon	2	99
39	Jigglypuff	Normal Fairy	Cute Charm	https://img.pokemondb.net/sprites/black-white/normal/jigglypuff.png	common	2	40
56	Mankey	Fighting	Vital Spirit	https://img.pokemondb.net/sprites/black-white/normal/mankey.png	common	2	57
16	Pidgey	Normal Flying	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/pidgey.png	common	1	17
28	Sandslash	Ground	Sand Veil	https://img.pokemondb.net/sprites/black-white/normal/sandslash.png	uncommon	3	0
67	Machoke	Fighting	Guts	https://img.pokemondb.net/sprites/black-white/normal/machoke.png	uncommon	2	68
79	Slowpoke	Water Phychic	Oblivious	https://img.pokemondb.net/sprites/black-white/normal/slowpoke.png	uncommon	2	80
58	Growlithe	Fire	Intimidate	https://img.pokemondb.net/sprites/black-white/normal/growlithe.png	uncommon	2	59
93	Haunter	Ghost Poison	Levitate	https://img.pokemondb.net/sprites/black-white/normal/haunter.png	rare	2	94
100	Voltorb	Electric	Soundproof	https://img.pokemondb.net/sprites/black-white/normal/voltorb.png	uncommon	2	101
112	Rhydon	Ground Rock	Lightning Rod	https://img.pokemondb.net/sprites/black-white/normal/rhydon-f.png	rare	3	0
48	Venonat	Bug Poison	Compound Eyes	https://img.pokemondb.net/sprites/black-white/normal/venonat.png	common	2	49
72	Tentacool	Water Poison	Clear Body	https://img.pokemondb.net/sprites/black-white/normal/tentacool.png	uncommon	2	73
111	Rhyhorn	Ground Rock	Lightning Rod	https://img.pokemondb.net/sprites/black-white/normal/rhyhorn-f.png	uncommon	2	112
41	Zubat	Poison Flying	Inner Focus	https://img.pokemondb.net/sprites/black-white/normal/zubat-f.png	common	2	42
137	Porygon	Normal	Trace	https://img.pokemondb.net/sprites/black-white/normal/porygon.png	common	3	0
44	Gloom	Grass Poison	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/gloom-f.png	uncommon	2	45
68	Machamp	Fighting	Guts	https://img.pokemondb.net/sprites/black-white/normal/machamp.png	rare	3	0
8	Wartortle	Water	Torrent Rain Dish	https://img.pokemondb.net/sprites/black-white/normal/wartortle.png	rare	2	9
150	Mewtwo	Phychic	Pressure	https://img.pokemondb.net/sprites/black-white/normal/mewtwo.png	legendary	3	0
145	Zapdos	Electric Flying	Pressure	https://img.pokemondb.net/sprites/black-white/normal/zapdos.png	legendary	3	0
144	Articuno	Ice Flying	Pressure	https://img.pokemondb.net/sprites/black-white/normal/articuno.png	legendary	3	0
4	Charmander	Fire	Blaze Solar-Power	https://img.pokemondb.net/sprites/black-white/normal/charmander.png	uncommon	1	5
11	Metapod	Bug	Shed Skin	https://img.pokemondb.net/sprites/black-white/normal/metapod.png	common	2	12
42	Golbat	Poison Flying	Inner Focus	https://img.pokemondb.net/sprites/black-white/normal/golbat-f.png	uncommon	3	0
10	Caterpie	Bug	Shield Dust Run Away	https://img.pokemondb.net/sprites/black-white/normal/caterpie.png	common	1	11
147	Dratini	Dragon	Shed Skin	https://img.pokemondb.net/sprites/black-white/normal/dratini.png	uncommon	1	148
45	Vileplume	Grass Poison	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/vileplume-f.png	rare	3	0
62	Poliwrath	Water Fighting	Water Absorb	https://img.pokemondb.net/sprites/black-white/normal/poliwrath.png	rare	3	0
53	Persian	Normal	Pickup	https://img.pokemondb.net/sprites/black-white/normal/persian.png	uncommon	3	0
136	Flareon	Fire	Flash Fire	https://img.pokemondb.net/sprites/black-white/normal/flareon.png	epic	3	0
139	Omastar	Rock Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/omastar.png	uncommon	3	0
128	Tauros	Normal	Intimidate	https://img.pokemondb.net/sprites/black-white/normal/tauros.png	rare	3	0
131	Lapras	Water Ice	Water Absorb	https://img.pokemondb.net/sprites/black-white/normal/lapras.png	rare	3	0
132	Ditto	Normal	Imposter	https://img.pokemondb.net/sprites/black-white/normal/ditto.png	epic	3	0
30	Nidorina	Poison	Poison Point	https://img.pokemondb.net/sprites/black-white/normal/nidorina.png	uncommon	2	31
26	Raichu	Electric	Static	https://img.pokemondb.net/sprites/black-white/normal/raichu-f.png	epic	3	0
25	Pikachu	Electric	Static	https://img.pokemondb.net/sprites/black-white/normal/pikachu-f.png	rare	2	26
20	Raticate	Normal	Run Away	https://img.pokemondb.net/sprites/black-white/normal/raticate-f.png	uncommon	3	0
17	Pidgeotto	Normal Flying	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/pidgeotto.png	uncommon	2	18
138	Omanyte	Rock Water	Swift Swim	https://img.pokemondb.net/sprites/black-white/normal/omanyte.png	common	2	139
52	Meowth	Normal	Pickup	https://img.pokemondb.net/sprites/black-white/normal/meowth.png	common	2	53
105	Marowak	Ground	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/marowak.png	uncommon	3	0
76	Golem	Rock Ground	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/golem.png	rare	3	0
65	Alakazam	Phychic	Synchronize	https://img.pokemondb.net/sprites/black-white/normal/alakazam-f.png	epic	3	0
149	Dragonite	Dragon	Multiscale	https://img.pokemondb.net/sprites/black-white/normal/dragonite.png	epic	3	0
64	Kadabra	Phychic	Synchronize	https://img.pokemondb.net/sprites/black-white/normal/kadabra-f.png	rare	2	65
104	Cubone	Ground	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/cubone.png	common	2	105
43	Oddish	Grass Poison	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/oddish.png	common	1	44
71	Victreebel	Grass Poison	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/victreebel.png	rare	3	0
148	Dragonair	Dragon	Shed Skin	https://img.pokemondb.net/sprites/black-white/normal/dragonair.png	rare	2	149
32	Nidoran♂	Poison	Poison Point	https://img.pokemondb.net/sprites/black-white/normal/nidoran-m.png	common	1	33
7	Squirtle	Water	Torrent Rain Dish	https://img.pokemondb.net/sprites/black-white/normal/squirtle.png	uncommon	1	8
60	Poliwag	Water	Water Absorb	https://img.pokemondb.net/sprites/black-white/normal/poliwag.png	common	1	61
29	Nidoran	Poison	Poison Point	https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png	common	1	30
2	Ivysaur	Grass Poison	Overgrow Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/ivysaur.png	rare	2	3
75	Graveler	Rock Ground	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/graveler.png	uncommon	2	76
61	Poliwhirl	Water	Water Absorb	https://img.pokemondb.net/sprites/black-white/normal/poliwhirl.png	uncommon	2	62
70	Weepinbell	Grass Poison	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/weepinbell.png	uncommon	2	71
63	Abra	Phychic	Synchronize	https://img.pokemondb.net/sprites/black-white/normal/abra.png	uncommon	1	64
73	Tentacruel	Water Poison	Clear Body	https://img.pokemondb.net/sprites/black-white/normal/tentacruel.png	rare	3	0
77	Ponyta	Fire	Flash Fire	https://img.pokemondb.net/sprites/black-white/normal/ponyta.png	uncommon	2	78
102	Exeggcute	Grass Phychic	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/exeggcute.png	uncommon	2	103
89	Muk	Poison	Stench	https://img.pokemondb.net/sprites/black-white/normal/muk.png	uncommon	3	0
95	Onix	Rock Ground	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/onix.png	uncommon	3	0
74	Geodude	Rock Ground	Rock Head	https://img.pokemondb.net/sprites/black-white/normal/geodude.png	common	1	75
86	Seel	Water	Thick Fat	https://img.pokemondb.net/sprites/black-white/normal/seel.png	common	2	87
80	Slowbro	Water Phychic	Oblivious	https://img.pokemondb.net/sprites/black-white/normal/slowbro.png	rare	3	0
69	Bellsprout	Grass Poison	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/bellsprout.png	common	1	70
66	Machop	Fighting	Guts	https://img.pokemondb.net/sprites/black-white/normal/machop.png	common	1	67
88	Grimer	Poison	Stench	https://img.pokemondb.net/sprites/black-white/normal/grimer.png	common	2	89
91	Cloyster	Water Ice	Shell Armor	https://img.pokemondb.net/sprites/black-white/normal/cloyster.png	rare	3	0
143	Snorlax	Normal	Thick Fat	https://img.pokemondb.net/sprites/black-white/normal/snorlax.png	epic	3	0
134	Vaporeon	Water	Water Absorb	https://img.pokemondb.net/sprites/black-white/normal/vaporeon.png	epic	3	0
120	Staryu	Water	Illuminate	https://img.pokemondb.net/sprites/black-white/normal/staryu.png	uncommon	2	121
83	Farfetchd	Normal Fighting	Keen Eye	https://img.pokemondb.net/sprites/black-white/normal/farfetchd.png	uncommon	3	0
87	Dewgong	Water Ice	Thick Fat	https://img.pokemondb.net/sprites/black-white/normal/dewgong.png	uncommon	3	0
123	Scyther	Bug Flying	Swarm	https://img.pokemondb.net/sprites/black-white/normal/scyther-f.png	rare	3	0
114	Tangela	Grass	Chlorophyll	https://img.pokemondb.net/sprites/black-white/normal/tangela.png	common	3	0
90	Shellder	Water	Shell Armor	https://img.pokemondb.net/sprites/black-white/normal/shellder.png	uncommon	2	91
127	Pinsir	Bug	Hyper Cutter	https://img.pokemondb.net/sprites/black-white/normal/pinsir.png	rare	3	0
115	Kangaskhan	Normal	Early Bird	https://img.pokemondb.net/sprites/black-white/normal/kangaskhan.png	rare	3	0
92	Gastly	Ghost Poison	Levitate	https://img.pokemondb.net/sprites/black-white/normal/gastly.png	uncommon	1	93
82	Magneton	Electric Steel	Magnet Pull	https://img.pokemondb.net/sprites/black-white/normal/magneton.png	uncommon	3	0
81	Magnemite	Electric Steel	Magnet Pull	https://img.pokemondb.net/sprites/black-white/normal/magnemite.png	common	2	82
\.


--
-- Data for Name: roulette; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roulette (icon, name) FROM stdin;
https://img.pokemondb.net/sprites/black-white/normal/porygon.png	Porygon
https://img.pokemondb.net/sprites/black-white/normal/tentacool.png	Tentacool
https://img.pokemondb.net/sprites/black-white/normal/oddish.png	Oddish
https://img.pokemondb.net/sprites/black-white/normal/vileplume-f.png	Vileplume
https://img.pokemondb.net/sprites/black-white/normal/hitmonchan.png	Hitmonchan
https://img.pokemondb.net/sprites/black-white/normal/pidgeotto.png	Pidgeotto
https://img.pokemondb.net/sprites/black-white/normal/cloyster.png	Cloyster
https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png	Nidoran
https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png	Nidoran
https://img.pokemondb.net/sprites/black-white/normal/vileplume-f.png	Vileplume
https://img.pokemondb.net/sprites/black-white/normal/venusaur-f.png	Venusaur
https://img.pokemondb.net/sprites/black-white/normal/diglett.png	Diglett
https://img.pokemondb.net/sprites/black-white/normal/jigglypuff.png	Jigglypuff
https://img.pokemondb.net/sprites/black-white/normal/chansey.png	Chansey
https://img.pokemondb.net/sprites/black-white/normal/doduo-f.png	Doduo
https://img.pokemondb.net/sprites/black-white/normal/rattata-f.png	Rattata
https://img.pokemondb.net/sprites/black-white/normal/tentacool.png	Tentacool
https://img.pokemondb.net/sprites/black-white/normal/jigglypuff.png	Jigglypuff
https://img.pokemondb.net/sprites/black-white/normal/tentacool.png	Tentacool
https://img.pokemondb.net/sprites/black-white/normal/blastoise.png	Blastoise
https://img.pokemondb.net/sprites/black-white/normal/venusaur-f.png	Venusaur
https://img.pokemondb.net/sprites/black-white/normal/metapod.png	Metapod
https://img.pokemondb.net/sprites/black-white/normal/dugtrio.png	Dugtrio
https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png	Nidoran
https://img.pokemondb.net/sprites/black-white/normal/dugtrio.png	Dugtrio
https://img.pokemondb.net/sprites/black-white/normal/meowth.png	Meowth
https://img.pokemondb.net/sprites/black-white/normal/metapod.png	Metapod
https://img.pokemondb.net/sprites/black-white/normal/seel.png	Seel
https://img.pokemondb.net/sprites/black-white/normal/oddish.png	Oddish
https://img.pokemondb.net/sprites/black-white/normal/rattata-f.png	Rattata
https://img.pokemondb.net/sprites/black-white/normal/doduo-f.png	Doduo
https://img.pokemondb.net/sprites/black-white/normal/shellder.png	Shellder
https://img.pokemondb.net/sprites/black-white/normal/kakuna.png	Kakuna
https://img.pokemondb.net/sprites/black-white/normal/machamp.png	Machamp
https://img.pokemondb.net/sprites/black-white/normal/mewtwo.png	Mewtwo
https://img.pokemondb.net/sprites/black-white/normal/tangela.png	Tangela
https://img.pokemondb.net/sprites/black-white/normal/caterpie.png	Caterpie
https://img.pokemondb.net/sprites/black-white/normal/rattata-f.png	Rattata
https://img.pokemondb.net/sprites/black-white/normal/shellder.png	Shellder
https://img.pokemondb.net/sprites/black-white/normal/pidgey.png	Pidgey
https://img.pokemondb.net/sprites/black-white/normal/diglett.png	Diglett
https://img.pokemondb.net/sprites/black-white/normal/slowpoke.png	Slowpoke
https://img.pokemondb.net/sprites/black-white/normal/pidgeot.png	Pidgeot
https://img.pokemondb.net/sprites/black-white/normal/omanyte.png	Omanyte
https://img.pokemondb.net/sprites/black-white/normal/dratini.png	Dratini
https://img.pokemondb.net/sprites/black-white/normal/pidgeotto.png	Pidgeotto
https://img.pokemondb.net/sprites/black-white/normal/slowpoke.png	Slowpoke
https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png	Nidoran
https://img.pokemondb.net/sprites/black-white/normal/pidgeot.png	Pidgeot
https://img.pokemondb.net/sprites/black-white/normal/sandshrew.png	Sandshrew
https://img.pokemondb.net/sprites/black-white/normal/venusaur-f.png	Venusaur
https://img.pokemondb.net/sprites/black-white/normal/oddish.png	Oddish
https://img.pokemondb.net/sprites/black-white/normal/diglett.png	Diglett
https://img.pokemondb.net/sprites/black-white/normal/blastoise.png	Blastoise
https://img.pokemondb.net/sprites/black-white/normal/dugtrio.png	Dugtrio
https://img.pokemondb.net/sprites/black-white/normal/mankey.png	Mankey
https://img.pokemondb.net/sprites/black-white/normal/golbat-f.png	Golbat
https://img.pokemondb.net/sprites/black-white/normal/rattata-f.png	Rattata
https://img.pokemondb.net/sprites/black-white/normal/poliwag.png	Poliwag
https://img.pokemondb.net/sprites/black-white/normal/shellder.png	Shellder
https://img.pokemondb.net/sprites/black-white/normal/diglett.png	Diglett
https://img.pokemondb.net/sprites/black-white/normal/blastoise.png	Blastoise
https://img.pokemondb.net/sprites/black-white/normal/goldeen-f.png	Goldeen
https://img.pokemondb.net/sprites/black-white/normal/seel.png	Seel
https://img.pokemondb.net/sprites/black-white/normal/slowpoke.png	Slowpoke
https://img.pokemondb.net/sprites/black-white/normal/pidgey.png	Pidgey
https://img.pokemondb.net/sprites/black-white/normal/slowpoke.png	Slowpoke
https://img.pokemondb.net/sprites/black-white/normal/sandshrew.png	Sandshrew
https://img.pokemondb.net/sprites/black-white/normal/machamp.png	Machamp
https://img.pokemondb.net/sprites/black-white/normal/goldeen-f.png	Goldeen
https://img.pokemondb.net/sprites/black-white/normal/golbat-f.png	Golbat
https://img.pokemondb.net/sprites/black-white/normal/porygon.png	Porygon
https://img.pokemondb.net/sprites/black-white/normal/slowpoke.png	Slowpoke
https://img.pokemondb.net/sprites/black-white/normal/venusaur-f.png	Venusaur
https://img.pokemondb.net/sprites/black-white/normal/hitmonchan.png	Hitmonchan
https://img.pokemondb.net/sprites/black-white/normal/oddish.png	Oddish
https://img.pokemondb.net/sprites/black-white/normal/machamp.png	Machamp
https://img.pokemondb.net/sprites/black-white/normal/oddish.png	Oddish
https://img.pokemondb.net/sprites/black-white/normal/meowth.png	Meowth
https://img.pokemondb.net/sprites/black-white/normal/tentacool.png	Tentacool
https://img.pokemondb.net/sprites/black-white/normal/seel.png	Seel
https://img.pokemondb.net/sprites/black-white/normal/chansey.png	Chansey
https://img.pokemondb.net/sprites/black-white/normal/mew.png	Mew
https://img.pokemondb.net/sprites/black-white/normal/porygon.png	Porygon
https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png	Nidoran
https://img.pokemondb.net/sprites/black-white/normal/machamp.png	Machamp
https://img.pokemondb.net/sprites/black-white/normal/dugtrio.png	Dugtrio
https://img.pokemondb.net/sprites/black-white/normal/seel.png	Seel
https://img.pokemondb.net/sprites/black-white/normal/chansey.png	Chansey
https://img.pokemondb.net/sprites/black-white/normal/dratini.png	Dratini
https://img.pokemondb.net/sprites/black-white/normal/seel.png	Seel
https://img.pokemondb.net/sprites/black-white/normal/golbat-f.png	Golbat
https://img.pokemondb.net/sprites/black-white/normal/blastoise.png	Blastoise
https://img.pokemondb.net/sprites/black-white/normal/doduo-f.png	Doduo
https://img.pokemondb.net/sprites/black-white/normal/doduo-f.png	Doduo
https://img.pokemondb.net/sprites/black-white/normal/pidgey.png	Pidgey
https://img.pokemondb.net/sprites/black-white/normal/shellder.png	Shellder
https://img.pokemondb.net/sprites/black-white/normal/hitmonchan.png	Hitmonchan
https://img.pokemondb.net/sprites/black-white/normal/pidgeotto.png	Pidgeotto
https://img.pokemondb.net/sprites/black-white/normal/porygon.png	Porygon
\.


--
-- Data for Name: roulettelogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roulettelogs (id, user_id, name) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, nickname, email, password, isadmin) FROM stdin;
\.


--
-- Name: moninv moninv_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moninv
    ADD CONSTRAINT moninv_pkey PRIMARY KEY (id);


--
-- Name: pokemons pokemons_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_name_key UNIQUE (name);


--
-- Name: pokemons pokemons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_pkey PRIMARY KEY (entry);


--
-- Name: roulettelogs roulettelogs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roulettelogs
    ADD CONSTRAINT roulettelogs_pkey PRIMARY KEY (id);


--
-- Name: users users_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_key UNIQUE (id);


--
-- Name: users users_nickname_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nickname_key UNIQUE (nickname);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);

--
-- Name: currency currency_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: moninv moninv_pok_entry_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moninv
    ADD CONSTRAINT moninv_pok_entry_fkey FOREIGN KEY (pok_entry) REFERENCES public.pokemons(entry);


--
-- Name: moninv moninv_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moninv
    ADD CONSTRAINT moninv_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: roulettelogs roulettelogs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roulettelogs
    ADD CONSTRAINT roulettelogs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

