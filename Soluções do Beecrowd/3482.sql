-- STATUS: CLOSED
-- DÚVIDA ENVIADA NO FÓRUM: Olá! Fiz a questão, criei um banco local, testei as saídas e está tudo funcional, mas o retorno que tenho é Closed. Houveram duas vezes que isso ocorreu mas a primeira estava incorreta a saída, agora está certo, mas claro, no famoso "na minha máquina funciona". Estou fazendo algo de errado no beecrowd para me retornar isso? Agradeço desde já


WITH MutualFollowers AS (
    SELECT 
        F1.user_id_fk AS u1_id,
        F2.user_id_fk AS u2_id
    FROM followers F1
    JOIN followers F2 ON F1.user_id_fk = F2.following_user_id_fk
                      AND F1.following_user_id_fk = F2.user_id_fk
                      AND F1.user_id_fk < F2.user_id_fk
),
PostCounts AS (
    SELECT 
        users.user_id,
        users.user_name,
        users.posts
    FROM users
)
SELECT
    LEAST(U1.user_name, U2.user_name) AS u1_name,
    GREATEST(U1.user_name, U2.user_name) AS u2_name
FROM MutualFollowers MF
JOIN PostCounts U1 ON MF.u1_id = U1.user_id
JOIN PostCounts U2 ON MF.u2_id = U2.user_id
ORDER BY u1_id ASC;


