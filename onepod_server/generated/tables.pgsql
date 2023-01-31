--
-- Class Category as table category
--

CREATE TABLE "category" (
  "id" serial,
  "title" text NOT NULL,
  "created_at" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "category"
  ADD CONSTRAINT category_pkey PRIMARY KEY (id);

CREATE INDEX category_title_idx ON "category" USING btree ("title");


--
-- Class Todo as table todo
--

CREATE TABLE "todo" (
  "id" serial,
  "title" text NOT NULL,
  "is_complete" boolean NOT NULL,
  "categoryId" integer NOT NULL,
  "created_at" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "todo"
  ADD CONSTRAINT todo_pkey PRIMARY KEY (id);

CREATE INDEX todo_title_idx ON "todo" USING btree ("title");

ALTER TABLE ONLY "todo"
  ADD CONSTRAINT todo_fk_0
    FOREIGN KEY("categoryId")
      REFERENCES category(id)
        ON DELETE CASCADE;

