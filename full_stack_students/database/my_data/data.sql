-- Creating database
DROP DATABASE IF EXISTS my_database;
CREATE DATABASE my_database;
SELECT "" "Created database my_database";
USE my_database;
--  Creating tables
DROP TABLE IF EXISTS users;
SELECT "" "Removed tables user and todo if they existed in my_database";
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    PRIMARY KEY (id)
);
-- Filling table user
DELETE FROM users;
SELECT "" "Emptied content of table users";
SELECT "" "Inserting the values into the table users";
INSERT INTO user(firstname, name, email, password)
VALUES (
        "John",
        "Doe",
        "john@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Jane",
        "Doe",
        "jane@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Bob",
        "Smith",
        "bob@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Sonic",
        "the Hedgehog",
        "sonic@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Miles",
        "Tails Prower",
        "tails@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Amy",
        "Rose",
        "amy@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Silver",
        "the Hedgehog",
        "silver@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Blaze",
        "the Cat",
        "blaze@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Alex",
        "Kidd",
        "alex@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "ToeJam",
        "<unknown>",
        "toe@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Earl",
        "Bobby",
        "earl@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Ristar",
        "Bobby",
        "ristar@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Kid",
        "Chameleon",
        "kid@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Vectorman",
        "<unknown>",
        "vectorman@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Bubsy",
        "<unknown>",
        "bubsy@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Earthworm",
        "Jim",
        "jim@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Gilius",
        "Thunderhead",
        "giliue@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Knuckles",
        "the Echidna",
        "knuckles3@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Amy",
        "Rose",
        "amy4@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Shadow",
        "the Hedgehog",
        "shadow5@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Rouge",
        "the Bat",
        "rouge6@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Cream",
        "the Rabbit",
        "cream7@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Cheese",
        "the Chao",
        "cheese8@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Big",
        "the Cat",
        "big9@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Froggy",
        "the Frog",
        "froggy10@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Espio",
        "the Chameleon",
        "espio11@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Charmy",
        "Bee",
        "charmy12@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Vector",
        "the Crocodile",
        "vector13@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Silver",
        "the Hedgehog",
        "silver14@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Blaze",
        "the Cat",
        "blaze15@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Marine",
        "the Raccoon",
        "marine16@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Jet",
        "the Hawk",
        "jet17@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Wave",
        "the Swallow",
        "wave18@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Storm",
        "the Albatross",
        "storm19@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "E-123",
        "Omega",
        "omega20@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Metal",
        "Sonic",
        "metalsonic21@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Mighty",
        "the Armadillo",
        "mighty22@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Ray",
        "the Flying Squirrel",
        "ray23@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Chaos",
        "The energy monster",
        "chaos24@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Tikal",
        "the Echidna",
        "tikal25@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Dr. Ivo",
        "Eggman",
        "eggman26@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Orbot",
        "<unknown>",
        "orbot27@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Cubot",
        "<unknown>",
        "cubot28@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zavok",
        "<unknown>",
        "zavok29@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zazz",
        "<unknown>",
        "zazz30@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zomom",
        "<unknown>",
        "zomom@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zooey",
        "<unknown>",
        "zooey@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zor",
        "<unknown>",
        "zor@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zorin",
        "<unknown>",
        "zorin@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zorri",
        "<unknown>",
        "zorri@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zou",
        "<unknown>",
        "zou@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zubir",
        "<unknown>",
        "zubir@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zuke",
        "<unknown>",
        "zuke@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zurgane",
        "<unknown>",
        "zurgane@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zwei",
        "<unknown>",
        "zwei@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zazz",
        "<unknown>",
        "zazz@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Wave",
        "the Swallow",
        "wave@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Tikal",
        "the Echidna",
        "tikal@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Storm",
        "the Albatross",
        "storm@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Sticks",
        "the Badger",
        "sticks@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Silver",
        "the Hedgehog",
        "silver2@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Shade",
        "the Echidna",
        "shade@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Rotor",
        "the Walrus",
        "rotor@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Rouge",
        "the Bat",
        "rouge@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Ray",
        "the Flying Squirrel",
        "ray@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Queen",
        "Aleena Hedgehog",
        "aleena@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Orbot",
        "<unknown>",
        "orbot@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Omega",
        "<unknown>",
        "omega@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Mephiles",
        "the Dark",
        "mephiles@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Mighty",
        "the Armadillo",
        "mighty@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Metal",
        "Sonic",
        "metalsonic@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Knuckles",
        "the Echidna",
        "knuckles@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Jet",
        "the Hawk",
        "jet@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Infinite",
        "<unknown>",
        "infinite@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Espio",
        "the Chameleon",
        "espio@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Orbot",
        "<unknown>",
        "orbot2@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Cubot",
        "<unknown>",
        "cubot@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zavok",
        "<unknown>",
        "zavok@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zazz",
        "<unknown>",
        "zazz2@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zeena",
        "<unknown>",
        "zeena@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Zor",
        "<unknown>",
        "zor2@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Shade",
        "the Echidna",
        "shadetheechidna@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Storm",
        "the Albatross",
        "stormthealbatross@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Marine",
        "the Raccoon",
        "marinetheraccoon@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Mighty",
        "the Armadillo",
        "mightythearmadillo@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Ray",
        "the Flying Squirrel",
        "raytheflyingsquirrel@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Bark",
        "the Polar Bear",
        "barkthepolarbear@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Bean",
        "the Dynamite",
        "beanthedynamite@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Fang",
        "the Sniper",
        "fangthesniper@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Honey",
        "the Cat",
        "honeythecat@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Jet",
        "the Hawk",
        "jetthehawk@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Wave",
        "the Swallow",
        "wavetheswallow@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Sticks",
        "the Badger",
        "sticksthebadger@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Orbot",
        "the Robot",
        "orbottherobot3@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Cubot",
        "the Robot",
        "cubottherobot@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Whisper",
        "the Wolf",
        "whisperthewolf@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Tangle",
        "the Lemur",
        "tanglethelemur@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Rough",
        "the Skunk",
        "roughtheskunk@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Tumble",
        "the Skunk",
        "tumbletheskunk@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Rosie",
        "the Rascal",
        "rosietherascal@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Franklin",
        "the Turtle",
        "franklintheturtle@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Lucas",
        "the Spider",
        "lucasthespider@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Chirps",
        "the Chickadee",
        "chirpsthechickadee@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Phineas",
        "the Flycatcher",
        "phineastheflycatcher@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Dustin",
        "the Dove",
        "dustinthedove@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Wally",
        "the Woodpecker",
        "wallythewoodpecker@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Nate",
        "the Nightingale",
        "natethenightingale@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Buzz",
        "the Bee",
        "buzzthebee@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Fifi",
        "the Peke",
        "fifithepeke@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Griff",
        "the Goat",
        "griffthegoat@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    ),
    (
        "Lumine",
        "<unknown>",
        "lumine@example.com",
        "$2a$10$7Rcw2li.I2DsiPVLf5XzvOcTuqCMh59pD01E9ByoeC0FPiwheRdie"
    );
SELECT "" "Inserted the values into the table user";
```
