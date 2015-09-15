CREATE SCHEMA bsl_papers;

USE bsl_papers;

CREATE TABLE attrs (
	`id_attrs` VARCHAR(10) NOT NULL,
	`author` VARCHAR(100) NULL,
	`title` VARCHAR(100) NULL,
	`journal` VARCHAR(50) NULL,
	`year` VARCHAR(10) NULL,
	`pages` VARCHAR(10) NULL,
	PRIMARY KEY (`id_attrs`));

CREATE TABLE links (
	`id_link` VARCHAR(10) NOT NULL,
	`text` VARCHAR(200) NULL,
	PRIMARY KEY (`id_link`));

CREATE TABLE attrs_links_matches (
	`id_attrs` VARCHAR(10) NOT NULL,
	`id_link` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id_attrs`, `id_link`),
	FOREIGN KEY (id_attrs) REFERENCES attrs(id_attrs),
	FOREIGN KEY (id_link) REFERENCES links(id_link));

CREATE TABLE attrs_links_matches_copy (
	`id_attrs` VARCHAR(10) NOT NULL,
	`id_link` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id_attrs`, `id_link`),
	FOREIGN KEY (id_attrs) REFERENCES attrs(id_attrs),
	FOREIGN KEY (id_link) REFERENCES links(id_link));

CREATE TABLE linkstrain_finalcands (
	`id_attrs` VARCHAR(10) NOT NULL,
	`id_link` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id_attrs`, `id_link`),
	FOREIGN KEY (id_attrs) REFERENCES attrs(id_attrs),
	FOREIGN KEY (id_link) REFERENCES links(id_link));

CREATE TABLE linkstest_finalcands (
	`id_attrs` VARCHAR(10) NOT NULL,
	`id_link` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id_attrs`, `id_link`),
	FOREIGN KEY (id_attrs) REFERENCES attrs(id_attrs),
	FOREIGN KEY (id_link) REFERENCES links(id_link));

