DROP TABLE IF EXISTS channels CASCADE;

CREATE TABLE channels (
	channel_id bigserial NOT NULL PRIMARY KEY,
	owner_id bigserial NOT NULL,
	channel_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_owner_id
		FOREIGN KEY(owner_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE
); 

INSERT INTO channels (owner_id, channel_name)
	(SELECT user_id, 'My Winnipeg' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Bang Love, Juvenile A (46-okunen no koi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Scars of Dracula' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beast of Yucca Flats, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Homework' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Code 46' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Choices' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dirty Love' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'What the Day Owes the Night' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jane Eyre' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Good Heart, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cooking with Stella' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Universe of Keith Haring' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Snake in the Eagle''s Shadow (Se ying diu sau)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'She No Longer Talks, She Shoots' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blood Wedding (Bodas de sangre)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man of My Life, The (L''homme de sa vie)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Roman Polanski: Wanted and Desired' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Medallion, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Tease, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Witches, The (Le streghe)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Taxi!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Town Without Pity' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Taxi 3' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'At Five in the Afternoon (Panj é asr)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chasing Sleep' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Alien³ (a.k.a. Alien 3)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bridget Jones''s Diary' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Night in Old Mexico, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Barton Fink' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Oklahoma Kid, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beast, The (La bête)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hornets'' Nest' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Last Shot, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'You''re a Big Boy Now' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Andromeda Strain, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fantasy Mission Force (Mi ni te gong dui)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Supermen of Malegaon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Guru, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Murderous Maids (Blessures assassines, Les)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'File on Thelma Jordan, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fury' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Handful of Dust, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Speedway' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kronos (a.k.a. Captain Kronos: Vampire Hunter)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vampire Journals' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Victory' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man Exposed' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gold of Rome (L''oro di Roma)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'King Kong Lives' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dead Men Don''t Wear Plaid' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Doctor at Large' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Flash Gordon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hollywood Party' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Road Trip: Beer Pong' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Business as Usual' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dealin'' with Idiots' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ike: Countdown to D-Day' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Comme un chef' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Coca-Cola Kid, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'April Captains (Capitães de Abril)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Midsummer Night''s Dream, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Good Guys Wear Black' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'My Bodyguard' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Grudge 3, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'F.I.S.T.' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Under Ten Flags' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Day of the Dolphin, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Paris-Manhattan' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Liquid Sky' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Go' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Antboy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'All American Orgy (Cummings Farm)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kart Racer' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ginger and Fred (Ginger e Fred)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Going Straight' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dream Demon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Angry Silence, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tout ce qui brille' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beyond (Svinalängorna)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Argo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sea Wife' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Electric Dreams' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Philomena' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Through and Through (Na wylot)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Babar The Movie' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cimarron' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Brink of Life (Nära livet)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Senso' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Before Your Eyes (Min Dit: The Children of Diyarbakir)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Warriors of Virtue' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '7 Khoon Maaf' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Just Anybody (Le premier venu)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Changeling, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Narrow Margin, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Collision: Christopher Hitchens vs. Douglas Wilson' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'El chocolate del loro' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Shoot to Kill' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Murder on the Orient Express' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Woochi: The Demon Slayer' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'How to Marry a Millionaire' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Silent Fall' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'WarGames: The Dead Code' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Operation Crossbow' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Grand Day Out with Wallace and Gromit, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Spartacus' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'American Soldier, The (Der amerikanische Soldat)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'First Strike (Police Story 4: First Strike) (Ging chaat goo si 4: Ji gaan daan yam mo)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Desperados, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Land' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'All American Chump' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Torch Song Trilogy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pigskin Parade' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Camelot' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dancing in the Rain (Ples v dezju)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Trumpet of the Swan, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mandingo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bullet for Joey, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Griffin & Phoenix' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Whose Life Is It Anyway?' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'River of No Return' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Butcher, The (Boucher, Le)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stay Alive' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Our Little Girl' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Django the Bastard (Strangers Gundown, The) (Django il bastardo)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Planet of the Future, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vacuuming Completely Nude in Paradise' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Day They Robbed the Bank of England, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Breakin''' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'David Holzman''s Diary' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Party Girl' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lure of the Sila' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blind Alley' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Back from Eternity' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Swing Kids' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Two Days' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Waiter (Ober)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Highway to Hell' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Virgin Spring, The (Jungfrukällan)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Radio Pirates' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sansa' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stag' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Attack of the Giant Leeches' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Prince & Me, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Welcome to the Rileys' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Last Cowboy Standing (Skavabölen pojat)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cockneys vs Zombies' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blade II' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dead Husbands' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'My Grandfather''s People (Dedemin insanlari)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Toy, The (Le jouet)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Bounce, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Twilight of a Woman''s Soul (Sumerki zhenskoi dushi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Inner Circle' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cabaret Balkan (Bure Baruta)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Marius and Jeanette (Marius et Jeannette)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sideways' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'East Side Story' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Pacific' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Eaten Alive' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Men Don''t Leave' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Divine Intervention (Yadon ilaheyya)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'New Kind of Love, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'When Nietzsche Wept' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'One Tough Cop' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Torn Curtain' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'American Splendor' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fraternity Vacation' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Evidence' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sixteen Candles' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'House, The (A Casa)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Whatever Happened to Aunt Alice?' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Last House on the Left, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wild Strawberries (Smultronstället)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Toy Story' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dick Figures: The Movie' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lethal Weapon 2' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mr Bones 2: Back from the Past' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fierce Light: When Spirit Meets Action' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Printed Rainbow' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Good Work (Beau travail)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Siberian Education (Educazione siberiana)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hedgehog in the Fog' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blood Moon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Robot & Frank' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mass Effect: Paragon Lost' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Snowman, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Heroic Cops (Jing wang shuang xiong)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'China Blue' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hedda Gabler' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fightville' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'War Horse' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'My Favorite Martian' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Food of Love (Manjar de Amor)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jungle Book, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Distant Drums' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Suicide Kings' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hireling, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'King and I, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gunga Din' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Metalstorm: The Destruction of Jared-Syn' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Every Other Weekend (Un week-end sur deux)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Upperworld' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Great Directors' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Aziz Ansari: Intimate Moments for a Sensual Evening' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mighty Wind, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jason X' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Run Sister Run!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sex Up Your Life!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pirates' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Preaching to the Perverted' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sea Fog' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dead End Drive-In' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Innocent Sleep, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Monk and the Fish, The (Le moine et le poisson)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'O Lucky Man!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Light at the Edge of the World, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Clean, Shaven' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mr. Accident' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hellsinki (Rööperi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lola and Billy the Kid (Lola + Bilidikid)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Fox and the Hound 2' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kicked in the Head' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Just Visiting' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'River, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dying Young' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'White Countess, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Todos eran culpables' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pan''s Labyrinth (Laberinto del fauno, El)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'William S. Burroughs: A Man Within' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'One, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Case départ' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ponette' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Band Wagon, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Otis' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rahtree: Flower of the Night (Buppha Rahtree)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tokyo Twilight (Tôkyô boshoku)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tintin and I' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blue Gate Crossing (Lan se da men)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'G.I. Joe: Operation Dragonfire' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Trader Games (Krach)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Scarlet Empress, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Spider-Man' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Reminiscences of a Journey to Lithuania' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Avalanche' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Thampu' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'For the Birds' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Goddess, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gypsy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Croupier' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Slingshot, The (Kådisbellan)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lucía, Lucía (Hija del caníbal, La)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Goal! III' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Royal Affair, A (Kongelig affære, En)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Philosophers, The (After The Dark)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Of Snails and Men (Despre oameni si melci)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'King of the Ants' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Snake in the Eagle''s Shadow (Se ying diu sau)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tale of the Wind, A (Histoire de vent, Une)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Twin Dragons (Shuang long hui)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Zatoichi Goes to the Fire Festival (Zatôichi abare-himatsuri) (Zatôichi 21)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Separation City' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chocolat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cousin Bette' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Along Came Jones' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Destry Rides Again' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Family Stone, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Interrupters, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jason''s Lyric' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tinseltown' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ingmar Bergman on Life and Work (Ingmar Bergman: Om liv och arbete)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ever Since the World Ended' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vince Vaughn''s Wild West Comedy Show: 30 Days & 30 Nights - Hollywood to the Heartland' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Golden Age, The (Âge d''Or, L'')' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Baader Meinhof Komplex, Der' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Severance' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'L: Change the World' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In Their Sleep (Dans ton sommeil)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sam Peckinpah''s West: Legacy of a Hollywood Renegade' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Outlaw Josey Wales, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Children of the Corn: Genesis' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Games People Play: New York' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '101 Dalmatians (One Hundred and One Dalmatians)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cursed' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Unmade Beds' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wilby Conspiracy, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Severance' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hush' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '11th Hour, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Snow Cake' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sharkwater' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Castles in the Sky' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Skulls, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Run of the Arrow' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Avalanche' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tiger''s Tail, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Downloading Nancy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Live!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Maria' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bloodsport 2 (a.k.a. Bloodsport II: The Next Kumite)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man Called Adam, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bionicle 2: Legends of Metru Nui' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Days of Being Wild (A Fei jingjyuhn)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Turtle''s Tale: Sammy''s Adventures, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Office Space' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Living Magoroku' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Prison (Fängelse) ' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'X-Men: Days of Future Past' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man Who Saw Tomorrow, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Empty, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gay Purr-ee' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bedazzled' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Life Is Beautiful (La Vita è bella)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Long and Short of It, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sliding Doors' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Zozo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wind That Shakes the Barley, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kairat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Doom' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gigi' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Karate Kid, Part II, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gun the Man Down' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Freddy vs. Jason' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man Who Knew Too Much, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Godzilla vs. Hedorah (Gojira tai Hedorâ) (Godzilla vs. The Smog Monster) ' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Convent, The (O Convento)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Siegfried' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fuzz' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Banger Sisters, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bikini Summer III - South Beach Heat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nina Frisk' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dreamworlds II: Desire, Sex, Power in Music Video' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Royal Wedding' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Young Frankenstein' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bobby Fischer Against the World' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Docking the Boat (Att angöra en brygga)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Eila' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Straw Dogs' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lost Thing, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'San Antonio' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Shit Year' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I Think I Love My Wife' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Little Prince, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ingmar Bergman Makes a Movie (Ingmar Bergman gör en film)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'When Jews Were Funny' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fists in the Pocket (Pugni in tasca, I)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Catwoman' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Brother''s Keeper' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Kahuna, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Terri' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Acacia' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pitch Black' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Thirst' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Let It Be' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Come Have Coffee with Us' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Goodbye Uncle Tom' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sunshine Boys, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Waterloo Bridge' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Along the Sungari River (Song hua jiang shang)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stealing Home' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'War Lord, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Classe Tous Risques (Big Risk, The)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Knife, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Edge, The (Kray)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Psychosis' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '5 Fingers' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ride' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Serious Man, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Good Son' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Divorce American Style' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Otaku' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Solarbabies' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kick-Ass' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gold Diggers of 1933' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Elite Squad: The Enemy Within (Tropa de Elite 2 - O Inimigo Agora É Outro)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wild Wild West Revisited, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Central Park' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '10 minutes (10 minuta)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Horton Hears a Who!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Factotum' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Visitor, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Return Of The Ghostbusters' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wankers, The (Les branleuses)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Force Majeure (Turist)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Four Sahibjade' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Prairie Home Companion, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'October Baby' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dogs of War, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Poughkeepsie Tapes, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beyond the Border' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Drag Me to Hell' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Exiled (Fong juk)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sailor Who Fell from Grace with the Sea, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Don 2' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cromwell' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Unrest' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Home' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Walk Among the Tombstones, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'They Came Back (Les Revenants)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Divine Horsemen: The Living Gods of Haiti' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Idiot, The (Hakuchi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Emo Philips Live' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cat in Paris, A (Une vie de chat)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Back in the Day' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Whoopi Goldberg Presents Moms Mabley' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kiss the Bride' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chronicles of Narnia: Prince Caspian, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Affluenza' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Babylon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Phantom of the Opera, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Avengers, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Charisma (Karisuma)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Monsturd' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Le convoyeur' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tom Segura: Completely Normal' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pure' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Design for Living' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Save the Green Planet! (Jigureul jikyeora!)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hell''s Gate 11:11' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Aftermath' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Film About a Woman Who...' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Trotsky, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pinochet Case, The (Cas Pinochet, Le)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Airplane!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Across the Bridge' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bringing Out the Dead' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bullhead (Rundskop)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'She Creature (Mermaid Chronicles Part 1: She Creature)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Courier' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dark Horse (Voksne mennesker)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Odd Life of Timothy Green, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tulsa' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gay Deceivers, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Design for Living' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Smashed' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'If I Had a Million' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'SpongeBob SquarePants Movie, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Windows' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Faust' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jude the Obscure' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Robber, The (Der Räuber)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'All In This Tea' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sicilian Clan, The (Clan des Siciliens, Le)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Killer Holiday' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Urban Menace' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Didier' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Desert Trail, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Caine (Shark!)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'My Foolish Heart' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Piranhaconda' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mindhunters' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stacy''s Knights' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lost Boys: The Tribe' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Perfect Candidate, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Meetin'' WA' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Sky Dragon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Burton and Taylor' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Missionary, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Silencers, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Four Nights with Anna (Cztery noce z Anna)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'alaskaLand' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Treasure of the Four Crowns' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Story of Us, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Angel in My Pocket' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Red Rock West' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Attack of the Giant Leeches' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Whatever Happened to Aunt Alice?' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In Your Eyes' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chopper Chicks in Zombietown' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dog Soldiers' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Life Itself' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'La montaña rusa' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Afflicted, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lucky Break (a.k.a. Paperback Romance)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'And Then Came Lola' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Return of Frank Cannon, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Circles (Krugovi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Improv: 50 Years Behind the Brick Wall' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mask' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Game Change' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Zombie Strippers!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Erendira' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Raiders of Atlantis, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Broadway Damage' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Guest, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ordeal, The (Calvaire)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Secret of Kells, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Times Square' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Welcome Home, Roscoe Jenkins' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'EMR' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Game' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sex, Lies, and Videotape' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fighting Seabees, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Trans' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stepford Wives, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'M' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Climax, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Susana (Devil and the Flesh, The)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nocturno 29' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Career Girls' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Business as Usual' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Running from Crazy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Afterglow' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Carabineers, The (Carabiniers, Les)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pill, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Farscape: The Peacekeeper Wars' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Guelwaar' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sorry, Haters' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Babel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Greatest, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wedding Date, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'King''s Speech, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tarnation' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Princesas' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Invincible Iron Man, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bogus' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Autopsy (Macchie Solari)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Catechism Cataclysm, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Partners in Crime (Associés contre le crime...)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chapter 27' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jean-Michel Basquiat: The Radiant Child' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Revolt of the Zombies' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stonehearst Asylum' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Empire Falls' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Satisfaction (a.k.a. Girls of Summer)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Slackers' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Corruption (a.k.a. Carnage)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Adelheid' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Singapore Sling (Singapore sling: O anthropos pou agapise ena ptoma)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Inspector' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Night Flight' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'From Morn to Midnight (Von morgens bis Mitternacht)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Partly Cloudy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Shocker' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cahill U.S. Marshal (Cahill: United States Marshal) (Wednesday Morning)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fullmetal Alchemist the Movie: Conqueror of Shamballa (Gekijô-ban hagane no renkinjutsushi: Shanbara wo yuku mono)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'What Matters Most' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mattei Affair, The (Il caso Mattei)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gun Woman' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man in the Chair' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dark Truth, A (Truth, The)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mantrap' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jingle All the Way' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ramen Girl, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hothead (Coup de tête)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Helen' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Girasoli, I (Sunflower)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Fourth War' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Puppetmaster, The (Xi meng ren sheng)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Barrens, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'American Beauty' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dead Awake' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jungle Man-Eaters' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gable: The King Remembered' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'What No One Knows (Det som ingen ved)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bread, My Sweet, The (a.k.a. Wedding for Bella, A)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Futurama: Into the Wild Green Yonder' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Even Angels Eat Beans' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Morning After, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Mountain of the Cannibal God' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rush Hour 3' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Incognito' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Detective Dee and the Mystery of the Phantom Flame (Di Renjie)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ask the Dust' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rivers and Tides' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Five Minarets in New York (Act of Vengeance) (Terrorist, The)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chelsea Walls' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stolen Summer' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Last Train Home' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In China They Eat Dogs (I Kina spiser de hunde)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bridge to Nowhere, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Screaming Man, A (Un homme qui crie)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blood River' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lakeview Terrace' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'They Call Me Trinity' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Max Manus' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Obama Deception: The Mask Comes Off, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nick Fury: Agent of S.H.I.E.L.D.' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In the Name of the King: A Dungeon Siege Tale' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Russian Roulette' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'My Wife is an Actress (Ma Femme est une Actrice)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Miracle of Our Lady of Fatima' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pancho, the Millionaire Dog' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'House Party 3' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Don''t Look Now' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Makai Tensho: Samurai Reincarnation (Makai tenshô)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wizard of Oz, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Starflight: The Plane That Couldn''t Land' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'From Within' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Danger: Diabolik (Diabolik)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rumble in the Air-Conditioned Auditorium: O''Reilly vs. Stewart 2012, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Camila' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Armageddon (Armaguedon)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Flow' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Look at Me (Comme une image)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Flirting With Disaster' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'At First Sight (Entre Nous) (Coup de foudre)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Case of the Whitechapel Vampire, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hello, Dolly!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Young Man with a Horn' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Girl From Paris, A (hirondelle a fait le printemps, Une)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Free Zone' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cyclo (Xich lo)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mount Head (Atama yama)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Art of War III: Retribution, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Doc' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'It Felt Like Love' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Secretariat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Arbor, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hungry for Change' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tremors 3: Back to Perfection' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Artois the Goat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Junior' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Conserva Acabada' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Easy Money (Snabba Cash)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dealin'' with Idiots' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nine Lives' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nico Icon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Burmese Harp, The (Biruma no tategoto)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Captain''s Paradise, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '7500' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'She' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'See What I''m Saying: The Deaf Entertainers Documentary' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Into the Middle of Nowhere' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'American Adobo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Crossfire Trail (Louis L''Amour''s ''Crossfire Trail'')' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Celeste and Jesse Forever (Celeste & Jesse Forever)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Come Early Morning' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Boss, The (Fists of Fury) (Tang shan da xiong)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tetsuo II: Body Hammer' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Five Man Army' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Karate Kid, Part III, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Listen to Your Heart' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Personal Property' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Brown Sugar' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hearts Divided' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bridegroom' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Taming the Fire (Ukroshcheniye ognya)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I Was a Male War Bride' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'African Queen, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blackout' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Barking Dogs Never Bite (Flandersui gae)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I''m Gonna Explode (a.k.a. I''m Going to Explode) (Voy a explotar)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bullets Over Broadway' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Possession' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Map of the World, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '300' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Conspiracy of Torture, The (Beatrice Cenci)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lupin III: First Contact (Rupan Sansei: Faasuto Kontakuto)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Eden Lake' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beauty and the Beast' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Goodbye First Love' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Special Relationship, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dark Angel: Ascent, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rahtree: Flower of the Night (Buppha Rahtree)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Pokrovsky Gates' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Yumeji' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Believer, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Gruffalo''s Child' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cinderella' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ordeal, The (Calvaire)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Maze Runner, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Second Best Exotic Marigold Hotel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sex in Chains (Geschlecht in Fesseln)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stoic' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sixpack (Pussikaljaelokuva)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bar Girls' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'No Impact Man: The Documentary' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fast Times at Ridgemont High' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wolf Children (Okami kodomo no ame to yuki)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'On Moonlight Bay' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Men at Work' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Captain EO' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Undefeated' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cavemen' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Mark of the Angels - Miserere' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tom and Huck' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Much Ado About Nothing' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Get Yourself a College Girl' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'That Guy... Who Was in That Thing' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Taste of Tea, The (Cha no aji)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ariel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Remains of the Day, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Affliction' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Obsessed' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Case Against 8, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sweet Karma' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Last Play at Shea, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Suzanne''s Career (La carrière de Suzanne)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Enter Arsene Lupin' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ocean Waves (Umi ga kikoeru)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pocket Money' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Taking of Pelham One Two Three, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Two English Girls (Les deux anglaises et le continent)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lords of Salem, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beijing Taxi' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hello Ladies: The Movie' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lupin III: The Castle Of Cagliostro (Rupan sansei: Kariosutoro no shiro)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'All Over the Guy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'How Green Was My Valley' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pretty Baby' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Oslo, August 31st (Oslo, 31. august)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Territories ' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Moving Out' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Heart of Glass (Herz aus Glas)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Quiet City' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hunt for Red October, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sansa' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Reeker' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I Melt with You' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tis kakomoiras' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Billy the Kid vs. Dracula' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Electric Boogaloo: The Wild, Untold Story of Cannon Films' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Voyage to the Prehistoric Planet' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ararat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blood Diamond' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nine Lives' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Pennies from Heaven' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '7th Dawn, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Loss of a Teardrop Diamond, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'We Need a Vacation (Fais-moi des vacances)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Images of the World and the Inscription of War (Bilder der Welt und Inschrift des Krieges)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dark Lurking, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dead of Night' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lights Out' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Woman in the Dunes (Suna no onna)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Wallace & Gromit in The Curse of the Were-Rabbit' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Throw Away Your Books, Rally in the Streets' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Music Man, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Things to Come' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Leaves from Satan''s Book (Blade af Satans bog)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I.O.U.S.A. (a.k.a. IOUSA)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Yank in the R.A.F., A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Infamous' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Coquette' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nokas' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hamlet (Gamlet)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Two Moon Junction' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vampyros Lesbos (Vampiras, Las)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blood Beach' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'War Comes to America (Why We Fight, 7)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Drop Dead Gorgeous' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Grace Is Gone' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fangs of the Living Dead (Malenka)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'New Leaf, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sea of Love' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sabotage' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bullies' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Serving Life' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '200 Motels' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hot Tub Time Machine' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Soldier' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Captain Newman, M.D.' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beaver Trilogy Part IV' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'It Had to Be You' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Detroit 9000' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Alien Cargo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Chinaman (Kinamand)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Marshland (Isla mínima, La)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Mascot' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ice Bound' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Small Cuts (Petites coupures)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mammy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Let No Man Write My Epitaph' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dance Party, USA' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tinseltown' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Smashing Pumpkins: Vieuphoria' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I Don''t Want to Be a Man (Ich möchte kein Mann sein)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Adanggaman' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Billy Madison' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Underneath' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Uninvited, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Snow White and the Huntsman' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Skin I Live In, The (La piel que habito)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Habana Blues' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Adventures of Sebastian Cole, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Angel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'La Bande du drugstore' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Joint Security Area (Gongdong gyeongbi guyeok JSA)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Max Payne' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vamp' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Red' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Castle in the Desert (Charlie Chan in Castle in the Desert)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Radio Days' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Monkey''s Teeth (Dents du singe, Les)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'After the Wedding (Efter brylluppet)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Angels Over Broadway' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Affairs of Anatol, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'One Wonderful Sunday (Subarashiki nichiyobi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Duel at Diablo' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Memories (Memorîzu)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Of Human Bondage' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Offender' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Jar City (Mýrin)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Paper, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Alien Raiders' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fetching Cody' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Crush, The (La cotta)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Broadway Damage' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Clock, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Suspicion' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Contract Killers' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gonzo: The Life and Work of Dr. Hunter S. Thompson' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bajo la Sal (Under the Salt)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Place in the Sun, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'It''s a Wonderful Life' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Crossing, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lay of the Land, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dragon Ball: The Curse Of The Blood Rubies (Doragon bôru: Shenron no densetsu)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rising Place, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Syrinx' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'High School Musical' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Steamroller and the Violin, The (Katok i skripka)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lonesome' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vuonna 85' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Great Scout & Cathouse Thursday' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Calendar Girl' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Boys' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Away We Go' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cloud-Capped Star, The (Meghe Dhaka Tara)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hero at Large' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Anton Chekhov''s The Duel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Expendables 3, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Metropolis' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Emma''s Bliss (Emmas Glück)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lotta 2: Lotta flyttar hemifrån' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Double Whammy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Love Is Colder Than Death (Liebe ist kälter als der Tod)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Project Grizzly' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Radioactive Dreams' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dating the Enemy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stille nacht' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Road to Rio' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Matter of Life and Death, A (Stairway to Heaven)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Misérables in Concert, Les' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I, Madman' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '1911 (Xinhai geming)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Study in Scarlet, A' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Girl in the Cadillac' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kiss Kiss Bang Bang' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'I Married A Strange Person!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Way, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'El malvado Carabel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beautiful Girls' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In the Beginning (À l''Origine)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'New Rose Hotel' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hollow Crown, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '976-EVIL' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Girls Just Want to Have Fun' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Eclisse, L'' (Eclipse)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cobra' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Man of Her Dreams (a.k.a. The Fiancé)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big River Man' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mysterians, The (Chikyu Boeigun)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Witch Hunt' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Letters from Iwo Jima' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Open Road' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Flirtation Walk' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Moonrise Kingdom' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ice Age 2: The Meltdown' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'American Gangster' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Our Song' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Savannah' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '100 Men and a Girl (One Hundred Men and a Girl)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Alyce Kills' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Breathe In' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hôtel du Nord' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Comic Book: The Movie' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Whatever Works' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Prisoner, The (Island of Fire) (Huo shao dao)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Point Break' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Valley of the Bees (Údolí vcel)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mr. Robinson Crusoe' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tyson' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Green, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'One Piece Film Z' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Andrew Dice Clay: Indestructible' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Short Cuts' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Searchers, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Permanent Vacation' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bathing Beauty' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Thief Lord, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Torch Song' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Blackadder''s Christmas Carol' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Worthless, The (Arvottomat)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Empire of Passion (a.k.a. In the Realm of Passion) (a.k.a. Phantom Love) (Ai No Borei)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hours, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Hoot' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'With a Friend Like Harry... (Harry, un ami qui vous veut du bien)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Hungover Games' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Vincent Wants to Sea (Vincent will meer)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lies My Father Told Me' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Road to Wellville, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bridegroom' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Asterix & Obelix: Mission Cleopatra (Astérix & Obélix: Mission Cléopâtre)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Daytrippers, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lowlands (Tiefland)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Confidence' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ender''s Game' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'End of the Line, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '3 Ninjas Kick Back' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Off Beat' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Lies (Gojitmal)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'RV' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Iron Horse, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Infernal Affairs III (Mou gaan dou III: Jung gik mou gaan)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Are All Men Pedophiles' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Once in a Lifetime: The Extraordinary Story of the New York Cosmos' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rack, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Adrenalin: Fear the Rush' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Ingrid' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Five Angles on Murder' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Nine Miles Down' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Young Törless, The (Junge Törless, Der)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dancer, Texas Pop. 81' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mr. Magorium''s Wonder Emporium' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Green Years, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In the Park' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bury My Heart at Wounded Knee' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'An Alligator Named Daisy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Take a Giant Step' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Elite Squad (Tropa de Elite)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Paternity' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Come Back, Little Sheba' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'In a Dark Place' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Don Quixote (Don Quijote de Orson Welles)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Full Moon in Paris (Les nuits de la pleine lune)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Calloused Hands' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Around the World Under the Sea' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Suit for Wedding, A (a.k.a. The Wedding Suit) (Lebassi Baraye Arossi)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Madagascar 3: Europe''s Most Wanted' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Grace Is Gone' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'What A Man' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'One Night at McCool''s' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Outsiders (Ceddo)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dead of Night' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Love, etc.' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gung Ho' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Soylent Green' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bus Stop' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Carpenter, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Drunk Stoned Brilliant Dead: The Story of the National Lampoon' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'This Gun for Hire' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Woman in the Dunes (Suna no onna)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fährmann Maria' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dr. Horrible''s Sing-Along Blog' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dick Tracy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Welcome to Dongmakgol' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Daddy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Boots and Saddles' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Beyond The Hills' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'There Was a Crooked Man...' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Moral Tales, Filmic Issues' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Auto Focus' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Queen Christina' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Big Pun: The Legacy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '1-900' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Tales of Terror (Kaidan Shin Mimibukuro)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dark of the Sun' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'V/H/S' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Littlest Rebel, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Alexandra (Aleksandra)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'My Avatar and Me (Min Avatar og mig)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Seven Beauties (Pasqualino Settebellezze)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Alien: Resurrection' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Paperboy, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Richard III' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Sherlock Holmes' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Babyfever' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Henry IV, Part I (First Part of King Henry the Fourth, with the Life and Death of Henry Surnamed Hotspur, The)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Cabin Boy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Son of the White Mare' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Under the Rainbow' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Modulations' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Stuck on You' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Everyone''s Hero' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Silent Night, Deadly Night' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Bulletproof' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Heldorado' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Girl, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'We and the I, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, '''Twas the Night Before Christmas' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'The Cave of the Golden Rose' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Four Sahibjade' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Gone with the Wind' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Butterflies Are Free' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Mourning Becomes Electra' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Fresh Bait (L''appât) ' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Toy Story' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Dinosaurus!' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Drive Me Crazy' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Magic Christmas Tree, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Kissed by Winter (Vinterkyss)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Not Suitable for Children' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Split, The' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Rolling Family (Familia rodante)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Quiet as a Mouse (Muxmäuschenstill)' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Speed' FROM users ORDER BY random() LIMIT 1)
	UNION
	(SELECT user_id, 'Saved!' FROM users ORDER BY random() LIMIT 1);

SELECT * from channels;