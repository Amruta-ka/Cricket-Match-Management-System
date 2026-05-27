-- ============================================================
--  CRICKET MATCH MANAGEMENT SYSTEM  -  Database Setup Script
--  Run this ONCE in phpMyAdmin or MySQL command line
-- ============================================================

-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS cricket_db;
USE cricket_db;

-- Step 2: Tournaments table
CREATE TABLE IF NOT EXISTS tournaments (
    tournament_id   INT PRIMARY KEY,
    tournament_name VARCHAR(100) NOT NULL,
    type            VARCHAR(10)  NOT NULL,   -- 'ODI' or 'T20'
    start_date      VARCHAR(20),
    end_date        VARCHAR(20),
    extra_info      VARCHAR(100)             -- e.g. '50 Overs' or 'PowerPlay=6'
);

-- Step 3: Teams table
CREATE TABLE IF NOT EXISTS teams (
    team_id   INT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL
);

-- Step 4: Players table
CREATE TABLE IF NOT EXISTS players (
    player_id   INT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    age         INT,
    nationality VARCHAR(50),
    role        VARCHAR(20),           -- 'Batsman' or 'Bowler'
    team_id     INT,
    stat1       DOUBLE,                -- battingAverage (Batsman) / bowlingAverage (Bowler)
    stat2       INT,                   -- highScore (Batsman) / wickets (Bowler)
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- Step 5: Matches table
CREATE TABLE IF NOT EXISTS matches (
    match_id        INT PRIMARY KEY,
    venue           VARCHAR(100),
    match_date      VARCHAR(20),
    team1_id        INT,
    team2_id        INT,
    result          VARCHAR(100),
    tournament_id   INT,
    FOREIGN KEY (team1_id)      REFERENCES teams(team_id),
    FOREIGN KEY (team2_id)      REFERENCES teams(team_id),
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
);

-- Step 6: Scorecards table
CREATE TABLE IF NOT EXISTS scorecards (
    scorecard_id  INT PRIMARY KEY,
    match_id      INT,
    total_runs    INT,
    total_wickets INT,
    overs_played  DOUBLE,
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);

-- Step 7: Umpires table
CREATE TABLE IF NOT EXISTS umpires (
    umpire_id INT PRIMARY KEY,
    name      VARCHAR(100),
    country   VARCHAR(50),
    match_id  INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);

-- Done! 6 tables created successfully.
SELECT 'Database setup complete!' AS status;
