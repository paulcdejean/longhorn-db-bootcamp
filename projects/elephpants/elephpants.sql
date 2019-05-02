/**
 * Warehouse project create scripts for the database, tables, and initial data
 */

DROP DATABASE IF EXISTS elephpants;

CREATE DATABASE elephpants;

USE elephpants;

-- different species of elephpants
CREATE TABLE species (
    id INT NOT NULL AUTO_INCREMENT,
    species_name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id),

    CONSTRAINT UK_species_name
        UNIQUE (species_name)

) ENGINE=INNODB;


-- different sexes of elephpants
CREATE TABLE sex (
    id INT NOT NULL AUTO_INCREMENT,
    sex_name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id),

    CONSTRAINT UK_sex_name
        UNIQUE (sex_name)

) ENGINE=INNODB;


-- zoos!
CREATE TABLE zoo (
    id INT NOT NULL AUTO_INCREMENT,
    zoo_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(255),

    PRIMARY KEY (id),

    CONSTRAINT UK_zoo_address
        UNIQUE (address)
) ENGINE=INNODB;

-- Elephpant
CREATE TABLE elephpant (
    id INT NOT NULL AUTO_INCREMENT,
    elephpant_name VARCHAR(255) NOT NULL,
    species INT NOT NULL,
    sex INT NOT NULL,
    weight FLOAT NOT NULL,
    alive BOOLEAN NOT NULL,
    zoo INT NOT NULL,

    PRIMARY KEY (id),

    CONSTRAINT FK_elephpant_spieces
        FOREIGN KEY (species)
        REFERENCES species (id),

    CONSTRAINT FK_elephpant_sex
        FOREIGN KEY (sex)
        REFERENCES sex (id),

    CONSTRAINT FK_elephpant_zoo
        FOREIGN KEY (zoo)
        REFERENCES zoo (id)
) ENGINE=INNODB;

-- trades
CREATE TABLE trades (
    id INT NOT NULL,
    trade_date DATETIME,
    elephpant_traded INT NOT NULL,
    traded_from INT NOT NULL,
    traded_to INT NOT NULL,

    PRIMARY KEY (id),

    CONSTRAINT FK_elephpant_traded
        FOREIGN KEY (elephpant_traded)
        REFERENCES elephpant (id),

    CONSTRAINT FK_traded_from
        FOREIGN KEY (traded_from)
        REFERENCES zoo (id),

    CONSTRAINT FK_traded_to
        FOREIGN KEY (traded_to)
        REFERENCES zoo (id)
) ENGINE=INNODB;

-- briths
CREATE TABLE births (
    id INT NOT NULL,
    birth_date DATETIME,
    mother INT NOT NULL,
    father INT NOT NULL,
    baby INT NOT NULL,

    PRIMARY KEY (id),

    CONSTRAINT FK_birth_mother
        FOREIGN KEY (mother)
        REFERENCES elephpant (id),

    CONSTRAINT FK_birth_father
        FOREIGN KEY (father)
        REFERENCES elephpant (id),

    CONSTRAINT FK_birth_baby
        FOREIGN KEY (baby)
        REFERENCES elephpant (id)
) ENGINE=INNODB;
