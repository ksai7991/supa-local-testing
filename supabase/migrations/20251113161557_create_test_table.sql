create schema if not exists "test_schema";

create table if not exists test_schema.test_table (
  id serial primary key,
  name text
);
