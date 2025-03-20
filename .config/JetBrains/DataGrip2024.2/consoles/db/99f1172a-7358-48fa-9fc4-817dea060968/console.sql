SELECT user_id, password, pwdtime FROM logins WHERE login='ADS_23B031138';

SELECT * FROM users WHERE user_id=2151;

SELECT * FROM logins WHERE user_id=2151;

UPDATE logins SET privileged=1 WHERE user_id=7;

SELECT * FROM ejudge.runs WHERE status=15;

DELETE FROM ejudge.runs WHERE run_id=484 and user_id=1888;

