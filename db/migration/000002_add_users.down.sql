Alter table if EXISTS "account" drop constraint if EXISTS "owner_currency_key";

Alter table if EXISTS "account" drop constraint if EXISTS "account_owner_fkey";

Drop table if EXISTS "users";