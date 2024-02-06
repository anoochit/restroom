BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "ratings" DROP CONSTRAINT "ratings_fk_1";
ALTER TABLE "ratings" DROP CONSTRAINT "ratings_fk_0";
ALTER TABLE "ratings" DROP COLUMN "roomId";
ALTER TABLE ONLY "ratings"
    ADD CONSTRAINT "ratings_fk_0"
    FOREIGN KEY("_restroomsRatingRestroomsId")
    REFERENCES "restrooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR restroom
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('restroom', '20240206054727239', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240206054727239', "timestamp" = now();

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
