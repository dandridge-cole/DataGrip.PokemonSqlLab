#sorting pokemons by highest level, and then by the sum of maxhp, attack, defense and speed
select p.name as 'Pokemon Name', t.trainername as 'Trainer Name', pt.pokelevel as 'Level',
	primt.name as 'Primary Type', sect.name as 'Secondary Type' 
    from pokemon.pokemons p inner join pokemon.types primt on p.primary_type=primt.id
    inner join pokemon.types sect on p.secondary_type = sect.id
    inner join pokemon.pokemon_trainer pt on p.id = pt.pokemon_id
    inner join pokemon.trainers t on pt.trainerID = t.trainerID
    order by pt.pokelevel desc, pt.maxhp+pt.attack+pt.defense+pt.speed desc;