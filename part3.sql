#What is each pokemon's primary type?
select pok.name, t.name as 'prim type' from pokemon.pokemons pok inner join pokemon.types t on pok.primary_type = t.id;
#What is Rufflet's secondary type?
select t.name as 'sec type' from pokemon.pokemons pok inner join pokemon.types t on pok.secondary_type = t.id where pok.name = 'Rufflet';
#What are the names of the pokemon that belong to the trainer with trainerID 303?
select pok.name from pokemon.pokemons pok inner join pokemon.pokemon_trainer pt on pok.id = pt.pokemon_id where pt.trainerID = 303;
#How many pokemon have a secondary type Poison
select count(*) from pokemon.pokemons pok inner join pokemon.types t on pok.primary_type = t.id where t.name = 'Poison';
select t.name, count(*) from pokemon.types t left join pokemon.pokemons pok on t.id = pok.primary_type group by t.name;
#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
select count(*) from pokemon.pokemon_trainer pt inner join pokemon.pokemons pok on pt.pokemon_id = pok.id where pt.pokelevel = 100 group by pt.trainerID;
#How many pokemon only belong to one trainer and no other?select count(*) from pokemon.pokemons pok inner join pokemon.types t on pok.primary_type = t.id where t.name = 'Poison';
select count(*) from (select count(*) as ct from pokemon.pokemon_trainer pt group by pt.trainerID order by ct) as temp where ct=1;