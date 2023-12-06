SELECT * FROM guests
WHERE first_name = 'Sam';

SELECT * FROM species;
JOIN animals ON species.species_id = animals.species_id
WHERE

SELECT * FROM animals
JOIN feed ON animals.species_id = feed_id
JOIN species ON species.species_id = animals.species_id
WHERE feed_id = 3;

SELECT * FROM favorite_animals
JOIN animals ON favorite_animals.animal_id=animals.animal_id
JOIN guests ON guests.guest_id = favorite_animals.guest_id
WHERE name = 'Pokey';

-- sql-drill=# \dt
--              List of relations
--  Schema |       Name       | Type  | Owner
-- --------+------------------+-------+-------
--  public | animals          | table | Test
--  public | favorite_animals | table | Test
--  public | feed             | table | Test
--  public | guests           | table | Test
--  public | pen_feed         | table | Test
--  public | pens             | table | Test
--  public | species          | table | Test

 SELECT *
 FROM guests
 JOIN favorite_animals ON guests.guest_id=favorite_animals.guest_id
 JOIN animals ON animals.animal_id=favorite_animals.animal_id
 JOIN species ON species.species_id = animals.species_id
 JOIN pens ON species.species_id = pens.species_id
 JOIN pens_feed ON pen_feed.pen_id=pens.pen_id
WHERE primary_phone = '(401) 383-2001';


