require_relative '../db/getcharacter.rb'
require_relative '../lib/models/character.rb'
require_relative '../lib/models/game.rb'


2138.times do |i|
  i += 1
  if GetCharacter.build_character_hash(i).keys.include?(:name)
    Character.create(GetCharacter.build_character_hash(i))
  end
end

Game.create(username: "Harry", score: 122)
Game.create(username: "Rollo", score: 22)
Game.create(username: "Sion", score: 10)
Game.create(username: "Camilla", score: 100)
Game.create(username: "Bobert", score: 73)
Game.create(username: "Raudolph", score: 44)
