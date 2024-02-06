BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "ratings" CASCADE;

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
    VALUES ('restroom', '20240206055911853', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240206055911853', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
