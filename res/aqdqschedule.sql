-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2014 at 01:43 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perfektum_testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aqdqschedule`
--

CREATE TABLE IF NOT EXISTS `aqdqschedule` (
  `date_and_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `game` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `runner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimate` time DEFAULT '00:00:00',
  `comments` text COLLATE utf8_unicode_ci,
  `couch_commentators` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prizes` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`date_and_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aqdqschedule`
--

INSERT INTO `aqdqschedule` (`date_and_time`, `game`, `runner`, `estimate`, `comments`, `couch_commentators`, `prizes`) VALUES
('2014-06-22 12:00:00', 'Super Mario 3D World', 'SlowKingsPants', '01:49:16', '', 'Veegie64, Coolstoryliv', 'Mario Cat Ears, Princess Peach perler. Chance to win PS4 starts now and lasts through Day 4.'),
('2014-06-22 14:30:00', 'Crash Bandicoot: Warped', 'SSBMStuff', '00:49:06', '', '', 'SGDQ Chainmail Inlay start'),
('2014-06-22 15:22:00', 'Ape Escape 2', 'iongravirei', '01:06:17', 'o[8(|)', 'SSBMStuff', ''),
('2014-06-22 16:48:00', 'Super Monkey Ball 2', 'Geoff, Miles', '00:19:52', 'Expert mode race', 'Jumpyluff', 'SGDQ Chainmail Inlay end'),
('2014-06-22 17:20:00', 'Donkey Kong Country', 'Garrison', '00:36:51', 'All Stages', '', 'Banana zip pouch, SNES bundle with boxed DKC1 and DKC2 start'),
('2014-06-22 18:03:00', 'Donkey Kong Country 2: Diddy''s Kong Quest', 'Garrison, Twig', '00:47:48', 'Race!', '', 'Banana zip pouch, SNES bundle with boxed DKC1 and DKC2 end'),
('2014-06-22 19:01:00', 'Kirby''s Dream Land', 'TrUShade', '00:14:36', 'Incentive for Extra (hard) Mode', 'romscout', 'Soul Eater Giclee print start'),
('2014-06-22 19:25:00', 'Kirby Super Star', 'Countdown42', '01:27:05', '100%', 'romscout, Radman', 'Soul Eater Giclee print end'),
('2014-06-22 21:00:00', 'Banjo-Tooie', 'Hyperresonance', '03:01:50', '', 'Slowkingspants, Stivitybobo, AlbinoAlbotross, Cron', 'N64 Speedrunner Bundle: Japanese N64 with SM64, OoT, Banjo Tooie'),
('2014-06-23 00:10:00', 'Pikmin', 'CaptainX24', '01:22:17', 'Best Ending run', 'Kirbymastah, doicm, Miles, CaptPikPik', ''),
('2014-06-23 01:45:00', 'Jet Set Radio HD', 'witwix', '00:44:23', '', '', ''),
('2014-06-23 02:40:00', 'Bioshock 2', 'BloodThunder', '01:21:06', '', '', ''),
('2014-06-23 04:12:00', 'Amnesia: A Machine For Pigs', 'Weables, ShadowDraft', '00:37:19', 'Incentive for Amnesia Justine run', 'ShadowDraft, ProfessorBroman', ''),
('2014-06-23 05:07:00', 'Goosebumps: Attack of the Mutant', 'pcull44444', '00:29:24', 'All cutscenes', '', ''),
('2014-06-23 05:52:00', 'Pizza Pop', 'EggmaniMN', '00:10:29', '', 'MURPHGATOR!', 'Samurai Pizza Cats DVD Box Set, Samurai Pizza Cats perler, Samurai Pizza Cats repro cart, Kaizou Choujin Zero repro cart, Choujin Sentai Jetman repro cart start'),
('2014-06-23 06:08:00', 'Samurai Pizza Cats', 'Trogdor', '00:14:30', '', 'EvenSteven02, fKefka14', ''),
('2014-06-23 06:39:00', 'Metal Warriors', 'Omnigamer', '00:22:30', '', '', ''),
('2014-06-23 07:06:00', 'Kaizou Choujin Shubibinman Zero', 'tonic', '00:17:42', '', 'doicm', ''),
('2014-06-23 07:39:00', 'Choujin Sentai Jetman (Power Rangers)', 'Guhbadoo', '00:09:59', '', 'Lurk', ''),
('2014-06-23 07:54:00', 'Mystical Ninja Starring Goemon', 'Pykn', '01:27:41', '', 'YashichiDSF', 'Samurai Pizza Cats DVD Box Set, Samurai Pizza Cats perler, Samurai Pizza Cats repro cart, Kaizou Choujin Zero repro cart, Choujin Sentai Jetman repro cart end'),
('2014-06-23 09:40:00', 'Alex Kidd in Shinobi World', 'Deepfreeze', '00:08:47', '', 'Btrim', ''),
('2014-06-23 09:54:00', 'Castle of Illusion Starring Mickey Mouse (SMS)', 'btrim', '00:15:07', 'Start of Disney block', 'Deepfreeze ', ''),
('2014-06-23 10:15:00', 'Aladdin (Genesis)', 'jymotion', '00:16:11', 'All Levels', '', ''),
('2014-06-23 10:38:00', 'Crusader of Centy', 'Geurge', '00:50:02', 'Zelda-like Blast Processing action!', 'iongravirei', ''),
('2014-06-23 11:31:00', 'Earthworm Jim', 'Zyre', '00:31:21', '', 'Naegleria', 'Earthworm Jim perler'),
('2014-06-23 12:09:00', 'Bonus game - Ecco the Dolphin', 'Blueglass', '00:36:46', 'Buffer period #1. Potential bonus game.', '', ''),
('2014-06-23 12:52:00', 'Pulseman', 'soothingplumtea', '00:34:54', '', '', 'Pulseman repro cart, Pulseman perler'),
('2014-06-23 13:38:00', 'Sonic the Hedgehog 2', 'Aleck47', '00:27:07', 'Start of Sonic block', '', 'Start for Sonic perler and Sonic Genesis Bundle: Genesis with boxed copies of every single Genesis Sonic game'),
('2014-06-23 14:16:00', 'Tails'' Adventure', 'boredeathly', '00:17:36', '', '', ''),
('2014-06-23 14:36:00', 'Sonic Advance 2', 'Naegleria', '00:37:15', '', '', ''),
('2014-06-23 15:34:00', 'Sonic Unleashed (day stages only)', 'BrokenArthritis', '00:47:28', 'Incentive for Eggmanland; end of Sonic block', 'PvtCb, Naegleria', 'End for Sonic perler and Sonic Genesis Bundle: Genesis with boxed copies of every single Genesis Sonic game'),
('2014-06-23 16:47:00', 'Mega Man', 'Adefgames', '00:22:17', 'Start of Mega Man block', '', 'Start for Mad Catz cutomized Mega Man headset, Beat plushie, Tango perler, Blue Storm Giclee print'),
('2014-06-23 17:17:00', 'Mega Man 3', 'Checkers', '00:35:20', '', '', ''),
('2014-06-23 17:57:00', 'Mega Man 5', 'darkman78', '00:37:27', '', '', ''),
('2014-06-23 18:45:00', 'Mega Man 6', 'DarkTerrex, Golden', '00:37:35', 'Race!', '', ''),
('2014-06-23 19:49:00', 'Mega Man V (Gameboy)', 'mrcab, Virtualboyness', '00:52:58', 'Race! End of Mega Man block', 'PJ', 'End for Mad Catz customized Mega Man headset, Beat plushie, Tango perler, Blue Storm Giclee print'),
('2014-06-23 20:50:00', 'The Legend of Zelda: Four Swords Adventures', 'Zmaster91', '02:27:46', '', 'Yashichi, Testrunner, KirbyMastah, 26pt2 ', 'Crazy Link poster by Kari Fry, The Last Arrow Giclee print'),
('2014-06-23 23:26:00', 'Resident Evil 2', 'Carcinogen', '00:57:30', 'Choice of scenario', '', ''),
('2014-06-24 00:51:00', 'System Shock 2', 'Cirno', '00:16:50', '', 'Cubeface, ProfessorBroman, witwix', ''),
('2014-06-24 01:20:00', 'Psychonauts', 'Duke Bilgewater', '00:55:06', '', '', ''),
('2014-06-24 02:26:00', 'Deus Ex: Human Revolution', 'Xexi', '01:11:16', '', 'Shadowdraft, EvenSteven02', ''),
('2014-06-24 03:50:00', 'Sly Cooper and the Thievus Raccoonus', 'LovableLambchop', '01:07:36', '', 'VivaLaGaming, Hagspam, Mayushii', ''),
('2014-06-24 05:08:00', 'Blasto', 'Saint Connor', '00:21:22', '', 'PJ', ''),
('2014-06-24 05:42:00', 'Chameleon Twist', 'Kefka14', '00:14:37', '', 'KirkQ ', ''),
('2014-06-24 05:59:00', 'Gex 64', 'AlbinoAlbatross', '01:05:19', '', 'NesKamikaze, Kefka14', ''),
('2014-06-24 07:21:00', 'Bomberman Hero', 'PvtCb, Yashi, Kirkq', '00:46:19', 'Race!', 'ZachSK', ''),
('2014-06-24 08:21:00', 'Treasure Master', 'MechaRichter', '00:29:55', '', 'Gildersneeze, PJ, Romscout, Klaige, MURPHGATOR!', ''),
('2014-06-24 08:57:00', 'Kickmaster', 'Zyre', '00:13:24', '', 'PJ, MURPHGATOR!', ''),
('2014-06-24 09:19:00', 'Marble Madness', 'bassdeluxe27', '00:02:56', '', 'Crak Atak', ''),
('2014-06-24 09:25:00', 'Metal Storm', 'UraniumAnchor', '00:12:41', '', 'Puwexil, MURPHGATOR!, lur', 'Metal Storm perler'),
('2014-06-24 09:42:00', 'StarTropics II: Zoda''s Revenge', 'Guhbadoo', '01:03:14', '', '', 'Sealed copy of StarTropics II'),
('2014-06-24 10:51:00', 'Clash at Demonhead', 'Gildersneeze', '00:22:07', '', 'Mecharichter, PJ', 'Clash at Demonhead perler'),
('2014-06-24 11:20:00', 'Arkista''s Ring', 'Feasel', '00:16:02', '', '', ''),
('2014-06-24 11:40:00', 'Rygar', 'Darkwing Duck', '00:26:00', '', '', 'Rygar glasswork'),
('2014-06-24 12:18:00', '8 Eyes', 'Feasel', '00:23:51', '', '', 'Skeleton Waiter perler'),
('2014-06-24 12:57:00', 'Shatterhand', 'UraniumAnchor, Klaige', '00:26:18', 'Race!', 'Puwexil, MURPHGATOR!', ''),
('2014-06-24 14:23:00', 'Bucky O''Hare', 'Garrison', '00:31:12', 'Buffer period #2. Donation met: Guaranteed bonus game: Bucky O''Hare hard mode run by Garrison. Post game interview by iateyourpie.', '', ''),
('2014-06-24 15:12:00', 'Super Meat Boy', 'MattyIce3131', '01:48:44', '106% run; incentive for doing a world blindfolded', '', ''),
('2014-06-24 17:23:00', 'I Wanna Be The Boshy', 'witwix', '00:44:42', '', '', 'Boshy perler'),
('2014-06-24 18:20:00', 'Dustforce', 'TheBirdOfPrey', '00:42:20', '', 'Midboss, Mapler, Doicm, Calistus', ''),
('2014-06-24 19:12:00', 'Castlevania 64', 'Cosmo', '00:52:15', 'Character bid war, incentive met for Legacy of Darkness run by PvtCB', '', 'Yokai Dracula Giclee print end'),
('2014-06-24 20:38:00', 'Castlevania: Symphony of the Night', 'romscout vs. Dacidbro or MechaRichter vs. zex', '00:40:54', 'All bosses race, Alucard vs. Richter bid war. Alucard race: Romscout: 33:11, Dacidbro: 40:54', '', 'Yokai Dracula Giclee print end'),
('2014-06-24 21:31:00', 'Touhouvania 2', 'Krimmydoodle', '00:15:41', 'Hard mode', '', ''),
('2014-06-24 21:51:00', 'Bunny Must Die', 'PinkPajamas', '00:27:16', '', '', 'BMD perler'),
('2014-06-24 22:25:00', 'Guacamelee', 'NiL8r', '01:00:28', 'Incentive for Good Ending', '', ''),
('2014-06-24 23:36:00', 'Bastion', 'Vulajin', '00:52:16', 'All Story Levels', 'Vulajin', ''),
('2014-06-25 00:38:00', 'Ikachan', 'lurk', '00:13:56', '＜コ:彡', 'NiL8r, ShadowDraft, Aleck47', '＜コ:彡 perler'),
('2014-06-25 01:03:00', 'Eversion', 'UraniumAnchor', '00:17:49', 'Incentive for All Gems/True Ending', 'PvtCb, ＜コ:彡, Reed', 'Eversion perler set'),
('2014-06-25 01:28:00', 'Bleed', 'Studio', '00:18:10', '', 'ShadowDraft', ''),
('2014-06-25 01:55:00', 'Dust: An Elysian Tail', 'Vulajin', '00:21:24', '', ' MisterOgam, Alventenie', ''),
('2014-06-25 02:20:00', 'Outlast', 'Saint Connor', '00:26:23', 'Incentive for all chapters', '', ''),
('2014-06-25 02:50:00', 'Anodyne', 'ShadowDraft', '00:06:05', '', 'ProfessorBroman', ''),
('2014-06-25 03:15:00', 'Giana Sisters: Twisted Dreams - Rise of the Owlverlord', 'crate', '00:15:50', '', '', ''),
('2014-06-25 03:45:00', 'Forbidden Forest', 'danacrysalis', '00:05:00', 'Commodore 64 block. Really? Yes.', 'Studio, snorlax', ''),
('2014-06-25 03:54:00', 'Monty on the Run', 'danacrysalis', '00:09:57', '', 'Studio, snorlax', ''),
('2014-06-25 04:12:00', 'MadWorld', 'LazerLong', '02:09:14', '', 'Naegleria', 'Mint condition MadWorld OST'),
('2014-06-25 06:28:00', 'Ninjabread Man', 'SCXCR', '00:04:43', '', '', ''),
('2014-06-25 06:38:00', 'Bubsy in Claws Encounters of the Furred Kind', 'Graviton', '00:19:42', '', '', 'Sad Bubsy perler'),
('2014-06-25 07:04:00', 'Zero the Kamikaze Squirrel', 'Omnigamer', '00:13:01', '', 'Feasel, MURPHGATOR!, Mecharichter, PJ', ''),
('2014-06-25 07:24:00', 'El Viento', 'Spineshark', '00:17:25', '', '', 'Pair of El Viento perlers'),
('2014-06-25 07:47:00', 'Tomba 2', 'CavemanDCJ', '01:17:27', '', '', ''),
('2014-06-25 09:13:00', 'Spyro 2: Ripto''s Rage', 'Jumpyluff, SSBMstuff', '00:29:43', '14 Talisman race', '', ''),
('2014-06-25 10:05:00', 'Billy Hatcher and the Giant Egg', 'iongravirei', '01:13:17', '', 'UnusualCook, AlbinoAlbatross', 'BIlly Hatcher hat'),
('2014-06-25 11:31:00', 'Mischief Makers', 'Jackafur', '00:57:39', '', '', 'Start for Sin & Punishment'),
('2014-06-25 12:38:00', 'Guardian Heroes', 'Reed', '00:13:23', 'End of Treasure block', '', 'End for Sin & Punishment'),
('2014-06-25 13:06:00', 'Ninja Baseball Batman', 'Murphagator, Mecha Richter, Klaige and PJ', '00:30:40', 'Buffer period #3. Donation incentive met: Mystery Game! -> Ninja Baseball Batman with Murphagator, Mecha Richter, Klaige and PJ', '', ''),
('2014-06-25 13:47:00', 'Double Dragon Advance', 'Murphagator', '00:15:05', '', '', ''),
('2014-06-25 14:07:00', 'Battletoads & Double Dragon', 'PJ, MechaRichter', '00:27:21', 'Co-op run', '', 'Splinter Face perler start'),
('2014-06-25 14:50:00', 'TMNT IV: Turtles in Time', 'Sinister1, Mike Uyama', '00:20:24', 'Race!', '', 'Splinter Face perler end'),
('2014-06-25 15:16:00', 'Super Star Wars: Return of the Jedi', 'Striker', '00:30:55', '', '', ''),
('2014-06-25 15:52:00', 'Super Ghouls ''n Ghosts', 'PJ', '00:50:00', 'Weapon bid war', 'Mecharichter, MURPHGATOR!, Studio, Klaige', ''),
('2014-06-25 16:51:00', 'The Lost Vikings', 'johannhowitzer', '00:57:42', '1 player, 2 controllers', '', 'The Art of Blizzard art book start'),
('2014-06-25 18:20:00', 'Warcraft 3: The Frozen Throne (Sentinels Campaign)', 'Studio', '01:07:36', '', '', 'The Art of Blizzard art book end'),
('2014-06-25 19:37:00', 'Octodad: Dadliest Catch', 'Ubergoose', '00:18:54', '', '', ''),
('2014-06-25 20:06:00', 'La-Mulana (version bid war)', 'HiddenDistance or JMan', '01:54:34', 'Bid war between the original game and the remake', '', ''),
('2014-06-25 22:09:00', 'Risk of Rain', 'Studio, LazerLong', '00:24:50', 'Co-op run', 'ShadowDraft', 'Giant Bomb shirts and annual membership codes'),
('2014-06-25 22:38:00', 'Noitu Love 2: Devolution', 'BlackCatGaming or CavemanDCJ', '00:27:35', 'Bid war, Xoda vs. Almond', 'Studio', 'Chance to win PS4 ends now.'),
('2014-06-25 23:17:00', 'Grand Theft Auto 2', 'Kubelwagon', '00:54:19', '', '', ''),
('2014-06-26 00:18:00', 'Duke Nukem II', 'Bonesaw577', '00:32:12', '', '', ''),
('2014-06-26 01:00:00', 'ZZT', 'Cosmo', '00:06:41', '', '', ''),
('2014-06-26 01:13:00', 'Nitronic Rush', 'ChocoPoptart, Geoff, Vespher', '00:07:51', 'Hardcore level race after regular game.', '', ''),
('2014-06-26 01:58:00', 'Trials Fusion', 'TheBlazeJp', '01:02:40', '', 'TheBoshos, Muzzalol, Zimbobw4y ', 'Brand new Trials Fusion XBox One game'),
('2014-06-26 03:22:00', 'SSX3', 'CloakedYoshi', '00:20:29', '', '', ''),
('2014-06-26 04:04:00', 'Tony Hawk''s Pro Skater', 'guished, Remedy, George', '00:09:45', '100% race', '', ''),
('2014-06-26 04:28:00', 'Tony Hawk''s Pro Skater 3', 'George', '00:08:55', 'All goals and golds', '', ''),
('2014-06-26 04:46:00', 'NiGHTS into Dreams...', 'Miles', '00:24:00', 'Claris vs. Elliot bid war', '', ''),
('2014-06-26 05:14:00', 'Mighty Switch Force', 'Duke Bilgewater', '00:20:49', '', '', 'Shantae perlers start'),
('2014-06-26 05:53:00', 'Shantae', 'Wuqinglong', '01:11:32', '', 'johannhowitzer', 'Shantae perlers end'),
('2014-06-26 07:14:00', 'Trip World', 'Wawlconut', '00:07:23', '', '', ''),
('2014-06-26 07:29:00', 'Yoshi''s Story', 'soothingplumtea', '00:22:30', 'All Melons', '', ''),
('2014-06-26 07:57:00', 'New Super Mario Bros. U', 'ewaller', '00:41:14', '', '', ''),
('2014-06-26 08:43:00', 'New Super Luigi U', 'wexcelsior', '00:30:00', '', '', ''),
('2014-06-26 09:20:00', 'Mario Kart 64', 'firedragon764', '00:40:56', 'Buffer period #4. Donation Incentive met: Mario Kart 64', '', ''),
('2014-06-26 10:09:00', 'Legend of Zelda: Link''s Awakening DX', 'LeonPowalski', '01:10:11', 'Bonus game', '', ''),
('2014-06-26 11:31:00', 'Legend of Zelda: Oracle of Seasons', 'Bananas', '02:05:46', '', '', 'Oracle pack: boxed copies of Seasons and Ages with special edition comics for each game'),
('2014-06-26 13:46:00', 'Goldeneye', 'l34ss l3oost', '01:10:28', '00 Agent, Hard; incentive for 100%', '', ''),
('2014-06-26 15:04:00', 'Doom 64', 'peaches_', '01:05:29', 'Incentive for Watch Me Die difficulty', '', ''),
('2014-06-26 16:18:00', 'Halo: Combat Evolved', 'Goatrope', '01:51:19', 'Legendary', '', ''),
('2014-06-26 18:42:00', 'Legend of Zelda: Skyward Sword', 'TLoZSR, Testrunner', '05:35:12', 'Post game Glitched Run: 7:15', '', 'Skyward Sword bundle'),
('2014-06-27 00:45:00', 'Rayman Legends', 'FearfulFerret, Spikevegeta, Ubergoose', '01:39:06', 'Race! UberGoos: 1:35:39, FearfulFerret: 1:36:00, SpikeVegeta:1:39:06', '', ''),
('2014-06-27 02:40:00', 'Dishonored', 'FearfulFerret, DecidedSloth', '00:39:17', 'Race! Incentive for Knife of Dunwall DLC FearfulFerret: 39:00, DecidedSloth: 39:17. Knife of Dunwall 11:37 (double softlock)', '', 'Dishonored GOTY Tarot and Playing Card Decks'),
('2014-06-27 03:37:00', 'Fallout 3', 'stonenot', '00:25:57', 'Incentive for a run of Elder Scrolls III: Morrowind AlbinoAlbatross: 5:35', '', ''),
('2014-06-27 04:21:00', 'Bible Adventures', 'Brossentia', '00:02:47', 'David & Goliath scenario', 'Studio, johannhowitzer', 'Start for boxed NES with zapper.'),
('2014-06-27 04:29:00', 'Chip and Dale: Rescue Rangers 2', 'Sinister1, feasel', '00:16:50', '1 player 2 controllers by Sinister1', '', ''),
('2014-06-27 04:59:00', 'Bubble Bobble', 'Darkwing Duck, MetaSigma', '00:39:38', 'co-op', '', 'Bub and Bob glass pieces'),
('2014-06-27 05:45:00', 'Castlevania', 'kissmyafrocard', '00:14:25', '', 'Puwexil, Romscout, Mecharichter', 'Start for Dracula final form perler, Castlevania III heroes perler set'),
('2014-06-27 06:05:00', 'Castlevania III: Dracula''s Curse', 'kissmyafrocard', '00:30:07', 'Character bid war: Sypha run', 'Puwexil, Romscout, Mecharichter', 'End for Dracula final form perler, Castlevania III heroes perler set'),
('2014-06-27 06:40:00', 'Ninja Gaiden (pacifist)', 'Sinister1', '00:18:30', '', 'Duckfist', ''),
('2014-06-27 07:02:00', 'Ninja Gaiden III: The Ancient Ship of Doom', 'Crak Atak', '00:18:05', '', 'Duckfist', ''),
('2014-06-27 07:22:00', 'Bionic Commando', 'PJ', '00:27:47', 'Incentive for 100%', '', 'Bionic Commando comic and collector''s patch set. End for boxed NES with zapper.'),
('2014-06-27 07:57:00', 'Metal Wolf Chaos', 'Murphagator', '01:50:53', 'All cutscenes', '', ''),
('2014-06-27 10:06:00', 'Heretic', 'Cubeface', '00:24:31', 'Hard, Episodes 1-3', 'Cirno, FearfulFerret', ''),
('2014-06-27 10:35:47', 'Ultimate Doom', 'Kubelwagon, Dime', '00:28:48', 'Race: Dime 26:44, Kubelwagon 28:48', 'NiL8r, ShadowDraft, Aleck47', ''),
('2014-06-27 11:16:00', 'Quake', 'Cubeface', '01:17:29', '100% Nightmare run', 'Cirno, FearfulFerret', ''),
('2014-06-27 12:47:00', 'Metroid Prime 1 vs. Metroid Prime 2 bid war', 'Miles', '01:19:54', 'Bid war between the first two Primes. Prime 2 wins!', '', 'Start for Zero Suit Samus Alpaca plush, Metroid art folio, Samus Arran figure, Metroid mutations poster'),
('2014-06-27 14:33:00', 'Metroid Fusion', 'kirbymastah, BioSpark, JaggerG', '01:27:37', 'Race! Incentive for 1% runs. Kirbymastah: 1:23:29, JaggerG: 1:27:36, Biosp4rk: 1:27:37', 'Dragondarch', ''),
('2014-06-27 16:15:00', 'Metroid Zero Mission', 'kirbymastah', '01:18:50', '100% run', 'Dragondarch, JaggerG', 'End for Zero Suit Samus Alpaca plush, Metroid art folio, Samus Arran figure, Metroid mutations poster'),
('2014-06-27 17:48:00', 'Super Mario Bros. 2 (U.S.)', 'cak', '00:24:23', 'Warpless', '', 'Start for Wii U bundle with NSMBU and New Super Luigi U, Mad Catz customized Mario headset'),
('2014-06-27 18:30:00', 'Super Mario Bros. 3', 'duckfist', '00:55:44', 'Warpless', '', 'SMB3 perler set'),
('2014-06-27 19:34:00', 'Super Mario World', 'Suidt', '01:36:49', '96 Exit run, incentive for all dragon coins and moons', '', ''),
('2014-06-27 21:30:00', 'Super Mario World - No cape 3 way race', 'Suidt vs. Wawlconut vs. Ribbedkilla', '00:33:41', '97 Exit run, incentive for all dragon coins and moons', '', ''),
('2014-06-27 22:16:00', 'Super Mario Sunshine', 'Linkfan21, ChrisM, JKB', '01:26:04', 'Race! TheJKB: 1:23:46, 360Chrism: 1:24:44, Linkfan21: 1:26:04', 'Snarfybobo, FireDragon764', 'End for Wii U bundle with NSMBU and New Super Luigi U, Mad Catz customized Mario headset'),
('2014-06-27 23:54:00', 'Super Mario 64', 'Siglemic', '01:48:57', '120 Star run', '', ''),
('2014-06-28 01:42:57', 'Paper Mario: The Thousand Year Door', 'Almolicious', '05:43:33', '', 'TaylorTotFTW, Headstrong1290 and Iateyourpie', ''),
('2014-06-28 07:52:00', 'Pokemon Puzzle Challenge', 'unusualcook, Bbforky', '00:25:13', 'Intense Difficulty. Incentive to run Pokemon Snap', ' ilikebeingsmart ', 'Start for Pikachu N64 Controller, X/Y Mega Diance print, Pokemon Movie Vinyl Records, signed copy of Kanto Field Guide'),
('2014-06-28 09:00:00', 'Pokemon Red vs. Pokemon Gold', 'Shenanagans, MexiricanBassMonkey', '00:55:08', 'Bid war between Gen 1 and Gen 2, incentive for Yellow glitched run. Pokemon Gold wins, Pokemon Yellow Glitched 0:02:37', '', 'End for Pikachu N64 Controller, X/Y Mega Diance print, Pokemon Movie Vinyl Records, signed copy of Kanto Field Guide'),
('2014-06-28 10:15:00', 'Mega Man Zero 2', 'Kuribon', '00:58:25', '', 'MitoRequium, Branch', 'Start for SNES bundle with boxed copies of X1 and X2, 3D popout artwork of X1, Vile figure, X2 perler'),
('2014-06-28 11:35:00', 'Mega Man X', 'Tiki, CalebHart', '00:32:38', 'Race! Caleb 32:26, Tiki: 32:38', 'MetaSigma, romscout', ''),
('2014-06-28 12:23:00', 'Mega Man X2', 'CalebHart, Iateyourpie, Ivan, Trogdor', '00:36:51', 'Race! CalebHart: 35:01 Trogdor: 35:22 Ivan: 35:40 Iateyourpie: 36:51', 'Tiki, Striker', 'End for SNES bundle with boxed copies of X1 and X2, 3D popout artwork of X1, Vile figure, X2 perler'),
('2014-06-28 13:11:00', 'Half-Life', 'Cubeface', '00:37:52', '', 'z1mb0bw4y, Cirno, FearfulFerret', 'Start for Orange Box signed by Valve staff (including Gabe and Robin), Mad Catz customized Half-Life headset'),
('2014-06-28 13:55:00', 'Half-Life 2', 'Gocnak', '01:43:47', '', 'z1mb0bw4y, YetiRevolution', ''),
('2014-06-28 15:49:00', 'Portal', 'Norferzlo, z1mb0bw4y', '00:10:37', 'Race! Z1mb0bw4y: 10:37, Norferzlo: Crashed game.', '', 'Start for Portal X-Stitch Magnets'),
('2014-06-28 16:10:00', 'Portal 2', 'Phxntxm', '00:45:55', '"Solo co-op"; one player completes co-op mode', 'Z1mb0bw4y, Gocnak, and Cirno ', 'End for Portal X-Stitch Magnets, Orange Box signed by Valve staff (including Gabe and Robin), Mad Catz customized Half-Life headset'),
('2014-06-28 17:07:00', 'Legend of Zelda: A Link to the Past', 'Andy, Jadin', '01:19:21', 'Any% no out of bounds. Incentive for Any% no Exploration Glitch run by Jadin. Jadin''s run: 37:47 (impossible gap walk!!!!) Andy EG%: 2:43', '', 'Start for 3DS XL bundle with A Link Between Worlds, Zelda Treasure Chest purse, Master Sword perlers, WInd Waker Fado and Makar poster'),
('2014-06-28 19:25:00', 'Legend of Zelda: A Link Between Worlds', 'Zandergoth', '01:48:11', '', '', 'End for 3DS XL bundle with A Link Between Worlds, Zelda Treasure Chest purse, Master Sword perlers, WInd Waker Fado and Makar poster'),
('2014-06-28 21:32:00', 'Legend of Zelda: Ocarina of Time', 'Cosmo, Skater', '00:21:10', 'Race! Cosmo 21:10 Skater DNF', '', ''),
('2014-06-28 22:06:00', 'Super Metroid', 'zoast, Ivan', '00:56:43', 'Low% run, incentive for glitched any%. Ivan glitched any%: 17:11', '', 'Zero Suit Samus figure, The Queen Giclee print'),
('2014-06-28 23:35:00', 'Final Fantasy VI', 'Essentia, puwexil', '07:27:49', 'Co-op, incentive for 100% Brossentia Sketch Glitch pre run: 21:40', 'Brossentia, MisterMV', 'FF6 Fresco by Orioto prints, Kaiser Dragon perler'),
('2014-06-29 07:02:49', 'Finale', 'everyone', '00:05:00', 'If we have enough energy to last 5 minutes, it''s a miracle', '', 'Grand Prize Bundle: Wii U and 3DS XL with custom SGDQ design');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
