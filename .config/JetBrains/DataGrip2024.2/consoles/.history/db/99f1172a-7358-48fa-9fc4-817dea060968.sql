SELECT * FROM logins WHERE login='ADS_23B031138';
;-- -. . -..- - / . -. - .-. -.--
SELECT cookie FROM cookies WHERE user_id=1888;
;-- -. . -..- - / . -. - .-. -.--
SELECT contest_id, cookie FROM cookies WHERE user_id=1888;
;-- -. . -..- - / . -. - .-. -.--
SELECT contest_id, cookie FROM cookies WHERE user_id=1;
;-- -. . -..- - / . -. - .-. -.--
SELECT contest_id, cookie FROM cookies WHERE user_id=1887;
;-- -. . -..- - / . -. - .-. -.--
SELECT contest_id, cookie FROM cookies WHERE user_id=2;
;-- -. . -..- - / . -. - .-. -.--
SELECT contest_id, cookie, expire FROM cookies WHERE user_id=2;
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id FROM logins WHERE login='ADS_23B031138';
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id, password FROM logins WHERE login='ADS_23B031138';
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id, login, password FROM logins WHERE invisible=1;
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id, login, password FROM logins WHERE pwdmethod=0;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login='test1';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM userextras WHERE user_id=2235;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.cookies WHERE user_id=2235;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=2235;
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id FROM users WHERE contest_id=101;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login='filter1';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=10047;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE pwdmethod=0;
;-- -. . -..- - / . -. - .-. -.--
UPDATE logins SET privileged=1 WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=7 OR user_id=2;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=7 OR user_id=3;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=1368;
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id, password, pwdtime FROM logins WHERE login='PP1_24B030049';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.cookies WHERE user_id=2;
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id, password, pwdtime FROM logins WHERE login='ADS_23B031138';
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM ejudge.runs WHERE run_id=484 and user_id=1888;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.runs WHERE user_id=1888 and contest_id=202;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE user_id=2151;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.runs WHERE run_id=78;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.runs WHERE status=16;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.runs WHERE contest_id=202;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ejudge.runs WHERE status=15;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM cookies WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM cntsregs WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM userextras WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE contest_id=120;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE contest_id=122;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM runs WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=7;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE 'Ivan';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE '%Ivan%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE '%Pimonov%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE '%Pim%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE '%Popov%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE 'A%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE 'Pop%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE user_id=1;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE username LIKE 'Пимон%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE user_id=1887;
;-- -. . -..- - / . -. - .-. -.--
SELECT username FROM users WHERE user_id IN (SELECT user_id
                                             FROM logins
                                             WHERE pwdmethod = 0);
;-- -. . -..- - / . -. - .-. -.--
SELECT user_id, username FROM users WHERE user_id IN (SELECT user_id
                                             FROM logins
                                             WHERE pwdmethod = 0);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login LIKE '22B%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login LIKE 'ADS_22B%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login LIKE 'ADS_20B%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login LIKE 'ADS_19B%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login LIKE 'ADS_21B%';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE login = 'ADS_23B031231';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE user_id=1358;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=1358;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM logins WHERE user_id=1247;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM users WHERE user_id=1247;