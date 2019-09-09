create schema if not exists mockazon;

CREATE TABLE mockazon.project (
	project_id serial NOT NULL,
	donators bytea NULL,
	funding_goal int4 NOT NULL,
	"name" varchar(255) NULL,
	CONSTRAINT project_pkey PRIMARY KEY (project_id)
);