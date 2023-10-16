SELECT natural_person.cpf,
CONCAT(SUBSTRING(natural_person.cpf,1,3),'.',SUBSTRING(natural_person.cpf,4,3),'.',SUBSTRING(natural_person.cpf,7,3),'-',SUBSTRING(natural_person.cpf,10,2)) AS CPF
FROM natural_person
JOIN customers ON customers.id = natural_person.id_customers
WHERE LENGTH(natural_person.cpf ) = 11

-- NÃO ESTÁ FUNCIONAL --
