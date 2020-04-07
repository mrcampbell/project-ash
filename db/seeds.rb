# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PokemonMove.delete_all
Pokemon.delete_all
Trainer.delete_all

ash = Trainer.create(username: "Ash")
gary = Trainer.create(username: "Gary")

charmander = Pokemon.create(breed_id: 4, trainer_id: ash.id)
ivysaur = Pokemon.create(breed_id: 1 , trainer_id: gary.id)

char_scratch = PokemonMove.create(pokemon_id: charmander.id, move_id: 1, index: 0)
char_growl = PokemonMove.create(pokemon_id: charmander.id, move_id: 2, index: 1)


