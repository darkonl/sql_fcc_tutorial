---------------------------------------------------------
-- WILDCARDS                                           --
-- https://www.youtube.com/watch?v=HXV3zeQKqGY&t=9913s --
---------------------------------------------------------

-- FIND PATTERNS: % = any # characters, _ = one caracter

-- FIND ANY CLIENT'S WHO ARE AN LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC'; -->> LIKE %

SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%'; -->> LIKE %


-- FIND ANY EMPLOYEE BORN IN OCTOBER
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%'; -->> LIKE _


-- FIND ANY CLIENT WHO ARE SCHOOLS
SELECT *
FROM client
WHERE client_name LIKE '%school%';

