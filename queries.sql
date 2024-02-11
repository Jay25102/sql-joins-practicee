-- write your queries here

-- first exercise
SELECT * FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id;

-- second exercise
SELECT first_name, last_name, count(*) FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name)
ORDER BY count(*) ASC;

-- third exerecise
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name)
HAVING COUNT(*) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;
