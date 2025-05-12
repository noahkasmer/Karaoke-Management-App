-- Insert data script for karaoke project
--------------------------------------------------
--------------------------------------------------
-- Insert data for "Learn To Fly" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Foo Fighters');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Dave Grohl'),
  ('Taylor Hawkins');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Learn To Fly',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Foo Fighters');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Dave Grohl'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Learn to Fly');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Taylor Hawkins'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Learn to Fly');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'LearnToFly_FooFighters_Original.kar',
    Extended_Title = 'Learn To Fly',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Learn to Fly');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'LearnToFly_FooFighters_BackingVocals.kar',
    Extended_Title = 'Learn To Fly (with Backing Vocals)',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Learn to Fly'
        LIMIT 1);

---------------------------------------- end of "Learn To Fly" data

-- Insert data for "Toxicity" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('System of a Down');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Serj Tankian'),
  ('Daron Malakian'),
  ('Rick Rubin');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Toxicity',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'System of a Down');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Serj Tankian'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxicity');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Daron Malakian'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxicity');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Rick Rubin'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxicity');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Toxicity_SOAD_Original.kar',
    Extended_Title = 'Toxicity',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxicity');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Toxicity_SOAD_BackingVocals.kar',
    Extended_Title = 'Toxicity (with Backing Vocals)',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxicity');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Toxicity_SOAD_SpeedUp.kar',
    Extended_Title = 'Toxicity (Hyper-Fast Version)',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxicity');
---------------------------------------- end of "Toxicity" data

-- Insert data for "Call Me Maybe" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Carly Rae Jepsen');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Carly Rae Jepsen'),
  ('Josh Ramsay');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Call Me Maybe',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Carly Rae Jepsen');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Carly Rae Jepsen'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Call Me Maybe');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Josh Ramsay'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Call Me Maybe');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'CallMeMaybe_CarlyRaeJepsen_Original.kar',
    Extended_Title = 'Call Me Maybe',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Call Me Maybe');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'CallMeMaybe_CarlyRaeJepsen__BackingVocals.kar',
    Extended_Title = 'Call Me Maybe (with Backing Vocals)',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Call Me Maybe');
---------------------------------------- end of "Call Me Maybe" data

-- Insert data for "Gold Digger" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Kanye West');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Kanye West'),
  ('Jamie Foxx'),
  ('Jon Brion');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Gold Digger',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Kanye West');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Kanye West'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Gold Digger');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jamie Foxx'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Gold Digger');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jon Brion'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Gold Digger');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'GoldDigger_KanyeWest_Original.kar',
    Extended_Title = 'Gold Digger',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Gold Digger');
---------------------------------------- end of "Gold Digger" data

-- Insert data for "GHOST!" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Kid Cudi');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Kid Cudi'),
  ('Emile Haynie'),
  ('Ken Lewis');

INSERT IGNORE INTO Song 
  SET Song_Name = 'GHOST!',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Kid Cudi');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Kid Cudi'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'GHOST!');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Emile Haynie'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'GHOST!');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Ken Lewis'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'GHOST!');
    
INSERT IGNORE INTO Kar_File
  SET File_Name = 'GHOST!_KidCudi_Original.kar',
    Extended_Title = 'GHOST!',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'GHOST!');

---------------------------------------- end of "GHOST!" data


-- Insert data for "Reborn" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Kids See Ghosts');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Kanye West'),
  ('Kid Cudi'),
  ('Dot Da Genius'),
  ('Plain Pat');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Reborn',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Kids See Ghosts');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Kanye West'
        LIMIT 1),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Reborn');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Kid Cudi'
        LIMIT 1),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Reborn');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Dot Da Genius'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Reborn');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Plain Pat'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Reborn');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Reborn_KidsSeeGhosts_Original.kar',
    Extended_Title = 'Reborn',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Reborn');

---------------------------------------- end of "Reborn" data

-- Insert data for "Mr. Brightside" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('The Killers');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Brandon Flowers'),
  ('Dave Keuning'),
  ('Mark Stoermer'),
  ('Ronnie Vannucci'),
  ('Jeff Saltzman');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Mr. Brightside',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'The Killers');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Synths',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Brandon Flowers'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Mr. Brightside');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Guitar',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Dave Keuning'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Mr. Brightside');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bass Vocalist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Mark Stoermer'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Mr. Brightside');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Ronnie Vannucci'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Mr. Brightside');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jeff Saltzman'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Mr. Brightside');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'MrBrightside_TheKillers_Original.kar',
    Extended_Title = 'Mr. Brightside',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Mr. Brightside');

---------------------------------------- end of "Mr. Brightside" data

-- Insert data for "Toxic" files

INSERT INTO
  Artist (`Artist_Name`)
VALUES
  ('Britney Spears');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Britney Spears'),
  ('Bloodshy & Avant');

INSERT INTO Song 
  SET Song_Name = 'Toxic',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Britney Spears');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Britney Spears'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Bloodshy & Avant'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Toxic_BritneySpears_Original.kar',
    Extended_Title = 'Toxic',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic');

---------------------------------------- end of "Toxic" data

-- Insert data for "Toxic (Y2K & Alexander Lewis Remix)" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Britney Spears');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Britney Spears'),
  ('Y2K'),
  ('Alexander Lewis');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Toxic (Y2K & Alexander Lewis Remix)',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Britney Spears'
        LIMIT 1);

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Britney Spears'
        LIMIT 1),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic (Y2K & Alexander Lewis Remix)');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Y2K'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic (Y2K & Alexander Lewis Remix)');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Alexander Lewis'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic (Y2K & Alexander Lewis Remix)');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Toxic_BritneySpears_Y2K&AlexanderLewisRemix.kar',
    Extended_Title = 'Toxic (Y2K & Alexander Lewis Remix)',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Toxic (Y2K & Alexander Lewis Remix)');

---------------------------------------- end of "Toxic (Y2K & Alexander Lewis Remix)" data

-- Insert data for " Rich Girl - Lake Street Dive Version " files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Lake Street Dive');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Rachael Price'),
  ('Mike Calabrese'),
  ('Aki Bermiss'),
  ('James Cornelison'),
  ('Bridget Kearney');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Rich Girl',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Lake Street Dive');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Rachael Price'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Mike Calabrese'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Keyboardist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Aki Bermiss'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitarist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'James Cornelison'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Bridget Kearney'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl');
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'RichGirl_LakeStreetDive_Cover.kar',
    Extended_Title = 'Rich Girl - Lake Street Dive Cover',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl');


---------------------------------------- end of "Rich Girl - Lake Street Dive Version" data

-- Insert data for " Rich Girl - Hall & Oates " files
INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Hall & Oates');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Daryll Hall'),
  ('John Oates'),
  ('Christopher Bond'),
  ('Scotty Edwards'),
  ('Jim Gordon');

INSERT INTO Song 
  SET Song_Name = 'Rich Girl',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Hall & Oates');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Daryll Hall'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl' AND Artist_ID = (
          SELECT Artist_ID
          FROM Artist
          WHERE Artist_Name = 'Hall & Oates'));

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jim Gordon'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl'AND Artist_ID = (
          SELECT Artist_ID
          FROM Artist
          WHERE Artist_Name = 'Hall & Oates'));
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Keyboardist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Christopher Bond'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl'AND Artist_ID = (
          SELECT Artist_ID
          FROM Artist
          WHERE Artist_Name = 'Hall & Oates'));

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitarist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'John Oates'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl' AND Artist_ID = (
          SELECT Artist_ID
          FROM Artist
          WHERE Artist_Name = 'Hall & Oates'));

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Scotty Edwards'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl' AND Artist_ID = (
          SELECT Artist_ID
          FROM Artist
          WHERE Artist_Name = 'Hall & Oates'));
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'RichGirl_HallAndOates.kar',
    Extended_Title = 'Rich Girl - Hall And Oates',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Rich Girl' AND Artist_ID = (
          SELECT Artist_ID
          FROM Artist
          WHERE Artist_Name = 'Hall & Oates'));
---------------------------------------- end of "Rich Girl - Hall and Oates" data
		
-- Insert data for "Renegade (We Never Run) - Raja Kumari & Stefflon Don" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Raja Kumari & Stefflon Don');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Raja Kumari'),
  ('Stefflon Don'),
  ('Mako');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Renegade (We Never Run)',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Raja Kumari & Stefflon Don');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Raja Kumari'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Renegade (We Never Run)');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Stefflon Don'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Renegade (We Never Run)');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Mako'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Renegade (We Never Run)');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Renegade_WeNeverRun.kar',
    Extended_Title = 'Renegade (We Never Run) from Arcane',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Renegade (We Never Run)');

---------------------------------------- end of "Renegade (We Never Run) - Raja Kumari & Stefflon Don" data

-- Insert data for "San Luis - Gregory Alan Isakov" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Gregory Alan Isakov');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Gregory Alan Isakov');

INSERT IGNORE INTO Song 
  SET Song_Name = 'San Luis',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Gregory Alan Isakov');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Gregory Alan Isakov'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'San Luis');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'SanLuis.kar',
    Extended_Title = 'San Luis',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'San Luis');

---------------------------------------- end of "San Luis - Gregory Alan Isakov" data

-- Insert data for "Library Magic - The Head and the Heart" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('The Head and the Heart');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Charity Rose Thielen'),
  ('Jonathan Russell'),
  ('Kenny Hensley'),
  ('Jay Joyce'),
  ('Tyler Williams');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Library Magic',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'The Head and the Heart');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Charity Rose Thielen'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Library Magic');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jonathan Russell'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Library Magic');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitar',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Kenny Hensley'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Library Magic');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Keyboardist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jay Joyce'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Library Magic');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Tyler Williams'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Library Magic');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'LibraryMagic.kar',
    Extended_Title = 'Library Magic',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Library Magic');

---------------------------------------- end of "Library Magic - The Head and the Heart" data

-- Insert data for "Lord Willin - Logic" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Logic');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Logic'),
  ('Steve Wyreman'),
  ('Sir Dylan'),
  ('Claire Courchene'),
  ('Dria');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Lord Willin',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Logic');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Logic'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Lord Willin');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Synthesizer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Sir Dylan'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Lord Willin');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Cello',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Claire Courchene'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Lord Willin');
		
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Background Vocals',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Dria'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Lord Willin');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitar',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Steve Wyreman'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Lord Willin');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'LordWillin.kar',
    Extended_Title = 'Lord Willin',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Lord Willin');

---------------------------------------- end of "Lord Willin - Logic" data

-- Insert data for "Runaway - Kanye West" files

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Pusha T'),
  ('Mike Dean'),
  ('Jeff Bhasker');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Runaway',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Kanye West');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Pusha T'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Runaway');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Mike Dean'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Runaway');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jeff Bhasker'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Runaway');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Runaway_KanyeWest_Original.kar',
    Extended_Title = 'Runaway',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Runaway');

---------------------------------------- end of "Runaway" data

-- Insert data for "Not Like Us" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Kendrick Lamar');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Kendrick Lamar'),
  ('Mustard');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Not Like Us',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Kendrick Lamar');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Kendrick Lamar'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Not Like Us');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Mustard'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Not Like Us');


INSERT IGNORE INTO Kar_File
  SET File_Name = 'NotLikeUs_KendrickLamar_Original.kar',
    Extended_Title = 'Not Like Us',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Not Like Us');

---------------------------------------- end of "Not Like Us" data

-- Insert data for "Bye Bye Bye" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('*NSYNC');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Justin Timberlake'),
  ('JC Chasez'),
  ('Lance Bass'),
  ('Joey Fatone'),
  ('Chris Kirkpatrick'),
  ('Jake Schulze');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Bye Bye Bye',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = '*NSYNC');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Justin Timberlake'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'JC Chasez'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Lance Bass'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Joey Fatone'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Chris Kirkpatrick'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jake Schulze'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'ByeByeBye_*NSYNC_Original.kar',
    Extended_Title = 'Bye Bye Bye',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Bye Bye Bye');

---------------------------------------- end of "Bye Bye Bye" data

-- Insert data for "Hey Jude" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('The Beatles');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('John Lennon'),
  ('Paul McCartney'),
  ('George Harrison'),
  ('Ringo Starr'),
  ('George Martin');

INSERT IGNORE INTO Song 
  SET Song_Name = 'Hey Jude',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'The Beatles');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'John Lennon'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Hey Jude');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Paul McCartney'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Hey Jude');
    
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'George Harrison'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Hey Jude');
  
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Ringo Starr'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Hey Jude');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'George Martin'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Hey Jude');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'HeyJude_TheBeatles_Original.kar',
    Extended_Title = 'Hey Jude',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Hey Jude');

---------------------------------------- end of "Hey Jude" data

-- Insert data for " All You Had To Do Was Stay - Ryan Adams Version " files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Ryan Adams');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Ryan Adams'),
  ('Nate Lotz'),
  ('Todd Wisenbaker'),
  ('Charlie Stavish');

INSERT INTO Song 
  SET Song_Name = 'All You Had To Do Was Stay (Cover)',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Ryan Adams');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Ryan Adams'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay (Cover)');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Nate Lotz'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay (Cover)');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitarist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Todd Wisenbaker'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay (Cover)');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Charlie Stavish'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay (Cover)');
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'AllYouHadToDoWasStay_RyanAdams.kar',
    Extended_Title = 'All You Had To Do Was Stay - Ryan Adams',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay (Cover)');
---------------------------------------- end of "All You Had To Do Was Stay - Ryan Adams Version" data

-- Insert data for " All You Had To Do Was Stay - Taylor Swift " files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Taylor Swift');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Taylor Swift'),
  ('Mattman'),
  ('Shellback'),
  ('Robin');

INSERT INTO Song 
  SET Song_Name = 'All You Had To Do Was Stay',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Taylor Swift');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Taylor Swift'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Mattman'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitarist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Shellback'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Robin'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay');
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'AllYouHadToDoWasStay_TaylorSwift.kar',
    Extended_Title = 'All You Had To Do Was Stay',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'All You Had To Do Was Stay');

---------------------------------------- end of "All You Had To Do Was Stay - Taylor Swift's Version" data

-- Insert data for "Cadmium - Pinegrove " files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Pinegrove');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Evan Stephens Hall'),
  ('Zack Levine'),
  ('Jodi'),
  ('Adan Carlo Felliciano');

INSERT INTO Song 
  SET Song_Name = 'Cadmium',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Pinegrove');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Evan Stephens Hall'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Cadmium');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Zack Levine'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Cadmium');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitarist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jodi'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Cadmium');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Adan Carlo Felliciano'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Cadmium');
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'Cadmium_Pinegrove.kar',
    Extended_Title = 'Cadmium',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Cadmium');

---------------------------------------- end of "Cadmium - Pinegrove" data

-- Insert data for "Eyes To The Wind - The War On Drugs" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('The War On Drugs');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Adam Granduciel'),
  ('Charlie Hall'),
  ('Robbie Bennet'),
  ('Dave Hartley'),
  ('Jon Natchez');

INSERT INTO Song 
  SET Song_Name = 'Eyes To The Wind',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'The War On Drugs');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Adam Granduciel'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Eyes To The Wind');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Charlie Hall'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Eyes To The Wind');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Keyboardist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Robbie Bennet'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Eyes To The Wind');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Dave Hartley'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Eyes To The Wind');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Saxophonist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jon Natchez'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Eyes To The Wind');
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'EyesToTheWind_TheWarOnDrugs.kar',
    Extended_Title = 'Eyes To The Wind',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Eyes To The Wind');

---------------------------------------- end of "Eyes To The Wind - The War On Drugs" data

-- Insert data for "Sea Of Love - The National" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('The National');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Matt Berninger'),
  ('Bryan Devendorf'),
  ('Aaron Dessner'),
  ('Scott Devendorf'),
  ('Bryce Dessner');

INSERT INTO Song 
  SET Song_Name = 'Sea Of Love',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'The National');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Matt Berninger'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Sea Of Love');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Bryan Devendorf'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Sea Of Love');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Harmonica',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Aaron Dessner'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Sea Of Love');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Scott Devendorf'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Sea Of Love');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Guitarist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Bryce Dessner'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Sea Of Love');
		
INSERT IGNORE INTO Kar_File
  SET File_Name = 'SeaOfLove_TheNational.kar',
    Extended_Title = 'Sea Of Love',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Sea Of Love');

---------------------------------------- end of "Sea Of Love - The National" data

-- Insert data for "Caring Is Creepy - The Shins" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('The Shins');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('James Mercer'),
  ('Neal Langford'),
  ('Marty Crandall'),
  ('Jesse Sandoval');

INSERT INTO Song 
  SET Song_Name = 'Caring Is Creepy',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'The Shins');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'James Mercer'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Caring Is Creepy');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Bassist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Neal Langford'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Caring Is Creepy');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Keyboardist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Marty Crandall'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Caring Is Creepy');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Drummer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Jesse Sandoval'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Caring Is Creepy');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'CaringIsCreepy_TheShins.kar',
    Extended_Title = 'Caring Is Creepy',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Caring Is Creepy');
        
---------------------------------------- end of "Caring Is Creepy - The Shins" data

-- Insert data for "Skinny Love - Bon Iver" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Bon Iver');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Justin Vernon');

INSERT INTO Song 
  SET Song_Name = 'Skinny Love',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Bon Iver');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Justin Vernon'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Skinny Love');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'SkinnyLove_BonIver_Original.kar',
    Extended_Title = 'Skinny Love',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Skinny Love');
        
---------------------------------------- end of "Skinny Love - Bon Iver" data

-- Insert data for "EARFQUAKE - Tyler, The Creator" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Tyler, The Creator');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Tyler, The Creator'),
  ('Playboi Carti'),
  ('Charlie Wilson');

INSERT INTO Song 
  SET Song_Name = 'EARFQUAKE',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Tyler, The Creator');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Tyler, The Creator'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'EARFQUAKE');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Playboi Carti'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'EARFQUAKE');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Background Vocalist',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Charlie Wilson'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'EARFQUAKE');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'EARFQUAKE_TylerTheCreator_Original.kar',
    Extended_Title = 'EARFQUAKE',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'EARFQUAKE');
        
---------------------------------------- end of "EARFQUAKE - Tyler, The Creator" data

-- Insert data for "No Role Modelz - J. Cole" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('J. Cole');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('J. Cole'),
  ('Phonix Beats'),
  ('Dahi');

INSERT INTO Song 
  SET Song_Name = 'No Role Modelz',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'J. Cole');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'J. Cole'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'No Role Modelz');
      
INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Phonix Beats'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'No Role Modelz');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Dahi'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'No Role Modelz');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'NoRoleModelz_JCole_Original.kar',
    Extended_Title = 'No Role Modelz',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'No Role Modelz');
        
---------------------------------------- end of "No Role Modelz - J. Cole" data

-- Insert data for "Unwritten - Natasha Bedingfield" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Natasha Bedingfield');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Natasha Bedingfield'),
  ('Wayne Rodrigues'),
  ('Danielle Brisebois');

INSERT INTO Song 
  SET Song_Name = 'Unwritten',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Natasha Bedingfield');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Natasha Bedingfield'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Unwritten');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Wayne Rodrigues'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Unwritten');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Danielle Brisebois'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Unwritten');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Unwritten_NatashaBedingfield_Original.kar',
    Extended_Title = 'Unwritten',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Unwritten');
        
---------------------------------------- end of "Unwritten - Natasha Bedingfield" data

-- Insert data for "Fireball - Pitbull" files

INSERT IGNORE INTO
  Artist (`Artist_Name`)
VALUES
  ('Pitbull');

INSERT IGNORE INTO
  Contributor (`Contributor_Name`)
VALUES
  ('Pitbull'),
  ('John Ryan'),
  ('Ricky Reed'),
  ('Joe London'),
  ('Axident');

INSERT INTO Song 
  SET Song_Name = 'Fireball',
    Artist_ID = (
      SELECT Artist_ID
        FROM Artist
        WHERE Artist_Name = 'Pitbull');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Pitbull'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Fireball');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Singer, Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'John Ryan'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Fireball');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Ricky Reed'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Fireball');

INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Joe London'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Fireball');


INSERT IGNORE INTO Song_Contributor 
  SET Contribution = 'Producer',
    Contributor_ID = (
      SELECT Contributor_ID
        FROM Contributor
        WHERE Contributor_Name = 'Axident'),
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Fireball');

INSERT IGNORE INTO Kar_File
  SET File_Name = 'Fireball_Pitbull_Original.kar',
    Extended_Title = 'Fireball',
    Song_ID = (
      SELECT Song_ID
        FROM Song
        WHERE Song_Name = 'Fireball');
        
---------------------------------------- end of "Fireball - Pitbull" data

---- DONE WITH INSERTING SONGS INTO DATABASE -- BELOW IS INSERTING DUMMY USER DATA FOR WEBSITE ----

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Charizard');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Mewtwo');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Pikachu');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Squirtle');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Vulpix');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Ditto');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Vaporeon');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Wiglett');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Snorlax');

INSERT IGNORE INTO 
    Users (`User_Name`)
VALUES
    ('Magikarp');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Mewtwo'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'Fireball_Pitbull_Original.kar'),
    Date_time = ('2024-12-03 12:22:58');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Charizard'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'MrBrightside_TheKillers_Original.kar'),
    Date_time = ('2024-12-03 12:34:31');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Mewtwo'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'GoldDigger_KanyeWest_Original.kar'),
    Date_time = ('2024-12-03 13:11:19');

INSERT IGNORE INTO Priority_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Charizard'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'Reborn_KidsSeeGhosts_Original.kar'),
    Date_time = ('2024-12-03 13:01:14'),
    Money_Amt = ('10');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Pikachu'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'CallMeMaybe_CarlyRaeJepsen_Original.kar'),
    Date_time = ('2024-12-03 13:23:56');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Wiglett'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'Toxicity_SOAD_BackingVocals.kar'),
    Date_time = ('2024-12-03 12:00:49');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Vulpix'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'Toxicity_SOAD_SpeedUp.kar'),
    Date_time = ('2024-12-03 12:49:26');

INSERT IGNORE INTO Regular_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Squirtle'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'LordWillin.kar'),
    Date_time = ('2024-12-03 13:12:57');

INSERT IGNORE INTO Priority_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Vaporeon'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'Renegade_WeNeverRun.kar'),
    Date_time = ('2024-12-03 13:08:19'),
    Money_Amt = ('8.50');

INSERT IGNORE INTO Priority_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Snorlax'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'RichGirl_HallAndOates.kar'),
    Date_time = ('2024-12-03 12:43:54'),
    Money_Amt = ('5');

INSERT IGNORE INTO Priority_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Squirtle'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'LearnToFly_FooFighters_BackingVocals.kar'),
    Date_time = ('2024-12-03 13:29:36'),
    Money_Amt = ('18');

INSERT IGNORE INTO Priority_Choice
    SET User_ID = (
      SELECT User_ID
        FROM Users
        WHERE User_Name = 'Magikarp'),
    File_Name = (
      SELECT File_Name
        FROM Kar_File
        WHERE File_Name = 'LearnToFly_FooFighters_BackingVocals.kar'),
    Date_time = ('2024-12-03 13:56:46'),
    Money_Amt = ('1000.01');