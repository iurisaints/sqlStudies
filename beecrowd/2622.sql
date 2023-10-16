SELECT customers.name
FROM legal_person
JOIN customers ON customers.id = legal_person.id_customers
