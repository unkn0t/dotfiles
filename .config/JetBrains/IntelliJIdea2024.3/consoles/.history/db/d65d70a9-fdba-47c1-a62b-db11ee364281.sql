CREATE SEQUENCE logins_id_seq OWNED BY public.logins.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT setval('logins_id_seq', coalesce(max(id), 0) + 1, false) FROM logins;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE logins ALTER COLUMN id SET DEFAULT nextval('logins_id_seq');