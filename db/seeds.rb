# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include BCrypt

Item.delete_all
PokemonMove.delete_all
Pokemon.delete_all
Trainer.delete_all
User.delete_all

uAsh = User.create!(username: "Ash", password_digest: Password.create("sure"))
tAsh = Trainer.create!(username: "Ash", users_id: uAsh.id)


charmander = Pokemon.create!(breed_id: 1, trainer_id: tAsh.id, in_team?: true)
charmander = Pokemon.create!(breed_id: 4, trainer_id: tAsh.id, in_team?: true)
charmander = Pokemon.create!(breed_id: 7, trainer_id: tAsh.id)
chScratch = PokemonMove.create!(move_id: 1, index: 0, pokemon_id: charmander.id)

Item.create!(item_type_id: :potion, trainer_id: tAsh.id, used_at: DateTime.now())
Item.create!(item_type_id: :potion, trainer_id: tAsh.id)
Item.create!(item_type_id: :potion, trainer_id: tAsh.id)
Item.create!(item_type_id: :antidote, trainer_id: tAsh.id)
Item.create!(item_type_id: :nugget, trainer_id: tAsh.id)


# charmander = Pokemon.create(breed_id: 4, trainer_id: ash.id)
# ivysaur = Pokemon.create(breed_id: 1 , trainer_id: gary.id)

# char_scratch = PokemonMove.create(pokemon_id: charmander.id, move_id: 1, index: 0)
# char_growl = PokemonMove.create(pokemon_id: charmander.id, move_id: 2, index: 1)


