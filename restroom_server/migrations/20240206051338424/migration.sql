BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "ratings" ADD COLUMN "_restroomsRatingRestroomsId" integer;
ALTER TABLE ONLY "ratings"
    ADD CONSTRAINT "ratings_fk_1"
    FOREIGN KEY("_restroomsRatingRestroomsId")
    REFERENCES "restrooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR restroom
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('restroom', '20240206051338424', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240206051338424', "timestamp" = now();

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
