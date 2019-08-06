#What are all the types of pokemon that a pokemon can have?
SELECT name FROM pokemon.types;
#What is the name of the pokemon with id 45?
SELECT name FROM pokemon.pokemons where id = 45;
#How many pokemon are there?
SELECT COUNT(*) FROM pokemon.pokemons;
#How many types are there?
SELECT COUNT(*) FROM pokemon.types;
#How many pokemon have a secondary type?
SELECT COUNT(*) FROM pokemon.pokemons where secondary_type IS NOT NULL;