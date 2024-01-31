BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "ratings" (
    "id" serial PRIMARY KEY,
    "timestamp" timestamp without time zone NOT NULL,
    "score" integer NOT NULL,
    "roomId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "restrooms" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "ratings"
    ADD CONSTRAINT "ratings_fk_0"
    FOREIGN KEY("roomId")
    REFERENCES "restrooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR restroom
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('restroom', '20240131020256328', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240131020256328', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
