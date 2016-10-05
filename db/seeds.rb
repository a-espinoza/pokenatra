require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'
require_relative '../models/team'



Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")

Trainer.destroy_all
Trainer.create(name: "Andres", level: rand(100), img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")
Trainer.create(name: "Angelo", level: rand(100), img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Trainer.create(name: "Adrian", level: rand(100), img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Trainer.create(name: "Jesse", level: rand(100), img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Trainer.create(name: "Nick", level: rand(100), img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")

Team.destroy_all
Team.create(name: "Blue")
Team.create(name: "Red")
Team.create(name: "Yellow")
